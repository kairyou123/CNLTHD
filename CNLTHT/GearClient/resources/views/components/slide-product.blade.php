<div class="title-content">
    <p class="title-content-name">{{ $title }}</p>
    <p class="title-content-more"><a href="#">Xem thêm</a></p>
</div>
<div id="content" class="swiper-container content">
    <div class="swiper-wrapper">
    @foreach($products as $product)
      <div class="swiper-slide">
        <a href="#product-detail">
          <div class="products">
            <div class="products-img">
            @if(json_decode($product['image'], true))
            <img src="{{env('API_URL') . '/images/' . json_decode($product['image'], true)[0]}}"  alt="img" width="225px" height="225px">
            @else
            <img src="{{env('API_URL') . '/images/banphim.png'}}"  alt="img">
            @endif
              <div class="products-hover">
                <p class="products-hover-see-more">
                  <a href="#product-detail">Nhấn để xem chi tiết</a>
                </p>
                <div class="products-hover-btn">
                  <p><a href="#">Thêm vào giỏ hàng</a></p>
                </div>
              </div>
            </div>
            <div class="products-name">
                <h2>{{$product['name']}}</h2>
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
