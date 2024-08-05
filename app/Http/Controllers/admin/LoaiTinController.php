<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\DanhMucTin;
use App\Models\LoaiTin;
use Illuminate\Http\Request;

class LoaiTinController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = LoaiTin::with('danhmuctin')->get();
        return view('admin.contents.loaitin.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $danhmuc = DanhMucTin::all();
        return view('admin.contents.loaitin.create', compact('danhmuc'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'danh_muc_tin_id' => 'required',
            'name' => 'required|string|max:255|unique:loai_tins,name',
            'description' => 'nullable|string',
        ]);

        LoaiTin::create($data);

        return redirect()->route('admin.loaitin.index')->with('success', 'Tạo loại tin thành công');
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
        $danhmuc = DanhMucTin::all();
        $data =   LoaiTin::find($id);
        return view('admin.contents.loaitin.edit',compact('data', 'danhmuc'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'danh_muc_tin_id' => 'required|exists:danh_muc_tins,id',
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);
        // dd($request->all());
        $loaitin = LoaiTin::find($id)->update($request->all());
        // dd($loaitin);
        return redirect()->route('admin.loaitin.edit', $id)->with('success', 'Update thành công');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        LoaiTin::find($id)->delete();
        return redirect()->route('admin.loaitin.index')->with('success', 'Xóa thành công');

    }
}
