<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SuratKeputusan extends Model
{
	use HasFactory;
	protected $table = "surat_keputusan";
	protected $guarded = [];

  public function kaprodi():BelongsTo {
    return $this->belongsTo(Kaprodi::class);
  }
}
