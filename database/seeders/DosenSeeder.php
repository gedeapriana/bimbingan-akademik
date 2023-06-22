<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DosenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      $faker = Faker::create('id_ID');
    	for($i = 1; $i <= 50; $i++){
    		DB::table('dosen')->insert([
          'id' 			=> $i,
          'nama' 			=> $faker->name,
          'jabatan' 	=> 'dosen',
          'foto' 			=> '/path',
          'prodi'     => 'RPL',
          'jurusan'   => 'Elektro',
          'password' 	=> Hash::make('11111111'),
          'created_at' => now(),
          'updated_at' => now(),
    		]);
    	}
    }
}
