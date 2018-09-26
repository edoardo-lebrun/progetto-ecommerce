@extends('layouts.main')

@section('title', 'Ultimi Arrivi')

@section('body')

    <!-- BREADCRUMB -->
    <div id="breadcrumb" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb-tree">
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li><a href="{{ url('lastprod') }}"> Ultimi Arrivi</a></li>
                    </ul>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /BREADCRUMB -->

    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                    <!-- store products -->
                    <div class="row">
                        <!-- product -->
                        @if ($lasts->count())
                            @foreach ($lasts as $last)
                        <div class="col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img">
                                    <img src="{{ $last->image }}" alt="">
                                    <div class="product-label">
                                        <span class="new">Nuovo</span>
                                    </div>
                                </div>
                                <div class="product-body">
                                    <p class="product-category">{{ $last->categories }}</p>
                                    <h3 class="product-name"><a href="#">{{ $last->name }}</a></h3>
                                    <h4 class="product-price">€ {{ $last->price }}</h4>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Aggiungi al Carrello</button>
                                </div>
                            </div>
                        </div>
                        <!-- /product -->
                            @endforeach
                            @endif
                    </div>
                    <!-- /store products -->

                    <!-- store bottom filter -->
                    <div class="store-filter clearfix">
                        <span class="store-qty">Mostra 20-100 prodotti</span>
                        <ul class="store-pagination">
                            <li class="active">1</li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                    <!-- /store bottom filter -->
                </div>
                <!-- /STORE -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->


    @endsection