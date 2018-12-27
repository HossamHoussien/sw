@extends('layouts.app') 
@section('content')

<div class="search-area text-center bg-white p-3 my-4" style="overflow:hidden;border:1px solid #bbb">
    <div class="form-group">
        <input type="text" name="search_text" class="form-control"> {{-- <button id="searchByName" class="btn btn-primary mt-3 mx-2"
            type="submit">Search By Name</button> --}}
        <div id="searchByLocation" class="btn btn-primary mt-3 mx-2" type="button">Search By Location</div>
        <div id="searchByTag" class="btn btn-primary mt-3 mx-2" type="button">Search By Tag</div>
    </div>
</div>


@foreach($posts as $post)
<div class="card my-3 post" location="{{$post->location}}" tags="@foreach($post->tags as $tag){{trim($tag->name)}}-@endforeach">
    <div class="card-header">
        {{$post->title}}
    </div>
    <div class="card-body">{{$post->body}}</div>
    <div class="card-footer">
        <span class="badge-success mx-2 p-2 text-white float-left">{{$post->location}}</span> @foreach($post->tags as $tag)
        <span class="badge-info mx-2 p-2 text-white float-right">{{$tag->name}}</span> @endforeach
    </div>
</div>
@endforeach
@endsection