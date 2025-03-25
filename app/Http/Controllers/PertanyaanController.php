<?php

namespace App\Http\Controllers;

use App\Models\Pertanyaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PertanyaanController extends Controller
{
    // Menampilkan semua pertanyaan dengan relasi
    public function index()
    {
        // Ambil semua pertanyaan beserta relasi 'unsur' dan 'jawaban'
        $pertanyaan = Pertanyaan::with(['unsur', 'jawaban'])->get();

        // Format ulang data untuk respons JSON
        $formattedData = $pertanyaan->map(function ($item) {
            return [
                'id_pertanyaan' => $item->id_pertanyaan,
                'pertanyaan' => $item->pertanyaan,
                'unsur' => $item->unsur ? [
                    'id_unsur' => $item->unsur->id_unsur,
                    'unsur' => $item->unsur->unsur,
                ] : null,
                'jawaban' => $item->jawaban->map(function ($jawaban) {
                    return [
                        'id_jawaban' => $jawaban->id_jawaban,
                        'deskripsi' => $jawaban->deskripsi,
                        'nilai_jawaban' => $jawaban->nilai_jawaban,
                    ];
                }),
            ];
        });

        return response()->json($formattedData);
    }

    // Menambah pertanyaan baru
    public function store(Request $request)
    {
        // Validasi input
        $validated = $request->validate([
            'pertanyaan' => 'required|string',
            'id_unsur' => 'required|exists:unsur,id_unsur',
        ]);

        // Simpan pertanyaan baru
        $pertanyaan = Pertanyaan::create($validated);
        return response()->json($pertanyaan, 201);
    }

    // Mengupdate pertanyaan
    public function update(Request $request, $id_pertanyaan)
    {
        $validated = $request->validate([
            'pertanyaan' => 'required|string',
            'id_unsur' => 'required|exists:unsur,id_unsur',
        ]);

        $pertanyaan = Pertanyaan::findOrFail($id_pertanyaan);
        $pertanyaan->update($validated);

        // Hapus jawaban lama terkait pertanyaan
        $pertanyaan->jawaban()->delete();

        return response()->json($pertanyaan);
    }

    // Menghapus pertanyaan
    public function destroy($id_pertanyaan)
    {
        // Cari pertanyaan
        $pertanyaan = Pertanyaan::findOrFail($id_pertanyaan);

        // Hapus semua data survey terkait pertanyaan
        DB::table('survey')->where('pertanyaan_id_pertanyaan', $id_pertanyaan)->delete();

        // Hapus pertanyaan (jawaban akan otomatis terhapus karena ON DELETE CASCADE di jawaban)
        $pertanyaan->delete();

        return response()->json(['message' => 'Pertanyaan dan data terkait berhasil dihapus'], 200);
    }
}