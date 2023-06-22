<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginKaprodiController extends Controller {
	public function index() {
		return view('kaprodi.login.index', [
			'title' => 'login'
		]);
	}
}
