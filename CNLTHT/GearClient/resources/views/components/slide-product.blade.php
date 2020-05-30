<div class="title-content-index">
    <p class="title-content-index-name">{{ $title }}</p>
<p class="title-content-index-more"><a href="#">Xem thêm</a></p>
</div>
<div id="content" class="swiper-container content-index">
    <div class="swiper-wrapper">
    @foreach($products as $product)
      <div class="swiper-slide">
        <a href="{{route('details', ['slug' => $product['slug'] ])}}">
          <div class="products">
            <div class="products-img">
            @if(json_decode($product['image'], true))
            <img src="{{env('API_URL') . '/images/' . json_decode($product['image'], true)[0]}}"  alt="img" width="225px" height="225px">
            @else
            <img src="{{env('API_URL') . '/images/banphim.png'}}"  alt="img">
            @endif
              <div class="products-hover">
                <p class="products-hover-see-more">
                <a href="{{route('details', ['slug' => $product['slug'] ])}}">Nhấn để xem chi tiết</a>
                </p>
                <div class="products-hover-btn">
                    <p><a href="{{route('add_cart', ['slug' => $product['slug'], 'quantity' => 1])}}">Thêm vào giỏ hàng</a></p>
                </div>
              </div>
            </div>
            <div class="products-name">
                <h5>{{$product['name']}}</h5>
            </div>
            <div class="products-price">
              <p>{{number_format($product['price'])}} đ</p>
            </div>
            <div class="products-price-sale">
              <p>{{number_format($product['priceDiscount'])}} đ</p>
            </div>
          </div>
        </a>
      </div>
    @endforeach
    </div>

    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
    <!-- <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div> -->
</div>
