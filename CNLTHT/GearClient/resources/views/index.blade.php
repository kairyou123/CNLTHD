@extends('_layout_client')

@section('title')
    Trang chủ
@endsection

@section('content')
<div class="container">
    <!-- Menu -->


    <!-- Header banner -->
    <div id="header" class="carousel slide header" data-ride="carousel" style="margin-top: 20px">
      <ul class="carousel-indicators">
        <li data-target="#header" data-slide-to="0" class="active"></li>
        <li data-target="#header" data-slide-to="1"></li>
        <li data-target="#header" data-slide-to="2"></li>
      </ul>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="images/banner.png" alt="Los Angeles" width="1100" height="500">
          <div class="carousel-caption">
            <h3>Los Angeles</h3>
            <p>We had such a great time in LA!</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="images/banner.png" alt="Chicago" width="1100" height="500">
          <div class="carousel-caption">
            <h3>Chicago</h3>
            <p>Thank you, Chicago!</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="images/banner.png" alt="New York" width="1100" height="500">
          <div class="carousel-caption">
            <h3>New York</h3>
            <p>We love the Big Apple!</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#header" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#header" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>

    <!-- Content -->
    <x-slide-product :products="$products_new" title="Mới nhất"></x-slide-product>

    <x-slide-product :products="$products_discount" title="Giảm giá nhiều"></x-slide-product>
    <!-- Footer -->


  </div>
@endsection
