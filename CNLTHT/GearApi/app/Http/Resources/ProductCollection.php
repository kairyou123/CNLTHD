<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'image' => $this->image,
            'name' => $this->name,
            'price' => $this->price,
            'description' => $this->description,
            'discount' => $this->discount,
            'priceDiscount' => $this->price_discount,
            'stock' => $this->stock,
            'catalog' => $this->catalog,
            'manufactuer' => $this->manufactuer,
            'status' => $this->status,
            'slug' => $this->slug,
        ];
    }
}
