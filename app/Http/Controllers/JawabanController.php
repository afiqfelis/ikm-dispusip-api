<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Jawaban;

class JawabanController extends Controller
{
    public function index()
    {
        $jawaban = Jawaban::all();
        return response()->json($jawaban);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'deskripsi' => 'required|string',
            'nilai_jawaban' => 'required|numeric',
            'id_pertanyaan' => 'required|exists:pertanyaan,id_pertanyaan', // Perbaiki dari 'jawaban' ke 'id_pertanyaan'
        ]);

        $jawaban = Jawaban::create($validated);
        return response()->json($jawaban, 201);
    }   
    public function destroyByPertanyaan($id_pertanyaan)
    {
        Jawaban::where('id_pertanyaan', $id_pertanyaan)->delete();
        return response()->json(null, 204); // No Content
    }
}
