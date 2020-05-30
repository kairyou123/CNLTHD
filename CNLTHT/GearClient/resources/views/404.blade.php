@extends('_layout_client')

@section('title')
    Không tìm thấy trang
@endsection

@section('content')
<div class="container" style="margin-top: 20px; margin-bottom: 20px">
    <div style="text-align: center; height: 500px">
        <div><img src="{{asset('images/404_icon.png')}}" style="display: block; margin-left:auto; margin-right: auto" width="40%"/></div>
        <div><a href="/" style="color: gray; font-size: 28px">TRỞ VỀ TRANG CHỦ</a></div>
    </div>
</div>
@endsection
