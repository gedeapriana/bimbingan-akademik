<nav class="navbar navbar-expand-lg border-bottom">
  <div class="container-fluid">
    <a class="navbar-brand fw-bolder" href="#">Bimbingan Akademik</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
      aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
            aria-expanded="false">
            {{ auth()->user()->nama }} <span class="badge bg-secondary">{{ auth()->user()->nim }}</span>
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>

            <li class="user-select-none">
              <span class="dropdown-item">
                <form action="/logout-mahasiswa" method="post">
                  @csrf
                  <button type="submit" class="btn btn-danger">Logout</button>
                </form>
              </span>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
