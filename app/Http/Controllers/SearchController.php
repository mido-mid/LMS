<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Course;

class SearchController extends Controller
{
    //

    public function index(Request $request)
    {


        $courses = Course::where('title','LIKE','%'.$request->search."%")->get();

        return view('search', compact('courses'));


    }


}
