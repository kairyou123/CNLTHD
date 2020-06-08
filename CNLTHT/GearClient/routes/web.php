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

Route::get('/', 'ViewController@indexPage')->name('index');
Route::get('/category/{category}', 'ViewController@categoryPage')->name('category');
Route::get('/product/{slug}', 'ViewController@detailsPage')->name('details');
Route::get('/cart', 'ViewController@cartPage')->name('cart')->middleware('checkLogin1');
Route::get('/register', 'ViewController@registerPage')->name('register');
Route::get('/register_complete', 'ViewController@registerComplete')->name('register_complete');

Route::get('/login', 'UserController@login')->name('login')->middleware('checkLogin');
Route::post('/login', 'UserController@login_submit');
Route::get('/logout', 'UserController@logout')->name('logout')->middleware('checkLogin1');
Route::post('/register', 'UserController@register')->name('register_submit');
Route::post('/cart/add/{slug}', 'CartController@add')->name('add_cart')->middleware('checkLogin1');
Route::post('/cart/edit/{slug}', 'CartController@edit')->name('edit_cart')->middleware('checkLogin1');
Route::get('/cart/delete/{slug}', 'CartController@delete')->name('delete_cart')->middleware('checkLogin1');
Route::get('/cookie', 'UserController@ddCookie')->name('cookie');
