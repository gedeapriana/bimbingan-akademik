<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FormBimbinganSeeder extends Seeder
{
	/**
	 * Run the database seeds.
	 */
	public function run(): void
	{
		$faker = Faker::create('id_ID');
		$j = 1;
		for($i = 1; $i <= 500; $i++) {
			while($j <= 100) {
				DB::table('form_bimbingan')->insert([
					'id_bimbingan' 			=> $i,
					'semester'					=> $faker->numberBetween(1, 8),
					'tahun_akademik'		=> $faker->numberBetween(2019, 2023),
					'status'						=> $faker->randomElement(['Aktif', 'Cuti', 'Drop Out']),
					'ipk'								=> $faker->randomFloat(1, 3, 4),
					'ips'								=> $faker->randomFloat(1, 3, 4),
					'ranking'						=> $faker->randomNumber(1, 30),
					'beasiswa'					=> $faker->company(),
					'surat_peringatan'	=> 'Nihil',
					'nim' => $j
				]);
				if($j == 100) {
					$j = 1;
					break;
				}
				$j++;
				break;
			}
		}
	}
}
