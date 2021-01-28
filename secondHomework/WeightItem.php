<?php

require "Item.php";

class WeightItem extends Item
{
    private $price;
    private $weight;

    public function __construct($price, $weight)
    {
        $this->price = $price;
        $this->weight = $weight;
    }

    public function getTotalCost()
    {
        $finalCost = $this->price * $this->weight;
        echo "final cost: " . $finalCost . "<br/>";
    }
}

$sugar = new WeightItem(100, 5);
$sugar->getTotalCost();