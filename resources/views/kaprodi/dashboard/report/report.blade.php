
@extends('kaprodi.layouts.schema')

@section('kaprodi-mainbar')
  <div class="m-4 h-auto border w-100 overflow-auto">
    <header class="p-4 d-flex justify-content-center align-items-center flex-column">
      <h3 class="fw-bolder border-bottom">Report Bimbingan</h3>
      <p>DAFTAR MAHASISWA BIMBINGAN</p>
      @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{ session('success') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      @endif
    </header>

    <div class="mx-5 mb-5 pb-3 d-flex justify-content-center align-items-center flex-column">
      <table class="table table-hover">
        <thead>
        <tr>
          <th scope="col">NO</th>
          <th scope="col">NAMA</th>
          <th scope="col">SEMESTER</th>
          <th scope="col">T.A</th>
          <th scope="col">STATUS</th>
          <th scope="col">JUMLAH EVALUASI</th>
        </tr>
        </thead>
        <tbody>
          @foreach ($semuaData as $data)
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $data['nama'] }}</td>
            <td>{{ $data['semester'] }}</td>
            <td>{{ $data['tahun_akademik'] }}</td>
            <td>{{ $data['status'] }}</td>
            <td>{{ $data['jumlah_evaluasi'] }}</td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
@endsection
