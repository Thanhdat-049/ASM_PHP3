<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LoaiTin extends Model
{
    use HasFactory;
    protected $fillable = [
        'danh_muc_tin_id',
        'name',
        'description',
    ];

    public function danhmuctin()
    {
        return $this->BelongsTo(DanhMucTin::class);
    }
    public function tintucs()
    {
        return $this->hasMany(TinTuc::class);
    }
}
