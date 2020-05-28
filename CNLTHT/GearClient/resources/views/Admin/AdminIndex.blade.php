<div class="gear-admin">
    <div class="admin-left col-3">
        <div class="admin-logo-box">
            <img src="{{ asset('images/gearvn.png')}}" class="admin-logo-img" height="70px">
        </div>
        <div class="admin-left-menu">
            <div class="menu-section row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-3" style="text-align: center;"><i class="fas fa-home" style="font-size: 20px"></i></div>
                        <span class="menu-text">Bảng điều khiển</span>
                    </div>
                </div>
                <div class="col-2">
                    <span style="padding-right: 5px"><i class="fas fa-arrow-circle-right"></i></span>
                </div>
            </div>
            <div class="menu-section row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-3" style="text-align: center;"><i class="fas fa-user" style="font-size: 20px"></i></div>
                        <span class="menu-text">Người dùng</span>
                    </div>
                </div>
                <div class="col-2">
                    <span style="padding-right: 5px"><i class="fas fa-arrow-circle-right"></i></span>
                </div>
            </div>
            <div class="menu-section row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-3" style="text-align: center;"><i class="fab fa-product-hunt" style="font-size: 20px"></i></div>
                        <span class="menu-text">Sản phẩm</span>
                    </div>
                </div>
                <div class="col-2">
                    <span style="padding-right: 5px"><i class="fas fa-arrow-circle-right"></i></span>
                </div>
            </div>
            <div class="menu-section row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-3" style="text-align: center;"><i class="fas fa-box" style="font-size: 20px"></i></div>
                        <span class="menu-text">Chủng loại</span>
                    </div>
                </div>
                <div class="col-2">
                    <span style="padding-right: 5px"><i class="fas fa-arrow-circle-right"></i></span>
                </div>
            </div>
            <div class="menu-section row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-3" style="text-align: center;"><i class="fas fa-industry" style="font-size: 20px"></i></div>
                        <span class="menu-text">Nhà sản xuất</span>
                    </div>
                </div>
                <div class="col-2">
                    <span style="padding-right: 5px"><i class="fas fa-arrow-circle-right"></i></span>
                </div>
            </div>
            <div class="menu-section row">
                <div class="col-9">
                    <div class="row">
                        <div class="col-3" style="text-align: center;"><i class="fas fa-clipboard-list" style="font-size: 20px"></i></div>
                        <span class="menu-text">Đơn hàng</span>
                    </div>
                </div>
                <div class="col-2">
                    <span style="padding-right: 5px"><i class="fas fa-arrow-circle-right"></i></span>
                </div>
            </div>
        </div>
    </div>
    <div class="admin-right">
        <div class="admin-user">
            <div class="admin-user-text">
                <span class="admin-user-name">ss</span>
                <img src="{{ asset('images/admin.png') }}" height="40px">
            </div>

            @section('content')
            @show
        </div>
    </div>
</div>
