<?php

namespace App\Http\Controllers;

use App\Post;
use App\Tag;
use App\Traits\Search;
use App\Traits\PostCRUD;
use Illuminate\Http\Request;
use DB;
class PostController extends Controller
{
    use Search;
    use PostCRUD;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function __construct(){
        $this->middleware('auth');

     }
    public function index()
    {
        $posts = PostCRUD::getAllPosts();
        return view('posts.index',compact('posts',$posts));  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post = new Post();
        $post->title = $request->title;
        $post->body = $request->body;
        $post->location = $request->location;
        $post->save();
        
        $request->cars ? DB::table('posts_tags')->insert(['post_id'=>$post->id,'tag_id'=>1]) : '';
        $request->personal ? DB::table('posts_tags')->insert(['post_id'=>$post->id,'tag_id'=>2]) : '';
        $request->papers ? DB::table('posts_tags')->insert(['post_id'=>$post->id,'tag_id'=>3]) : '';
        $request->money ? DB::table('posts_tags')->insert(['post_id'=>$post->id,'tag_id'=>4]) : '';
        $request->misc ? DB::table('posts_tags')->insert(['post_id'=>$post->id,'tag_id'=>5]) : '';

      return redirect('/posts');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
