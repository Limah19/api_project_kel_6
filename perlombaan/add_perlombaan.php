<?php 
    include "../connection.php";

    $idLomba           = $_POST['idLomba'];
    $namaLomba         = $_POST['namaLomba'];
    $deskripsiLomba    = $_POST['deskripsiLomba'];
    $kuotaLomba        = $_POST['kuotaLomba'];
    
    $sql1 = "SELECT * FROM perlombaan WHERE idLomba = '$idLomba'";
    $check = $connect->query($sql1);
    $reason = "";
    $success = true;

    if($check->num_rows > 0){
        $success = false;
        $reason = "Gagal menambah lomba";
    }else{
        $sql2 = "
        INSERT INTO perlombaan SET 
            idLomba = '$idLomba',
            namaLomba = '$namaLomba',
            deskripsiLomba = '$deskripsiLomba',
            kuotaLomba = '$kuotaLomba'
        ";
        
        $result = $connect->query($sql2);

        if(!$result){
            $success = false;
            $reason = "Berhasil Menambahkan Lomba";
        }
    }

    echo json_encode(array(
        "success" => $success,
        "reason" =>$reason
    ));