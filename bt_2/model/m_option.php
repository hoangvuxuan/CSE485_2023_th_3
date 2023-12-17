<?php

class Option {
    private $id;
    private $question_id;
    private $option_text;
    private $is_correct;
    private $created_at;
    private $updated_at;

    public function __construct($question_id, $option_text, $is_correct) {
        $this->question_id = $question_id;
        $this->option_text = $option_text;
        $this->is_correct = $is_correct;
        $this->created_at = date('Y-m-d H:i:s');
        $this->updated_at = date('Y-m-d H:i:s');
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
