<?php
echo "All my files: ";
$path =".";
$dh = opendir($path);
$i = 1;
while(($file = readdir($dh)) !== false) {
    if ($file != "." && $file != ".." && $file != "index.php") {
        echo "<a href='$path/$file'>$file</a><br>";
        $i++;
    }
}
closedir($dh);
?>