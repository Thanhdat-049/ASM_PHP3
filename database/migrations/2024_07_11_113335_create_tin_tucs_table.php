<?php

use App\Models\DanhMucTin;
use App\Models\LoaiTin;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tin_tucs', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(LoaiTin::class)->constrained();
            $table->foreignIdFor(DanhMucTin::class)->constrained();
            $table->string('title');
            $table->string('content', 2000);
            $table->string('image');
            $table->boolean('is_hot')->default(0);
            $table->boolean('is_good')->default(0);
            $table->boolean('is_view_lot')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tin_tucs');
    }
};
