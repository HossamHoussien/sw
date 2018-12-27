<?php
namespace App\Traits;

use Exception;
use Illuminate\Http\Request;
use App\Tag;

trait TagCRUD {

    public static function getAllTags(){
        return Tag::all();
    }

    public static function getTag($id){
        return Tag::findOrFail($id);
    }

    public static function updateTag($id, $values){
        if (!is_array($value)) return false;
        $tag = Tag::findOrFail($id);
        $tag->name = $values['name'];
        return $tag->save();
        
    }

    public static function storeTag($values){
        if (!is_array($value)) return false;
        $tag = new Tag();
        $tag->name = $values['name'];
        return $tag->save();
        
    }

    public static function deleteTag($id){
        $tag = Tag::findOrFail($id);
        return $tag->delete();
    }

}