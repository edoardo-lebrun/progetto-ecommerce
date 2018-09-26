@extends('layouts.main')

@section('title', 'Il tuo Carrello')

@section('body')

    @if(Session::has('cart'))
        <div class="row row-centered" style="padding-top: 10px;">
        <div class="container clearfix">
            <div class="col-md-5 col-xs-5 col-sm-5  col-centered">
                <ul>
                    @foreach($products as $product)
                        <div class="cart-list" >
                            <div class="product-widget" style="padding-top: 25px;">
                                <div class="product-body">
                                    <img class="product-img" src="{{ $product['item']['image'] }}" alt="">
                                    <h3 class="product-name"><a href="#">{{ $product['item']['name'] }}</a></h3>
                                            <p class="product-price pull-right">Prezzo: € {{ $product['item']['price'] }}</p>
                                    <div class="row row-centered">
                                        <p class="product-category pull-left" style="margin-left: 15px;">{{ $product['item']['categories'] }}</p>
                                    </div>
                                        <div class="row-centered" style="padding-bottom: 20px;">
                                    <p class="product-category pull-left" >In Stock: {{ $product['item']['units'] }}</p>
                                            <strong class="pull-right"><button class="fa fa-minus btn btn-sm" onclick="window.location='{{ route('product.reduceQty', $product['item']['id']) }}'"></button>{{ $product['qty'] }}<button class="fa fa-plus btn btn-sm" onclick="window.location='{{ route('product.addQty', $product['item']['id']) }}'"></button></strong>
                                        </div>
                                    <button class="delete" onclick="window.location='{{ route('product.remove', $product['item']['id']) }}'"><i class="fa fa-close"></i></button>
                                    <strong class="product-price-total" style="margin-left: 45px;">Prezzo Totale: € {{ $product['price'] }} </strong>
                            </div>
                            </div>
                        </div>
                        <hr>
               @endforeach
                </ul>
            </div>
        </div>
        <div class="row row-centered" style="padding-bottom: 15px;">
            <div class="container clearfix">
            <div class="col-md-5 col-xs-5 col-sm-5  col-centered">
                <strong class="pull-left">Totale: € {{ $totalPrice }}</strong><button type="button" class="btn btn-success pull-right" onclick="window.location='{{ route('checkout') }}'">Checkout</button>
            </div>
        </div>
    @else
        <div class="row row-centered">
            <div class="col-md-5 col-xs-5 col-sm-5  col-centered">
                <h2>Il carrello è vuoto!</h2>
            </div>
        </div>
    @endif
        </div>
    </div>
    @endsection