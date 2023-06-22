@extends('mahasiswa.layouts.schema')

@section('mahasiswa-mainbar')
<div class="m-4 h-auto border">
  <header class="p-4 d-flex justify-content-center align-items-center flex-column">
    <h3 class="fw-bolder border-bottom">Riwayat Bimbingan</h3>
    <p>Riwayat bimbingan Mahasiswa</p>
  </header>

  {{ $data }}

  <div class="mx-5 mb-5 pb-3">
    <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col" class="">No</th>
          <th scope="col" class="">Tanggal</th>
          <th scope="col">Detail</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td></td>
          <td></td>
          <td>
            <a href="" class="btn btn-success">Lihat Detail</a>
          </td>
        </tr>
      </tbody>
    </table>
  </div>

</div>
@endsection