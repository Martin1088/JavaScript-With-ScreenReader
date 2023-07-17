$(document).ready(function () {
    $("img").click(function () {
        $("#farm").animate({
            height: 'toggle'
        });
        const audio = new Audio("Kuh.mp3");
        audio.play();
    });
});