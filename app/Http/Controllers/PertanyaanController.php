<?php

namespace App\Http\Controllers;

use App\Models\Pertanyaan;
use App\Models\Unsur;
use Illuminate\Http\Request;

class PertanyaanController extends Controller
{
    // Menampilkan semua pertanyaan
    public function index()
    {
        $pertanyaans = Pertanyaan::all();
        return response()->json($pertanyaans);
    }

    // Menambah pertanyaan baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'pertanyaan' => 'required|string',
            'unsur_id_unsur' => 'required|exists:unsur,id_unsur',
        ]);

        $pertanyaan = Pertanyaan::create($validated);
        return response()->json($pertanyaan, 201);
    }
}