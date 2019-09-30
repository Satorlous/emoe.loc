@extends('layouts.main')
@section('title')
    Недвижимость
@endsection
@section('objects')
    @foreach($objects as $object)
        <div class="object">
            <img src="{{asset('img/'.$object->img)}}">
            <div class="descr">
                <p>{{$object->street}} Street, {{$object->house}}</p>
                <p>Цена: {{$object->price}}</p>
                <p>Тип: {{$object->type}}</p>
            </div>
            <a id="btn" href="{{url('view/'.$object->id)}}">Посмотреть</a>
        </div>
    @endforeach
@endsection
