<?php

$name = $_GET['user'];
$age = $_GET['age'];

if ($age < 18) {
    echo 'Welcome to this webssite ' . $name . '. But Your are not old enough to visite this website';
}
else {
echo 'Welcome to this websit ' . $name . '. And see you around';
}




?>