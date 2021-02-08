<?php

namespace MyApp\Controllers;

use MyApp\Models\Authorization;
use MyApp\Auth;
use MyApp\Models\History;
use MyApp\Basket;
use MyApp\Models\Orders;
use MyApp\Models\Goods;

class AccountController extends Controller
{
    public function actionOrder()
    {
        $basket = Basket::get();
        if (!$basket['count']) {
            $this->redirect('/catalog');
        }

        if (!($user = Auth::getUser())) {
            $this->redirect('login');
        }

        $orderId = Orders::add($user['id'], $basket['goods']);

        Basket::clear();

        $this->render('account/order.twig', [
            'orderId' => $orderId,
        ]);
    }
    /**
     * /basket
     */
    public function actionBasket()
    {
        $basket = Basket::get();

        $goods = [];
        $sum = 0;
        foreach ($basket['goods'] as $id => $count) {
            $good = Goods::getById($id);
            $good['count'] = $count;
            $sum += $good['sum'] = $count * $good['price'];
            $goods[] = $good;
        }

        $this->render('account/basket.twig', [
            'sum' => $sum,
            'goods' => $goods,
        ]);
    }

    public function actionIndex()
    {
        $result = Auth::getUser();
        //echo "result". $result;
        if ($result) {
            $history=History::getLast($result['id']);
            $this->render('account/index.twig', [
                "history"=>$history,
            ]);
        } else $this->redirect("/login");
    }

    public function actionLogin()
    {
        if ($_POST['login'] !== "" && $_POST['password'] !== "") {
            $result = Authorization::getAuth($_POST['login'], md5($_POST['password']));
            if ($result) {
                Auth::login($result);
                $this->redirect("/account");
            } else echo "Неправильный логин или пароль";
        } else echo "Введите все данные";
        $this->render('account/auth.twig');
    }

    public function actionRegistration()
    {
        if (strlen($_POST['name']) > 0 && strlen($_POST['login']) > 0 && strlen($_POST['password']) > 0) {
            if ($_POST['password'] === $_POST['repeat']) {
                $result = Authorization::register($_POST['name'], $_POST['login'], md5($_POST['password']));
                if ($result)
                    $this->redirect("/login");
                else $this->redirect();
                if (!$result) echo "Пользователь с таким логином уже существует";
            } else echo "пароли не совпадают";
        } else echo "Введите все данные";

        $this->render('account/register.twig');
    }
    public function actionLogout(){
        Auth::logout();
        session_destroy();
        $this->redirect("/login");
    }
}