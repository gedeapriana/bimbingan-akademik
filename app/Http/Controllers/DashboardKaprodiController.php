<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\FormEvaluasi;
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
    $idKaprodi = auth()->user()->id;

    $data = DB::table('mahasiswa')
      ->select('mahasiswa.nama','form_bimbingan.id', 'form_bimbingan.semester', 'form_bimbingan.tahun_akademik', 'form_bimbingan.status', DB::raw('COUNT(form_evaluasi.id) as jumlah_evaluasi'))
      ->leftJoin('form_bimbingan', 'mahasiswa.id', '=', 'form_bimbingan.mahasiswa_id')
      ->leftJoin('form_evaluasi', 'form_bimbingan.id', '=', 'form_evaluasi.form_bimbingan_id')
      ->where('mahasiswa.kaprodi_id', $idKaprodi)
      ->whereNotNull('form_bimbingan.id') // Hanya ambil mahasiswa yang memiliki form_bimbingan
      ->groupBy('mahasiswa.nama', 'form_bimbingan.id', 'form_bimbingan.semester', 'form_bimbingan.tahun_akademik', 'form_bimbingan.status')
      ->paginate(10)->withQueryString();


    return view('kaprodi.dashboard.report.report', [
      'title' => 'Report',
      'semuaData' => $data,
    ]);
  }

  public function detailReport($id) {
    $data = FormEvaluasi::where('form_bimbingan_id', $id)->get();
    return view('kaprodi.dashboard.report.detail', [
      'title' => 'Detail Evaluasi',
      'semuaEvaluasi' => $data,
    ]);
  }


  public function sk(Request $request) {

    $data = SuratKeputusan::with(['kaprodi'])->where('kaprodi_id', auth()->user()->id)->orderBy('created_at', 'desc');
    $searchQuery = $request->search;

    if($request->search) {
      $data->where(function ($query) use ($searchQuery) {
        $query->where('nama', 'like', '%' . $searchQuery . '%')
          ->orWhere('tanggal', 'like', '%' . $searchQuery . '%')
          ->orWhere('nama_berkas', 'like', '%' . $searchQuery . '%');
        });
    }

    return view('kaprodi.dashboard.sk.sk', [
      'title' => 'Surat Keputusan',
      'semuaSk' => $data->paginate(5)->withQueryString(),
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

  public function destroy($id) {
    SuratKeputusan::destroy($id);
    return redirect('/dashboard-kaprodi/sk')->with('success', 'Surat Keterangan berhasil dihapus');
  }

  public function editSk($id) {
    $sk = SuratKeputusan::findOrFail($id);
    return view('kaprodi.dashboard.sk.update', [
      'title' => 'Ubah',
      'sk' => $sk
    ]);
  }

  public function updateSk(Request $request, $id) {

    $sk = SuratKeputusan::findOrFail($id);

    $credentials = $request->validate([
      'nama' => ['required'],
      'tanggal' => ['required'],
      'link' => ['max:10000', 'mimes:doc,pdf,docx']
    ], [
      'nama.required' => 'Nama surat tidak boleh kosong',
      'tanggal.required' => 'Tanggal tidak boleh kosong',
      'link.max' => 'File tidak boleh melebihi 10mb',
      'link.mimes' => 'File dalam bentuk doc, pdf atau docx',
    ]);

    if($request->file('link')) {
      $credentials['link'] = $request->file('link')->store('sk');
    }

    if($request->file('link')) {
      $sk->update([
        'nama' => $request->nama,
        'tanggal' => $request->tanggal,
        'link' => $request->file('link')->store('sk'),
        'nama_berkas' => $request->file('link')->getClientOriginalName(),
        'updated_at' => now(),
      ]);
    } else {
      $sk->update([
        'nama' => $request->nama,
        'tanggal' => $request->tanggal,
        'updated_at' => now(),
      ]);
    }

    return redirect('/dashboard-kaprodi/sk')->with('success', 'Surat Keterangan berhasil update');
  }
}
