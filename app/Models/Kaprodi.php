<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Kaprodi extends Model
{
	use HasFactory;
	protected $table = "kaprodi";
	protected $guarded = [];
	protected $primaryKey = "id";
	public $timestamps = false;

	public function mahasiswa():HasMany {
		return $this->hasMany(Mahasiswa::class);
	}
}
