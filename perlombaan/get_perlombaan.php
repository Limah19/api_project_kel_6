<?php 
    include "../connection.php";

    $sql = "SELECT * FROM perlombaan";

    $result = $connect->query($sql);
    
    if($result->num_rows > 0){
    $perlombaan = array();
    while($row = $result->fetch_assoc()){
        $perlombaan[] = $row;
    }

    echo json_encode(array(
        "success"=> true,
        "perlombaan"=>$perlombaan,
    ));
    }else{
    echo json_encode(array(
        "success" => false,
    ));
    }
?>

    
