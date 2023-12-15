<?php

class Material {
    private $id;
    private $lesson_id;
    private $title;
    private $file_path;
    private $created_at;
    private $updated_at;

    public function __construct($lesson_id, $title, $file_path) {
        $this->lesson_id = $lesson_id;
        $this->title = $title;
        $this->file_path = $file_path;
        $this->created_at = date('Y-m-d H:i:s');
        $this->updated_at = date('Y-m-d H:i:s');
    }

    public function getId() {
        return $this->id;
    }

    public function getLessonId() {
        return $this->lesson_id;
    }

    public function setLessonId($lesson_id) {
        $this->lesson_id = $lesson_id;
    }

    public function getTitle() {
        return $this->title;
    }

    public function setTitle($title) {
        $this->title = $title;
    }

    public function getFilePath() {
        return $this->file_path;
    }

    public function setFilePath($file_path) {
        $this->file_path = $file_path;
    }

    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
}

?>
