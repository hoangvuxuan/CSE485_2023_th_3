<?php

class Course {
    private $id;
    private $title;
    private $description;
    private $created_at;
    private $updated_at;
    public function __construct($title, $description) {
        $this->title = $title;
        $this->description = $description;
        $this->created_at = date('Y-m-d H:i:s');
        $this->updated_at = date('Y-m-d H:i:s');
    }

    public function getId() {
        return $this->id;
    }

    public function getTitle() {
        return $this->title;
    }

 

    public function getDescription() {
        return $this->description;
    }
 

    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
}

?>
