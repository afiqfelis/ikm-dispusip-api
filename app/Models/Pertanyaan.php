<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pertanyaan extends Model
{
    use HasFactory;

    protected $table = 'pertanyaan';
    protected $primaryKey = 'id_pertanyaan';
    protected $fillable = ['pertanyaan', 'id_unsur'];
    public $timestamps = false;

    // Relasi dengan tabel 'unsur'
    public function unsur()
    {
        return $this->belongsTo(Unsur::class, 'id_unsur', 'id_unsur');
    }

    // Relasi dengan tabel 'jawaban'
    public function jawaban()
    {
        return $this->hasMany(Jawaban::class, 'id_pertanyaan', 'id_pertanyaan');
    }
}