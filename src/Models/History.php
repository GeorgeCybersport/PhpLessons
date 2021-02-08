<?php

namespace MyApp\Models;

class History extends Model
{
    const TABLE="history";
    public static function add($userId, $url){
        $result=self::link()->prepare("INSERT INTO ".self::TABLE." SET userId=:userId, url=:url");
        $result->bindParam("userId", $userId, \PDO::PARAM_INT);
        $result->bindParam("url", $url, \PDO::PARAM_STR);
        $result->execute();
    }
    public static function getLast($userId){
      return self::link()->query("SELECT * FROM ". self::TABLE." WHERE userId=".(int)$userId." ORDER BY id DESC LIMIT 5")->fetchAll(\PDO::FETCH_ASSOC);
    }
}