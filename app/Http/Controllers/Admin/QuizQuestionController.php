<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Quiz;
use App\Question;

class QuizQuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Quiz $quiz)
    {
        //
        return view('admin.quizzes.createquestion', compact('quiz'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request , Quiz $quiz)
    {
        //

        $rules = [
            'title' => 'required|min:10|max:1000',
            'option_1' => 'required|min:5|max:100',
            'option_2' => 'required|min:5|max:100',
            'option_3' => 'required|min:5|max:100',
            'option_4' => 'required|min:5|max:100',
            'right_answer' => 'required|min:3|max:100',
            'score' => 'required|in:5,10,15,20,25,30',
            'quiz_id' => 'required|integer'
        ];


        $this->validate($request,$rules);

        $question = Question::create($request->all());

        if($question)
        {
            return redirect('/admin/quizzes/'.$quiz->id)->withStatus('question successfully created.');
        }
        else
        {
            return redirect('admin/quizzes/'.$quiz->id.'/questions/create')->withStatus('something wrong happened,try again');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
