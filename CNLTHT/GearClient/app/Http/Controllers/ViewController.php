<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class ViewController extends Controller
{
    public function indexPage()
    {
        $response = Http::get(env('API_URL') . '/api/product');
        $products = $response->json();

        $products_new = array_slice(collect($products['data'])->sortBy('created_at')->reverse()->toArray(), 0, 7);

        $products_discount = array_slice(collect($products['data'])->filter(function($product) {
            return $product['discount'] > 20;
        })->toArray(), 0, 7);

        return View('index', ['products_new' => $products_new, 'products_discount' => $products_discount]);
    }

}
