<?php

namespace App\Http\Controllers;

use App\House;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function View($id)
    {
        $house = House::find($id);
        return view('item')->with([
            'object' => $house,
        ]);
    }
}
