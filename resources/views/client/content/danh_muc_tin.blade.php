@extends('client.layouts.master')

@section('main_content')
    <div class="container mt-3">
        <div class="row">
            <div class="col-lg-3">
                <h2 class="text-bold">{{ $data->name }}</h2>
                <hr>
                <div style="border-left: 1px solid #ccc;"></div>

                <div class="overflow-auto" style="height: 600px; overflow:scroll">
                    @foreach ($data->loaitins as $item)
                        <div class="article ">
                            <div class="article-content">
                                <a href="{{ route('loai_tin', $item->id) }}" class="text-dark">
                                    <h6 class="text-dark">{{ Str::limit($item->name, 80, '...') }}</h6>
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="news-detail col-lg-9">
                <div class="row">
                    @foreach ($data->tintucs as $item)
                        <div class="col-lg-4 mt-2">
                            <div class="article2">
                                <div class="article-thumbnail">
                                    <a href="{{ route('chi_tiet_tin', $item->id) }}"> <img src="{{ $item->image }}"
                                            alt="Ảnh tin tức 1" width="250px" style="max-height: 180px; height: auto;">
                                    </a>
                                </div>

                                <div class="article-content">
                                    <a href="{{ route('chi_tiet_tin', $item->id) }}">
                                        <h6 class="text-dark">{{ Str::limit($item->title, 80, '...') }}</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="pagination">
                    {{ $data->tintucs->links() }}
                </div>
            </div>


        </div>
    </div>
@endsection
