<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\DanhMucTin;
use App\Models\LoaiTin;
use App\Models\TinTuc;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class TinTucController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = TinTuc::orderBy('id', 'desc')->get();
        return view('admin.contents.tintuc.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $danhmuc = DanhMucTin::all();
        return view('admin.contents.tintuc.create', compact('danhmuc'));

    }
    public function getLoaiTin($danh_muc_id)
    {
        $loaiTin = LoaiTin::where('danh_muc_tin_id', $danh_muc_id)->get();
        return response()->json($loaiTin);
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request->validate([
            'title' => 'required|string|max:255',
            'danh_muc_tin_id' => 'required',
            'loai_tin_id' => 'required',
            'image' => 'required',
            'content' => 'required|string',
        ]);
        $request['is_hot'] ??= 0;
        $request['is_view_lot'] ??= 0;
        $request['is_good'] ??= 0;

        TinTuc::create($request->all());

        if ($request['is_hot'] == 1) {
            TinTuc::where('is_hot', 1)->update([
                'is_hot' => 0
            ]);
        }
        return redirect()->route('admin.tin.create')->with('success', 'Tạo tin mới thành công');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $tin = TinTuc::find($id);
        $loaitin = LoaiTin::where('danh_muc_tin_id', $tin->danh_muc_tin_id)->get();
        $danhmuc = DanhMucTin::all();
        return view('admin.contents.tintuc.edit', compact('tin', 'danhmuc', 'loaitin'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        $request->validate([
            'title' => 'required|string|max:255',
            'danh_muc_tin_id' => 'required',
            'loai_tin_id' => 'required',
            'image' => 'required',
            'content' => 'required|string',
        ]);

        $request['is_hot'] ??= 0;
        $request['is_view_lot'] ??= 0;
        $request['is_good'] ??= 0;

        TinTuc::find($id)->update($request->all());

        if ($request['is_hot'] == 1) {
            TinTuc::where('is_hot', 1)->update([
                'is_hot' => 0
            ]);
        }
        return redirect()->route('admin.tin.edit', $id)->with('success', 'Update thành công');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        TinTuc::find($id)->delete();
        return redirect()->route('admin.tin.index')->with('msg', 'Xóa thành công');
    }
}
