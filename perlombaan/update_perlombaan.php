<?php
include "../connection.php";

    $idLomba        = $_POST['idLomba'];
    $namaLomba      = $_POST['namaLomba'];
    $deskripsiLomba = $_POST['deskripsiLomba'];
    $kuotaLomba     = $_POST['kuotaLomba'];


$sql = "
        UPDATE perlombaan 
        SET 
        namaLomba = '$namaLomba'
        ,deskripsiLomba = '$deskripsiLomba'
        ,kuotaLomba = '$kuotaLomba'
        WHERE
        idLomba = '$idLomba'
        ";

$result = $connect->query($sql);
echo json_encode(array(
    "success" => $result
));
