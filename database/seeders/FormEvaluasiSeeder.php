<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class FormEvaluasiSeeder extends Seeder
{
		/**
		 * Run the database seeds.
		 */
		public function run(): void {
			$faker = Faker::create('id_ID');
			for($i = 1; $i <= 1000; $i++){
				DB::table('form_evaluasi')->insert([
					'id_evaluasi' => $i,
					'tgl_evaluasi' => $faker->date(),
					'masalah'	=> $faker->sentence(10) . '?',
					'bimbingan_id' => $faker->randomNumber(1, 500),
				]);
			}
		}
}
