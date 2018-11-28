<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl) or die ('Không kết nối được') ;
    $con->set_charset('utf8');
    if(mysqli_connect_errno()){
        echo 'fail'.mysqli_connect_errno();
        exit;
    }
?>