<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Bimbingan Akademik | {{ $title }}</title>
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Fonts -->
  <link rel="dns-prefetch" href="//fonts.bunny.net">
  <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

  <!-- Scripts -->
  @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body class="d-flex justify-content-center align-items-center" style="height: 100vh">
  <div class="d-flex justify-content-center p-5 border align-items-center flex-column">
    <header class="p-2">
      <h4 class="fw-bold">Login Sebagai</h4>
    </header>
    <div class="d-flex gap-2">
      <a class="card text-decoration-none" href="/login-mahasiswa">
        <div class="card-body d-flex flex-column justify-content-center align-items-center">
          <h5 class="card-title fw-bolder">Mahasiswa</h5>
          <p class="card-text">Login sebagai Mahasiswa</p>
        </div>
      </a>
      <a class="card text-decoration-none" href="/login-dosen">
        <div class="card-body d-flex flex-column justify-content-center align-items-center">
          <h5 class="card-title fw-bolder">Dosen</h5>
          <p class="card-text">Login sebagai Dosen</p>
        </div>
      </a>
      <a class="card text-decoration-none" href="/login-kaprodi">
        <div class="card-body d-flex flex-column justify-content-center align-items-center">
          <h5 class="card-title fw-bolder">Kaprodi</h5>
          <p class="card-text">Login sebagai Kaprodi</p>
        </div>
      </a>
    </div>
  </div>
</body>
</html>
