<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Manufactuer extends Model
{
    use Sluggable;

    protected $table = 'manufactuers';

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
