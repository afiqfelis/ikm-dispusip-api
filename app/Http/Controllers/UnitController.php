<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    // Menampilkan semua unit layanan
    public function index()
    {
        $units = Unit::all();
        return response()->json($units);
    }

    // Menambah unit layanan baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_unit' => 'required|string|max:50',
        ]);

        $unit = Unit::create($validated);
        return response()->json($unit, 201);
    }
}