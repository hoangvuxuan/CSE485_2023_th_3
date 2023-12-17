<?php
require_once ROOT."/model/m_user.php";

class User_service {
    public function get_all() {
        try {
            $conn = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $result = $conn->query('SELECT * FROM users');

            $arrs = [];

            while($row = $result -> fetch()) {
                $u = new user($row["id"], $row["name"], $row["email"], $row["password"], $row["created_at"], $row["updated_at"]);
                $arrs[] = $u;
    
            }

            return $arrs;
        }
        catch(Exception $e) {
            echo $e->getMessage();
            return $arrs = [];
        }
    }
 }