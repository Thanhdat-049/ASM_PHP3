@extends('client.layouts.master')

@section('main_content')
    @if (session('status'))
        <script>
            alert("{{ session('status') }}")
        </script>
    @endif
    @include('client.layouts.banner')
    <div class="main-content mt-4">
        <div class="container-fluid bg-white">
            <div class="row">
                <div class="col-lg-3 col-md-6 ml-4 ">
                    <h2>Top 10 tin Nổi bật</h2>
                    <hr>
                    <div class="overflow-auto" style="height: 600px; overflow:scroll">
                        @foreach ($tinnoibat as $item)
                            <div class="article">
                                <div class="article-thumbnail">
                                    <img src="{{ $item->image }}" alt="Ảnh tin tức 1" width="170px">
                                </div>
                                <div class="article-content">
                                    <a href="{{ route('chi_tiet_tin', $item->id) }}">
                                        <h6 class="text-dark">{{ Str::limit($item->title, 50, '...') }}</h6>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                <div style="border-left: 1px solid #ccc;"></div>

                <div class="col-lg-6 col-md-6">
                    <!-- Cột 2 -->
                    <div class="article2">
                        <div class="article-thumbnail">
                            <a href="{{ route('chi_tiet_tin', $tinnong->id) }}"> <img src="{{ $tinnong->image }}"
                                    alt="Ảnh tin tức 2" width="100%"></a>
                        </div>
                        <div class="article-content">
                            <a href="{{ route('chi_tiet_tin', $tinnong->id) }}">
                                <h2 class="text-dark">{{ $tinnong->title }}</h2>
                            </a>
                            <p>{{ Str::limit($tinnong->content, 500, '...') }}</p>
                        </div>
                    </div>

                </div>

                <div style="border-left: 1px solid #ccc;"></div>

                <div class="col-lg-2 col-md-6 ml-4 ">
                    <h2 class="text-bold">Top 10 tin xem nhiều nhất</h2>
                    <hr>
                    <div class="overflow-auto" style="height: 600px; overflow:scroll">
                        @foreach ($tinxemnhieu as $item)
                            <div class="article">
                                <div class="article-content">
                                    <a href="{{ route('chi_tiet_tin', $item->id) }}">
                                        <p class="text-dark">{{ Str::limit($item->content, 30, '...') }}</p>
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
    </div>

    <div style="border-bottom: 5px solid #ccc;"></div>

    <div class="container mt-3">
        <h1 class="text-center text-primary fw-bold text-uppercase">Danh sách tin</h1>
        <div class="row" id="tin-tuc-container">
            @foreach ($danhsachtin as $item)
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
                                <h6 class="text-dark">{{ Str::limit($item->title, 80, '...') }}</h6>
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="pagination">
            {{ $danhsachtin->links() }}
        </div>
    </div>
@endsection
@section('script')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Khôi phục vị trí cuộn
            window.scrollTo(0, sessionStorage.getItem('scrollPosition') || 0);

            // Thêm sự kiện cho các liên kết phân trang
            const links = document.querySelectorAll('.pagination a');

            links.forEach(link => {
                link.addEventListener('click', function() {
                    // Lưu vị trí cuộn trước khi tải lại
                    sessionStorage.setItem('scrollPosition', window.scrollY);
                });
            });
        });
    </script>
@endsection
