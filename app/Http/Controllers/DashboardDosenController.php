<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardDosenController extends Controller
{
  public function profile() {
    $data = Dosen::findOrFail(Auth::id());
		return view('dosen.dashboard.profile.profile', [
			'title' => 'Dashboard',
      'dosen' => $data,
		]);
	}

  public function profileEdit() {
    $data = Dosen::findOrFail(Auth::id());
    return view('dosen.dashboard.profile.edit', [
      'title' => 'Ubah',
      'dosen' => $data,
    ]);
  }
}
