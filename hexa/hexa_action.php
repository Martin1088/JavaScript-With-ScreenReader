<?php
class Hexa_Function{
function HexaTranslator($number) {
    $hexa = array("A","B","C","D","E","F");
    $result = "";
    if ($number < 10) {
        $result = strval($number);
    } elseif ($number >= 10) {
        $number = $number - 10;
        $result = strval($hexa[$number]);
    }
    return $result;
}
/**
 * Umrechnen von Dezimal Zahl zu der Hexzahl 
 */
function HexaCalculator($number) {
    $result = "";
    $rest = 0;
    if($number >= 4096) {
        $indexfour = (int) ($number /4096);
        $result = HexaTranslator($indexfour);
        $rest = (int) ($number % 4096);
    }
    if($rest >= 256) {
        $indextree = (int) ($rest / 256);
        $result = $result . HexaTranslator($indextree);
        $rest = (int) ($rest % 256);
    }
    if($rest >= 16) {
        $indextwo = (int) ($rest / 16);
        $result = $result . HexaTranslator($indextwo);
        $rest = (int) ($rest % 16);
    }
    if($rest < 15 && $rest >= 0) {
        $indexone = $rest;
        $result = $result . HexaTranslator($indexone);
    }
    return $result;
}
/**
 * Hauptfunktion für den Hexa Quiz generator
 */
// $solution = "";
// $userinput = "";
// $quest = rand(1,65535);
// $choice = rand(0,1);
}
?>