<?php
$tenmaychu='localhost:3306';
$csdl='shopdt';
$pass='';
$tentaiklhoan='root';
$con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
mysqli_set_charset($con, 'UTF8');
    $id=$_GET['id'];
    $tenhangsx=$_POST['tenhangsx'];
    if(isset($_POST['them']))
    {
        $sql="insert into hangsanxuat (TENHANGSANXUAT) values ('$tenhangsx')";
        mysqli_query($con,$sql);
       header('location:../../index.php?quanly=quanlyhangsanxuat&ac=them');
    }
    if (isset($_POST['sua']))
    {
        $sql="update hangsanxuat set TENHANGSANXUAT='$tenhangsx' where MAHANGSANXUAT='$id'";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlyhangsanxuat&ac=sua&id='.$id);
    }else
    {
        $sql="delete from hangsanxuat where MAHANGSANXUAT ='$id' ";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlyhangsanxuat&ac=them');
    }
?>