<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\EmailController;
use App\Http\Controllers\SecretController;
use App\Http\Controllers\LoginController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->get('/authenticated', function () {
    return true;
});

Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/secrets', [SecretController::class, 'index']);

Route::post('/emailSend', [EmailController::class, 'emailSend']);

Route::get('/projects', [ProjectController::class, 'index']);
Route::get('/projects/best', [ProjectController::class, 'indexBest']);
Route::prefix('/project')->group( function () {
        Route::get('/{name}', [ProjectController::class, 'showByName']);
        Route::get('/categories/{id}', [ProjectController::class, 'showCategories']);
        Route::get('/next/{name}', [ProjectController::class, 'showNext']);
    }
);