<?php


// User Routes

Route::get('/', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('homeuser');

Route::get('/courses/{slug}', 'CourseController@index')->name('course');

Route::post('/courses/{slug}', 'CourseController@enroll')->name('courseenroll');

Route::get('/courses/{slug}/quizzes/{name}', 'QuizController@index')->name('quiz');

Route::post('/courses/{slug}/quizzes/{name}', 'QuizController@submit')->name('quizpost');

Route::get('/search', 'SearchController@index')->name('search');

Route::get('/tracks/{name}', 'TrackController@index')->name('track');

Route::get('/mycourses', 'MyCoursesController@index')->name('mycourses');

Route::get('/profile', 'ProfileController@index')->name('profile');

Route::post('/profile', 'ProfileController@update')->name('profilepost');

Route::get('/allcourses', 'AllCoursesController@index')->name('allcourses');

Route::post('/mycourses/{course}', 'MyCoursesController@favourite')->name('favourite');

Route::get('/contact', 'ContactController@index')->name('contactget');

Route::post('/contact', 'ContactController@send')->name('contactpost');


Route::get('/logout',function(){

	if(\Auth::check())
	{
		\Auth::logout();
		return redirect('/home');
	}
	else
	{
		return redirect('/');
	}
})->name('logout');

// Admin Routes

Route::group(['middleware' => ['auth', 'admin'] ], function () {

	Route::get('admin', function() {
		return redirect('admin/dashboard');
	});

	Route::get('/admin/dashboard', 'Admin\HomeController@index')->name('home');
	Route::resource('/admin/admins', 'Admin\AdminController', ['except' => ['show']]);
	Route::resource('/admin/users', 'Admin\UserController', ['except' => ['show']]);
	Route::resource('/admin/tracks', 'Admin\TrackController');
	Route::resource('/admin/courses', 'Admin\CourseController');
	Route::resource('/admin/videos', 'Admin\VideoController');
	Route::resource('/admin/questions', 'Admin\QuestionController');
	Route::resource('/admin/courses.quizzes', 'Admin\CourseQuizController');
	Route::resource('/admin/courses.videos', 'Admin\CourseVideoController');
	Route::resource('/admin/tracks.courses', 'Admin\TrackCourseController');
	Route::resource('admin/quizzes.questions', 'Admin\QuizQuestionController');
	Route::resource('/admin/quizzes', 'Admin\QuizController');
	Route::get('admin/profile', ['as' => 'profile.edit', 'uses' => 'Admin\ProfileController@edit']);
	Route::put('admin/profile', ['as' => 'profile.update', 'uses' => 'Admin\ProfileController@update']);
	Route::put('admin/profile/password', ['as' => 'profile.password', 'uses' => 'Admin\ProfileController@password']);
});
