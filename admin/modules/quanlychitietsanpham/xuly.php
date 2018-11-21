<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    mysqli_set_charset($con, 'UTF8');
    $id=$_GET['id'];
    $tensp=$_POST['tensp'];
    $idhang=$_POST['hangsx'];
    $gia=$_POST['gia'];
    $idloai=$_POST['loaisp'];
    $mota=$_POST['motasp'];
    $hinhanh=$_FILES['hinhanh']['name'];
    $hinh_tmp=$_FILES['hinhanh']['tmp_name'];
    move_uploaded_file($hinh_tmp,'uploads/'.$hinhanh);

    if(isset($_POST['them']))
    {
        $sql="insert into sanpham (MAHANGSANXUAT,MALOAISANPHAM,TENSANPHAM,HINHURL,GIASANPHAM,MOTA) VALUES ($idhang,$idloai,'$tensp','$hinhanh',$gia,'$mota')";
        mysqli_query($con,$sql);
       header('location:../../index.php?quanly=quanlychitietsanpham&ac=them');
    }
    if (isset($_POST['sua']))
    {   if($hinhanh!=''){
        $sql="update sanpham set TENSANPHAM='$tensp',MAHANGSANXUAT='$idhang',MALOAISANPHAM='$idloai',HINHURL='$hinhanh',GIASANPHAM='$gia',MOTA='$mota' where MASANPHAM='$id'";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlychitietsanpham&ac=sua&id='.$id);
    }else{
        $sql="update sanpham set TENSANPHAM='$tensp',MAHANGSANXUAT='$idhang',MALOAISANPHAM='$idloai',GIASANPHAM='$gia',MOTA='$mota' where MASANPHAM='$id'";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlychitietsanpham&ac=sua&id='.$id);
    }
    }else
    {
        $sql="delete from sanpham where MASANPHAM ='$id' ";
        mysqli_query($con,$sql);
        header('location:../../index.php?quanly=quanlychitietsanpham&ac=them');
    }
?>