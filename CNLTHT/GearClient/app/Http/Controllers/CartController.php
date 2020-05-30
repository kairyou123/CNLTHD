<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;

class CartController extends Controller
{
    public function add($slug, $quantity)
    {
        $data = [
            'slug' => $slug,
            'quantity' => intval($quantity)
        ];

        $access_token = json_decode(Cookie::get('login'), true)['access_token'];

        $response = Http::withToken($access_token)->post(env('API_URL') . '/api/cart', $data);

        if($response->failed())
        {
            return redirect()->back();
        }

        return redirect()->back();

    }

    public function edit($slug, Request $request)
    {
        $data = [
            'slug' => $slug,
            'quantity' => intval($request->quantity)
        ];

        $access_token = json_decode(Cookie::get('login'), true)['access_token'];
        $response = Http::withToken($access_token)->put(env('API_URL') . '/api/cart/edit', $data);

        if($response->failed())
        {
            return redirect()->back();
        }

        return redirect()->back();
    }

    public function delete($slug)
    {
        $data = [
            'slug' => $slug,
        ];
        $access_token = json_decode(Cookie::get('login'), true)['access_token'];

        $response = Http::withToken($access_token)->delete(env('API_URL') . '/api/cart/delete', $data);

        if($response->failed())
        {
            return redirect()->back();
        }

        return redirect()->back();
    }
}
