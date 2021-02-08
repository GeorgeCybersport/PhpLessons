<?php

namespace MyApp\Models;

class Authorization extends Model
{
    const TABLE = 'users';

    public static function register($name, $login, $pass)
    {
        try {
            $result = self::link()->prepare('SELECT * FROM ' . self::TABLE . ' WHERE login=:login');
            $result->bindParam(':login', $login, \PDO::PARAM_STR);
            $result->execute();
            $alreadyReg = $result->fetch(\PDO::FETCH_ASSOC);
        } catch (\Throwable $e) {
            die($e->getMessage());
        }
        if (!$alreadyReg) {
            try {
                $reg = self::link()->prepare('INSERT INTO ' . self::TABLE . " SET userName = :userName, login=:login, pass=:pass ");
                $reg->bindParam(':userName', $name, \PDO::PARAM_STR);
                $reg->bindParam(':login', $login, \PDO::PARAM_STR);
                $reg->bindParam(':pass', $pass, \PDO::PARAM_STR);
                $reg->execute();
                return true;
            } catch (\Throwable $e) {
                return false;
            }
        }
    }

    public static function getAuth($login, $pass)
    {
        try {
            $reg = self::link()->prepare('SELECT * FROM ' . self::TABLE . " WHERE login=:login AND pass=:pass ");
            $reg->bindParam(':login', $login, \PDO::PARAM_STR);
            $reg->bindParam(':pass', $pass, \PDO::PARAM_STR);
            $reg->execute();
            $result=$reg->fetch(\PDO::FETCH_ASSOC);
            if ($result) {
                return $result;
            } else return false;
        } catch (\Throwable $e) {
            return false;
        }
    }
}
