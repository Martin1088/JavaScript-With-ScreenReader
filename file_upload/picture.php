<?php
    // echo json_encode($_FILES['image']);
if (isset($_FILES['image']['name'])) {
    // echo json_encode($_FILES['image']['name']);
    $filename = $_FILES['image']['name'];
    $location = "upload/".$filename;
    $typ = pathinfo($location, PATHINFO_EXTENSION);
    $typ = strtolower($typ);
    // validate
    $valid = array("jpg", "jpeg", "png");
    $res = 0;
    if (in_array($typ, $valid)) {
        if (move_uploaded_file($_FILES['image']['tmp_name'], $location)) {
            $res = $location;
        }
    }
    echo json_encode($location);
} else{
    echo json_encode(0);
}

?>