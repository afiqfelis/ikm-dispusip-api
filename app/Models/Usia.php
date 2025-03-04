<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usia extends Model
{
    // Jika nama tabel bukan "usia"
    protected $table = 'usia';

    // Jika primary key bukan "id"
    protected $primaryKey = 'id_usia';

    // Nonaktifkan timestamps jika tabel tidak memiliki kolom created_at dan updated_at
    public $timestamps = false;

    // Mass assignment protection
    protected $fillable = [
        'range_usia', // Kolom untuk menyimpan range usia (misalnya: 18-25, 26-35, dll.)
    ];

    // Relasi ke model Responden
    public function responden()
    {
        return $this->hasMany(Responden::class, 'id_usia');
    }
}