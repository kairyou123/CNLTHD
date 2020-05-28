<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;

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
        $response = Http::withToken($data['access_token'])->get('http://localhost:8000/api/current-user');
        $data = array_merge($data, ['user' => $response->json()]);
        Cookie::queue(Cookie::make('login', json_encode($data), Carbon::now()->diffInSeconds($expires_at)));

        return redirect()->route('cookie');

    }

    public function ddCookie()
    {
        dd(Cookie::get('login')); return;
    }

    public function indexAdmin()
    {
        return view('Admin.User.index');
    }
}
