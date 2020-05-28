<?php

namespace App\Models;

use App\Models\Product;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    protected $table = 'users';

    protected $fillable = [
        'password', 'name', 'email', 'address', 'phone', 'status', 'role', 'created_at', 'updated_at'
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password'
    ];

    public function product_cart() {
        return $this->belongsToMany('App\Models\Product', 'cart', 'user_id', 'product_id');
    }


}
