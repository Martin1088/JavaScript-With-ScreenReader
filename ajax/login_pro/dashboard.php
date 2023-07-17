<?php
session_start();
if ($_GET['token'] != $_SESSION['token']) {
    echo json_encode(['auth' => false]);
} else {
    $item = $_GET['item'];
    echo json_encode(['auth' => true ,'content' => "<b> This is ${item}</b>"]);
}
?>