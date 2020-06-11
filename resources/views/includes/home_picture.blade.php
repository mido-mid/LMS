<div class="home_picture" style="background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)) , url('{{ asset('images') }}/picture.jpg');">

    <div class="container-fluid">

        <div class="background_text text-center">

            <p class="text-center">Start learning over <span class="number"> {{ \App\Course::all()->count() }}</span> courses for <strong>Free</strong></p>
            <p class="text-center">More than <span>{{ count($users) }}</span> users have enrolled in <span>{{ \App\Course::all()->count() }}</span> courses in <span>{{ \App\Track::all()->count() }}</span> different tracks</p>
            <div class="action">

                @guest
                    <a href="{{ route('register') }}" class="btn btn-primary">
                        Start Learning    
                    </a>
                @endguest


                @auth

                    @if(auth()->user()->admin == 1 || auth()->user()->admin == 2 )
                        <a href="{{ route('home') }}" class="btn btn-primary">go to admin</a>
                        <a href="{{ route('mycourses') }}" class="btn courses">My Courses</a>
                    @else

                        <a href="{{ route('mycourses') }}" class="btn btn-primary">My Courses</a>
                    @endif
                @endauth

                @guest
                    <a href="{{ route('allcourses') }}" class="btn courses">All Courses</a>
                @endguest
            </div>
        </div>  
    </div>



</div>