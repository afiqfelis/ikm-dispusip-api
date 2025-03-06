<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Unsur extends Model
{
    use HasFactory;

    protected $table = 'unsur';
    protected $fillable = [
        'id_unsur',
        'unsur',
    ];
}
