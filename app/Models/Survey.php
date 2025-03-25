<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Survey extends Model
{
    protected $table = 'survey';    
    protected $primaryKey = 'id_survey';

    protected $fillable = [
        'id_survey',
        'pertanyaan_id_pertanyaan',
        'responden_id_responden',
        'jawaban',
        'created_at',
        'updated_at',
    ];

    public function pertanyaan()
    {
        return $this->belongsTo(Pertanyaan::class, 'pertanyaan_id_pertanyaan', 'id_pertanyaan');
    }
}
