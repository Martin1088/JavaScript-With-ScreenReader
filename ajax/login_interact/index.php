<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" 
         integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" 
         crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="interact.js"></script>
    <title>Login</title>
</head>
<body>

    <form id="loginform" method="post">
        <label for="email">Username:</label>
        <input type="email" name="email" id="email">
        <label for="password">Passwork:</label>
        <input type="password" name="password" id="password">
        <input type="submit" name="loginBtn" id="loginBtn" value="Login">
    </form>
    <br><p id="error"></p>
    
</body>
</html>