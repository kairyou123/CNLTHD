<?php

namespace App\Http\Controllers;

use App\Models\Manufactuer;
use Illuminate\Http\Request;
use App\Http\Resources\ManufactuerCollection;

class ManufactuerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ManufactuerCollection::collection(Manufactuer::all());
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $manufactuer = new Manufactuer();
        $manufactuer->name = $request->name;
        $manufactuer->description = $request->description;
        $manufactuer->save();

        return response()->json([
            'message' => 'Created successfully'
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Manufactuer $manufactuer)
    {
        return new ManufactuerCollection($manufactuer);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Manufactuer $manufactuer)
    {
        $manufactuer->name = $request->name;
        $manufactuer->description = $request->description;
        $manufactuer->save();

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
    public function destroy(Manufactuer $manufactuer)
    {
        $manufactuer->status = 'Deleted';
        $manufactuer->save();

        return response()->json([
            'message' => 'Edit successfully'
        ], 201);
    }
}
