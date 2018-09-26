@extends('layouts.main')
@section('title', 'Homepage')
@section('body')
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container clearfix">
				<!-- row -->
				<div class="row row-centered">
					<div class="col-md-4 col-xs-6 col-centered">
						<div class="shop">
							<div class="shop-img">
								<img src="/img/shop01.png" alt="">
							</div>
							<div class="shop-body">
								<h3>I Nostri<br>Computer</h3>
								<a href="{{ url('computer') }}" class="cta-btn">Compra Ora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6 col-centered">
						<div class="shop">
							<div class="shop-img">
								<img src="/img/shop03.png" alt="">
							</div>
							<div class="shop-body">
								<h3>I Nostri<br>Accessori</h3>
								<a href="{{ url('accessori') }}" class="cta-btn">Compra Ora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<div class="row row-centered">
					<!-- shop -->
					<div class="col-md-4 col-xs-6 col-centered">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop02.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Le Nostre<br>Videocamere</h3>
								<a href="{{ url('video') }}" class="cta-btn">Compra Ora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

                    <!-- shop -->
                    <div class="col-md-4 col-xs-6 col-centered">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="./img/shop03.png" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>I Nostri Tablet e<br>Smartphone</h3>
                                <a href="{{ url('smart') }}" class="cta-btn">Compra Ora <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    <!-- /shop -->
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->


		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Ultimi Arrivi</h3>
							<div class="section-nav">
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
										<!-- product -->
										@if ($lasts->count())
											@foreach ($lasts as $last)
										<div class="product">
											<div class="product-img">
												<img src="{{ $last->image }}" alt="">
												<div class="product-label">
													<span class="new" >Nuovo</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">{{ $last->categories }}</p>
												<h3 class="product-name"><a href="{{ route('productpage', $last->id) }}">{{ $last->name }}</a></h3>
												<h4 class="product-price">€ {{ $last->price }}</h4>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn" onclick="window.location='{{ route('product.addToCart', $last->id) }}'"><i class="fa fa-shopping-cart"></i> Aggiungi al carello</button>
											</div>
										</div>
										<!-- /product -->
										@endforeach
										@endif

									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		<div id="hot-deal" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							<h2 class="text-uppercase">Scopri i nostri prodotti</h2>
							<p>Esplora il negozio!</p>
							<a class="primary-btn cta-btn">Compra ora</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /HOT DEAL SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12 col-centered">
						<div class="section-title">
							<h3 class="title">Alcuni dei nostri prodotti</h3>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										@if($products->count())
											@foreach($products as $product)
										<div class="product">
											<div class="product-img">
												<img src=".{{ $product->image }}" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">{{ $product->categories }}</p>
												<h3 class="product-name"><a href="{{ route('productpage', $product->id) }}">{{ $product->name}}</a></h3>
												<h4 class="product-price">{{ $product->price }}</h4>

											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn" onclick="window.location='{{ route('product.addToCart', $product->id) }}'"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
										<!-- /product -->
											@endforeach
										@endif
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container clearfix">
				<!-- row -->
				<div class="row row-centered">
					<div class="col-md-6 col-xs-6 col-centered">
						<div class="section-title">
							<strong class="title">Ultimi Arrivi</strong>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							@foreach($lasts->chunk(3) as $lastsChunk)
							<div>
								<!-- product widget -->
									@foreach ($lastsChunk as $last)
								 <div class="product-widget">
									<div class="product-img">
										<img src="{{ $last->image }}" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">{{ $last->categories }}</p>
										<h3 class="product-name"><a href="#">{{ $last->name }}</a></h3>
										<h4 class="product-price">€ {{ $last->price }}</h4>
									</div>
								</div>
								<!-- /product widget -->
									@endforeach
							</div>
							@endforeach
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->
	@endsection