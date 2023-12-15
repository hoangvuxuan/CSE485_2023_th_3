<?php

class Option {
    private $id;
    private $question_id;
    private $option_text;
    private $is_correct;
    private $created_at;
    private $updated_at;

    private $db;
    private static $tb_name = "options";

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

    public function getQuestionId() {
        return $this->question_id;
    }

 

    public function getOptionText() {
        return $this->option_text;
    }

   

    public function getIsCorrect() {
        return $this->is_correct;
    }

  

    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
}

?>
