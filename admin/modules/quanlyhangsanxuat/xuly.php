<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdtgd';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    $id=$_POST['id'];
    $tenloaisp=$_POST['tenhangsx'];
    if(isset($_POST['them']))
    {
        $sql="insert into hangsanxuat (TENHANGSANXUAT) values ('$tenhangsx')";
        mysqli_query($con,$sql);
       header('location:../../index.php?quanly=quanlyhangsanxuat&ac=them');
    }elseif (isset($_POST['sua']))
    {
        $sql="update hangsanxuat set TENHANGSANXUAT='$tenloaisp' where MAHANGSANXUAT='$id'";
        mysqli_query($con,$sql);
       header('location:../../index.php?quanly=quanlyhangsanxuat&ac=sua&id='.$id);
    }else
    {
        $sql="delete from hangsanxuat where MAHANGSANXUAT ='$id' ";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlyhangsanxuat&ac=them');
    }
?>