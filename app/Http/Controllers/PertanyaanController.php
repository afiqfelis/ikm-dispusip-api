<?php

namespace App\Http\Controllers;

use App\Models\Pertanyaan;
use Illuminate\Http\Request;

class PertanyaanController extends Controller
{
    // Menampilkan semua pertanyaan
    public function index()
    {
        // Ambil semua pertanyaan beserta relasi unsur
        $pertanyaan = Pertanyaan::with('unsur')->get();

        // Format ulang data sesuai kebutuhan
        $formattedData = $pertanyaan->map(function ($item) {
            return [
                'id_pertanyaan' => $item->id_pertanyaan,
                'pertanyaan' => $item->pertanyaan,
                'unsur' => $item->unsur ? [
                    'id_unsur' => $item->unsur->id_unsur,
                    'unsur' => $item->unsur->unsur,
                ] : null, // Handle jika unsur tidak ada
            ];
        });

        return response()->json($formattedData);
    }

    // Menambah pertanyaan baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'pertanyaan' => 'required|string',
            'id_unsur' => 'required|exists:unsur,id_unsur',
        ]);

        $pertanyaan = Pertanyaan::create($validated);
        return response()->json($pertanyaan, 201);
    }
}