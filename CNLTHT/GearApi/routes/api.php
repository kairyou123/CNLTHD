<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/current-user','UserController@currentUser');

Route::group(['prefix' => 'auth'], function () {
    Route::post('/login', 'AuthController@login');
    Route::post('/sign-up', 'AuthController@register');
    Route::post('/logout', 'AuthController@logout')->middleware('auth:api');
});

Route::group(['middleware' => 'auth:api'], function(){
    Route::get('/user', 'UserController@index')->middleware('scope:Admin');
    Route::get('/user/{user}', 'UserController@show')->middleware('scope:Admin');
    Route::post('/user', 'UserController@store')->middleware('scope:Admin');
    Route::put('/user/{user}', 'UserController@update')->middleware('scope:Admin');
    Route::delete('/user/{user}', 'UserController@destroy')->middleware('scope:Admin');

    Route::post('/product', 'ProductController@store')->middleware('scope:Admin');
    Route::put('/product/{product}', 'ProductController@update')->middleware('scope:Admin');
    Route::delete('/product/{product}', 'ProductController@destroy')->middleware('scope:Admin');

    Route::post('/catalog', 'CatalogController@store')->middleware('scope:Admin');
    Route::put('/catalog/{catalog}', 'CatalogController@update')->middleware('scope:Admin');
    Route::delete('/catalog/{catalog}', 'CatalogController@destroy')->middleware('scope:Admin');

    Route::post('/manufactuer', 'ManufactuerController@store')->middleware('scope:Admin');
    Route::put('/manufactuer/{manufactuer}', 'ManufactuerController@update')->middleware('scope:Admin');
    Route::delete('/manufactuer/{manufactuer}', 'ManufactuerController@destroy')->middleware('scope:Admin');

    Route::get('/cart', 'CartController@index');
    Route::post('/cart', 'CartController@store');
    Route::put('/cart/edit', 'CartController@update');
    Route::delete('/cart/delete', 'CartController@destroy');
});

Route::get('/product', 'ProductController@index');
Route::get('/product/{product}', 'ProductController@show');

Route::get('/catalog', 'CatalogController@index');
Route::get('/catalog/{catalog}', 'CatalogController@show');

Route::get('/manufactuer', 'ManufactuerController@index');
Route::get('/manufactuer/{manufactuer}', 'ManufactuerController@show');

