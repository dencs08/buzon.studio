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

        if(Auth::attempt($request->only(['name', 'password']))){
            return response()->json(Auth::user(), 200);
        }
        throw ValidtionalException::create(['name' => ['you are not allowed to login!']]);
    }

    public function logout(){
        Auth::logout();
    }
}