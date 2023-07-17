$(document).ready(function(){
    $('#btn').click(function(e){
        e.preventDefault();
        let fd = new FormData();
        let files = $('#images')[0].files;
        //check if a File is selected
        if(files.length > 0) {
            fd.append("image", files[0]);
            // send
            $.ajax({
                url: "picture.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function(res){
                    res = JSON.parse(res);
                    console.log(res);
                    if(res != 0) {
                        $('#image-list').append('<li>').append(
                            $('<img>').attr("src", res).attr("width", "200").attr("height", "100")
                        )
                    }else {
                        console.log("not Uploades")
                    }
                },
            });
        } else {
            alert("Please select a file");
        }

    });
});