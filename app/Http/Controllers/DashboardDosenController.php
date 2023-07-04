<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\FormEvaluasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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

  public function profileUpdate(Request $request) {
    $dosen = Auth::user();
    $request->validate([
      'nama'      => 'required|min:3',
      'golongan'  => 'required',
    ], [
      'nama.required'     => 'Nama harus diisi',
      'nama.min'          => 'Nama minimal 3 karakter',
      'golongan.required' => 'Golongan harus diisi',
    ]);
    $dosen->update($request->all());
    return redirect('/dashboard-dosen')->with('success', 'Data berhasil diubah');
  }

  public function reportBimbingan() {
    $data = Dosen::with(['mahasiswa'])->findOrFail(Auth::id());
    return view('dosen.dashboard.report-bimbingan.report-bimbingan', [
      'title' => 'Laporan Bimbingan',
      'daftarMahasiswa' => $data->mahasiswa,
    ]);
  }

  public function evaluasiBimbingan($id) {
    $data = DB::table('mahasiswa')
      ->join('form_bimbingan', 'mahasiswa.id', '=', 'form_bimbingan.mahasiswa_id')
      ->join('form_evaluasi', 'form_bimbingan.id', '=', 'form_evaluasi.form_bimbingan_id')
      ->select('mahasiswa.nama', 'form_bimbingan.*', 'form_evaluasi.*')
      ->where('mahasiswa.id', $id)
      ->orderBy('form_bimbingan.created_at', 'desc')
      ->get();


    return view('dosen.dashboard.report-bimbingan.evaluasi', [
      'title' => 'Evaluasi Bimbingan',
      'daftarEvaluasi' => $data,
    ]);
  }
}
