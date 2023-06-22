<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardDosenController extends Controller
{
  public function profile() {
		return view('dosen.dashboard.profile', [
			'title' => 'Dashboard'
		]);
	}
}
