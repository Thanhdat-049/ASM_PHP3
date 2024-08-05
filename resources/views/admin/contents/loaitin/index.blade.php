@extends('admin.layouts.master')
@section('content')
    <style>
        .red-background {
            background-color: rgb(216, 216, 216);
            /* Đặt màu nền của hàng là màu đỏ */
            color: rgb(245, 88, 88);
            /* Đặt màu chữ là màu trắng để dễ đọc trên nền đỏ */
        }
    </style>
    <div id="main-wrapper">

        <div class="page-wrapper">

            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Quản lý loại tin</h4>
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
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                {{-- <h5 class="card-title m-b-0">Quản lý loại tin</h5> --}}
                                <a href="{{ route('admin.loaitin.create') }}" class="btn btn-primary">Thêm mới loại tin</a>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class="thead-light">
                                        <tr>

                                            <th scope="col">ID</th>
                                            <th scope="col">Danh mục</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">created_at</th>
                                            <th scope="col">Updated_at</th>
                                            <th scope="col">Operation</th>
                                        </tr>
                                    </thead>
                                    <tbody class="customtable">

                                        @foreach ($data as $item)
                                            <tr>
                                                <td>{{ $item->id }}</td>
                                                <td>{{ $item->danhmuctin->name }}</td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->description }}</td>
                                                <td>{{ $item->created_at }}</td>
                                                <td>{{ $item->updated_at }}</td>
                                                <td>
                                                    <a href="{{ route('admin.loaitin.edit', $item->id) }}"><button
                                                            type="submit" class="btn btn-primary">Update</button></a>
                                                    <hr>
                                                    <form action="{{ route('admin.loaitin.destroy', $item->id) }}"
                                                        method="post">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button
                                                            onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm?')"
                                                            type="submit" class="btn btn-danger">Delete</button>
                                                    </form>
                                                </td>

                                            </tr>
                                        @endforeach

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- this page js -->
        @endsection

        @section('script')
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
