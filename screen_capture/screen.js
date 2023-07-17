$(document).ready(function() {
    let displayMedianOptions = {
        video: {
            cursor: "always",
        },
        audio: false,
    };
    $('#start').click(async function() {
        try{
            $('#video').srcObject = await navigator.mediaDevices.getDisplayMedia(
                displayMedianOptions
            );
        } catch (error) {
            console.log(error);
        }
    }),
    $('#stop').click(function() {
        let tracks = $('#video').srcObject.getTracks();
        tracks.forEach((track) => track.stop());
        $('#video').srcObject = null;
    })

})
