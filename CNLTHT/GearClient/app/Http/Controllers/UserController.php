<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;
use Symfony\Component\Console\Input\Input;

class UserController extends Controller
{
    public function Login()
    {
        return view('login');
    }

    public function Login_submit(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ],[
            'email.required' => 'Email không được để trống',
            'password.required' => 'Mật khẩu không được để trống'
        ]);

        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];
        $response = Http::post('http://localhost:8000/api/auth/login', $data);

        if($response->failed())
        {
           return redirect()->back()->withInput()->withErrors(['Sai email hoặc mật khẩu']);
        }

        $expires_at = $response->json()['expires_at'];
        $data = $response->json();
        Cookie::queue(Cookie::make('login', json_encode($data), Carbon::now()->diffInSeconds($expires_at)));
        return redirect()->route('index');

    }

    public function logout()
    {
        $token = json_decode(Cookie::get('login'))->access_token;

        $response = Http::withToken($token)->post('http://localhost:8000/api/auth/logout');

        if($response->failed())
        {
           return redirect('/');
        }

        return redirect('/')->cookie(cookie()->forget('login'));
    }

    public function register(Request $request)
    {
        $request->validate(
        [
            'email' => 'required|email',
            'name' => 'required',
            'tel' => 'required|regex:/^[0-9]+$/',
            'address' => 'required',
            'password' => 'required'
        ],
        [
            'email.required' => 'Email không được để trống',
            'email.regex' => 'Sai định dạng Email',
            'name.required' => 'Tên không được để trống',
            'tel.required' => 'Số điện thoại không được để trống',
            'tel.regex' => 'Số điện thoại chỉ bao gồm số',
            'address.required' => 'Địa chỉ không được để trống',
            'password.required' => 'Mật khẩu không được để trống'
        ]);

        $password = $request->password;
        $confirm_password = $request->password_confirmation;

        if($password !== $confirm_password)
        {
            return back()->withErrors('Password không trùng khớp')->withInput();
        }

        $data = [
            'email' => $request->email,
            'name' => $request->name,
            'password' => $request->password,
            'address' => $request->address,
            'phone' => $request->tel,
        ];

        $response = Http::post(env('API_URL') . '/api/auth/sign-up', $data);

        if($response->failed())
        {
            return redirect()->back()->withInput()->withErrors('Email đã có người sử dụng');
        }

        return redirect()->route('register_complete');
    }

    public function ddCookie(Request $request)
    {
        dd($request->cookie());exit;
        $cookie = json_decode(Cookie::get('login23'))->access_token;
        dd($cookie);exit;
        $response = Http::withToken($cookie)->get('http://localhost:8000/api/current-user');
        dd($response->json()); exit;
    }

}
