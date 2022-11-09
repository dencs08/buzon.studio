<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\EmailThanksForContact;
use App\Mail\EmailFormUserSent;

class EmailController extends Controller
{
    public function emailSend(Request $request)
    {
      // dump($request->name);
      // dump($request->email);
      // dump($request->content);
      // dump($request->controlInfo);
      // dd($request);

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
          // 'logo' => asset('/images/logos/buzonstudio_black.svg')
        ];

        Mail::to($request->email)->send(new EmailThanksForContact($data));
        Mail::to(env('MAIL_USERNAME', 'hej@buzon.studio'))->send(new EmailFormUserSent($data));

          return;
    }
}
