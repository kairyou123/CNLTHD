@extends('_layout_client')

@php ($i = 1)
@php ($j = 0)

@section('title')
    Chi tiết sản phẩm
@endsection

@section('content')
<div class="container">

    <!-- Products -->
    <div class="product-detail" id="product-detail">

      <div class="product-detail-content row" style="margin-top: 50px">
        <div class="product-detail-content-products col-md-6">
          <div id="custCarousel" class="carousel slide" data-ride="carousel" align="center">
            <!-- slides -->
            <div class="carousel-inner">
              @foreach($images as $image)
                @if($i === 1)
                    <div class="carousel-item active"> <img src="{{env('API_URL') . '/images/' . $image}}" width="400px" height="400px" /> </div>
                    @php ($i++)
                @else
                <div class="carousel-item"> <img src="{{env('API_URL') . '/images/' . $image}}"  width="400px" height="400px" /> </div>
                @endif
              @endforeach
            </div>
            <!-- Left right -->
            <a class="carousel-control-prev" href="#custCarousel" data-slide="prev"> <span
                class="carousel-control-prev-icon"></span> </a>
            <a class="carousel-control-next" href="#custCarousel" data-slide="next"> <span
                class="carousel-control-next-icon"></span> </a>
            <!-- Thumbnails -->
            <ol class="carousel-indicators list-inline">
              @foreach($images as $image)
                @if($j !== 0)
                <li class="list-inline-item"> <a id={{"carousel-selector-" . $j}} data-slide-to="{{$j}}" data-target="#custCarousel">
                <img src="{{env('API_URL') . '/images/' . $image}}"  width="70px" height="70px"> </a> </li>
                @php($j++)
                @else
                <li class="list-inline-item active"> <a id={{"carousel-selector-" . $j}}  data-slide-to="{{$j}}"
                    data-target="#custCarousel"> <img src="{{env('API_URL') . '/images/' . $image}}" width="70px" height="70px" /> </a> </li>
                    @php($j++)
                @endif


              @endforeach
            </ol>
          </div>
        </div>

        <div class="product-detail-content-products col-md-6 m-0">
          <div class="">
            <div class="product-detail-content-products-name">
              <h2><span class="name">{{$product['name']}}</span></h2>
            </div>
            <div class="product-detail-content-products-producer">
              <h2>Hãng sản xuất: <span class="producer">{{$product['manufactuer']['name']}}</span></h2>
            </div>
            @if($product['price'] !== $product['priceDiscount'])
            <div class="product-detail-content-products-price">
              <p>Giá: <span class="price">{{number_format($product['price'])}} đ</span></p>
            </div>
            <div class="product-detail-content-products-price-sale">
              <b>Khuyến mãi: <span class="price-sale">{{number_format($product['priceDiscount'])}} đ</span></b>
            </div>
            @else
            <div class="product-detail-content-products-price-sale">
                <b>Gia Niêm Yết: <span class="price-sale">{{number_format($product['priceDiscount'])}} đ</span></b>
            </div>
            @endif
            <div class="product-detail-content-products-btn">
                @if($product['stock'] !== 0)
                <form method="POST" name="add_cart" action="{{route('add_cart', ['slug' => $product['slug']])}}">
                    @csrf
              <p>Số lượng: </p><input type="number" name="quantity" value="1" min="1" max={{$product['stock']}} step="1" class="number" />
              <br>

              <input type="submit" class="btn btn-danger btn-lg buy-now" forSubmit="add_cart" value="Đặt hàng">
                </form>
              @else
              <div style="font-size: 22px; color: red; padding-top: 20px"><b>HẾT HÀNG</b></div>
              @endif
            </div>

          </div>
        </div>
      </div>

      <div class="detail-tab">
        <ul class="nav nav-tabs m-0" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#menu1">Mô tả sản phẩm </a>
          </li>
        </ul>
        <div class="tab-content">
          <div id="menu1" class="container tab-pane active"><br>
          <p>{!! $product['description'] !!}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
