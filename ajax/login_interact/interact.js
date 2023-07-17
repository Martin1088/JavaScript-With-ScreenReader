$(document).ready(function () {



    $('#loginform').submit(function (e) {
        e.preventDefault();

        $.ajax({
            type: "POST",
            url: 'login.php',
            //contentType: "application/json",
            //dataType: "json",
            data: $(this).serialize(),
            success: function (response) {
                console.log(response);
                response = JSON.parse(response);
                console.log(response);
                if (response.success == 1) {
                    location.href = 'my_profile.php';
                } else if (response.success == 0) {
                    alert('Invalid Token');
                } else {
                    alert("Noting");
                }
            }, error: function (response) {
                console.log(response);
            }
        });
    });
});