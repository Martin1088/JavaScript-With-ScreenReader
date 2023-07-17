<?php
$headers = [
    "User-Agent: Example REST API Client"
];
$ch = curl_init("https://api.github.com/user/repos");
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_exec($ch);
curl_close($ch);
var_dump($ch);
?>