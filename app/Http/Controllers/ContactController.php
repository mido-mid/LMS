<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Mail;

use App\Mail\contact;

use App\User;

class ContactController extends Controller
{
    //

    public function index()
    {

        $url = '/laravel/LMS/public';

        return view('contact',compact('url'));
    }


    public function send(Request $request)
    {

        $user = User::where('admin', 2)->first();


        $rules = [
            'name' => 'required|string|min:5|max:30',
            'email' => 'required|email',
            'subject' => 'required|min:5|max:30',
            'message' => 'required|string',
        ];

        $this->validate($request, $rules);

        $name = $request->name;
        $email = $request->email;
        $subject = $request->subject;
        $message = $request->message;

        Mail::to($user->email)->send(new contact($name,$email,$subject,$message));

        return response()->json([

            'message' => 'your message has been sent successfully',
            'profilename' => $request->name.' '.', thank you',
            'profileemail' => $request->email
        ]);

    }
}
