$(document).ready(function() {
   $('#loginform').submit(function(e) {
        e.preventDefault();
        let $error = $('#error');
        $.ajax({
            type: "POST",
            url: 'login.php',
            //contentType: "application/json",
            //dataType: "json",
            data: $(this).serialize()
        }).then(function(res){
            let data = JSON.parse(res);
            if(data.error) {
                $error.html(data.error);
                return;
            }
            localStorage.setItem('token', data.token);
            location.href = 'my_profile.php'
        }).fail(function(res) {
            $error.html('Error with sing in ');
        });
    });
});