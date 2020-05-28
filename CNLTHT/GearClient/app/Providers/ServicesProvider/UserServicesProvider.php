<?php

namespace App\Providers\ServicesProvider;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class UserServicesProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Using class based composers...
        View::composer(
            ['header'], 'App\Providers\Composer\ProfileComposer'
        );

        View::composer(
            'header', 'App\Providers\Composer\CatalogComposer'
        );
    }
}
