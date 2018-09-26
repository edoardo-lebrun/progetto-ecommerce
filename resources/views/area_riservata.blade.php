@include('partials.header_area')

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Ordini effettuati</h1>

            <div class="list-group">
                <div class="row">
                    <div class="col-md-8 col-sm-7">
                            @foreach( $orders as $order )
                                <div class="panel-body">
                                    <ul class="list-group">
                                        @foreach($order->cart->items as $item)
                                            <li class="list-group-item">
                                            <span class="badge">{{ $item['price'] }}</span>
                                            {{ $item['item']['name'] }} | {{ $item['qty']}} Unità
                                            </li>
                            @endforeach
                                    </ul>
                                </div>
                            <div class="panel-footer">
                                <strong>Total Price: {{ $order->cart->totalPrice }}</strong>
                            </div>
                            @endforeach
                </div>
            </div>
        </main>
    </div>
</div>

@include('partials.footer_area')