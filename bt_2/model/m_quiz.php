<?php

class Quiz {
    private $id;
    private $lesson_id;
    private $title;
    private $created_at;
    private $updated_at;
    public function __construct($lesson_id, $title) {
        $this->lesson_id = $lesson_id;
        $this->title = $title;
        $this->created_at = date('Y-m-d H:i:s');
        $this->updated_at = date('Y-m-d H:i:s');
    }

    public function getId() {
        return $this->id;
    }

    public function getLessonId() {
        return $this->lesson_id;
    }

 

    public function getTitle() {
        return $this->title;
    }

 
    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
}

?>
