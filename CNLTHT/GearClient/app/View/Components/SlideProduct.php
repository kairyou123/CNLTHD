<?php

namespace App\View\Components;

use Illuminate\View\Component;

class SlideProduct extends Component
{

    public $products;
    public $title;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($products, $title)
    {
        $this->products = $products;
        $this->title = $title;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.slide-product', ['products' => $this->products, 'title' => $this->title]);
    }
}
