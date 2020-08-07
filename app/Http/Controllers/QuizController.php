<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Course;

use App\Quiz;

class QuizController extends Controller
{
    //


    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($slug,$name)
    {

        $course = Course::where('slug',$slug)->first();

        $quiz = $course->quizzes()->where('name', $name)->first();

        return view('quiz',compact('quiz'));
    }


    public function submit($slug,$name,Request $request)
    {


            $quiz = Quiz::where('name',$name)->first();

            $questions = $quiz->questions;

            $quiz_score = 0;

            $question_ids = [];


            $question_right_answers = [];

            foreach($questions as $question)
            {
                $question_ids[] = $question->id;
                $question_right_answers[] = $question->right_answer;
                $quiz_score += $question->score;
            }


            for($i = 0 ; $i < count($question_ids) ; $i++)
            {
                $your_answer = $request['answer'.$question_ids[$i]];
                $right_answer = $question_right_answers[$i];

                if($your_answer != $right_answer)
                {
                    return redirect('courses/'.$slug.'/quizzes'.'/'.$name)->withStatus('your answer'.' '.$your_answer.' is not correct');
                }
            }

            $user = auth()->user();

            $user->quizzes()->attach([$quiz->id]);

            $user->score += $quiz_score;

            if($user->save())
            {

                return redirect('courses/'.$slug)->withStatus('well done , you have solved'.' '.$quiz->name.' Quiz and earned '.$quiz_score.' points');
            }
    }
}
