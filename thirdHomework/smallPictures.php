<?php
require "startDataBase.php";
try{
    $result = $sql->query("SELECT * FROM pictures");
    $imgs = $result->fetchAll(PDO::FETCH_ASSOC);
    $smallPictureLink = [];
    $smallPicturesId = [];
    echo $twig->render('index.twig', [
        "imgs" => $imgs,
    ]);
} catch (Exception $e){
    $e->getCode();
    $e->getMessage();
}

