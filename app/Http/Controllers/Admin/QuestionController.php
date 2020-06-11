<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Question;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $questions = Question::orderBy('id', 'desc')->paginate(10);
        return view('admin.questions.index', compact('questions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        return view('admin.questions.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $rules = [
            'title' => 'required|min:5|max:1000',
            'option_1' => 'required|min:5|max:50',
            'option_2' => 'required|min:5|max:50',
            'option_3' => 'required|min:5|max:50',
            'option_4' => 'required|min:5|max:50',
            'right_answer' => 'required|min:5|max:50',
            'score' => 'required|in:5,10,15,20,25,30',
            'quiz_id' => 'required|integer'
        ];

        $this->validate($request,$rules);

        $question = Question::create($request->all());

        if($question)
        {
            return redirect('/admin/questions')->withStatus('question successfully created.');
        }
        else
        {
            return redirect('admin/questions/create')->withStatus('something wrong happened,try again');
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
    public function edit(Question $question)
    {
        //

        return view('admin.questions.edit', compact('question'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        //

        $rules = [
            'title' => 'required|min:5|max:1000',
            'option_1' => 'required|min:5|max:50',
            'option_2' => 'required|min:5|max:50',
            'option_3' => 'required|min:5|max:50',
            'option_4' => 'required|min:5|max:50',
            'right_answer' => 'required|min:5|max:50',
            'score' => 'required|in:5,10,15,20,25,30',
            'quiz_id' => 'required|integer'
        ];

        $this->validate($request, $rules);

        if($question->update($request->all())) {
            return redirect('/admin/questions')->withStatus('question successfully updated.');
        }else {
            return redirect('/admin/questions/'.$question->id.'/edit')->withStatus('Something wrong, Try again.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        //

        $question->delete();
        return redirect('/admin/questions')->withStatus('question successfully deleted.');
    }
}
