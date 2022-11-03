<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProjectController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/projects', [ProjectController::class, 'index']);

Route::prefix('/project')->group( function () {
        Route::post('/store', [ProjectController::class, 'store']);
        // Route::put('/{id}', [ProjectController::class, 'update']);
        // Route::post('/{id}', [ProjectController::class, 'destroy']);
    }
);