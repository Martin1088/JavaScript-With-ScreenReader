<?php
//header("Content-type: application/json; charset=UTF-8");
//var_dump(simplexml_load_string($_SERVER["REQUEST_URI"]));

declare(strict_types=1);
// autoloader 
spl_autoload_register(function($class){
    require __DIR__ . "/src/$class.php";
});
// Exeption Handler
set_exception_handler("ErrorHandler::handleException");
// Header change to json 
header("Content-type: application/json; charset=UTF-8");
$parts = explode("/", $_SERVER["REQUEST_URI"]);
//var_dump(($parts));

if($parts[2] != "products") {
    http_response_code(404);
    exit;
}
$id = $parts[3] ?? null;
// Database call 
$database = new Database("localhost", "3306", "haro02", "admin", "hRw1StRJyQTv"); // 
$gateway = new ProductGateway($database);
// Controller class gets the Data from ProductGatway 
$controller = new ProductController($gateway);
$controller->processRequest($_SERVER["REQUEST_METHOD"], $id);

?>