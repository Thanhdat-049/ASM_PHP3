<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DanhMucTin extends Model
{
    use HasFactory;
    protected $fillable = [
        'name'
    ];

    public function tintucs()
    {
        return $this->hasMany(TinTuc::class);
    }
    public function loaitins()
    {
        return $this->hasMany(LoaiTin::class);
    }
}
