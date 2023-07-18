@extends('kaprodi.layouts.schema')

@section('kaprodi-mainbar')
  <div class="m-4 h-auto border w-100 overflow-auto">
    <header class="p-4 d-flex justify-content-center align-items-center flex-column">
      <h3 class="fw-bolder border-bottom">Ubah Bimbingan</h3>
      <p>DAFTAR MAHASISWA BIMBINGAN</p>
      @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{ session('success') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      @endif
    </header>


    <div class="mx-5 mb-5 pb-3 d-flex justify-content-center align-items-center flex-column">
      <form action="/dashboard-kaprodi/kelola" method="post" class="w-100 d-flex gap-3 justify-content-center align-items-end">
        @method('PUT')
        @csrf
        <label class="flex-grow-1 d-flex flex-column gap-2">
          Nama Mahasiswa
          <input type="text" class="form-control" placeholder="" value="{{ $mahasiswa->nama }}" disabled>
        </label>
        <label class="flex-grow-1 d-flex flex-column gap-2">
          Nama Dosen
          <select type="text" class="form-select">
            @foreach($semuaDosen as $dosen)
              <option value="">{{ $dosen->nama }} ({{ $dosen->id }})</option>
            @endforeach
          </select>
        </label>
        <button type="submit" class="btn btn-primary">Ubah</button>
      </form>
    </div>
  </div>
@endsection
