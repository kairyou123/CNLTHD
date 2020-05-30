@extends('_layout_client')

@section('title')
    Đăng ký thành công
@endsection

@section('content')
<div class="container" style="margin-top: 100px; margin-bottom: 100px; text-align: center">
    <div><h4>Đăng kí thành công tài khoản</h4></div>
    <div style="font-size: 23px; margin-top: 20px"><a href="{{ route('login') }}" style="color: blue">Đăng nhập</a></div>
</div>
@endsection
