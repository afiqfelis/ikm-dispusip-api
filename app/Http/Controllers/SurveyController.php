<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use App\Models\Survey;
use Illuminate\Http\Request;

class SurveyController extends Controller
{
    // Rekaptulasi survey per unit layanan
    public function rekaptulasi(Request $request)
    {
        $validated = $request->validate([
            'unit_id' => 'required|exists:unit,id_unit',
            'tahun' => 'required|integer',
            'triwulan' => 'required|in:1,2,3,4',
        ]);

        $unitId = $request->input('unit_id');
        $tahun = $request->input('tahun');
        $triwulan = $request->input('triwulan');

        // Query data survey berdasarkan unit, tahun, dan triwulan
        $data = Survey::where('id_unit', $unitId)
            ->whereYear('submitted_at', $tahun)
            ->where(function ($query) use ($triwulan) {
                $startMonth = ($triwulan - 1) * 3 + 1;
                $endMonth = $startMonth + 2;
                $query->whereMonth('submitted_at', '>=', $startMonth)
                      ->whereMonth('submitted_at', '<=', $endMonth);
            })
            ->with(['responden', 'pertanyaan'])
            ->get();

        return response()->json($data);
    }
}