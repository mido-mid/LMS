@extends('layouts.user_layout')

@section('content')

<div class="container">

    <div class="track_courses">

    @if(count($user_courses) > 0)


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

            <h1 class="mb-0">your courses</h1>

            <div class="row">
                @foreach($user_courses as $course)
                <div class="col-sm-3">
                    <div class="card course">
                        @if($course->photo)
                        <a href="{{ $url }}/courses/{{ $course->slug }}"><img src="{{ asset('images') }}/{{$course->photo->filename}}" class="card-img-top" alt="Course Photo"></a>
                        @else
                        <a href="{{ $url }}/courses/{{ $course->slug }}"><img  src="{{ asset('images') }}/default.jpg" class="card-img-top" alt="Course Photo"></a>
                        @endif
                        <div class="card-body">
                            <h6 class="card-title"><a href="{{ $url }}/courses/{{ $course->slug }}">{{ \Str::limit($course->title, 50) }}</a></h6>
                            <span style="float:left;font-weight:bold" class="{{ $course->status == 0 ? 'text-success' : 'text-danger'}}">{{ $course->status == '0'? 'FREE' : 'PAID' }}</span>
                            @if($course->favourite == 0)
                                <span>
                                    <form action="{{ route('favourite', $course) }}" method="POST">

                                        @csrf
                                        <input type="hidden" value="1" name="favourite" class="btn btn-default btn-enroll">
                                        <button type="submit" value="favourite" name="enroll" style="margin-left:10px;border:none;background-color:white;color:red;cursor:pointer" class="fas fa-heart"></button>
                                    </form>
                                </span>
                                <span style="float:right;margin-top:-23px">{{ count($course->users) }} users</span>
                            @else

                            <span style="float:right;">{{ count($course->users) }} users</span>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            </div>


            <h1 class="mb-0">your favourite courses</h1>

            @if(count($fav_courses) > 0)

                <div class="row">
                    @foreach($fav_courses as $course)
                    <div class="col-sm-3">
                        <div class="card course">
                            @if($course->photo)
                            <a href="{{ $url }}/courses/{{ $course->slug }}"><img src="{{ asset('images') }}/{{$course->photo->filename}}" class="card-img-top" alt="Course Photo"></a>
                            @else
                            <a href="{{ $url }}/courses/{{ $course->slug }}"><img  src="{{ asset('images') }}/default.jpg" class="card-img-top" alt="Course Photo"></a>
                            @endif
                            <div class="card-body">
                                <h6 class="card-title"><a href="{{ $url }}/courses/{{ $course->slug }}">{{ \Str::limit($course->title, 50) }}</a></h6>
                                <span style="float:left;font-weight:bold" class="{{ $course->status == 0 ? 'text-success' : 'text-danger'}}">{{ $course->status == '0'? 'FREE' : 'PAID' }}</span>
                                <span style="float:right">{{ count($course->users) }} users</span>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            @else

                <h4 style="text-align:center;margin-top:40px;margin-bottom:40px;">Sorry,you don't have any favourite courses</h4>

            @endif

    @else

        <h2 style="text-align:center;">Sorry,you are not enrolled in any courses</h2>
        <a href="{{$url}}/allcourses" class="no-courses btn btn-primary">
            see our courses   
        </a>
        <img  style="margin:60px 60px 60px 230px;border:none;background:transparent"src="{{ asset('images') }}/15.webp" alt="Course Photo">
    @endif


    </div>
</div>

@endsection