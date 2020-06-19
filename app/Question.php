<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = [
    	'title',
		'option_1',
		'option_2',
		'option_3',
		'option_4',
    	'right_answer',
		'score',
		'quiz_id',
		'type'
    ];

    public function quiz() {
    	return $this->belongsTo('App\Quiz');
    }

}
