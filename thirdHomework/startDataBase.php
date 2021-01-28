<?php
$sql = new PDO("mysql:host=localhost;dbname=pictures", "root", "");
if (!$sql) {
    echo "Ошибка подключения к базе данных";
    exit;
}
require "vendor/autoload.php";
$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader, []);
