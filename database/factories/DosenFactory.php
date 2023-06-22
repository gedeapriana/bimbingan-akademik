<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Dosen>
 */
class DosenFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
          'id' 				=> fake()->unique()->numberBetween(1, 150),
          'nama' 			=> fake()->name,
          'jabatan' 	=> 'dosen',
          'foto' 			=> '/path',
          'prodi'     => 'RPL',
          'jurusan'   => 'Elektro',
          'password' 	=> Hash::make('11111111'),
        ];
    }
}
