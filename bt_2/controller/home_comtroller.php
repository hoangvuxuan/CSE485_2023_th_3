<?php
require_once(ROOT."/service/user_service.php");

class Home_comtroller {
    public function index() {
        $user_ser = new User_service();
        $arr = $user_ser->get_all();

        include(ROOT."/view/home/index.php");
    }

}