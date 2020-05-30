<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\CartCollection;

class CartController extends Controller
{
    public function index()
    {
        $user = Auth::user();

        $cart = $user->product_cart;

        return CartCollection::collection($cart);
    }

    public function store(Request $request)
    {
        $user = Auth::user();

        $product = Product::where('slug',$request->slug)->first();

        $quantity = intval($request->quantity);

        $in_cart = false;

        if($user->product_cart->count() > 0)
        {
            foreach($user->product_cart as $cart)
            {
                if($cart->id === $product->id)
                {
                    $product->user_cart()->updateExistingPivot($user, ['quantity' => ($cart->pivot->quantity + $quantity)]);
                    $in_cart = true;
                }
            }
        }

        if($in_cart === false)
        {
            $user->product_cart()->attach($product, ['quantity' => $quantity]);
        }

        return response()->json([
            'message' => 'Added successfully'
        ], 201);
    }

    public function update(Request $request)
    {
        $user = Auth::user();

        $product = Product::where('slug',$request->slug)->first();

        $quantity = intval($request->quantity);

        $product->user_cart()->updateExistingPivot($user, ['quantity' => $quantity]);

        return response()->json([
            'message' => 'Edit successfully'
        ], 200);

    }

    public function destroy(Request $request)
    {
        $user = Auth::user();

        $product = Product::where('slug',$request->slug)->first();

        $user->product_cart()->detach($product);

        return response()->json([
            'message' => 'Delete successfully'
        ], 200);

    }
}
