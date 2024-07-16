@extends('client.layouts.master')

@section('main_content')
    @if (session('roles'))
        <script>
            alert('{{ session('roles') }}')
        </script>
    @endif
    <div class="container-fluid mt-3">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h2>Đăng Nhập</h2>
                <div class="btn-group" role="group" aria-label="Đăng nhập">
                    <button type="button" class="btn btn-info mr-3" onclick="showUserLogin()">Đăng nhập với tài khoản người
                        dùng</button>
                    <button type="button" class="btn btn-outline-info" onclick="showAdminLogin()">Đăng nhập với tài khoản
                        quản trị viên</button>
                </div>
            </div>
        </div>
        <div class="container">
            <div id="userLoginForm" class="row justify-content-center mt-5" style="display: none;">
                <div class="col">
                    <div class="card">
                        <div class="card-header bg-info text-white">{{ __('Đăng nhập tài khoản người dùng') }}</div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('login') }}">
                                @csrf
                                @error('roles')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                                <div class="row mb-3">
                                    <label for="email"
                                        class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>
                                    <div class="col-md-6">
                                        <input id="email" type="email"
                                            class="form-control @error('email') is-invalid @enderror" name="email"
                                            value="{{ old('email') }}" required autocomplete="email" autofocus>
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="password"
                                        class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>
                                    <div class="col-md-6">
                                        <input id="password" type="password"
                                            class="form-control @error('password') is-invalid @enderror" name="password"
                                            required autocomplete="current-password">
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6 offset-md-4">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                                {{ old('remember') ? 'checked' : '' }}>
                                            <label class="form-check-label" for="remember">{{ __('Remember Me') }}</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-0">
                                    <div class="col-md-8 offset-md-4">
                                        <button type="submit" class="btn btn-primary">{{ __('Login') }}</button>
                                        @if (Route::has('password.request'))
                                            <a class="btn btn-link" href="{{ route('password.request') }}">
                                                {{ __('Forgot Your Password?') }}
                                            </a>
                                        @endif
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="adminLoginForm" class="row justify-content-center mt-5" style="display: none;">
                <div class="col">
                    <div class="card">
                        <div class="card-header bg-info  text-white">{{ __('Đăng nhập tài khoản quản trị') }}</div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.login') }}">
                                @csrf
                                <div class="row mb-3">
                                    <label for="email"
                                        class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>
                                    <div class="col-md-6">
                                        <input id="email" type="email"
                                            class="form-control @error('email') is-invalid @enderror" name="email"
                                            value="{{ old('email') }}" required autocomplete="email" autofocus>
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="password"
                                        class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>
                                    <div class="col-md-6">
                                        <input id="password" type="password"
                                            class="form-control @error('password') is-invalid @enderror" name="password"
                                            required autocomplete="current-password">
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6 offset-md-4">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                                {{ old('remember') ? 'checked' : '' }}>
                                            <label class="form-check-label"
                                                for="remember">{{ __('Remember Me') }}</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-0">
                                    <div class="col-md-8 offset-md-4">
                                        <button type="submit" class="btn btn-primary">{{ __('Login') }}</button>
                                        @if (Route::has('password.request'))
                                            <a class="btn btn-link" href="{{ route('password.request') }}">
                                                {{ __('Forgot Your Password?') }}
                                            </a>
                                        @endif
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        // Thiết lập lại trạng thái của các form dựa trên localStorage khi load lại trang
        window.onload = function() {
            var userLoginVisible = localStorage.getItem('userLoginVisible');
            var adminLoginVisible = localStorage.getItem('adminLoginVisible');

            if (userLoginVisible === 'true') {
                document.getElementById('userLoginForm').style.display = 'block';
                document.getElementById('adminLoginForm').style.display = 'none';
            } else if (adminLoginVisible === 'true') {
                document.getElementById('userLoginForm').style.display = 'none';
                document.getElementById('adminLoginForm').style.display = 'block';
            }
        };

        function showAdminLogin() {
            document.getElementById('adminLoginForm').style.display = 'block';
            document.getElementById('userLoginForm').style.display = 'none';

            // Lưu trạng thái vào localStorage
            localStorage.setItem('userLoginVisible', 'false');
            localStorage.setItem('adminLoginVisible', 'true');
        }

        function showUserLogin() {
            document.getElementById('adminLoginForm').style.display = 'none';
            document.getElementById('userLoginForm').style.display = 'block';

            // Lưu trạng thái vào localStorage
            localStorage.setItem('userLoginVisible', 'true');
            localStorage.setItem('adminLoginVisible', 'false');
        }
    </script>
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
