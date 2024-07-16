<?php

namespace App\Http\Controllers;

use App\Models\DanhMucTin;
use App\Models\LoaiTin;
use App\Models\TinTuc;
use Illuminate\Http\Request;

class TinController extends Controller
{
    public function chi_tiet_tin($id)
    {
        $data = TinTuc::find($id);
        $loaitin = TinTuc::where('id', $id)->with('loaitin')->first();
        $tinlienquan = TinTuc::query()
            ->where('danh_muc_tin_id', $data->danh_muc_tin_id)
            ->whereNot('id', $id)
            ->get();
        return view('client.content.chi_tiet_tin', compact('data', 'tinlienquan', 'loaitin'));
    }

    public function loai_tin($id)
    {
        $data = LoaiTin::where('id', $id)->with(['tintucs'])->first();
        $danhmuclienquan = LoaiTin::query()
            ->where('danh_muc_tin_id', $data->danh_muc_tin_id)
            ->whereNot('id', $id)
            ->get();
        // dd($danhmuclienquan);
        return view('client.content.loai_tin', compact('data', 'danhmuclienquan'));
    }

    public function danh_muc_tin($id)
    {
        $data = DanhMucTin::where('id', $id)->with(['loaitins','tintucs'])->first();
        $data->tintucs = $data->tintucs()->paginate(9);
        // dd($data);

        return view('client.content.danh_muc_tin', compact('data'));
    }
    public function index()
    {
        $tinnong = TinTuc::query()->where('is_hot', 1)->first();
        $tinnoibat = TinTuc::query()->where('is_good', 1)->orderBy('id', "asc")->limit(10)->get();
        $tinxemnhieu = TinTuc::query()->where('is_view_lot', 1)->limit(10)->get();
        $danhsachtin = TinTuc::paginate(8);

        return view('index', compact('tinnong', 'tinnoibat', 'tinxemnhieu', 'danhsachtin'));
    }

    public function search(Request $request)
    {
        $searchTerm = $request->input('search');
        if ($searchTerm == null) {
            redirect()->route('search')->with('error', 'Hãy tìm kiếm bài viết cho bạn');
        }
        $results = TinTuc::where('title', 'like', '%' . $searchTerm . '%')
            ->orWhere('content', 'like', '%' . $searchTerm . '%')
            ->paginate(8)->withQueryString();

        if (count($results) == 0) {
            redirect()->route('search')->with('error', 'Không có bài viết nào phù hợp');
        }
        return view('client.content.search_results', compact('results', 'searchTerm'));
    }
}
