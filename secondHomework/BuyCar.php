<?php
require "MyTrait.php";
final class BuyCar{
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
$car1=BuyCar::getInstance();
$car1->getPrice(59000);
$car1->getAmount(2);
$car1->getTotalCost();
$car2=BuyCar::getInstance();
$car2->getTotalCost();