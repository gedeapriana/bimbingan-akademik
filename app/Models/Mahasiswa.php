<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Mahasiswa extends Authenticatable
{
    use HasFactory;
    protected $table = 'mahasiswa';
    protected $guarded = [];

    public function dosen() {
        return $this->belongsTo(Dosen::class);
    }

    public function kaprodi() {
        return $this->belongsTo(Kaprodi::class);
    }

    public function formbimbingan() {
        return $this->hasMany(FormBimbingan::class);
    }
}
