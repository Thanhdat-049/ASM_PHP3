@extends('admin.layouts.master')
@section('content')
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>

    <div id="main-wrapper">
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
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
            {{-- <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <form action="{{ route('admin.put_edit_category', ['id' => $data->id]) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <input type="hidden" name="id" value="{{ $data->id }}">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Edit Product</h4>
                                    <div class="form-group">
                                        <label for="hue-demo">Name</label>
                                        <input type="text" class="form-control" value="{{ $data->name }}"
                                            name="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="position-bottom-left">Image</label>
                                        <input type="file" class="form-control" name="image"
                                            value="{{ $data->image }}">
                                        <img src="{{ asset('upload') }}/{{ $data->image }}" alt="" width="100px"
                                            height="80px">
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <a href="{{ route('admin.category') }}"><button type="button"
                                                class="btn btn-primary">Back</button></a>
                                        <button type="submit" class="btn btn-success">Save</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div> --}}
        @endsection
        @section('script')
            <!-- This Page JS -->
            <script src="{{ asset('assets_admin/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js') }}"></script>
            <script src="{{ asset('dist/js/pages/mask/mask.init.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/select2/dist/js/select2.full.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/select2/dist/js/select2.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/jquery-asColor/dist/jquery-asColor.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/jquery-asGradient/dist/jquery-asGradient.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/jquery-minicolors/jquery.minicolors.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/quill/dist/quill.min.js') }}"></script>
            <script>
                $(".select2").select2();

                $('.demo').each(function() {

                    $(this).minicolors({
                        control: $(this).attr('data-control') || 'hue',
                        position: $(this).attr('data-position') || 'bottom left',

                        change: function(value, opacity) {
                            if (!value) return;
                            if (opacity) value += ', ' + opacity;
                            if (typeof console === 'object') {
                                console.log(value);
                            }
                        },
                        theme: 'bootstrap'
                    });

                });
                /*datwpicker*/
                jQuery('.mydatepicker').datepicker();
                jQuery('#datepicker-autoclose').datepicker({
                    autoclose: true,
                    todayHighlight: true
                });
                var quill = new Quill('#editor', {
                    theme: 'snow'
                });
            </script>
        @endsection
