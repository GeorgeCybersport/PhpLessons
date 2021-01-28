<?php

require "DigitalItem.php";

class PieceItem extends DigitalItem
{
    public $price;
    protected $amount;

    public function __construct($price, $amount)
    {
        parent::__construct($price, $amount);
    }

    public function getTotalCost()
    {
        $finalCost = $this->price * $this->amount;
        echo "final cost: " . $finalCost . "<br/>";
    }

}

$phone1 = new PieceItem($phone->price * 2, 4);
$phone1->getTotalCost();