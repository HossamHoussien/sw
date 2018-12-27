<?php

namespace App\Traits;

use Exception;
use Illuminate\Http\Request;
use App\Post;
use App\Tag;

trait Search {

    public static function searchByName(){

    }

    public static function searchByLocation($location){
        return Post::where('location','LIKE', $location)->get();
    }

    public static function searchByTag($name){

        $tag = Tag::where('name',$name)->get();

        if (is_null($tag)) return [];

        return $tag->first()->posts;
    }
}
