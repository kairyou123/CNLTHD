<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Pagination\LengthAwarePaginator;

class ViewController extends Controller
{
    public function indexPage()
    {
        $response = Http::get(env('API_URL') . '/api/product');
        $products = $response->json();

        $products = collect($products['data'])->filter(function($product) {
            return $product['status'] === 'OK';
        })->toArray();


        $products_new = array_slice(collect($products)->sortBy('created_at')->reverse()->toArray(), 0, 7);

        $products_discount = array_slice(collect($products)->filter(function($product) {
            return $product['discount'] > 20;
        })->toArray(), 0, 7);

        return View('index', ['products_new' => $products_new, 'products_discount' => $products_discount]);
    }

    public function categoryPage($category, Request $request)
    {
        $response = Http::get(env('API_URL') . '/api/product');

        $products = $response->json();

        $response = Http::get(env('API_URL') . '/api/catalog/' . $category);

        if($response->failed())
        {
           return redirect('/');
        }

        $category = $response->json()['data'];
        $page = 1;

        if($request->page) $page = $request->page;

        $products_category = collect($products['data'])->filter(function($product) use ($category) {
            return ($product['catalog']['slug'] === $category['slug'] && $product['status'] === 'OK');
        })->toArray();

        if($request->price)
        {
            $sort = $request->price;

            if($sort === 'ASC')
            {
                $products_category = collect($products_category)->sortBy('priceDiscount')->toArray();
            }
            else
            {
                $products_category = collect($products_category)->sortBy('priceDiscount')->reverse()->toArray();
            }
        }

        $products_category = $this->paginate(collect($products_category), 8, $page,
        [
            'path' => LengthAwarePaginator::resolveCurrentPath(),
        ]);
        return view('product-category', ['products' => $products_category, 'category' => $category['name'] ] );
    }

    public function detailsPage($slug)
    {
        $response = Http::get(env('API_URL') . '/api/product/' . $slug);

        if($response->failed())
        {
            return view('404');
        }

        $product = $response->json()['data'];
        if(is_array(json_decode($product['image'])))
        {
            $images = json_decode($product['image']);
        }
        else
        {
            $images = [$product['image']];
        }
        return view('product-details',['product' => $product, 'images' => $images]);
    }

    public function cartPage()
    {
        $access_token = json_decode(Cookie::get('login'), true)['access_token'];

        $response = Http::withToken($access_token)->get(env('API_URL') . '/api/cart');

        $haveCart = true;

        if($response->failed())
        {
            $haveCart = false;
        }

        $cart = $response->json()['data'];


        if(count($cart) === 0)
        {
            $haveCart = false;
        }

        return view('cart', ['cart' => $cart, 'haveCart' => $haveCart]);
    }

    public function registerPage()
    {
        return view('register');
    }

    public function registerComplete()
    {
        return view('registerComplete');
    }


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function paginate($items, $perPage = 8, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }

}
