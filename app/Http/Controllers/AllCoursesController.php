<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Course;

class AllCoursesController extends Controller
{
    //
    public function index()
    {

        $allcourses = Course::paginate(8);

        return view('allcourses',compact('allcourses'));
    }
}
