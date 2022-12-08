<?php
    $host = "localhost";
    $user = "root";
    $pass = "";
    $name = "btl_tuyenquang";

    $connect = mysqli_connect($host , $user, $pass , $name);

    if($connect) {
        mysqli_query($connect, "SET NAMES 'utf8'");
    }

?>
