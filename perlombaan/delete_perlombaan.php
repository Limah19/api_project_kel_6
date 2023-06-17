<?php
include "../connection.php";

$idLomba = $_POST['idLomba'];

$sql = "
        DELETE FROM user 
        WHERE
        idLomba = '$idLomba'
        ";
$result = $connect->query($sql);

$response = array(
    "success" => false
);

if ($result) {
    $response["success"] = true;
}

echo json_encode($response);
?>
