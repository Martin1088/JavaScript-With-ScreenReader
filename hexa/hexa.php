<?php
@require_once('hexa_action.php');

$solution = "";
$userinput = "";
$quest = rand(1,65535);
//$choice = rand(0,1);
$solution = HexaCalculator($quest);
?>
<html lang="en">
    <header>
        <h1>Hexa Quiz! </h1>
        <?php
        echo("<h3>Berechne die Hexzahl von : ".$quest." </h3>");
        ?>
    </header>
    <body>
        <form>
            <input type="text" name="answer" alt="Answer">
            <br><button type="submit" name="submit" value="submit"> Answer </button>
        </form>
        <?php
        $result="";
        if(isset($_GET['submit'])) {
            $result = $_GET['answer'];
            if($result == $solution) {
                echo("<br> Erfolg");
            } else {
                echo("<br> Fehler");
            }
        }
        ?>
    </body>
</html>