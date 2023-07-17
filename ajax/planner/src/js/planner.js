$(document).ready(function () {
    $("form").submit(function (e) {
        e.preventDefault();
        console.log($(this).serialize());
        let title = $("#titel").val();
        let typ = $("input[name=typ]:checked").val();
        let amount = $("#betrag").val();
        let date = $("#datum").val();
        let submit = $('#submit').val();
        $.ajax({
            type: "POST",
            url: 'planner.php',
            data: {
                title: title,
                typ: typ,
                amount: amount,
                date: date,
                submit: submit, 
            },
            dataType: "json",
            success: function (data, status) {
                //data = JSON.parse(data);
                //location.href = 'index.html';
                console.log(data);
                console.log(status);
                //let res = "Daten" + data + "Status" + status;

            },
            error: function (response) {
                console.log(response);
            }
        });
    });
});