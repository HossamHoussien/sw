<?php

namespace App\Traits;

use Exception;
use Illuminate\Http\Request;
use App\Post;

trait ItemOwnershipValidator {

    public static function getRequirements($id){
        $post = Post::findOrFail($id);
        return json_decode($post->requirements);
    }

    public static function checkRequirements($id, $data){
        return isValid($id, $data);
    }

    public static function isValid($id, $data){

        if (!is_array($data)) return false;

        $postReq = getRequirements($id);
        $valid = true;
        for ($i=0; count($postReq) ; $i++)
            if ($postReq !== $data[$i]) 
                $valid = false;
        

        return $valid;
    }

    public static function validAction(){
        dd("Success, Claimed party has provided what post publisher required.");
    }

    public static function invalidAction(){
        dd("Error, Claimed party has provided wrong post requirments.");

    }


}