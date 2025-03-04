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
    Route::get('/responden', [App\Http\Controllers\RespondenController::class, 'responden']);
});

// Protected Routes (Dengan Autentikasi Sanctum)
Route::middleware('auth:sanctum')->group(function () {
    // Endpoint untuk mendapatkan data pengguna yang sedang login
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    // Contoh: Endpoint untuk manajemen unit layanan
    Route::apiResource('units', App\Http\Controllers\UnitController::class);

    // Contoh: Endpoint untuk manajemen pertanyaan
    Route::apiResource('pertanyaans', App\Http\Controllers\PertanyaanController::class);

    // Contoh: Endpoint untuk rekaptulasi survey
    Route::post('/survey/rekaptulasi', [App\Http\Controllers\SurveyController::class, 'rekaptulasi']);

    // Contoh: Endpoint untuk rekaptulasi responden
    Route::post('/responden/rekaptulasi', [App\Http\Controllers\RespondenController::class, 'rekaptulasi']);
});