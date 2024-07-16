@extends('client.layouts.master')

@section('main_content')
    <div class="container mt-3">
        <div class="row">
            <div class="news-detail col-lg-9">
                <h1>{{ $data->title }}</h1>

                <p class="meta-info">Loại tin: <a href="">{{ $loaitin->loaitin->name }}</a></p>

                <img src="{{ $data->image }}" alt="Ảnh minh họa" width="100%">
                <p class="meta-info">Đăng bởi Người đăng | Ngày đăng: {{ $data->created_at }}</p>
                <div class="content">
                    <p>{{ $data->content }}</p>
                </div>
            </div>

            <div class="col-lg-3">
                <h2 class="text-bold">Các tin liên quan</h2>
                <hr>
                <div style="border-left: 1px solid #ccc;"></div>

                <div class="overflow-auto" style="height: 600px; overflow:scroll">
                    @foreach ($tinlienquan as $item)
                        <div class="article ">
                            <div class="article-content">
                                {{-- <h3 class="text-small">Tiêu đề tin tức 3</h3> --}}
                                <a href="{{ route('chi_tiet_tin', $item->id) }}" class="text-dark">
                                    <h6 class="text-dark">{{ Str::limit($item->content, 30, '...') }}</h6>
                                </a>
                            </div>
                            <div class="article-thumbnail">
                                <a href="{{ route('chi_tiet_tin', $item->id) }}"><img src="{{ $item->image }}"
                                        alt="Ảnh tin tức 1" width="90px"></a>
                            </div>
                        </div>
                    @endforeach
                </div>

            </div>
        </div>
    </div>
@endsection
