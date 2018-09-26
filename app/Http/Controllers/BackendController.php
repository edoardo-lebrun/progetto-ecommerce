<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Post;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Session;

class BackendController extends Controller
{
    public function riservata()
    {
        $orders = Auth::user()->order;
        $orders->transform(function($order, $key) {
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('area_riservata', compact('orders'));
    }

}
