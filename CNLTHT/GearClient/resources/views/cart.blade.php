@extends('_layout_client')

@section('title')
    Giỏ hàng
@endsection

@section('content')
@php($total = 0)

<div class="container" style="margin-top: 20px; margin-bottom: 20px">
    @if($haveCart)
    <!-- Products -->
        <div class="row cart">

            <div class="col-12">
                <div class="table-responsive">
                <table class="table table-cart">
                    <thead>
                    <tr>
                        <th class="table-cart--img"></th>
                        <th class="table-cart--name">Sản phẩm</th>
                        <th class="table-cart--quantily">Số lượng</th>
                        <th class="table-cart--price text-center">Giá tiền</th>
                        <th class="table-cart--trash"></th>
                    </tr>
                    </thead>
                    @foreach($cart as $product)
                    @php($product = $product['product'])
                    <tbody>
                    <tr>
                    <td class="table-cart--img"><a href="#">
                        @if(json_decode($product['image'], true))
                            <img src="{{env('API_URL') . '/images/' . json_decode($product['image'], true)[0]}}"  alt="img" width="100px" height="100px">
                        @else
                            <img src="{{env('API_URL') . '/images/banphim.png'}}"  alt="img" width="100px" height="100px">
                        @endif
                    </td>
                    <td class="table-cart--name"><a href="#">{{$product['name']}}</a></td>
                    <form method="POST" action="{{route('edit_cart', ['slug' => $product['slug']])}}" name="cartEdit">
                        @csrf
                        <td class="table-cart--quantily"><input type="number" value="{{$product['pivot']['quantity']}}" size="5" min="1" max="{{$product['stock']}}" class="quantily" name="quantity">
                        </td>
                        <td class="table-cart--price text-center">{{number_format($product['price_discount'] * $product['pivot']['quantity'])}} đ</td>
                        <td class="table-cart--trash"><button class="btn btn-sm btn-warning" forSubmit="cartEdit"><i class="fas fa-edit"></i></button></td>
                    </form>
                    <td class="table-cart--trash"><button onClick="deleteCart()" id="deleteCart" data-slug="{{$product['slug']}}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>
                        </button></td>
                    </tr>
                    @php($total = $total + $product['price_discount'] * $product['pivot']['quantity'])
                    </tbody>
                    @endforeach
                    <tbody>
                    <tr class="table-cart--total">
                        <td colspan="3" class="text-right font-weight-bold">Tổng tiền:</td>
                        <td colspan="2" class="text-right font-weight-bold">{{number_format($total)}} đ</td>
                    </tr>
                    </tbody>
                </table>
                </div>
            </div>
            <div class="col mb-2">
                <div class="row">
                <div class="col-sm-12  col-md-6">
                    <a href="/"><button class="btn btn-lg btn-block btn-light"><i class="fas fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Tiếp tục mua
                    hàng</button></a>
                </div>
                <div class="col-sm-12 col-md-6 text-right">
                    <button class="btn btn-lg btn-block btn-danger text-uppercase">Thanh toán</button>
                </div>
                </div>
            </div>
        </div>
    @else
        <div style="text-align: center; height: 400px">
            <h2 style="line-height: 400px">KHÔNG CÓ SẢN PHẨM NÀO TRONG GIỎ HÀNG</h2>
        </div>
    @endif
  </div>
@endsection

@section('script')
<script>
    function deleteCart() {
        if(confirm("Bạn có chắc chắn muốn xóa sản phẩm này ra khỏi giỏ hàng?"))
        {
            var x = document.getElementById('deleteCart').getAttribute("data-slug");
            var url = '{{route('delete_cart', ":slug")}}';
            url = url.replace(':slug', x);
            window.location = url;
        }
    }
</script>
@endsection
