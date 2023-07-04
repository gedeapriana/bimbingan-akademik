@extends('mahasiswa.layouts.schema')

@section('mahasiswa-mainbar')

  <div class="m-4 h-auto border">
    <header class="p-4 d-flex justify-content-center align-items-center flex-column">
      <h3 class="fw-bolder border-bottom">Detail Evaluasi</h3>
      <p>Detail evaluasi mahasiswa</p>
    </header>


    <div class="mx-5 mb-5 pb-3 d-flex flex-column">
      <table class="table table-bordered">
        <thead>
        <tr>
          <th scope="col">Tanggal</th>
          <th scope="col">Masalah</th>
          <th scope="col">Solusi</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td>{{ \Carbon\Carbon::parse($detail->tgl_evaluasi)->locale('id')->translatedFormat('d F Y') }}</td>
          <td>{{ $detail->masalah }}</td>
          <td>{{ $detail->solusi }}</td>
        </tr>
        </tbody>
      </table>

      <a href="/dashboard-mahasiswa/riwayat" class="btn btn-danger ms-auto">Kembali</a>
    </div>
  </div>
@endsection
