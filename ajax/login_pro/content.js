$(document).ready(function() {
    // Funktion zur anzeige 
   

    $('a[data-item]').on('click',function(e) {
        e.preventDefault();
        let DataItem = $(this).attr('data-item');
        getDashboardItem(DataItem);
    });

    function getDashboardItem(name) {
        $.ajax({
            type: 'GET',
            url: 'dashboard.php',
            data: {
                token: localStorage.getItem('token'),
                item: name
            }
        }).then(function(res) {
            let data = JSON.parse(res);
            if (!data.auth) {
                location.href = 'index.php';
            }
            console.log(data.content);
            $('#content').html(data.content);
        })
    }
});