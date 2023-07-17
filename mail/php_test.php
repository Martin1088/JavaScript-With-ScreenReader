<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

$mail = new PHPMailer(true);
try {
    $mail->isSMTP();
    $mail->Host = 'mail.inexio.email';
    $mail->SMTPAuth = true;
    $mail->Username = 'obp@inexio.email';
    $mail->Password = 'Stefan2023';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port = 465;
    //^Email from and to
    $mail->setFrom('obp@inexio.email', 'Admin');
    $mail->addAddress('martin.jurk@dkfz-heidelberg.de', 'Receiver');
    $mail->addAddress('tim.lorbacher@dkfz-heidelberg.de', 'Receiver');
    //
    $mail->isHTML(true);
    $mail->Subject = 'phpmailer Message';
    $mail->Body = 'Hollo \n Email test funktioniert aus docker';
    $mail->send();
    echo 'Message send';

} catch (Exception $e) {
    echo "Error: {$mail->ErrorInfo}";
}
echo "\n";
$url = "{mail.inexio.email:993/ssl}INBOX";
$id = "obp@inexio.email";
$pwe = "Stefan2023";
$mailbox = imap_open($url, $id, $HTTP_RAW_POST_DATA);
if ($mailbox) {
    print("connested ");
} else {
    print("nothing");
}

?>