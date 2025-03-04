<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Responden extends Model
{
    // Jika nama tabel bukan "respondens"
    protected $table = 'responden';

    // Jika primary key bukan "id"
    protected $primaryKey = 'id_responden';

    // Nonaktifkan timestamps jika tabel tidak memiliki kolom created_at dan updated_at
    public $timestamps = false;

    // Mass assignment protection
    protected $fillable = [
        'id_survey',
        'id_jenis_kelamin',
        'id_usia',
        'id_pendidikan',
        'id_pekerjaan',
    ];

    // Relasi ke model Survey
    public function survey()
    {
        return $this->belongsTo(Survey::class, 'id_survey');
    }

    // Relasi ke model JenisKelamin
    public function jenisKelamin()
    {
        return $this->belongsTo(JenisKelamin::class, 'id_jenis_kelamin');
    }

    // Relasi ke model Usia
    public function usia()
    {
        return $this->belongsTo(Usia::class, 'id_usia');
    }

    // Relasi ke model Pendidikan
    public function pendidikan()
    {
        return $this->belongsTo(Pendidikan::class, 'id_pendidikan');
    }

    // Relasi ke model Pekerjaan
    public function pekerjaan()
    {
        return $this->belongsTo(Pekerjaan::class, 'id_pekerjaan');
    }
}