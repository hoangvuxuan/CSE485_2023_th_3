<?php

class User {
    private $id;
    private $name;
    private $email;
    private $password;
    private $created_at;
    private $updated_at;
    private $db;
    private static $tb_name = "users";

    public function __construct() {
        $this->db = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);         
    }

    public static function getAll()
    {
        
        $db = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $tb = self::$tb_name;
        $query = $db->query("SELECT * FROM ".$tb);
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }


    public function getId() {
        return $this->id;
    }

    public function getName() {
        return $this->name;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getPassword() {
        return $this->password;
    }

    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
}