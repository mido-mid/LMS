<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Track;


use App\Course;

class TrackController extends Controller
{
    //

    public function index($name)
    {

        $url = '/laravel/LMS/public';

        $track = Track::where('name',$name)->first();
        $courses = Track::where('name',$name)->first()->courses;

        return view('track_courses',compact('courses','track','url'));
    }
}
