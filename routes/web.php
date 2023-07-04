<?php

use App\Http\Controllers\DashboardDosenController;
use App\Http\Controllers\DashboardMahasiswaController;
use App\Http\Controllers\LoginDosenController;
use App\Http\Controllers\LoginKaprodiController;
use App\Http\Controllers\LoginMahasiswaController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
// Auth::routes();
// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/', function() {
	return view('role', [
		'title' => 'Jabatan'
	]);
})->middleware('guest')->name('login');


// Mahasiswa Controller
Route::get('/login-mahasiswa', [LoginMahasiswaController::class, 'index'])->middleware('guest')->name('login');
Route::post('/login-mahasiswa', [LoginMahasiswaController::class, 'authenticate']);
Route::post('/logout-mahasiswa', [LoginMahasiswaController::class, 'logout'])->middleware('auth:mahasiswa');
Route::get('/logout-mahasiswa', [LoginMahasiswaController::class, 'logout'])->middleware('auth:mahasiswa');

Route::get('/dashboard-mahasiswa', [DashboardMahasiswaController::class, 'profile'])->name('dashboard-mahasiswa')->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/edit', [DashboardMahasiswaController::class, 'editProfile'])->middleware('auth:mahasiswa');
Route::put('/dashboard-mahasiswa/edit', [DashboardMahasiswaController::class, 'updateProfile'])->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/bimbingan', [DashboardMahasiswaController::class, 'bimbingan'])->name('dashboard-mahasiswa.bimbingan')->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/bimbingan/tambah', [DashboardMahasiswaController::class, 'addBimbingan'])->middleware('auth:mahasiswa');
Route::post('/dashboard-mahasiswa/bimbingan/tambah', [DashboardMahasiswaController::class, 'storeBimbingan'])->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/bimbingan/edit/{id}', [DashboardMahasiswaController::class, 'editBimbingan'])->middleware('auth:mahasiswa');
Route::put('/dashboard-mahasiswa/bimbingan/edit/{id}', [DashboardMahasiswaController::class, 'updateBimbingan'])->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/bimbingan/evaluasi/{id}', [DashboardMahasiswaController::class, 'evaluasiBimbingan'])->middleware('auth:mahasiswa');
Route::post('/dashboard-mahasiswa/bimbingan/evaluasi/{id}', [DashboardMahasiswaController::class, 'storeEvaluasiBimbingan'])->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/riwayat', [DashboardMahasiswaController::class, 'riwayat'])->name('dashboard-mahasiswa.riwayat')->middleware('auth:mahasiswa');
Route::get('/dashboard-mahasiswa/riwayat/{id}', [DashboardMahasiswaController::class, 'riwayatDetail'])->middleware('auth:mahasiswa');

// Dosen Controller
Route::get('/login-dosen', [LoginDosenController::class, 'index'])->middleware('guest')->name('login');
Route::post('/login-dosen', [LoginDosenController::class, 'authenticate']);
Route::post('/logout-dosen', [LoginMahasiswaController::class, 'logout'])->middleware('auth:dosen');
Route::get('/dashboard-dosen', [DashboardDosenController::class, 'profile'])->middleware('auth:dosen');
Route::get('/dashboard-dosen/edit', [DashboardDosenController::class, 'profileEdit'])->middleware('auth:dosen');
Route::put('/dashboard-dosen/edit', [DashboardDosenController::class, 'profileUpdate'])->middleware('auth:dosen');

Route::get('/dashboard-dosen/report-bimbingan', [DashboardDosenController::class, 'reportBimbingan'])->middleware('auth:dosen');
Route::get('/dashboard-dosen/report-bimbingan/{id}', [DashboardDosenController::class, 'evaluasiBimbingan'])->middleware('auth:dosen');
Route::get('/dashboard-dosen/report-bimbingan/evaluasi/{id}', [DashboardDosenController::class, 'detailEvaluasiBimbingan'])->middleware('auth:dosen');
Route::put('/dashboard-dosen/report-bimbingan/evaluasi/edit/{id}', [DashboardDosenController::class, 'updateEvaluasiBimbingan'])->middleware('auth:dosen');

// Kaprodi Controller
Route::get('/login-kaprodi', [LoginKaprodiController::class, 'index']);
