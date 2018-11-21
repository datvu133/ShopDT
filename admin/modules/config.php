<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl) or die ('Không kết nối được') ;
    mysqli_set_charset($con, 'UTF8');
    
?>