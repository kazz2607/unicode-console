<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('clear-cache', function(){
    Artisan::call('cache:clear');
});

Route::get('show-user', function(){
    Artisan::call('user:show');
    // echo Artisan::output();
});

Route::get('show-email', function(){
    Artisan::call('email:options',['email' => 'email@gmail.com','--queue' => 'acb']);
    echo nl2br(Artisan::output());
});