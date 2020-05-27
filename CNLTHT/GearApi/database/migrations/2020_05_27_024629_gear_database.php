<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class GearDatabase extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function(Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('address');
            $table->string('phone');
            $table->string('role');
            $table->string('status');
            $table->timestamps();
        });

        Schema::create('catalogs', function(Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description')->nullable();
            $table->string('status');
            $table->string('slug');
            $table->timestamps();
        });

        Schema::create('manufactuers', function(Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description')->nullable();
            $table->string('status');
            $table->string('slug');
            $table->timestamps();
        });

        Schema::create('products', function(Blueprint $table) {
            $table->id();
            $table->string('image');
            $table->string('name');
            $table->string('description');
            $table->integer('price');
            $table->integer('discount');
            $table->integer('price_discount');
            $table->integer('stock');
            $table->bigInteger('catalog_id')->unsigned();
            $table->bigInteger('manufactuer_id')->unsigned();
            $table->string('slug');
            $table->string('status');
            $table->timestamps();
        });


        Schema::create('cart', function(Blueprint $table) {
            $table->bigInteger('product_id')->unsigned();
            $table->bigInteger('user_id')->unsigned();
            $table->integer('quantity');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cart');
        Schema::dropIfExists('users');
        Schema::dropIfExists('products');
        Schema::dropIfExists('catalogs');
        Schema::dropIfExists('manufactuers');
    }
}
