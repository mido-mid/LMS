@extends('layouts.user_layout')

@section('content')


<div class="container">

    <div class="track_courses">

            <h1 class="mb-0">All Courses</h1>

            <div class="row">
                @foreach($allcourses as $course)
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

            <div class="card-footer py-4">
                <nav class="d-flex justify-content-end" aria-label="...">
                    {{ $allcourses->links() }}
                </nav>
            </div>
    </div>
</div>



@endsection