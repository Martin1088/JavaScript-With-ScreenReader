function getRndInt(min, max) {
    let numbertype = "decimal";
    let number = 0;
    number = Math.floor(Math.random() * (max - min) ) + min;
    document.getElementById("quest").innerHTML=number;
    document.getElementById("numbertype").innerHTML=numbertype;
}
function HexaTranslator(number) {
    const hexa = ["A", "B", "C", "D", "E", "F"];
    let result ='';
    if(number < 10 ) {
        result = number.toString();
    } else if(number => 10) {
        number = number - 10;
        result = hexa[number].toString();
    }
    return result;
}

function getRndHexa(min, max) {
    let numbertype = "hexa";
    let number = 0;
    number = Math.floor(Math.random() * (max - min) + min);
    number = number.toString(16);
    document.getElementById("quest").innerHTML=number;
    document.getElementById("numbertype").innerHTML=numbertype;
}
function CheckAnswer() {
    let answer = document.getElementsByName("answer").values;
    let numbertype = document.getElementById("numbertype");
    if (numbertype.localeCompare("hexa") == 0) {
        let quest = document.getElementsByClassName("quest").values;
        let result = parseInt(quest, 16);
        if (result.localeCompare(answer)) {
            window.alert(answer + " is right!" );
        } else {
            window.alert(result);
        }
    } else if(numbertype.localeCompare("decimal") == 0)  {
        let quest = 0;
        quest = document.getElementsByClassName("quest").values;
        let result = parseInt(answer, 16)
        if (result == quest) {
            window.alert("richtig");
        } else {
            window.alert(result);
        }
    }

}