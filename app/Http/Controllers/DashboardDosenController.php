<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\FormBimbingan;
use App\Models\FormEvaluasi;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

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
  public function detailEvaluasiBimbingan($id) {
    $data = FormEvaluasi::findOrFail($id);
    return view('dosen.dashboard.report-bimbingan.detail', [
      'title' => 'Detail Evaluasi Bimbingan',
      'evaluasi' => $data,
    ]);
  }
  public function updateEvaluasiBimbingan(Request $request, $id) {
    $request->validate([
      'solusi' => 'required',
    ], [
      'solusi.required' => 'Solusi harus diisi',
    ]);

    if ($request->selesai == '1') {
      DB::table('form_evaluasi')
        ->where('id', $id)
        ->update([
          'solusi' => $request->solusi,
          'selesai' => 'true',
        ]);
    } else {
      DB::table('form_evaluasi')
        ->where('id', $id)
        ->update([
          'solusi' => $request->solusi,
          'selesai' => 'false',
        ]);
    }

/*    Session::flash('success', 'Data berhasil disimpan.');*/
    return back()->with('success', 'Data berhasil disimpan.');
  }
  public function riwayat() {
    $data = Mahasiswa::with(['formbimbingan', 'formbimbingan.formevaluasi'])->whereHas('formbimbingan.formevaluasi', function ($query) {
      $query->where('selesai', 'true');
    })->orWhereHas('formbimbingan.formevaluasi', function ($query) {
      $query->where('selesai', 'false');
    })->get();

    return view('dosen.dashboard.riwayat.riwayat', [
      'title' => 'Riwayat',
      'daftarMahasiswa' => $data,
    ]);
  }
  public function riwayatList($id) {

    $formevaluasi = DB::table('form_evaluasi')
      ->whereIn('selesai', ['true', 'false'])
      ->whereIn('form_bimbingan_id', function ($query) use ($id) {
        $query->select('id')
          ->from('form_bimbingan')
          ->where('mahasiswa_id', $id);
      })
      ->orderBy('selesai', 'asc')
      ->get();

    return view('dosen.dashboard.riwayat.list', [
      'title' => 'Riwayat',
      'daftarEvaluasi' => $formevaluasi
    ]);
  }
}
