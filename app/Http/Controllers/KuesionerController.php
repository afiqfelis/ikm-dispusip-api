<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Unit;
use App\Models\Usia;
use App\Models\JenisKelamin;
use App\Models\Pendidikan;
use App\Models\Pekerjaan;
use App\Models\Responden;


class KuesionerController extends Controller
{
    public function index()
    {
        $unit = Unit::all();
        $usia = Usia::all();
        $jenisKelamin = JenisKelamin::all();
        $pendidikan = Pendidikan::all();
        $pekerjaan = Pekerjaan::all();

        return response()->json([
            'unit' => $unit,
            'usia' => $usia,
            'jenisKelamin' => $jenisKelamin,
            'pendidikan' => $pendidikan,
            'pekerjaan' => $pekerjaan
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'id_unit' => 'required|exists:unit,id_unit',
            'id_usia' => 'required|exists:usia,id_usia',
            'id_jenis_kelamin' => 'required|exists:jenis_kelamin,id_jenis_kelamin',
            'id_pendidikan' => 'required|exists:pendidikan,id_pendidikan',
            'id_pekerjaan' => 'required|exists:pekerjaan,id_pekerjaan',
        ]);

        $responden = Responden::create($validated);
        return response()->json($responden, 201);
    }
}
