<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Resources\UserCollection;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();

        return UserCollection::collection($users);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return new UserCollection($user);
    }

    /*
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);

        if(!$user) 
        {
            return response()->json([
                'message' => 'Not Found User'
            ], 404);
        }

        $user->name = $request->name;
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->role = $request->role;
        $user->status = $request->status;

        if(!$request->password) 
        {
            $user->password = bcrypt($request->password);
        }

        $user->save();

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
    public function destroy(User $user)
    {
        $user->status = "Deleted";
        $user->save();

        return response()->json([
            'message' => 'Delete successfully'
        ], 201);
    }
}