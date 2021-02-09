<?php


namespace MyApp\Models;


class Admin extends Model
{
    const ADMIN = "ADMIN";
    const CONTENT="CONTENT";
    const ROOT="ROOT";
    const TABLE="users_roles";

    public static $rolesList = [
        self::ADMIN,
        self::CONTENT,
        self::ROOT,
    ];
    public static function getUserRole($userId){
        $result=self::link()->query("SELECT users_roles.role FROM ". self::TABLE." WHERE user_id=".(int)$userId)->fetchAll(\PDO::FETCH_ASSOC);
        $roles=[];
        foreach ($result as $userData){
            //if(in_array($userData["role"], self::$rolesList))
            array_push($roles, self::$rolesList[$userData['role']-1]);
        }
        return $roles;
    }
}