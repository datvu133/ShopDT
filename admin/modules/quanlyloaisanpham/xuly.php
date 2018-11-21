<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    mysqli_set_charset($con, 'UTF8');
    $id=$_GET['id'];
    $tenloaisp=$_POST['tenloaisp'];
    if(isset($_POST['them']))
    {
        $sql="insert into loaisanpham (TENLOAISANPHAM) values ('$tenloaisp')";
        mysqli_query($con,$sql);
       header('location:../../index.php?quanly=quanlyloaisanpham&ac=them');
    }elseif (isset($_POST['sua']))
    {
        $sql="update loaisanpham set TENLOAISANPHAM='$tenloaisp' where MALOAISANPHAM='$id'";
        mysqli_query($con,$sql);
       header('location:../../index.php?quanly=quanlyloaisanpham&ac=sua&id='.$id);
    }else
    {
        $sql="delete from loaisanpham where MALOAISANPHAM ='$id' ";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlyloaisanpham&ac=them');
    }
?>