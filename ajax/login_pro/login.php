<?php
session_start();
if($_POST['email'] == 'user@user.de' && $_POST['password'] == 'p') {
    $_SESSION['token'] = password_hash(session_id(), PASSWORD_DEFAULT);
    $test = $_SESSION['token'];
    echo json_encode(['token' => $test]);
} else {
    echo json_encode(['error' => 'Error with Login']);
}

?>