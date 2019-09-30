@extends('layouts.main')
@section('objects')
    <div class="item">
        <div class="description" style="float: right">
        <img src="{{asset('img/'.$object->img)}}" style="width: 350px; margin-right: 15px" align="left">
            <span class="desc-heading">Тип объекта: </span>{{$object->type}}<br>
            <span class="desc-heading">Описание: </span>{{$object->description}}<br>
            <span class="desc-heading">Адрес: </span>{{$object->street}}, {{$object->house}}<br>
            <span class="desc-heading">Цена: </span>{{$object->price}} руб.
        </div>
    </div>
@endsection
