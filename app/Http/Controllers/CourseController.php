<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Course;
use App\Track;

class CourseController extends Controller
{
    //

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($slug)
    {

        $url = '/laravel/LMS/public';
        $course = Course::where('slug',$slug)->first();

        return view('course',compact('course','url'));
    }

    public function enroll($slug)
    {

        $url = '/laravel/LMS/public';
        $course = Course::where('slug',$slug)->first();

        $user = auth()->user();

        $user_tracks = $user->tracks;

        $course_track = $course->track;

        foreach($user_tracks as $track)
        {
            if($track->id == $course_track->id)
            {
                $user->courses()->attach([$course->id]);
                return redirect('courses/'.$slug." ")->withStatus('you have been enrolled in'.' '.$course->title.' successfully, we wish you enjoy the course');
            }
        }

        $user->tracks()->attach([$course_track->id]);

        $user->courses()->attach([$course->id]);

        return redirect('courses/'.$slug." ")->withStatus('you have been enrolled in'.' '.$course->title.' successfully, we wish you enjoy the course');
    }
}
