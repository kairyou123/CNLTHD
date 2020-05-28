<?php

namespace App\Http\Controllers;

use App\Models\Catalog;
use Illuminate\Http\Request;
use App\Http\Resources\CatalogCollection;

class CatalogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return CatalogCollection::collection(Catalog::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $catalog = new Catalog();
        $catalog->name = $request->name;
        $catalog->description = $request->description;
        $catalog->save();

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
    public function show(Catalog $catalog)
    {
        return new CatalogCollection($catalog);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Catalog $catalog)
    {
        $catalog->name = $request->name;
        $catalog->description = $request->description;
        $catalog->save();

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
    public function destroy(Catalog $catalog)
    {
        $catalog->status = 'Deleted';
        $catalog->save();

        return response()->json([
            'message' => 'Edit successfully'
        ], 201);
    }
}
