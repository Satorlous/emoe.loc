<?php

namespace App\Http\Controllers;

use App\House;
use Illuminate\Http\Request;

class GuestController extends Controller
{
    public function Index()
    {
        $objects = House::all();
        return view('index')->with([
            'objects' => $objects,
        ]);
    }

    public function SortByDesc()
    {
        $objects = House::all()->sortByDesc('price');
        return view('index')->with([
            'objects' => $objects,
            'sort' => 'desc',
        ]);
    }

    public function SortByAsc()
    {
        $objects = House::all()->sortByDesc('price')->reverse();
        return view('index')->with([
            'objects' => $objects,
            'sort' => 'asc',
        ]);
    }

    public function Search(Request $request)
    {
        $house = $request->post('house');
        $objects = House::all()->where('house', $house);
        return view('index')->with([
            'objects' => $objects,
        ]);
    }

    public function updateCurrent()
    {

    }
}
