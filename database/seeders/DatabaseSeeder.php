<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\DanhMucTin;
use App\Models\LoaiTin;
use App\Models\TinTuc;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        TinTuc::truncate();
        LoaiTin::truncate();
        DanhMucTin::truncate();

        for ($i = 0; $i < 5; $i++) {
            DanhMucTin::query()->create([
                'name' => fake()->name(),
            ]);
        }

        for ($i = 0; $i < 25; $i++) {
            LoaiTin::query()->create([
                'danh_muc_tin_id' => rand(1, 5),
                'name' => fake()->name(),
                'description' => fake()->text(200),
            ]);
        }

        for ($i = 0; $i < 50; $i++) {
            TinTuc::query()->create([
                'loai_tin_id' => rand(1, 5),
                'danh_muc_tin_id' => rand(1, 5),
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
