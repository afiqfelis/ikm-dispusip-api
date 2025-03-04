<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JenisKelamin extends Model
{
    // Jika nama tabel bukan "jenis_kelamin"
    protected $table = 'jenis_kelamin';

    // Jika primary key bukan "id"
    protected $primaryKey = 'id_jenis_kelamin';

    // Nonaktifkan timestamps jika tabel tidak memiliki kolom created_at dan updated_at
    public $timestamps = false;

    // Mass assignment protection
    protected $fillable = [
        'nama_jenis_kelamin', // Kolom untuk menyimpan nama jenis kelamin (misalnya: Laki-laki, Perempuan)
    ];

    // Relasi ke model Responden
    public function responden()
    {
        return $this->hasMany(Responden::class, 'id_jenis_kelamin');
    }
}