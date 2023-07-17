<?php
session_start();
if(!isset($_SESSION['token'])) {
    header('Location: index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" 
         integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" 
         crossorigin="anonymous">
    </script>
    <script src="content.js"></script>
    <title>Content Page</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-3">
                <div class="list-group">
                    <a href="#" data-item="stuff" class="list-group-item list-group-item-action">
                        Stuff
                    </a><br>
                    <a href="#" data-item="things" class="list-group-item list-group-item-action">
                        Things 
                    </a><br>
                    <a href="#" data-item="content" class="list-group-item list-group-item-action">
                        Content
                    </a>
                </div>
            </div>
            <div class="col" id="content"></div>
        </div>
    </div>
</body>
</html>