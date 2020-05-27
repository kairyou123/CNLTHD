<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Catalog extends Model
{
    use Sluggable;

    protected $table = 'catalogs';

    public function sluggable() {
        return [
            'slug' => [
                'source' => 'name',
            ]
        ];
    }

}
