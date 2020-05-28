<?php

namespace App\Providers\Composer;

use Illuminate\View\View;
use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;

class ProfileComposer
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    protected $user;

    /**
     * Create a new profile composer.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct()
    {
        if(Cookie::get('login')) {
            $this->user = json_decode(Cookie::get('login'))->user;
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
        $view->with('profile', $this->user);
    }
}
