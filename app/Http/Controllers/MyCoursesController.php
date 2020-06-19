<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Course;

class MyCoursesController extends Controller
{
    //

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){

		$url = '/laravel/LMS/public';

            $user = auth()->user();
            
            $user_courses_ids = $user->courses->pluck('id');

            $user_courses = $user->courses;

            $fav_courses = Course::where('favourite', 1)->whereIn('id',$user_courses_ids)->get();
            
            return view('mycourses', compact('user_courses','fav_courses','url'));
    }


    public function favourite(Request $request, Course $course)
    {

        $course->update(['favourite' => $request->favourite]);
  
       
        return redirect('/mycourses')->withStatus('well done ,'.$course->title.' Course have been added to your favourites');
    }
}
