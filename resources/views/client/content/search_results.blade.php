@extends('client.layouts.master')
@section('main_content')
    <div class="container mt-3">
        <h1 class="text-left text-dark fw-bold text-uppercase">Kết quả tìm kiếm: {{ $searchTerm }}</h1>
        @if (session('error'))
            <div class="alert alert-warning">{{ session('error') }}</div>
        @endif
        <div class="row">
            @foreach ($results as $item)
                <div class="col-lg-3 mt-2">
                    <div class="article2">
                        <div class="article-thumbnail">
                            <a href="{{ route('chi_tiet_tin', $item->id) }}">
                                <img src="{{ $item->image }}" alt="Ảnh tin tức 1" width="250px"
                                    style="max-height: 180px; height: auto;">
                            </a>
                        </div>
                        <div class="article-content">
                            <a href="{{ route('chi_tiet_tin', $item->id) }}">
                                <h6 class="text-dark">{{ Str::limit($item->title, 30, '...') }}</h6>
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="pagination">
            {{ $results->links() }}
        </div>
    </div>
@endsection
@section('style')
    <style>
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            /* background-color: #f8f9fa; */
            padding: 10px 0;
            text-align: center;
        }
    </style>
@endsection
