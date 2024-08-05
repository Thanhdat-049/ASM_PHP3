@extends('admin.layouts.master')
@section('content')
    <div id="main-wrapper">

        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">USER MANAGEMENT</h5>
                                @if (session('success'))
                                    <div class="alert alert-success text-center">{{ session('success') }}</div>
                                @endif

                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <a href="{{ route('admin.account.create') }}" class="btn btn-primary m-3">Thêm mới
                                            Account</a>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Username</th>
                                                <th>email</th>
                                                <th>Role</th>
                                                <th>Creat_at</th>
                                                <th>Updated_at</th>
                                                <th>Operation</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($account as $item)
                                                <tr>
                                                    <td>{{ $item->id }}</td>
                                                    <td>{{ $item->name }}</td>
                                                    <td>{{ $item->email }}</td>
                                                    @if ($item->roles == 1)
                                                        <td><span class="fw-bold text-danger">Admin</span></td>
                                                    @else
                                                        <td><span class="fw-bold text-success">User</span></td>
                                                    @endif

                                                    <td>{{ \Carbon\Carbon::parse($item->created_at)->format('Y-m-d') }}
                                                    </td>
                                                    <td>{{ \Carbon\Carbon::parse($item->updated_at)->format('Y-m-d') }}
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.account.edit', $item->id) }}"><button
                                                                type="submit" class="btn btn-primary">Update</button></a>
                                                        <hr>
                                                        <form action="{{ route('admin.account.destroy', $item->id) }}"
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
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Username</th>
                                                <th>email</th>
                                                <th>Role</th>
                                                <th>Creat_at</th>
                                                <th>Updated_at</th>
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
