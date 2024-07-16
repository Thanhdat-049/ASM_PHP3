@extends('admin.layouts.master')
@section('content')
    <div id="main-wrapper">
        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <a href="{{ url()->previous() }}"><button type="button"
                                class="btn btn-info btn-sm">Back</button></a><br>
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Order Detail</h5>
                            </div>

                            <div class="table-responsive">
                                <table class="table">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">Id Product</th>
                                            <th scope="col"></th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Size</th>
                                        </tr>
                                    </thead>
                                    {{-- <tbody class="customtable">

                                        @foreach ($order_details as $item)
                                            <tr>
                                                <td>{{ $item->id_product }}</td>
                                                <td><img src="{{ asset('upload') }}/{{ $item->image }}" alt=""
                                                        width="70" height="50"></td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->quantity }}</td>
                                                <td>{{ $item->size }}</td>
                                            </tr>
                                        @endforeach

                                    </tbody> --}}
                                </table>
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
