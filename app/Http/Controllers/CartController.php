<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Support\Facades\Auth;
use Session;
use App\Cart;
use App\Discount;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{

    public function getAddToCart(Request $request, $id)
    {
        $product = Product::find($id);
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($product, $product->id);

        $request->session()->put('cart', $cart);
        return redirect()->route('home');
    }

    public function getCart()
    {
        if (!Session::has('cart')) {
            return view('shopping-cart');
        }
        $oldcart = Session::get('cart');
        $cart = new Cart($oldcart);
        return view('shopping-cart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
    }

    public function getReduce($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->reduceqty($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('product.shoppingCart');
    }

    public function getAdd($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->addqty($id);

        Session::put('cart', $cart);
        return redirect()->route('product.shoppingCart');
    }

    public function getRemoveItem($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('product.shoppingCart');
    }

    public function getCheckout()
    {
        if (!Session::has('cart'))
        {
            return view('shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $total = $cart->totalPrice;
        return view('checkout', compact('total'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {

        if(!Session::has('cart'))
        {
            return view('shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

        $this->validate($request,[
            'name' => 'required|min:3|max:35',
            'lastname' => 'required|min:3|max:35',
            'payment' => 'required',
            'address' => 'required',
        ],[
            'name.required' => ' E\' obbligatorio inserire il nome.',
            'lastname.required' => ' E\' obbligatorio inserire il cognome.',
            'payment.required' => ' E\' obbligatorio inserire il metodo di pagamento.',
            'name.min' => 'Il nome deve essere minimo di 3 caratteri.',
            'name.max' => 'Il nome deve essere massimo di 35 caratteri.',
            'lastname.min' => 'Il cognome deve essere minimo di 3 caratteri.',
            'lastname.max' => 'Il cognome deve essere massimo di 35 caratteri.',
            'address.required' => ' E\' obbligatorio inserire l\'indirizzo.',
        ]);

        $order = new Order;

        $order->user_id = $request->input('user_id');
        $order->name = $request->input('name');
        $order->lastname = $request->input('lastname');
        $order->payment = $request->input('payment');
        $order->address = $request->input('address');
        $order->cart = serialize($cart);
        $order->delivered = $request->input('delivered');

        Auth::user()->order()->save($order);

        if($order->delivered == 'yes')
        {
            foreach($cart->items as $item)
            {
                Product::where('id', '=', $item['item']['id'])->decrement('units', $item['qty']);
            }
        }

        Session::forget('cart');
        return redirect()->route('home')->with('success', 'Ordine completato con successo!');
    }
}
