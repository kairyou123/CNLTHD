<?php

namespace App\View\Components;

use Illuminate\View\Component;

class showProduct extends Component
{

    public $products;
    public $type;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($products, $type)
    {
        $this->products = $products;
        $this->type = $type;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.show-product', ['products' => $this->products, 'type' => $this->type]);
    }
}
