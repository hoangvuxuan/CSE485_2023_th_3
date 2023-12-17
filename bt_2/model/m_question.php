<?php

class Question {
    private $id;
    private $quiz_id;
    private $question;
    private $created_at;
    private $updated_at;
    public function __construct($quiz_id, $question) {
        $this->quiz_id = $quiz_id;
        $this->question = $question;
        $this->created_at = date('Y-m-d H:i:s');
        $this->updated_at = date('Y-m-d H:i:s');
    }

    public function getId() {
        return $this->id;
    }

    public function getQuizId() {
        return $this->quiz_id;
    }

    public function setQuizId($quiz_id) {
        $this->quiz_id = $quiz_id;
    }

    public function getQuestion() {
        return $this->question;
    }

    public function setQuestion($question) {
        $this->question = $question;
    }

    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
    
}

?>
