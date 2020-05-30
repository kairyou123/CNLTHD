@extends('_layout_client')

@section('title')
    Đăng ký
@endsection

@section('content')
<div class="container">
    <!-- Products -->
    <div class="row centered-form">
      <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-6 m-auto py-5">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3>Đăng ký</h3>
          </div>
          <hr class="mb-4">
          <div class="panel-body">
            @if($errors->any())
                <div class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <div>{{ $error }}</div>
                    @endforeach
                </div>
             @endif
            <form role="form" method="POST">
                @csrf
              <div class="form-group">
                <input type="text" name="name" id="name" class="form-control input-sm" placeholder="Tên">
              </div>
              <div class="form-group">
                <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email">
              </div>
              <div class="form-group">
                <input type="tel" name="tel" id="tel" class="form-control input-sm" placeholder="Số điện thoại">
              </div>
              <div class="form-group">
                <input type="text" name="address" id="text" class="form-control input-sm" placeholder="Địa chỉ">
              </div>
              <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                  <div class="form-group">
                    <input type="password" name="password" id="password" class="form-control input-sm"
                      placeholder="Mật khẩu">
                  </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                  <div class="form-group">
                    <input type="password" name="password_confirmation" id="password_confirmation"
                      class="form-control input-sm" placeholder="Xác nhận mật khẩu">
                  </div>
                </div>
              </div>
              <input type="submit" value="Register" class="btn btn-info btn-block">
            </form>
            <br />
            <hr class="mb-4">
            <div>
              <i>Đã có tài khoản?</i><b class="float-right"><a href="{{route('login')}}">Đăng nhập</a></b>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
