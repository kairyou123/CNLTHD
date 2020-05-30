<?php

namespace App\Providers\Composer;

use Illuminate\View\View;
use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;

class CatalogComposer
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    protected $catalogs;

    /**
     * Create a new profile composer.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct()
    {
        $response = Http::get(env('API_URL') . '/api/catalog');
        $catalogs = $response->json()['data'];
        $catalogs = collect($catalogs)->filter(function($catalog) {
            return $catalog['status'] === 'OK';
        })->toArray();
        $this->catalogs = $catalogs;

    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with('catalogs', $this->catalogs);
    }
}
