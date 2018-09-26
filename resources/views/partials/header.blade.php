<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><i class="fa fa-phone"></i> 0881/833745</li>
                <li><i class="fa fa-envelope-o"></i> sitoecommerce@email.com/li>
                <li><i class="fa fa-map-marker"></i> 88 Via Sito E-commerce</li>
            </ul>
            <ul class="header-links pull-right">
                <li><a href="{{ url('area_riservata')}}"><i class="fa fa-user-o"></i> Il mio Account</a></li>
            </ul>
        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="#" class="logo">
                            <img src="/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form>
                            <select class="input-select">
                                <option value="0">Tutte le categorie</option>
                                <option value="1">Computer</option>
                                <option value="2">Accessori</option>
                                <option value="3">Videocamere</option>
                                <option value="4">Smartphone e Tablet</option>
                            </select>
                            <input class="input" placeholder="Cerca">
                            <button class="search-btn">Cerca</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">

                        <!-- Cart -->
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Il tuo carrello</span>
                                <div class="qty">{{ Session::has('cart') ? Session::get('cart')->totalQty : '0' }}</div>
                            </a>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="/img/product01.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>
                                    </div>

                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="/img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#"></a></h3>
                                            <h4 class="product-price"><span class="qty"></span></h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>
                                    </div>
                                </div>
                                <div class="cart-summary">
                                    <small>Totale Articoli: {{ Session::has('cart') ? Session::get('cart')->totalQty : '0' }}</small>
                                    <h5>TOTALE: € {{ Session::has('cart') ? Session::get('cart')->totalPrice : '0.00' }}</h5>
                                </div>
                                <div class="cart-btns">
                                    <a href="{{ route('product.shoppingCart') }}">View Cart</a>
                                    <a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->