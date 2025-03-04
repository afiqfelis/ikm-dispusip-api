<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pendidikan extends Model
{
    // Jika nama tabel bukan "pendidikan"
    protected $table = 'pendidikan';

    // Jika primary key bukan "id"
    protected $primaryKey = 'id_pendidikan';

    // Nonaktifkan timestamps jika tabel tidak memiliki kolom created_at dan updated_at
    public $timestamps = false;

    // Mass assignment protection
    protected $fillable = [
        'tingkat_pendidikan', // Kolom untuk menyimpan tingkat pendidikan (misalnya: SMA/SMK, Diploma, Sarjana, dll.)
    ];

    // Relasi ke model Responden
    public function responden()
    {
        return $this->hasMany(Responden::class, 'id_pendidikan');
    }
}