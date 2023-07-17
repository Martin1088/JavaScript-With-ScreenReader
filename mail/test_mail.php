<?php
// message
try {
    $msg = "Hello this ist a test. \n See you";
    $to = "martinjurk@inexio.email";
    $from = "jurkmartintim223@gmail.com";
    $betreff = "php Mail";
    mail($to , $betreff, $msg, $from);
    $f = error_get_last();
    echo $f;
} catch (Exception $e) {
    echo $e;
}

echo "send mail";
?>