@extends('layouts.app') 
@section('content')

<form action="/posts" method="POST">
    @csrf

    <div class="input-group mt-3">
        <label for="" class="font-weight-bold d-block mx-2">Title</label><br>

        <input type="text" name="title" class="form-control w-100">
    </div>

    <div class="input-group mt-3">
        <label for="" class="font-weight-bold d-block mx-2">Body</label><br>
        <textarea type="text" name="body" class="form-control w-100" rows="10"></textarea>
    </div>

    <div class="input-group mt-3">
        <label for="" class="font-weight-bold d-block mx-2">Location</label><br>
        <input type="text" name="location" class="form-control w-100">
    </div>

    <div class="input-group mt-3">
        <label for="" class="font-weight-bold d-block mx-2 w-100">Tags</label><br>
        <input type="checkbox" name="cars" id="" class="mx-3"> Cars
    </div>

    <div class="input-group mt-3">
        <input type="checkbox" name="money" id="" class="mx-3"> Money
    </div>

    <div class="input-group mt-3">
        <input type="checkbox" name="papers" id="" class="mx-3"> Papers
    </div>

    <div class="input-group mt-3">
        <input type="checkbox" name="personal" id="" class="mx-3"> Personal Stuff
    </div>
    <div class="input-group mt-3">
        <input type="checkbox" name="misc" id="" class="mx-3"> Misc </div>

    <button type="submit" class="btn btn-success my-4">Publish</button>
</form>
@endsection