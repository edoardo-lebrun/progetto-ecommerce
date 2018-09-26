<?php

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

/*Route::get('/', function () {
    return view('welcome');
}); */

Route::get('home', 'FrontendController@index')->name('home');

Route::get('area_riservata', 'BackendController@riservata')->middleware('auth');

Route::get('prodotto{id}', [
    'uses' => 'FrontendController@prodotto',
    'as' => 'productpage',
]);

Route::get('lastprod', 'FrontendController@last');

Route::get('computer', 'FrontendController@computer');

Route::get('accessori', 'FrontendController@accessori');

Route::get('video', 'FrontendController@video');

Route::get('smart', 'FrontendController@smart');

Route::get('add-to-cart/{id}', [
    'uses' => 'CartController@getAddToCart',
    'as' => 'product.addToCart',
]);

Route::get('shopping-cart', [
    'uses' => 'CartController@getCart',
    'as' => 'product.shoppingCart',
]);

Route::get('/reduce/{id}', [
    'uses' => 'CartController@getReduce',
    'as' => 'product.reduceQty',
]);

Route::get('/add/{id}', [
    'uses' => 'CartController@getAdd',
    'as' => 'product.addQty',
]);

Route::get('/remove/{id}', [
    'uses' => 'CartController@getRemoveItem',
    'as' => 'product.remove',
]);

Route::get('/checkout', [
    'uses' => 'CartController@getCheckout',
    'as' => 'checkout',
    ]);

Route::post('/checkout', [
    'uses' => 'CartController@store',
    'as' => 'checkout.store',
]);

Auth::routes();


