@extends('layouts.main')

@section('title', 'Checkout Ordine')

@section('body')

    <div class="row row-centered" style="padding-top: 15px; padding-bottom: 15px;">
        <div class="container clearfix">
            <div class="col-md-6 col-xs-6 col-sm-6  col-centered">
                <h1>Checkout</h1>
                <h3>Totale Ordine: € {{ $total }}</h3>

                <form action="{{ route('checkout.store') }}" method="post">
                    <input type="hidden" name="delivered" value="yes">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <label for="name">Nome</label>
                            <input type="text" name="name" class="form-control">
                            @if ($errors->has('name'))
                                <span class="invalid-feedback alert-danger" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <label for="lastname">Cognome</label>
                            <input type="text" name="lastname" class="form-control">
                            @if ($errors->has('lastname'))
                                <span class="invalid-feedback alert-danger" role="alert">
                                        <strong>{{ $errors->first('lastname') }}</strong>
                                    </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <label for="payment">Metodo di Pagamento: </label>
                            Mastercard  <input type="radio" name="payment" class="form-inline" value="Mastercard"> Visa  <input type="radio" name="payment" class="form-inline" value="Visa">
                            @if ($errors->has('payment'))
                                <span class="invalid-feedback alert-danger" role="alert">
                                        <strong>{{ $errors->first('payment') }}</strong>
                                    </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <label for="address">Indirizzo di Spedizione</label>
                            <input type="text" name="address" class="form-control">
                            @if ($errors->has('address'))
                                <span class="invalid-feedback alert-danger" role="alert">
                                        <strong>{{ $errors->first('address') }}</strong>
                                    </span>
                            @endif
                        </div>
                    </div>
                    {{ csrf_field() }}
                    <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block">Procedi con il Checkout</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @endsection