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
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Username</th>
                                                <th>Password</th>
                                                <th>email</th>
                                                <th>Tel</th>
                                                <th>Creat_at</th>Status
                                                <th>Status</th>
                                                <th>Operation</th>
                                            </tr>
                                        </thead>
                                        {{-- <tbody>
                                            @foreach ($data as $item)
                                                <tr>
                                                    <td>{{ $item->username }}</td>
                                                    <td>{{ $item->password }}</td>
                                                    <td>{{ $item->email }}</td>
                                                    <td>{{ $item->tel }}</td>
                                                    <td>{{ \Carbon\Carbon::parse($item->creat_at_account)->format('Y-m-d') }}
                                                    </td>
                                                    @if ($item->isdelete == 1)
                                                        <td>Deleted</td>
                                                        <td>
                                                            <a
                                                                href="{{ route('admin.backup_account', ['id' => $item->id]) }}"><button
                                                                    type="button" class="btn btn-primary">Back
                                                                    up</button></a>
                                                        </td>
                                                    @else
                                                        <td>Active</td>
                                                        <td>
                                                            <a
                                                                href="{{ route('admin.edit_account', ['id' => $item->id]) }}"><button
                                                                    type="submit"
                                                                    class="btn btn-primary">Update</button></a>
                                                            <hr>
                                                            <a
                                                                href="{{ route('admin.delete_account', ['id' => $item->id]) }}">
                                                                <button
                                                                    onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm?')"
                                                                    type="button" class="btn btn-danger">Delete</button>
                                                            </a>
                                                        </td>
                                                    @endif
                                                </tr>
                                            @endforeach


                                        </tbody> --}}
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
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
