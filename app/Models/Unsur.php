<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Unsur extends Model
{
    use HasFactory;

    protected $table = 'unsur';
    protected $primaryKey = 'id_unsur';
    public $timestamps = false;
    protected $fillable = [
        'id_unsur',
        'unsur',
    ];
}
