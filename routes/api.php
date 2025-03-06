<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Public Routes (Tanpa Autentikasi)
Route::middleware('api')->group(function () {
    // Contoh: Endpoint untuk login atau registrasi
    Route::post('/login', [App\Http\Controllers\AuthController::class, 'login']);
    Route::post('/register', [App\Http\Controllers\AuthController::class, 'register']);

    Route::get('/kuesioner', [App\Http\Controllers\KuesionerController::class, 'index']);
    Route::post('/kuesioner/store', [App\Http\Controllers\KuesionerController::class, 'store']);
});

// Protected Routes (Dengan Autentikasi Sanctum)
Route::middleware('auth:sanctum')->group(function () {
    // Endpoint untuk mendapatkan data pengguna yang sedang login
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::get('/unit', [App\Http\Controllers\UnitController::class, 'index']);
    Route::post('/unit/store', [App\Http\Controllers\UnitController::class, 'store']);
    
    Route::get('/unsur', [App\Http\Controllers\UnsurController::class, 'index']);
    Route::post('/unsur/store', [App\Http\Controllers\UnsurController::class, 'store']);

    Route::get('/pertanyaan', [App\Http\Controllers\PertanyaanController::class, 'index']);
    Route::post('/pertanyaan/store', [App\Http\Controllers\PertanyaanController::class, 'store']);

    Route::get('/jawaban', [App\Http\Controllers\JawabanController::class, 'index']);
    Route::post('/jawaban/store', [App\Http\Controllers\JawabanController::class, 'store']);



    // Contoh: Endpoint untuk rekaptulasi 
    Route::post('/survey/rekaptulasi', [App\Http\Controllers\SurveyController::class, 'rekaptulasi']);
    Route::post('/responden/rekaptulasi', [App\Http\Controllers\RespondenController::class, 'rekaptulasi']);
});