<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Mahasiswa>
 */
class MahasiswaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
          'id' => fake()->unique()->numerify('2115354###'),
          'nama' => fake()->name,
          'alamat' => fake()->address(),
          'no_hp' => fake()->numerify('08##########'),
          'prodi' => fake()->randomElement([
						"D4 TRPL",
						"D4 TO",
						"D2 AJK",
						"D2 IPKBR"
					]),
          'jurusan'   			=> 'Elektro',
          'foto' 						=> '/path',
					'nama_orangtua' 	=> fake()->title($gender = 'male'|'female') . ' ' . fake()->name(),
					'alamat_orangtua' => fake()->address(),
					'no_hp_orangtua'	=> fake()->numerify('08##########'),
          'password' 				=> Hash::make('11111111'),
          'created_at'      => now(),
          'updated_at'      => now(),
					'dosen_id' 			=> fake()->numberBetween(1, 50),
          'kaprodi_id'    => fake()->numberBetween(1, 10),
        ];
    }
}
