<ul class="list-group list-group-flush">
  <a href="{{ route('dashboard-mahasiswa') }}" class="text-decoration-none"><li class="list-group-item {{ $title == 'Profile' ? 'bg-secondary-subtle' : '' }}">Profil</li></a>
  <a href="{{ route('dashboard-mahasiswa.bimbingan') }}" class="text-decoration-none"><li class="list-group-item {{ $title == 'Bimbingan' ? 'bg-secondary-subtle' : '' }}">Bimbingan</li></a>
  <a href="/dashboard-mahasiswa/riwayat" class="text-decoration-none"><li class="list-group-item {{ $title == 'Riwayat' ? 'bg-secondary-subtle' : '' }}">Riwayat</li></a>
</ul>