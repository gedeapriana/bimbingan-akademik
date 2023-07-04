<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\FormEvaluasi>
 */
class FormEvaluasiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
          'id' => fake()->uuid(),
          'tgl_evaluasi' => fake()->date(),
          'masalah' => fake()->text(),
          'created_at' => fake()->dateTime(),
          'updated_at' => fake()->dateTime(),
          'form_bimbingan_id' => fake()->numberBetween(1, 12),
        ];
    }
}
