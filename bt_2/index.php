<?php
require_once("./config.php");

$controller = isset($_GET['controller']) ? $_GET['controller'] : 'home';
$action = isset($_GET['action']) ? $_GET['action'] : 'index';

if($controller == "home") {
    require_once(ROOT."\controller\home_comtroller.php");
 
    $home = new Home_comtroller();
    $home ->index();
}
else {
    die("url not found");
}

