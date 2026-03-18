<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});

Route::get('/o-mnie', function () {
    return view('o-mnie');
});


Route::get('/oferta', function () {
    return view('oferta');
});


Route::get('/projekty', function () {
    return view('projekty');
});


Route::get('/blog', function () {
    return view('blog');
});