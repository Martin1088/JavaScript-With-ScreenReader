<?php
require_once ('config.php');
$con = new mysqli (servername ,username, passwordforuser);
if($con->connect_error) {
    die("Alles zu spät".$con->connect_error);
}
echo "Verbindung Erfolgreich";

?>