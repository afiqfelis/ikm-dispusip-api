<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

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
        // Validasi input dan password admin
        $validated = $request->validate([
            'nama_unit' => 'required|string|max:50',
            'password' => 'required|string', // Tambahkan validasi password
        ]);

        // Verifikasi password admin
        if (!Hash::check($validated['password'], $request->user()->password)) {
            return response()->json([
                'message' => 'Password admin salah. Akses ditolak.'
            ], 403);
        }

        // Simpan unit baru
        $unit = Unit::create(['nama_unit' => $validated['nama_unit']]);
        return response()->json($unit, 201);
    }

    // Mengupdate unit layanan
    public function update(Request $request, $id_unit)
    {
        // Validasi input dan password admin
        $validated = $request->validate([
            'nama_unit' => 'required|string|max:50',
            'password' => 'required|string',
        ]);

        // Verifikasi password admin
        if (!Hash::check($validated['password'], $request->user()->password)) {
            return response()->json([
                'message' => 'Password admin salah. Akses ditolak.'
            ], 403);
        }

        // Update unit
        $unit = Unit::findOrFail($id_unit);
        $unit->update(['nama_unit' => $validated['nama_unit']]);
        return response()->json($unit);
    }

    // Menghapus unit layanan
    public function destroy(Request $request, $id_unit)
    {
        // Validasi password admin
        $validated = $request->validate([
            'password' => 'required|string',
        ]);

        if (!Hash::check($validated['password'], $request->user()->password)) {
            return response()->json([
                'message' => 'Password admin salah. Akses ditolak.'
            ], 403);
        }

        // Hapus data survey terkait unit
        DB::table('survey')->where('id_unit', $id_unit)->delete();

        // Hapus unit
        $unit = Unit::findOrFail($id_unit);
        $unit->delete();

        return response()->json(['message' => 'Unit berhasil dihapus'], 200);
    }
}