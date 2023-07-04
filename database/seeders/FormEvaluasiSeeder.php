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
			for($i = 1; $i <= 400; $i++){
				DB::table('form_evaluasi')->insert([
					'id' => $i,
					'tgl_evaluasi' => $faker->date(),
          'masalah' => $faker->text() . '?',
          'created_at' => $faker->dateTime(),
          'updated_at' => $faker->dateTime(),
					'form_bimbingan_id' => $faker->randomNumber(1, 12),
				]);
			}
		}
}
