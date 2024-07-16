<?php

use App\Http\Controllers\admin\AdminController;

use App\Http\Controllers\Auth_admin\LoginAdminController;
use App\Http\Controllers\TinController;
use Illuminate\Support\Facades\Auth;
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
//client
Route::get('/', [TinController::class, 'index'])->name('trangchu');
Route::get('/chi_tiet_tin/{id}', [TinController::class, 'chi_tiet_tin'])->name('chi_tiet_tin');
Route::get('/loai_tin/{id}', [TinController::class, 'loai_tin'])->name('loai_tin');
Route::get('/danh_muc_tin/{id}', [TinController::class, 'danh_muc_tin'])->name('danh_muc_tin');
Route::get('/search', [TinController::class, 'search'])->name('search');
//login
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//login admin
Route::post('admin/login', [LoginAdminController::class, 'login'])->name('admin.login');

//admin
Route::prefix('admin')
    ->middleware('admin')
    ->as('admin.')
    ->group(function () {
        Route::get('/', [AdminController::class, 'index'])->name('admin');

    });
