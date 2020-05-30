<?php

namespace App\Models;

use App\Models\Catalog;
use App\Models\Manufactuer;
use Illuminate\Support\Facades\App;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Product extends Model {

    use Sluggable;

    protected $table = 'products';

    public function catalog() {
        return $this->belongsTo('App\Models\Catalog', 'catalog_id', 'id');
    }

    public function manufactuer() {
        return $this->belongsTo('App\Models\Manufactuer', 'manufactuer_id', 'id');
    }

    public function user_cart() {
        return $this->belongsToMany('App\Models\User', 'cart', 'product_id', 'user_id')->withPivot('quantity');
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function sluggable() {
        return [
            'slug' => [
                'source' => 'name',
            ]
        ];
    }

}
