@extends('layouts.user_layout')

@section('content')


        <div class="container">

                <h1>Course Information</h1>

            <div class="row">

                    <div class="col-12">
                        @if (session('status'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('status') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                    </div>

                <div class="course_header">


                    <div class="row">
                        <div class="col-sm-8">
                                <h2>
                                    {{ $course->title }}
                                </h2>
                                <p>{{ $course->description }}</p>
                                <h5>
                                    Track:
                                    <a href="{{ route('track',$course->track->name) }}">{{ $course->track->name }}</a>
                                    <span style="float:right">
                                    <span class="status {{ $course->status == 0 ? 'text-success' : 'text-danger'}} status">{{ $course->status == '0'? 'FREE' : 'PAID' }}</span>
                                        <span>{{ count($course->users) }}</span>
                                        <span>users enrolled</span>
                                    </span>
                                </h5>
                        </div>

                        <div class="col-sm-4">
                                @if($course->photo)
                                    <img src="{{ asset('images') }}/{{$course->photo->filename}}" alt="Course Photo">
                                @else
                                    <img src="{{ asset('images') }}/default.jpg" alt="Course Photo">
                                @endif
                        </div>
                    </div>

                </div>

            </div>


            @if(count(auth()->user()->courses()->where('slug',$course->slug)->get()) > 0 )




            @else

                <div class="enroll-form">

                    <form action="{{route('courseenroll',$course->slug)}}" method="POST">

                    @csrf

                        <input type="submit" value="Enroll" name="enroll" class="btn btn-default btn-enroll">
                    </form>
                </div>

                <div class="clear-fix"></div>

            @endif

                <div class="videos">


                <h3>Course Videos</h3>


                    <div class="row">

                        <div class="col-sm-12">

                        @if(count($course->videos) > 0 )
                            @if(count(auth()->user()->courses()->where('slug',$course->slug)->get()) > 0 )
                                @foreach($course->videos as $video)
                                    <div class="video">
                                    <a href="{{$video->link}}" data-toggle="modal" data-target="#showvideo"><i class="fab fa-youtube">{{$video->title}}</i></a>
                                    </div>
                                @endforeach

                            @else
                                @foreach($course->videos as $video)
                                    <div class="video disabled">
                                    <a href="{{$video->link}}" data-toggle="modal" data-target="#showvideo"><i class="fab fa-youtube">{{$video->title}}</i></a>
                                    </div>
                                @endforeach
                            @endif
                        @else

                            <div style="margin-top:25px;margin-left:20px;" class="alert alert-secondary">this course doesn't include any videos</div>

                        @endif

                        </div>

                    </div>
                </div>



            <div class="quizzes">


                <h3>Test your knowledge</h3>


                <div class="row">

                    <div class="col-sm-12">

                    @if(count($course->quizzes) > 0 )
                        @if(count(auth()->user()->courses()->where('slug',$course->slug)->get()) > 0 )
                            @foreach($course->quizzes as $quiz)

                                    @if(auth()->user()->quizzes()->where('id',$quiz->id)->first())
                                    <div class="quiz disabled">
                                        <i style="margin-right: 5px;color: whitesmoke;" class="fas fa-check"></i><a target="_blank" href="{{ route('quiz',['slug' => $quiz->course->slug , 'name' => $quiz->name ]) }}">{{ $quiz->name }} quiz</a>
                                    </div>
                                    @else
                                    <div class="quiz">
                                        <a target="_blank" href="{{ route('quiz',['slug' => $quiz->course->slug , 'name' => $quiz->name ]) }}">{{ $quiz->name }} quiz</a>
                                    </div>
                                    @endif
                            @endforeach

                        @else

                            @foreach($course->quizzes as $quiz)
                                <div class="quiz disabled">
                                    <a id="#anchor" target="_blank" href="{{ route('quiz',['slug' => $quiz->course->slug , 'name' => $quiz->name ]) }}">{{ $quiz->name }} quiz</a>
                                </div>
                            @endforeach

                        @endif

                    @else

                        <div style="margin-top:25px;margin-left:20px;" class="alert alert-secondary">this course doesn't include any quizzes</div>

                    @endif

                    </div>

                </div>
            </div>
        </div>

@if(count(auth()->user()->courses()->where('slug',$course->slug)->get()) > 0 )
    <!-- Modal -->
    <div class="modal fade" id="showvideo" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Video Preview</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
        <iframe width="750" height="415" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        </div>
    </div>
    </div>
@endif

@endsection
