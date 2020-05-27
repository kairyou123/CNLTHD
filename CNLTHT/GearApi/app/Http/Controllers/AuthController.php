<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request) 
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            $user = Auth::user();
            if($user->role == "Member") {
                $tokenResult = $user->createToken('GearApi', ['Member']);
                $access_token = $tokenResult->accessToken;
                return response()->json([
                    'access_token' => $access_token,
                    'token_type' => 'Bearer',
                    'expires_at' => Carbon::parse(
                        $tokenResult->token->expires_at
                    )->toDateTimeString()
                ]);
            }
            else if($user->role == "Admin") {
                $tokenResult = $user->createToken('GearApi', ['Admin']);
                $access_token = $tokenResult->accessToken;
                return response()->json([
                    'access_token' => $access_token,
                    'token_type' => 'Bearer',
                    'expires_at' => Carbon::parse(
                        $tokenResult->token->expires_at
                    )->toDateTimeString()
                ]);
            }

            

        }

        return response()->json([
            'message' => 'Unauthorized'
        ], 401);
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }

    public function register(Request $request) 
    {
        $email = $request->email;

        $userExisted = User::where('email', $email)->first();

        if($userExisted) return response()->json([
            'error' => 'Email đã có người sử dụng'
        ], 402);

        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'address' => $request->address,
            'phone' => $request->phone,
            'role' => 'Member',
            'status' => 'OK'
        ]);

        $user->save();

        return response()->json([
            'message' => 'Successfully created user!'
        ], 201);
    }
}
