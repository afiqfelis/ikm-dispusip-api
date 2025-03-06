<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use App\Models\Responden;
use Illuminate\Http\Request;

class RespondenController extends Controller
{
    // Rekaptulasi responden per unit layanan
    public function responden(Request $request)
    {
        $validated = $request->validate([
            'unit_id' => 'required|exists:unit,id_unit',
        ]);

        $unitId = $request->input('unit_id');

        // Query data responden berdasarkan unit
        $data = Responden::whereHas('survey', function ($query) use ($unitId) {
            $query->where('id_unit', $unitId);
        })
        ->with(['jenisKelamin', 'usia', 'pendidikan', 'pekerjaan'])
        ->get();

        return response()->json($data);
    }

}