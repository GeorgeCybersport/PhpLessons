<?php

trait MyTrait
{
    public function getTotalCost()
    {

        $finalCost = $this->price * $this->amount;
        echo "final cost: " . $finalCost . "<br/>";
    }
}