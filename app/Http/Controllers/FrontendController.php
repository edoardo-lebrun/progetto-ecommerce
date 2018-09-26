<?php

namespace App\Http\Controllers;
use Session;
use App\Cart;
use App\Discount;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontendController extends Controller
{
    public function index(Request $request)
    {
        $request = DB::table('products')
            ->where('created_at', '>=', DB::raw('DATE_SUB(NOW(), INTERVAL 7 DAY)'))
            ->orderBy('created_at','desc')
            ->get();
        $lasts = $request;
        $products = Product::inRandomOrder()->paginate();
        return view('index', compact('lasts', 'products'));
    }

    public function last(Request $request)
    {
        $request = DB::table('products')
            ->where('created_at', '>=', DB::raw('DATE_SUB(NOW(), INTERVAL 7 DAY)'))
            ->orderBy('created_at','desc')
            ->get();
        $lasts = $request;
        return view('lastprod', compact('lasts', 'last'));
    }

    public function computer(Request $request)
    {
        $request = DB::table('products')
            ->where('categories', '=', 'Computer')
            ->orderBy('categories','asc')
            ->get();
        $products = $request;
        return view('computer', compact('products'));
    }

    public function accessori(Request $request)
    {
        $request = DB::table('products')
            ->where('categories', '=', 'Accessori')
            ->orderBy('categories','asc')
            ->get();
        $products = $request;
        return view('accessori', compact('products'));
    }

    public function video(Request $request)
    {
        $request = DB::table('products')
            ->where('categories', '=', 'Video')
            ->orderBy('categories','asc')
            ->get();
        $products = $request;
        return view('video', compact('products'));
    }

    public function smart(Request $request)
    {
        $request = DB::table('products')
            ->where('categories', '=', 'Smart')
            ->orderBy('categories','asc')
            ->get();
        $products = $request;
        return view('smart', compact('products'));
    }

    public function prodotto(Request $request, $id)
    {
        $product = $request = Product::where('id', $id)
            ->first();
        return view('product', compact('product'));
    }

}
