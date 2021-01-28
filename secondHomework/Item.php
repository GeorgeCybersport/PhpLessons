<?php

abstract class Item
{
    private $price;

    abstract public function getTotalCost();
}