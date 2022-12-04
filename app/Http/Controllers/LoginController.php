<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'name' => ['required'],
            'password' => ['required'],
        ]);

        if(Auth::attempt($credentials)){
            return response()->json(Auth::user(), 200);
        } else{
            // Authentication failed...
            return response()->json(['message' => 'Invalid email or password.'], 401);
        }
    }

    public function logout(){
        Auth::logout();
    }
}