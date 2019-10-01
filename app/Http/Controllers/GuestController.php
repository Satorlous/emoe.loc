<?php

namespace App\Http\Controllers;

use App\House;
use App\UniUser;
use Illuminate\Http\Request;
use mysql_xdevapi\Session;

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

    public function UpdateMonitor()
    {
        $visitors = UniUser::all();
        $guestCount = $visitors->where('guest', true)->count();
        $authorizedUsers = $visitors->where('guest', false);
        $data = [
            'guestCount' => $guestCount,
            'users' => $authorizedUsers,
        ];
        return json_encode($data);
    }
}
