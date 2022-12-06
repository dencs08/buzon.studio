<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\EmailThanksForContact;
use App\Mail\EmailFormUserSent;
use App\Mail\EmailResponse;
use App\Mail\EmailPricing;

class EmailController extends Controller
{
    public function emailSend(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'name' => 'required',
            'content' => 'required',
            'controlInfo' => ''
          ]);

        $data = [
          'name' => $request->name,
          'email' => $request->email,
          'content' => $request->content,
          'controlInfo' => $request->controlInfo,
        ];

        Mail::to($request->email)->send(new EmailThanksForContact($data));
        Mail::to(env('MAIL_USERNAME', 'hej@buzon.studio'))->send(new EmailFormUserSent($data));

        return;
    }

    public function emailResponse(Request $request){

        $data = [
          'name' => $request->name,
          'email' => $request->email,
          'content' => $request->content,
        ];

        Mail::to($request->email)->send(new EmailResponse($data));
    }

    public function emailPricing(Request $request){

        $data = [
          'h1' => $request->h1,
          'h2' => $request->h2,
          'main' => $request->main,
          'bottomh3' => $request->bottomh3,
          'bottomText' => $request->bottomText,
          'table' => $request->table,
          'totalPrice' => $request->totalPrice
        ];

        // return response()->json($request, 200);

        Mail::to($request->to)->send(new EmailPricing($data));
        // return view('emails/email-pricing-table')->with($data);
    }
}
