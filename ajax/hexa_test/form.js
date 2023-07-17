$(document).ready(function () {
    let number = Math.floor(Math.random() * (65535 - 1) ) + 1;
    $("#randnumber").html("<em>"+ number +"</em>");
    $("form").submit(function (event) {
        event.preventDefault();
        let answer = $("#answer").val();
        let submit = $("#number-submit").val();
        $(".front").load("form.php",{
            answer : answer,
            submit : submit,
            number : number
        });
    });

});