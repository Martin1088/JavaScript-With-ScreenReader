$(document).ready(function() {
    $("#game-name").keyup(function() {
        $("#game-name").val("");        
    });

});

let test_text = Math.random().toString(36).substring(2,3);
const myInterval = setInterval(letters, 10000);
function letters() {
    if(test_text.length > 20) {
        clearInterval(myInterval);
    } else {
        test_text += Math.random().toString(36).substring(2,3);
        $("#game-name").attr({
            'title' : test_text
        });
        $("#game-name").reload;
        $("#label-out").html(test_text);
        $("#out").html(test_text);
    }
    
};    

