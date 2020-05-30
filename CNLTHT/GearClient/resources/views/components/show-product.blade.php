
<div class="product-category" id="product-category">
    <div class="product-category-title">
      <h1>{{$type}}</h1>
      <div class="row product-category-title-sort">
        <div class="col-sm-12 wrap-sort-by">
          <div class="product-category-title-sort-style">
            <label for="products">Sắp xếp theo:</label>
            <form method="GET">
            <select id="cars" name="price" onChange="this.form.submit()">
                    <option value="">Chọn loại sắp xếp </option>
                    <option value="ASC">Giá: Tăng dần </option>
                    <option value="DESC">Giá: Giảm dần</option>
                </select>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="product-category-content row">
    @foreach($products as $product)
      <div class="product-category-content-products col-md-3">
        <div class="border">
          <div class="product-category-content-products-img">
            <a href="{{route('details', ['slug' => $product['slug'] ])}}">
                @if(json_decode($product['image'], true))
                    <img src="{{env('API_URL') . '/images/' . json_decode($product['image'], true)[0]}}"  alt="img" width="200px" height="200px">
                @else
                    <img src="{{env('API_URL') . '/images/banphim.png'}}"  alt="img" width="200px" height="200px">
                @endif
            </a>
            <div class="products-hover">
              <p class="products-hover-see-more">
                <a href="{{route('details', ['slug' => $product['slug'] ])}}">Nhấn để xem chi tiết</a>
              </p>
              <div class="products-hover-btn">
                <p><a href="{{route('add_cart', ['slug' => $product['slug'], 'quantity' => 1])}}">Thêm vào giỏ hàng</a></p>
              </div>
            </div>
          </div>
          <div class="product-category-content-products-name">
             <h5>{{$product['name']}}</h5>
          </div>
          <div class="product-category-content-products-price">
          <p>{{number_format($product['price'])}} đ</p>
          </div>
          <div class="product-category-content-products-price-sale">
            <p>{{number_format($product['priceDiscount'])}} đ</p>
          </div>
        </div>
      </div>
    @endforeach
      <div style="width: 100%">
        {{$products->appends(request()->query())->links()}}
        </div>
    </div>

  </div>
