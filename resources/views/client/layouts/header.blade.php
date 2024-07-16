<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ - Đánh giá của bạn</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom styles -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Scripts -->
    @vite('resources/js/app.js')
    <style>
        .carousel-item img {
            max-height: 500px;
            /* Chiều cao tối đa của slide */
            width: 100%;
            /* Đảm bảo ảnh sẽ hiển thị đầy đủ trong slide */
            object-fit: cover;
            /* Đảm bảo ảnh sẽ không bị méo */
        }

        body {
            /* padding-bottom: 60px; */
            /* Dành một không gian dưới cho footer */
        }

        .header {
            position: fixed;
            /* top: 0; */
            left: 0;
            width: 100%;
            /* Màu nền header, thay đổi theo ý của bạn */
            /* padding: 10px 0; */
            text-align: center;
            z-index: 1000;
            /* Đảm bảo header hiển thị trên các phần tử khác */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            /* Đường viền bóng để tách header với nền trang */
            margin-bottom: 10px;
        }

        .footer {
            box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar {
            z-index: 1000;
            /* Đảm bảo navbar con hiển thị trên header */
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            z-index: 1000;
        }

        .nav-item:hover .dropdown-menu {
            display: block;
        }

        .pagination {
            margin-bottom: 20px
            position: fixed;
            bottom: 20px;
            width: 100%;
            left: 0;
            /* Màu nền của thanh phân trang */
            /* Đảm bảo thanh phân trang hiển thị trên các phần tử khác */
            padding: 10px;
            /* Khoảng cách padding bên trong thanh phân trang */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            /* Đổ bóng cho thanh phân trang */
        }
    </style>
    @yield('style')
</head>

<body>
    @if (session('msg'))
        <script>
            alert('{{ session('msg') }}')
        </script>
    @endif


    <header class="header">
        <nav class="navbar navbar-expand-lg navbar-dark bg-light">
            <div class="container-fluid ">
                <a class="navbar-brand" href="{{ route('trangchu') }}">
                    <img src="https://tse4.mm.bing.net/th?id=OIP.tVonfSaAsnG1JSLY3zcmzAHaEj&pid=Api&P=0&h=180"
                        alt="Logo" height="40">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link text-dark fw-bold" href="{{ route('trangchu') }}"
                                style="font-size: 18px;">TRANG CHỦ<span class="sr-only">(current)</span></a>
                        </li>
                        @php
                            $danhmuctin = App\Models\DanhMucTin::query()->with('loaitins')->get();
                        @endphp

                        @foreach ($danhmuctin as $item)
                            <li class="nav-item dropdown">
                                <a class="nav-link text-dark" href="{{ route('danh_muc_tin', $item->id) }}" id="navbarDropdown">
                                    {{ $item->name }}
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    @foreach ($item->loaitins as $value)
                                        <a class="dropdown-item text-dark"
                                            href="{{ route('loai_tin', $value->id) }}">{{ $value->name }}</a>
                                        <div class="dropdown-divider"></div>
                                    @endforeach
                                </div>
                            </li>
                            {{-- <li class="nav-item">
                                <a class="nav-link" href="#">{{ $item->name }}</a>
                            </li> --}}
                        @endforeach


                    </ul>
                    <form class="form-inline my-2 my-lg-0" action="{{ route('search') }}" method="GET">
                        <div class="input-group">
                            <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm"
                                aria-label="Tìm kiếm" name="search">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                    @guest
                        @if (Route::has('login'))
                            <li class="nav-link ">
                                <button class="btn btn-info btn-sm "><a class="nav-link" href="{{ route('login') }}"><span
                                            class="mr-2 text-white">{{ __('Login') }}</span> </a></button>
                            </li>
                        @endif
                        @if (Route::has('register'))
                            <li class="nav-link">
                                <button class="btn btn-outline-info btn-sm">
                                    <a class="nav-link" href="{{ route('register') }}">
                                        <span class="mr-2 text-dark">{{ __('Register') }}</span></a>
                                </button>
                            </li>
                        @endif
                    @else
                        <div class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 text-dark">{{ Auth::user()->name }}</span>
                                {{-- <img src="" alt="User Avatar" class="rounded-circle" height="40" width="40"> --}}
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Thông tin cá nhân</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item"
                                    href="{{ route('logout') }}"onclick="event.preventDefault();
                                                                                                                    document.getElementById('logout-form').submit();">Đăng
                                    xuất</a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </div>
                    @endguest

                    <!-- Thêm ô input tìm kiếm -->

                    <!-- Ô hiển thị thông tin người dùng -->

                </div>
            </div>
        </nav>
    </header>
    <div class="">.</div><br><br>
