<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'ViewController@indexPage');

Route::group(['prefix' => 'admin', 'middleware' => 'admin'], function () {
    Route::get('/', 'UserController@indexAdmin');
});

Route::get('/login', 'UserController@login');
Route::post('/login', 'UserController@login_submit');
Route::get('/user', 'UserController@getUser')->name('user');
Route::get('/cookie', 'UserController@ddCookie')->name('cookie');
