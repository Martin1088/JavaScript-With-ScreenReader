<?php
$value_for_answers = array("A4", "B4", "C4", "A2", "A3", "A5", "A6");
$answer = "A4";
if(isset($_POST['hexanumber'])) {
    $result = $_POST['hexanumber'];
    if(!empty($result)) {
        foreach($value_for_answers as $value_for_answer) {
            if(strpos($value_for_answer, $result) !== false) {
                echo $value_for_answer;
                echo "<br>";
            } 
            if($value_for_answer === $answer) {
                echo "<em> Success! </em>";
            }
        } 

    }
}
?>