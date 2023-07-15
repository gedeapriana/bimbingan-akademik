
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>{{ $title }} | Bimbingan Akademik</title>
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Fonts -->
  <link rel="dns-prefetch" href="//fonts.bunny.net">
  <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

  <!-- Scripts -->
  @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body style="height: 100vh" class="d-flex justify-content-center align-items-center">
  <div class="container d-flex gap-3 justify-content-center flex-column align-items-center">
    <header class="d-flex flex-column justify-content-center align-items-center">
      <h3 class="fw-bolder">Login Sebagai Kaprodi</h3>
      <p>Masukkan nip kaprodi dan password</p>
    </header>
    <form action="/login-kaprodi" method="post" class="w-100 d-flex justify-content-center align-items-center flex-column" style="max-width: 400px;">
      @csrf
      <div class="mb-3 w-100">
        <label for="id" class="form-label">NIP KAPRODI</label>
        <input type="text" class="form-control" id="id" name="id">
      </div>
      <div class="mb-3 w-100">
        <label for="password" class="form-label">PASSWORD</label>
        <input type="password" class="form-control" name="password" id="password">
      </div>
      <div class="d-flex gap-2 m-3">
        <button type="submit" class="btn border">Login</button>
        <a href="/" class="btn border">Batal</a>
      </div>
    </form>
  </div>
</body>
</html>
