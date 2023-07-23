@extends('kaprodi.layouts.schema')

@section('kaprodi-mainbar')
    <div class="m-4 h-auto border w-100 overflow-auto">
        <header class="p-4 d-flex justify-content-center align-items-center flex-column">
            <h3 class="fw-bolder border-bottom">Surat Keputusan</h3>
            <p>DAFTAR SURAT KEPUTUSAN</p>
            @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif
        </header>

        <div class="mx-5 mb-5 pb-3 d-flex justify-content-center align-items-center flex-column">
            <a href="/dashboard-kaprodi/sk/tambah" class="btn btn-success ms-auto my-2">
                <span class="d-flex gap-2 fw-bold justify-content-center align-items-center">
                    <x-carbon-folder-add style="width: 20px" />Tambah SK
                </span>
            </a>
            <div class="table-responsive w-100">
                <table class="table table-hover align-middle">
                    <thead>
                        <tr>
                            <th scope="col" class="">
                                NO
                            </th>
                            <th scope="col" class="w-25">NAMA</th>
                            <th scope="col">TANGGAL</th>
                            <th scope="col">BERKAS</th>
                            <th scope="col">OPSI</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if (count($semuaSk) > 0)
                            @foreach ($semuaSk as $sk)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $sk->nama }}</td>
                                    <td>{{ \Carbon\Carbon::parse($sk->tanggal)->locale('id')->translatedFormat('d F Y') }}
                                    </td>
                                    <td>
                                        <a class="badge bg-secondary text-decoration-none" download="{{ $sk->nama_berkas }}"
                                            href="{{ asset('storage/' . $sk->link) }}">
                                            <span class="d-flex justify-content-center align-items-center gap-1">
                                                <x-carbon-cloud-download style="width: 20px" />{{ $sk->nama_berkas }}
                                            </span>
                                        </a>
                                    </td>
                                    <td class="d-flex gap-1">
                                        <a href="" class="btn btn-primary">
                                            <span class="d-flex gap-1 justify-content-center align-items-center">
                                                <x-fas-pen-to-square style="width: 15px" />Ubah
                                            </span>
                                        </a>
                                        <a href="" class="btn btn-danger">
                                            <span class="d-flex gap-1 justify-content-center align-items-center">
                                                <x-fas-trash style="width: 15px" />
                                            </span>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="6">
                                    <p class="text-center my-3 text-danger">Data tidak tersedia</p>
                                </td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
