<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\Kaprodi;
use App\Models\Mahasiswa;
use App\Models\SuratKeputusan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardKaprodiController extends Controller
{
  public function profile()
  {
    $data = Kaprodi::findOrFail(Auth::id());
    return view('kaprodi.dashboard.profile.profile', [
      'title' => 'Dashboard Kaprodi',
      'kaprodi' => $data,
    ]);
  }

  public function profileEdit()
  {
    $data = Kaprodi::findOrFail(Auth::id());
    return view('kaprodi.dashboard.profile.edit', [
      'title' => 'Ubah',
      'kaprodi' => $data,
    ]);
  }

  public function profileUpdate(Request $request)
  {
    $kaprodi = Auth::user();
    $request->validate([
      'nama' => 'required|min:3',
    ], [
      'nama.required' => 'Nama harus diisi',
      'nama.min' => 'Nama minimal 3 karakter',
    ]);
    $kaprodi->update($request->all());
    return redirect('/dashboard-kaprodi')->with('success', 'Data berhasil diubah');
  }

  public function kelola(Request $request)
  {
    $idKaprodi = Auth::id();
    $searchQuery = $request->search;
    $data = Mahasiswa::with(['dosen', 'kaprodi'])->where('kaprodi_id', $idKaprodi);

    if ($searchQuery) {
      $data->where(function ($query) use ($searchQuery) {
        $query->where('nama', 'like', '%' . $searchQuery . '%')
          ->orWhere('id', 'like', '%' . $searchQuery . '%')
          ->orWhereHas('dosen', function ($query) use ($searchQuery) {
            $query->where('nama', 'like', '%' . $searchQuery . '%')
              ->orWhere('id', 'like', '%' . $searchQuery . '%');
          });
      });
    }

    return view('kaprodi.dashboard.kelola.kelola', [
      'title' => 'Kelola',
      'semuaData' => $data->get(),
    ]);
  }

  public function ubahBimbingan($id) {
    $mahasiswa = Mahasiswa::findOrFail($id);
    $semuaDosen = Dosen::where('prodi', Auth::user()->prodi)->get();
    return view('kaprodi.dashboard.kelola.ubah', [
      'title' => 'Kelola',
      'semuaDosen' => $semuaDosen,
      'mahasiswa' => $mahasiswa,
    ]);
  }

  public function updateBimbingan(Request $request, $id) {

    $mahasiswa = Mahasiswa::find($id);
    $dosen = Dosen::find($request->dosen);

    $credentials = $request->validate([
      'dosen' => ['required']
    ], [
      'dosen.required' => "Dosen harus diisi",
    ]);

    $mahasiswa->update([
      'dosen_id' => $credentials['dosen']
    ]);

    $mahasiswa->save();
    return redirect('/dashboard-kaprodi/kelola')->with('success', 'Pembimbing mahasiswa'. $mahasiswa->nama .' - '. $dosen->nama .' berhasil diperbaharui');
  }

  public function report() {
    $semuaMahasiswa = Mahasiswa::with(['formbimbingan', 'formbimbingan.formevaluasi'])->where('kaprodi_id', Auth::user()->id)->get();
    $data = [];
    foreach ($semuaMahasiswa as $mahasiswa) {
      foreach ($mahasiswa->formbimbingan as $formbimbingan) {
        $data[] = [
          'nama' => $mahasiswa->nama,
          'semester' => $formbimbingan->semester,
          'tahun_akademik' => $formbimbingan->tahun_akademik,
          'status' => $formbimbingan->status,
          'jumlah_evaluasi' => $formbimbingan->formevaluasi->count(),
        ];
      }
    }

    return view('kaprodi.dashboard.report.report', [
      'title' => 'Report',
      'semuaData' => $data,
    ]);
  }


  public function sk() {
    $data = SuratKeputusan::with(['kaprodi'])->get();
    return view('kaprodi.dashboard.sk.sk', [
      'title' => 'Surat Keputusan',
      'semuaSk' => $data
    ]);
  }

  public function addSk() {
    return view('kaprodi.dashboard.sk.add', [
      'title' => 'Tambah Surat Keputusan',
    ]);
  }

  public function storeSk(Request $request) {

    $credentials = $request->validate([
      'nama' => ['required'],
      'tanggal' => ['required'],
      'fileSk' => ['required', 'max:10000', 'mimes:doc,pdf,docx']
    ], [
      'nama.required' => 'Nama surat tidak boleh kosong',
      'tanggal.required' => 'Tanggal tidak boleh kosong',
      'fileSk.required' => 'File tidak boleh kosong',
      'fileSk.max' => 'File tidak boleh melebihi 10mb',
      'fileSk.mimes' => 'File dalam bentuk doc, pdf atau docx',
    ]);


    if($request->file('fileSk')) {
      $credentials['fileSk'] = $request->file('fileSk')->store('sk');
    }

		$lastId = DB::table('surat_keputusan')->max('id');
		$newId = $lastId + 1;

    DB::table('surat_keputusan')->insert([
      'id' => $newId,
      'nama' => $request->nama,
      'tanggal' => $request->tanggal,
      'link' => $request->file('fileSk')->store('sk'),
      'nama_berkas' => $request->file('fileSk')->getClientOriginalName(),
      'kaprodi_id' => auth()->user()->id,
      'created_at' => now(),
      'updated_at' => now(),
    ]);

    return redirect('/dashboard-kaprodi/sk')->with('success', 'Surat Keterangan berhasil ditambah');
  }
}
