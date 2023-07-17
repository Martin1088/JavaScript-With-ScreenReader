$(document).ready(function() {
    $("#getnumber").click(function() {
        $.get("number.txt", function(data, status) {
            $("#number").html(data);
            alert(status);
        });
    });
    });