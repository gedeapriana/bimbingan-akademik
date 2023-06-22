<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class KaprodiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      $faker = Faker::create('id_ID');
    	for($i = 1; $i <= 10; $i++){
    		DB::table('kaprodi')->insert([
          'id' 			=> $i,
          'nama' 			=> $faker->name,
          'foto' 			=> '/path',
          'prodi'     => 'RPL',
          'jurusan'   => 'Elektro',
          'password' 	=> Hash::make('11111111'),
          'created_at' => now(),
          'updated_at'  => now(),
    		]);
    	}
    }
}
