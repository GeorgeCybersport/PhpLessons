<?php

require "Item.php";

class DigitalItem extends Item
{
    public $price;
    protected $amount;
    public function __construct($price, $amount)
    {
        $this->amount = $amount;
        $this->price=$price;
    }

    public function getTotalCost()
    {
        $finalCost=$this->price*$this->amount;
        echo "final cost: " . $finalCost . "<br/>";
    }
}
$phone=new DigitalItem( 150,4);
$phone->getTotalCost();