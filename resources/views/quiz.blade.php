@extends('layouts.user_layout')

@section('content')

    <div class="container">

        <div class="quiz-container">

            <h2>{{ \Str::limit($quiz->course->title,30) }} : {{ \Str::limit($quiz->name,30) }} Quiz </h2>

            <div class="quiz-questions">

            <div class="col-12">
                        @if (session('status'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{ session('status') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                    </div>

                <form action="{{$url}}/courses/{{ $quiz->course->slug }}/quizzes/{{ $quiz->name }}" method="POST" autocomplete="off">
                       
                    @csrf
                
                
                        @foreach($quiz->questions as $question)
                            <div class="form-group">
                                <label for="answer">{{ $question->title }} (<span>{{ $question->score }} Points </span>)</label>

                                    <div class="radio">
                                        <label><input type="radio" value="{{$question->option_1}}" name="answer{{$question->id}}">{{$question->option_1}}</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="{{$question->option_2}}" name="answer{{$question->id}}">{{$question->option_2}}</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="{{$question->option_3}}" name="answer{{$question->id}}">{{$question->option_3}}</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="{{$question->option_4}}" name="answer{{$question->id}}">{{$question->option_4}}</label>
                                    </div>
                            </div><hr>
                        @endforeach

                        

                            <input type="submit" class="btn btn-primary" name="submit" >

                      
        

                </form>
            </div>
        </div>
    </div>

@endsection

