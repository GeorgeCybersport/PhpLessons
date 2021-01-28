<?php
require "MyTrait.php";
final class BuyProduct{
    use MyTrait;
    private static $instance;
    private function __construct(){}
    private $price;
    private $amount;
    public static function getInstance() {
        if ( empty(self::$instance) ) {
            self::$instance = new self();
        }
        return self::$instance;
    }
    public function getPrice($price){
        if($price && is_numeric($price)){
            $this->price=$price;
        }
    }
    public function getAmount($amount){
        if($amount && is_numeric($amount)){
            $this->amount=$amount;
        }
    }

    private function __clone(){}
    private function __wakeup(){}
}
$product1=BuyProduct::getInstance();
$product1->getPrice(59);
$product1->getAmount(3);
$product1->getTotalCost();
$product2=BuyProduct::getInstance();
$product2->getTotalCost();