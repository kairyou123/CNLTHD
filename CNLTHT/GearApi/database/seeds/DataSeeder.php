<?php

use App\Models\Catalog;
use App\Models\Product;
use App\Models\Manufactuer;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $password = bcrypt('123456');
        DB::table('users')->insert(
            ['name' => 'Liêu Hoàng Long', 'email' => 'shinlong1998@gmail.com', 'password' => $password, 'address' => '18 Trần Hưng Đạo', 'phone' => '0903232312', 'role' => 'Admin', 'status' => 'OK'],
            ['name' => 'Nguyễn Quốc Hào', 'email' => 'nguyenquochao1998@gmail.com', 'password' => $password, 'address' => '16 Trần Hưng Đạo', 'phone' => '0903345234', 'role' => 'Member', 'status' => 'OK']
        );

        $catalog = new Catalog();
        $catalog->name = "Laptop";
        $catalog->status = "OK";
        $catalog->save();

        $catalog1 = new Catalog();
        $catalog1->name = "Bàn phím";
        $catalog1->status = "OK";
        $catalog1->save();

        $manufactuer = new Manufactuer();
        $manufactuer->name = "Acer";
        $manufactuer->status = "OK";
        $manufactuer->save();

        $manufactuer = new Manufactuer();
        $manufactuer->name = "DareU";
        $manufactuer->status = "OK";
        $manufactuer->save();

        $product = new Product();
        $product->name = "Laptop Acer Nitro 5";
        $product->image = "laptop/acer_nitro_5.jpg";
        $product->description = "Laptop được ưu chuộng trong năm";
        $product->price = 15000000;
        $product->discount = 20;
        $product->price_discount = $product->price - $product->price * $product->discount / 100;
        $product->stock = 20;
        $product->catalog_id = 1;
        $product->manufactuer_id = 1;
        $product->status = "OK";
        $product->save();

    }
}
