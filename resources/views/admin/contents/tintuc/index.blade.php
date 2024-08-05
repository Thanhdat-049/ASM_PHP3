@extends('admin.layouts.master')
@section('content')
    <div id="main-wrapper">
        <style>
            .red-background {
                background-color: rgb(230, 230, 230);
                color: red;
            }
        </style>
        <div class="page-wrapper">


            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">QUẢN LÝ TIN TỨC</h5>
                                <a href="{{ route('admin.tin.create') }}">
                                <button class="btn btn-primary">Thêm mới tin</button>
                                </a>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Loại Tin</th>
                                                <th>Ảnh</th>
                                                <th>Tiêu đề </th>
                                                <th>Info</th>
                                                <th>Operation</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($data as $item)
                                                <tr>
                                                    <td>{{ $item->id }}</td>
                                                    <td>{{ $item->loaitin->name }}</td>
                                                    <td>
                                                        @php
                                                            $url = $item->image;
                                                        @endphp
                                                        @if (!Str::contains($url, 'http'))
                                                            <img src="{{ Storage::url($url) }}" width="100"
                                                                height="80" alt="">
                                                        @else
                                                            <img src="{{ $url }}" width="100" height="80"
                                                                alt="">
                                                        @endif
                                                    </td>
                                                    <td>{{ $item->title }}</td>
                                                    <td>
                                                        <span
                                                            class="badge bg-primary">{{ $item->is_view_lot == 1 ? 'View lot' : '' }}</span>
                                                        <span
                                                            class="badge bg-success">{{ $item->is_good == 1 ? 'Good' : '' }}</span>
                                                        <span
                                                            class="badge bg-danger">{{ $item->is_hot == 1 ? 'Hot' : '' }}</span>
                                                    </td>

                                                    <td>
                                                        {{-- <a href="{{ route('admin.tin.show', $item->id) }}" class="btn btn-success mb-1">Chi tiết</a> --}}
                                                        <a href="{{ route('admin.tin.edit', $item->id) }}" class="btn btn-primary mb-1">Sửa</a>
                                                        <form action="{{ route('admin.tin.destroy', $item->id) }}"
                                                            method="post">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit"
                                                                onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm?')"
                                                                type="button" class="btn btn-danger">Xóa</button>
                                                        </form>

                                                </tr>
                                            @endforeach
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Loại Tin</th>
                                                <th>Ảnh</th>
                                                <th>Tiêu đề </th>
                                                <th>Info</th>
                                                <th>Operation</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endsection
        @section('script')
            <!-- this page js -->
            <script src="{{ asset('assets_admin/extra-libs/multicheck/datatable-checkbox-init.js') }}"></script>
            <script src="{{ asset('assets_admin/extra-libs/multicheck/jquery.multicheck.js') }}"></script>
            <script src="{{ asset('assets_admin/extra-libs/DataTables/datatables.min.js') }}"></script>
            <script>
                /****************************************
                 *       Basic Table                   *
                 ****************************************/
                $('#zero_config').DataTable();
            </script>
        @endsection
