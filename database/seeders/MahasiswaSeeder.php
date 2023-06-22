<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class MahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      $faker = Faker::create('id_ID');
    	for($i = 1; $i <= 100; $i++){
    		DB::table('mahasiswa')->insert([
          'id' 							=> $i,
          'nama' 						=> $faker->name,
					'alamat'					=> $faker->address(),
					'no_hp'						=> $faker->numerify('###############'),
          'prodi'     			=> $faker->randomElement([
						"D4 TRPL",
						"D4 TO",
						"D2 AJK",
						"D2 IPKBR"
					]),
          'jurusan'   			=> 'Elektro',
          'foto' 						=> '/path',
					'nama_orangtua' 	=> $faker->title($gender = 'male'|'female') . ' ' . $faker->name(),
					'alamat_orangtua' => $faker->address(),
					'no_hp_orangtua'	=> $faker->numerify('###############'),
          'password' 				=> Hash::make('11111111'),
					'created_at'			=> now(),
					'updated_at'			=> now(),
					'dosen_id' 			=> 'dosen' . $faker->numberBetween(1, 50),
					'kaprodi_id' 		=> 'kaprodi' . $faker->numberBetween(1, 10),
    		]);
    	}
    }
}
