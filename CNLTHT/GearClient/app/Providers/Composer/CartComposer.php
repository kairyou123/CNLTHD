<?php

namespace App\Providers\Composer;

use Illuminate\View\View;
use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;

class CartComposer
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    protected $cart_count;

    /**
     * Create a new profile composer.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct()
    {
        if(Cookie::get('login')) {
            $access_token = json_decode(Cookie::get('login'), true)['access_token'];

            $response = Http::withToken($access_token)->get(env('API_URL') . '/api/cart');

            if($response->json() !== null)
            {
                $this->cart_count = count($response->json()['data']);
            }
            else
            {
                $this->cart_count = 0;
            }

        }

    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with('cart_count', $this->cart_count);
    }
}
