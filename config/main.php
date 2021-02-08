<?php

return [
    'db' => [
        'dsn' => 'mysql:host=localhost;dbname=auth',
        'user' => 'root',
        'pwd' => 'root',
    ],
    'templates' => __DIR__ . '/../templates',
    'routing' => [
        'login' => 'account/login',
        'registration'=>'account/registration',
        'logout' => 'account/logout',
        'basket' => 'account/basket',
        'order' => 'account/order',
        'catalog\/([0-9]+)\/([0-9]+)' => 'catalog/good',
        'catalog\/([0-9]+)' => 'catalog/category',
        'catalog' => 'catalog/index',
        '(\w+)\/(\w+)' => '<controller>/<action>',
        '(\w+)' => '<controller>/index',
        '^$' => 'index/index',
        '(.*)' => 'index/error',
    ],
];