<?php
require "startDataBase.php";
$id=$_GET["id"];
try{
    $result=$sql->prepare("SELECT * FROM pictures WHERE id = ?");
    $result->execute(array($id));
    $img=$result->fetch(PDO::FETCH_ASSOC);
    echo $twig->render('bigPicture.twig', [
        "bigPictureLink" => $img["bigPictureLink"],
    ]);
} catch (Exception $e){
    $e->getCode();
    $e->getMessage();
}

