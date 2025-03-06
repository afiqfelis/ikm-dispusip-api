<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Unsur;

class UnsurController extends Controller
{
    public function index()
    {
        $unsur = Unsur::all();
        return response()->json($unsur);
    }
}
