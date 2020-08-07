@extends('layouts.user_layout')

@section('content')


                    <div class="container">

                            <div class="search_courses">



                            @if(count($courses) > 0)


                                <h2><?php echo count($courses) ?> courses match your request </h2>
                                <div class="requested_courses">

                                    @foreach($courses as $course)

                                    <div class="row">
                                        <div class="col-sm-4">

                                            @if($course->photo)
                                                <a href="{{ route('course',$course->slug) }}"><img src="{{ asset('images') }}/{{$course->photo->filename}}" alt="Course Photo"></a>
                                            @else
                                                <a href="{{ route('course',$course->slug) }}"><img  src="{{ asset('images') }}/default.jpg" alt="Course Photo"></a>
                                             @endif

                                        </div>

                                        <div class="col-sm-8">
                                            <h2>
                                            <a href="{{route('course',$course->slug)}}">{{ $course->title }}</a>
                                            </h2>
                                            <p>{{ $course->description }}</p>
                                            <h5>Track:
                                                <a href="{{ route('track',$course->track->name) }}">{{ $course->track->name }}</a>
                                                <span style="float:right">
                                                <span class="{{ $course->status == 0 ? 'text-success' : 'text-danger'}} status">{{ $course->status == '0'? 'FREE' : 'PAID' }}</span>
                                                    <span>{{ count($course->users) }}</span>
                                                    <span>users enrolled</span>
                                                </span>
                                            </h5>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            @else

                                <h2 style="text-align:center;">Sorry,no courses match your request</h2>
                                <img  style="margin:60px 60px 60px 230px;border:none;background:transparent"src="{{ asset('images') }}/15.webp" alt="Course Photo">
                            @endif
                        </div>
                    </div>

@endsection
