<?php
namespace App\Traits;

use Exception;
use Illuminate\Http\Request;
use App\Post;

trait PostCRUD {

    public static function getAllPosts(){
        return Post::all()->sortByDesc('id');
    }

    public static function getPost($id){
        return Post::findOrFail($id);
    }

    public static function updatePost($id, $values){
        if (!is_array($value)) return false;
        $Post = Post::findOrFail($id);
        $Post->name = $values['name'];
        return $Post->save();
        
    }

    public static function storePost($values){
        if (!is_array($value)) return false;
        $Post = new Post();
        $Post->name = $values['name'];
        return $Post->save();
        
    }

    public static function deletePost($id){
        $Post = Post::findOrFail($id);
        return $Post->delete();
    }

}