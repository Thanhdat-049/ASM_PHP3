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
                                <h5 class="card-title">PRODUCT MANAGEMENT</h5>
                                <a href="{{ route('admin.add_product') }}">
                                    <button class="btn btn-primary">Add new product</button>
                                </a>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th></th>
                                                <th>Category</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Created at</th>
                                                <th>View</th>
                                                <th>Purchases</th>
                                                <th>Size 38</th>
                                                <th>Size 39</th>
                                                <th>Size 40</th>
                                                <th>Size 41</th>
                                                <th>Size 42</th>
                                                <th>Status</th>
                                                <th>Operation</th>
                                            </tr>
                                        </thead>
                                        {{-- <tbody>
                                            @foreach ($data as $item)
                                                <tr class="{{ $item->isdelete == 1 ? 'red-background' : '' }}">
                                                    <td>{{ $item->id }}</td>
                                                    <td><img src="{{ asset('upload') }}/{{ $item->image }}" alt=""
                                                            width="70" height="50"></td>
                                                    <td>{{ $item->category_name }}</td>
                                                    <td>{{ $item->name }}</td>
                                                    <td>{{ $item->price }}</td>
                                                    <td>{{ \Carbon\Carbon::parse($item->creat_at_product)->format('Y-m-d') }}
                                                    </td>
                                                    <td>{{ $item->view }}</td>
                                                    <td>{{ $item->purchases }}</td>
                                                    <td>{{ $item->size38 }}</td>
                                                    <td>{{ $item->size39 }}</td>
                                                    <td>{{ $item->size40 }}</td>
                                                    <td>{{ $item->size41 }}</td>
                                                    <td>{{ $item->size42 }}</td>
                                                    @if ($item->isdelete == 1)
                                                        <td>Deleted</td>
                                                        <td>
                                                            <a
                                                                href="{{ route('admin.backup_product', ['id' => $item->id]) }}"><button
                                                                    type="button" class="btn btn-primary">Back
                                                                    up</button></a>
                                                        </td>
                                                    @else
                                                        <td>Active</td>
                                                        <td>
                                                            <a
                                                                href="{{ route('admin.edit_product', ['id' => $item->id]) }}"><button
                                                                    type="submit"
                                                                    class="btn btn-primary">Update</button></a>
                                                            <hr>
                                                            <a
                                                                href="{{ route('admin.delete_product', ['id' => $item->id]) }}">
                                                                <button
                                                                    onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm?')"
                                                                    type="button" class="btn btn-danger">Delete</button>
                                                            </a>
                                                        </td>
                                                    @endif

                                                </tr>
                                            @endforeach
                                        </tbody> --}}
                                        {{-- <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th></th>
                                                <th>Category</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Created at</th>
                                                <th>View</th>
                                                <th>Purchases</th>
                                                <th>Size 38</th>
                                                <th>Size 39</th>
                                                <th>Size 40</th>
                                                <th>Size 41</th>
                                                <th>Size 42</th>
                                                <th>Operation</th>
                                            </tr>
                                        </tfoot> --}}
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
