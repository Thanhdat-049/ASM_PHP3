@extends('admin.layouts.master')
@section('content')
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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <form action="{{ route('admin.tin.update', $tin->id) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Sửa tin tức</h4>
                                    @if (session('success'))
                                        <div class="alert alert-success text-center">{{ session('success') }}</div>
                                    @endif
                                    <div class="form-group">
                                        <label for="hue-demo">Title</label>
                                        <h2 class="text-center text-success">{{ $tin->title }}</h2>
                                    </div>

                                    <div class="form-group">
                                        <label for="danh_muc">Danh mục</label>
                                        <h3 class="fw-bold">{{ $tin->danhmuctin->name }}</h3>

                                    </div>

                                    <div class="form-group">
                                        <label for="loai_tin">Loại tin</label>
                                        <h3 class="fw-bold">{{ $tin->loaitin->name }}</h3>

                                    </div>

                                    <div class="form-group">
                                        <label for="position-bottom-left">Image</label>

                                        <img id="imagePreview" src="{{ $tin->image }}" alt="Image Preview" width="100px"
                                            height="80px" style="margin-top: 10px;">
                                    </div>
                                    @error('image')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror

                                    <div class="row">

                                        <div class="form-group col-md-2">
                                            <div class="form-check form-switch form-switch-warning mb-3">
                                                <input class="form-control" type="checkbox" role="switch" id="is_view_lot"
                                                    name="is_view_lot" value="1"
                                                    {{ $tin->is_view_lot == 1 ? 'checked' : '' }}>
                                                <label class="form-check-label" for="is_view_lot">Is view lot</label>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-2">
                                            <div class="form-check form-switch form-switch-warning mb-3">
                                                <input class="form-control" type="checkbox" role="switch" id="is_hot"
                                                    name="is_hot" value="1" {{ $tin->is_hot == 1 ? 'checked' : '' }}>
                                                <label class="form-check-label" for="is_hot">Is Hot</label>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-2">
                                            <div class="form-check form-switch form-switch-warning mb-3">
                                                <input class="form-control" type="checkbox" role="switch" id="is_good"
                                                    name="is_good" value="1"
                                                    {{ $tin->is_good == 1 ? 'checked' : '' }}>
                                                <label class="form-check-label" for="is_good">Is Good</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">

                                        </div>
                                    </div>

                                    <hr>

                                    <label>Nội dung</label>
                                    <div class="input-group">
                                        <textarea class="form-control" name="content" style="height: 200px">{{ $tin->content }}</textarea>
                                    </div>
                                    @error('content')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <a href="{{ route('admin.tin.index') }}"><button type="button"
                                                class="btn btn-primary">Back</button></a>
                                        <button type="submit" class="btn btn-success">Save</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>



            <script src="{{ asset('assets_admin/libs/jquery/dist/jquery.min.js') }}"></script>
            <!-- Bootstrap tether Core JavaScript -->
            <script src="{{ asset('assets_admin/libs/popper.js/dist/umd/popper.min.js') }}"></script>
            <script src="{{ asset('assets_admin/libs/bootstrap/dist/js/bootstrap.min.js') }}"></script>
            <!-- slimscrollbar scrollbar JavaScript -->
            <script src="{{ asset('assets_admin/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js') }}"></script>
            <script src="{{ asset('assets_admin/extra-libs/sparkline/sparkline.js') }}"></script>
            <!--Wave Effects -->
            <script src="{{ asset('dist/js/waves.js') }}"></script>
            <!--Menu sidebar -->
            <script src="{{ asset('dist/js/sidebarmenu.js') }}"></script>
            <!--Custom JavaScript -->
            <script src="{{ asset('dist/js/custom.min.js') }}"></script>
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
