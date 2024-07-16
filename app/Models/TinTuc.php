<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class TinTuc extends Model
{
    use HasFactory;
    protected $fillable = [
        'loai_tin_id',
        'danh_muc_tin_id',
        'title',
        'content',
        'image',
        'is_hot',
        'is_good',
        'is_view_lot',
    ];

    public function loaitin()
    {
        return $this->BelongsTo(LoaiTin::class, 'loai_tin_id');
    }
    public function danhmuctin()
    {
        return $this->BelongsTo(DanhMucTin::class, 'danh_muc_tin_id');
    }
}
