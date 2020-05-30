@extends('_layout_client')

@section('title')
    {{$category}}
@endsection

@section('content')
@if($products->hasPages())
    <div class="container" style="margin-top: 20px; margin-bottom: 20px">
        <x-show-product :products="$products" :type="$category" />
    </div>
@else
<div class="container" style="margin-top: 20px; margin-bottom: 20px">
    <div style="text-align: center; height: 400px">
        <h2 style="line-height: 400px">KHÔNG CÓ SẢN PHẨM NÀO THUỘC CHỦNG LOẠI NÀY</h2>
    </div>
</div>
@endif
@endsection
