<?php

Auth::routes();
Route::get('/', 'GuestController@Index');
Route::get('/desc', 'GuestController@SortByDesc');
Route::get('/asc', 'GuestController@SortByAsc');
Route::post('/search', 'GuestController@Search')->name('search');
Route::get('/view/{id}', 'UserController@View');
