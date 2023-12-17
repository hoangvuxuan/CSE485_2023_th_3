<?php

class CourseUser {
    private $course_id;
    private $user_id;
    private $created_at;
    private $updated_at;

    public function __construct($course_id, $user_id) {
        $this->course_id = $course_id;
        $this->user_id = $user_id;
        $this->created_at = date('Y-m-d H:i:s');
        $this->updated_at = date('Y-m-d H:i:s');
    }

    public function getCourseId() {
        return $this->course_id;
    }

 
    public function getUserId() {
        return $this->user_id;
    }

  

    public function getCreatedAt() {
        return $this->created_at;
    }

    public function getUpdatedAt() {
        return $this->updated_at;
    }
}

?>
