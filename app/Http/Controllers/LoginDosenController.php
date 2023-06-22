<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginDosenController extends Controller
{
	public function index() {
		return view('dosen.login.index', [
			'title' => 'login'
		]);
	}

	public function authenticate(Request $request) {
		$credentials = $request->validate([
			'id'				=> ['required'],
			'password'	=> ['required'],
		]);

		if (Auth::guard('dosen')->attempt($credentials)) {
			$request->session()->regenerate();
			return redirect()->intended('/dashboard-dosen');
		}

		return back()->with([
			'login-error' => 'Nip atau password salah'
		]);
	}
}
