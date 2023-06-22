<?php

namespace App\Http\Controllers;

use App\Models\FormBimbingan;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardMahasiswaController extends Controller {

	public function profile() {
		$data = Mahasiswa::with(['dosen', 'kaprodi'])->find(Auth::id());
		return view('mahasiswa.dashboard.profile.profile', [
			'title' => 'Profile',
			'mahasiswa' => $data,
		]);
	}
	public function editProfile() {
		$data = Mahasiswa::with(['dosen', 'kaprodi'])->find(Auth::id());
		return view('mahasiswa.dashboard.profile.edit', [
			'title' => 'Edit',
			'mahasiswa' => $data
		]);
	}
	public function updateProfile(Request $request) {
		$mahasiswa = Auth::user();

		$request->validate([
			'nama' 						=> ['required'],
			'alamat' 					=> ['required'],
			'no_hp' 					=> ['required'],
			'nama_orangtua'		=> ['required'],
			'alamat_orangtua'	=> ['required'],
			'no_hp_orangtua' 	=> ['required']
		]);

    $mahasiswa->update($request->all());
		return redirect('/dashboard-mahasiswa')->with('success', 'Profil berhasil diperbaharui');
	}

	public function bimbingan() {
		$data = Mahasiswa::with(['formbimbingan'])->find(Auth::id());
		return view('mahasiswa.dashboard.bimbingan.bimbingan', [
			'title' => 'Bimbingan',
			'data'  => $data,
		]);
	}

  public function addBimbingan() {
    return view('mahasiswa.dashboard.bimbingan.add', [
      'title' => 'Tambah'
    ]);
  }

  public function storeBimbingan(Request $request) {
    $credentials = $request->validate([
      'semester' => ['required'],
      'tahun_akademik' => ['required'],
      'status' => ['required'],
      'ipk' => ['required'],
      'ips' => ['required'],
      'peringkat' => ['required'],
      'beasiswa' => ['required'],
			'surat_peringatan' => ['required'],
    ], [
      'semester.required' => 'Semester tidak boleh kosong',
      'tahun_akademik.required' => 'Tahun Akademik tidak boleh kosong',
      'status.required' => 'Semester Status boleh kosong',
      'ipk.required' => 'IPK tidak boleh kosong',
      'ips.required' => 'IPS tidak boleh kosong',
      'peringkat.required' => 'Peringkat tidak boleh kosong',
      'beasiswa.required' => 'Beasiswa tidak boleh kosong',
			'surat_peringatan.required' => 'Surat Peringatan Tidak Boleh Kosong (- jika tidak ada)'
    ]);

		$lastId = DB::table('form_bimbingan')->max('id');
		$newId = $lastId + 1;

		DB::table('form_bimbingan')->insert([
			'id'								=> $newId,
			'semester' 					=> $request->semester,
      'tahun_akademik' 		=> $request->tahun_akademik,
      'status' 						=> $request->status,
      'ipk' 							=> $request->ipk,
      'ips' 							=> $request->ips,
      'peringkat' 				=> $request->peringkat,
      'beasiswa' 					=> $request->beasiswa,
      'surat_peringatan' 	=> $request->surat_peringatan,
			'created_at'				=> now(),
			'updated_at'				=> now(),
			'mahasiswa_id'			=> auth()->user()->id,
		]);

		return redirect(route('dashboard-mahasiswa.bimbingan'))->with('success', 'Data berhasil ditambah');
  }

	public function editBimbingan($id) {
		$data = FormBimbingan::with(['mahasiswa', 'formevaluasi'])->findOrFail($id);
		return view('mahasiswa.dashboard.bimbingan.edit', [
			'title' => 'Ubah',
			'formbimbingan' => $data,
		]);
	}
	public function updateBimbingan(Request $request, $id) {
    $formbimbingan = FormBimbingan::findOrFail($id);
    $formbimbingan->update($request->all());
    return redirect('/dashboard-mahasiswa/bimbingan')->with('success', 'Form bimbingan berhasil diperbaharui');
	}

	public function riwayat() {
		$data = FormBimbingan::with(['formevaluasi'])->find(Auth::id());
		return view('mahasiswa.dashboard.riwayat.riwayat', [
			'title' => 'Riwayat',
			'data' => $data,
		]);
	}
}
