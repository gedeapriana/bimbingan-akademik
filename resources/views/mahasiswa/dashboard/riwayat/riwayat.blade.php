@extends('mahasiswa.layouts.schema')

@section('mahasiswa-mainbar')
<div class="m-4 h-auto border">
  <header class="p-4 d-flex justify-content-center align-items-center flex-column">
    <h3 class="fw-bolder border-bottom">Riwayat Bimbingan</h3>
    <p>Riwayat bimbingan Mahasiswa</p>
  </header>

  <div class="mx-5 mb-5 pb-3">

    <div class="dropdown mb-3">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Semester
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Semua</a></li>
        <li><a class="dropdown-item" href="#">Another action</a></li>
        <li><a class="dropdown-item" href="#">Something else here</a></li>
      </ul>
    </div>

    <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col" class="">No</th>
          <th scope="col" class="">Tanggal</th>
          <th scope="col">Detail</th>
        </tr>
      </thead>
      <tbody>

      @foreach($data as $riwayat)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ \Carbon\Carbon::parse($riwayat->tgl_evaluasi)->translatedFormat('d F Y') }}</td>
          <td>
            <a href="/dashboard-mahasiswa/riwayat/{{ $riwayat->id }}" class="btn btn-success">Lihat Detail</a>
          </td>
        </tr>
      @endforeach
      </tbody>
    </table>
  </div>

</div>
@endsection
