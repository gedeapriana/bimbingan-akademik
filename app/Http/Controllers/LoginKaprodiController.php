<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginKaprodiController extends Controller {
	public function index() {
		return view('kaprodi.login.index', [
			'title' => 'login'
		]);
	}

  public function authenticate(Request $request) {
    $credentials = $request->validate([
      'id'	=> ['required'],
      'password'	  => ['required'],
    ]);

    if (Auth::guard('kaprodi')->attempt($credentials)) {
      $request->session()->regenerate();
      return redirect()->intended('/dashboard-kaprodi');
    }

    return back()->with([
      'login-error' => 'Nip Kaprodi atau password salah'
    ]);
  }
}
