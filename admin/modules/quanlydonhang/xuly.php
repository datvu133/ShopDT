<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    mysqli_set_charset($con, 'UTF8');
    $id=$_GET['id'];
    $idtt=$_POST['idtt'];
    echo $idtt;
    if(isset($_GET['ac']))
    {
        $tam=$_GET['ac'];
    }
    else{
        $tam='';
    }
    
   if ($tam=='sua')
    {   
        $idh=$_POST['MADONDATHANG'];
        $sql="update dondathang set MATINHTRANG='$idtt' where MADONDATHANG='$idh'";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlydonhang');
    }elseif ($tam=='xoa')
    {
        $id=$_GET['id'];
        $sql_ct="delete from chitietdondathang where MADONDATHANG ='$id' ";
        mysqli_query($con,$sql_ct);
        $sql="delete from dondathang where MADONDATHANG ='$id' ";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlydonhang');
    }
?>