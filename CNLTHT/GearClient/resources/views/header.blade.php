<div id="menu" class="menu">
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
      <a class="navbar-brand padding-gear-40" href="/">HHL</a>
      <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
        aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mt-2 mt-lg-0">
          <!-- <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li> -->
          <li class="nav-item dropdown padding-gear-20">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Danh mục</a>
            <div class="dropdown-menu">
            @foreach($catalogs as $catalog)
            <a class="dropdown-item" href="{{route('category', ['category' => $catalog['slug']])}}">{{$catalog['name']}}</a>
            @endforeach
            </div>
          </li>
        </ul>
        <div class="col-sm-10">
          <form class="form-inline my-2 my-lg-0 padding-gear-30">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-dark my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
          </form>
        </div>
        <ul class="navbar-nav mt-2 mt-lg-0">
          <li class="nav-item cart">
          <div class="count">{{($cart_count) ? $cart_count : "0"}}</div>
          <a class="nav-link" href="{{route('cart')}}"><i class="fas fa-shopping-cart"></i></a>
          </li>
          @if(!Cookie::get('login'))
          <li class="nav-item dropdown mr-auto dropleft">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><i class="fas fa-user"></i></a>
            <div class="dropdown-menu dropleft">
              <a class="dropdown-item" href="{{route('login')}}">Đăng nhập</a>
              <a class="dropdown-item" href="{{route('register')}}">Đăng ký</a>
            </div>
          </li>
          @else
            @if($profile['role'] === "Admin")
                <li class="nav-item dropdown mr-auto dropleft">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><i class="fas fa-user"></i></a>
                    <div class="dropdown-menu dropleft">
                    <a class="dropdown-item" href="#">Trang quản lý</a>
                    <a class="dropdown-item" href="#">Thông tin tài khoản</a>
                    <a class="dropdown-item" href="#">Theo dõi đơn hàng</a>
                    <a class="dropdown-item" href="{{route('logout')}}">Đăng xuất</a>
                    </div>
                </li>
            @else
            <li class="nav-item dropdown mr-auto dropleft">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><i class="fas fa-user"></i></a>
                <div class="dropdown-menu dropleft">
                <a class="dropdown-item" href="#">Thông tin tài khoản</a>
                <a class="dropdown-item" href="#">Theo dõi đơn hàng</a>
                <a class="dropdown-item" href="{{route('logout')}}">Đăng xuất</a>
                </div>
            </li>
            @endif
          @endif
          <!-- <li class="nav-item dropdown mr-auto dropleft">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><i class="fas fa-user"></i></a>
            <div class="dropdown-menu dropleft">
              <a class="dropdown-item" href="#">Thông tin tài khoản</a>
              <a class="dropdown-item" href="#">Theo dõi đơn hàng</a>
              <a class="dropdown-item" href="#">Đăng xuất</a>
            </div>
          </li> -->
        </ul>
      </div>
    </nav>
  </div>
