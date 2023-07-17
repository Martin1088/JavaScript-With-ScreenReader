<?php
$fairy = "rumpelstiltskin";
$secret = "Rumpelstilzchen";

$username = $_POST['username'];
$password = $_POST['password'];

// Abfrage der variablen
if ($username != $fairy) {
    echo 'Tis is not the right name!';
}
elseif ($username == $fairy and $password == $secret) {
echo 'Welcome to the treasure !';
}
else {
    echo 'Wrong password';
}


?>