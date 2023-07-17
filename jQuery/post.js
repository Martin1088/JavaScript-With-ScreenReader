$(document).ready(function() {
    $("input").keyup(function() {
        var answer = $("input").val();
        $.post("post.php", {
            hexanumber : answer
        }, function(data, status) {
            $("#test").html(data);
        });
    });
});