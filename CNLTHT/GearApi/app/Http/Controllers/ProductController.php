<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Resources\ProductCollection;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ProductCollection::collection(Product::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $images = [];
        $i = 0;
        if($request->hasfile('image'))
        {
            foreach($request->file('image') as $file)
            {
                $name = time() . $i . '.' . $file->getClientOriginalExtension();
                array_push($images, $name);
                $file->move(public_path() . '/images/', $name);
                $i++;
            }
        }

        $product = new Product();
        $product->image = json_encode($images);
        $product->name = $request->name;
        $product->price = $request->price;
        $product->discount = $request->discount;
        $product->price_discount = $product->price - $product->price * $product->discount / 100;
        $product->description = $request->description;
        $product->stock = $request->stock;
        $product->catalog_id = $request->catalog_id;
        $product->manufactuer_id = $request->manufactuer_id;
        $product->status = $request->status;
        $product->save();

        return response()->json([
            'message' => 'Created successfully'
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * Model Binding Product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return new ProductCollection($product);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $product->name = $request->name;
        $product->price = $request->price;
        $product->discount = $request->discount;
        $product->price_discount = $product->price - $product->price * $product->discount / 100;
        $product->description = $request->description;
        $product->stock = $product->stock;
        $product->catalog_id = $request->catalog_id;
        $product->manufactuer_id = $request->manufactuer_id;
        $product->status = $product->status;
        $product->save();

        return response()->json([
            'message' => 'Edit successfully'
        ], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->status = 'Deleted';
        $product->save();

        return response()->json([
            'message' => 'Delete successfully'
        ], 201);
    }
}
