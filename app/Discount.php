<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Discount extends Model
{
    public function discount()
    {
        return $this->hasMany(Product::class, 'product_id');
    }
}
