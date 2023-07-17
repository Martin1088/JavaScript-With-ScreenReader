<?php
if(isset($_POST['submit'])) {
    $answer = $_POST['answer'];
    $number = $_POST['number'];
    if (empty($answer) || strlen($answer <= 4)) {
        echo "<span>Fill in the answer!</span>";
    } elseif (hexdec($answer) == $number) {
        echo  "<span>Right answer!</span>";
    } else {
        echo "There is something wrong";
    }
}

?>