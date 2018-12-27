<?php
use App\Post;
use App\Tag;
use App\Traits\Search;




Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/test', function (){
    $post = Post::findOrFail(1);

    dd($post->tags);
    
});

Route::resource('posts', 'PostController');

Route::get('ajax/posts/{search_type}/{keyword}', function ($search_type, $keyword) {
    switch($search_type){
        case 'name':
        return Search::searchByName($keyword); 
        case 'location':
            return Search::searchByLocation($keyword);
        case 'tag':
        return Search::searchByTag($keyword);
    }

});