@extends('_layout_client')

@section('title')
    Đăng nhập
@endsection

@section('content')
<div class="gear-login-container">
    <div class="gear-login-box row">
        <div class="gear-login-external col-5">

            <div class="gear-external-box">
                <div style="text-align: center; color: white; font-size: 18px">
                    <b>CHÀO MỪNG BẠN ĐẾN VỚI HHL</b>
                </div>
                <div style="text-align: center; color: white; font-size: 20px">
                    <img src="{{ asset('images/gearvn.png')}}" width="200px" />
                </div>
            </div>
        </div>
        <div class="gear-login-common col-7">
            <div class="gear-register">
                <div>Chưa có tài khoản? <a href="#">Đăng kí</a></div>
            </div>
            <div class="gear-input-box" name="login">
                <div class="gear-label">Đăng nhập</div>
                @if($errors->any())
                    <div class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <div>{{ $error }}</div>
                            @endforeach
                    </div>
                @endif
                <form method="POST">
                    @csrf
                    <div class="gear-input-box-1">
                        <label style="display: block" for="email">Email</label>
                        <input type="text" class="gear-input" name="email">
                    </div>
                    <div class="gear-input-box-1">
                        <label style="display: block" for="email">Password</label>
                        <input type="password" class="gear-input" name="password">
                    </div>

                    <div class="gear-input-box-1" style="padding-top: 20px">
                        <button class="gear-login-button" forSubmit="login">Đăng nhập</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>
@endsection
