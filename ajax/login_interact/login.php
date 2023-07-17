<?php
//session_start();
/* if($_POST['email'] == 'user@user.de' && $_POST['password'] == 'p') {
    $_SESSION['token'] = password_hash(session_id(), PASSWORD_DEFAULT);
    echo json_encode(['token' => "{_SESSION['token']}"]);
} else {
    echo json_encode(['error' => 'Error with Login']);
} */
$test =(($_POST['email']));
if (($_POST['email']) == "user@user.de") {
    echo json_encode(array('success' => 1, 'email'=>$test));
    
} else {
    echo json_encode(array('success' => 0));
}


?>