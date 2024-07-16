<?php

namespace Database\Seeders;

use App\Models\TinTuc;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        TinTuc::truncate();
        for ($i = 0; $i < 50; $i++) {
            TinTuc::query()->create([
                'loai_tin_id' => rand(1, 13),
                'danh_muc_tin_id' => rand(1, 4),
                'title' => fake()->name(),
                'content' => fake()->text(1000),
                'image' => fake()->imageUrl(),
                'is_hot' => 0,
                'is_good' => rand(0, 1),
                'is_view_lot' => rand(0, 1),

            ]);
        }
    }
}
