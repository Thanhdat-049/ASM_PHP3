@extends('admin.layouts.master')

@section('content')
    <div class="page-wrapper">
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h4 class="page-title">Dashboard</h4>
                    <div class="ml-auto text-right">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Library</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <!-- Column -->
                <div class="col-md-6 col-lg-2 col-xlg-3">
                    <a href="{{ route('admin.index') }}">
                        <div class="card card-hover">
                            <div class="box bg-cyan text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-view-dashboard"></i></h1>
                                <h6 class="text-white">Trang chủ</h6>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Column -->
                <div class="col-md-6 col-lg-4 col-xlg-3">
                    <a href="{{ route('admin.tin.index') }}">
                        <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-chart-areaspline"></i></h1>
                                <h6 class="text-white">Quản lý tin</h6>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Column -->
                <div class="col-md-6 col-lg-3 col-xlg-3">
                    <a href="{{ route('admin.loaitin.index') }}">
                        <div class="card card-hover">
                            <div class="box bg-warning text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-collage"></i></h1>
                                <h6 class="text-white">Quản lý loại tin</h6>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Column -->
                <div class="col-md-6 col-lg-3 col-xlg-3">
                    <a href="{{ route('admin.account.index') }}">
                        <div class="card card-hover">
                            <div class="box bg-danger text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-border-outside"></i></h1>
                                <h6 class="text-white">Quản lý tài khoản</h6>
                            </div>
                        </div>
                    </a>

                </div>
                <!-- Column -->
                {{-- <div class="col-md-6 col-lg-2 col-xlg-3">
                    <a href=" ">
                        <div class="card card-hover">
                            <div class="box bg-info text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-arrow-all"></i></h1>
                                <h6 class="text-white">Full Management</h6>
                            </div>
                        </div>
                    </a>

                </div> --}}
            </div>
            <!-- Sales chart -->

        </div>
    @endsection

    @section('script')
        <script src="{{ asset('assets_admin/libs/flot/excanvas.js') }}"></script>
        <script src="{{ asset('assets_admin/libs/flot/jquery.flot.js') }}"></script>
        <script src="{{ asset('assets_admin/libs/flot/jquery.flot.pie.js') }}"></script>
        <script src="{{ asset('assets_admin/libs/flot/jquery.flot.time.js') }}"></script>
        <script src="{{ asset('assets_admin/libs/flot/jquery.flot.stack.js') }}"></script>
        <script src="{{ asset('assets_admin/libs/flot/jquery.flot.crosshair.js') }}"></script>
        <script src="{{ asset('assets_admin/libs/flot.tooltip/js/jquery.flot.tooltip.min.js') }}"></script>
        <script src="{{ asset('dist/js/pages/chart/chart-page-init.js') }}"></script>
    @endsection
