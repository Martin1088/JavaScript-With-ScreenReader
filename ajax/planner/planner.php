<?php
include 'book.php';
// variablen
$booking;
$book;
$i = 0;
do {
    if(isset($_POST['submit'])) {
        $book = new Entry();
            $book->title = $_POST['title'];
            $book->typ = $_POST['typ'];
            $book->amount = $_POST['amount'];
            $book->datum = $_POST['date'];
    } else {
        echo "Fehler <br>";
    }
    $booking[$i] = $book->title;
    $i++;
} while(false);
foreach($booking as $e) {
    $res= $e;
}
echo json_encode(array('data' =>$res));
exit;

?>