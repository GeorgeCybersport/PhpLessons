<?php


namespace MyApp\Controllers;


use MyApp\Auth;
use MyApp\Models\Orders;

class AdminController extends Controller
{
    public function actionIndex(){
        if (!($user = Auth::getUser())) {
            $this->redirect('login');
        }
        if(!($roles=\MyApp\Models\Admin::getUserRole($user['id']))){
            $this->redirect('/catalog');
        }
        $isAdmin=in_array("ADMIN", $roles);
        if($isAdmin && isset($_GET['status'])){
            Orders::setStatus($_GET['id'], $_GET['status']);
            exit;
        }
        $this->render('account/orderList.twig', [
            'orders' => Orders::getAll(),
            'statuses' => Orders::getStatuses(),
            'allowEdit'=>$isAdmin,
        ]);
    }
}