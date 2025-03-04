<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pekerjaan extends Model
{
    // Jika nama tabel bukan "pekerjaan"
    protected $table = 'pekerjaan';

    // Jika primary key bukan "id"
    protected $primaryKey = 'id_pekerjaan';

    // Nonaktifkan timestamps jika tabel tidak memiliki kolom created_at dan updated_at
    public $timestamps = false;

    // Mass assignment protection
    protected $fillable = [
        'nama_pekerjaan', // Kolom untuk menyimpan nama pekerjaan (misalnya: Pelajar/Mahasiswa, Swasta, Pegawai Negeri, dll.)
    ];

    // Relasi ke model Responden
    public function responden()
    {
        return $this->hasMany(Responden::class, 'id_pekerjaan');
    }
}