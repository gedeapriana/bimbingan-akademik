<?php

namespace App\Http\Controllers;

use App\Models\Kaprodi;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
}
