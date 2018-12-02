<?php
    if(isset($_GET['ac']) && $_GET['ac']=='dangxuat' ){
        unset($_SESSION['dangnhap']);
        header('location:login.php');
    }
?>
<div class="menu">
        <ul>
                
                <li><a href="index.php?quanly=quanlychitietsanpham&ac=them&trang=1"> Sản Phẩm</a></li>
                <li><a href="index.php?quanly=quanlyloaisanpham&ac=them"> Loại sản phẩm</a></li>
                <li><a href="index.php?quanly=quanlyhangsanxuat&ac=them"> Nhà sản xuất</a></li>
                <li><a href="index.php?quanly=quanlydonhang"> Đơn hàng</a></li>
                <li><a href="index.php?&ac=dangxuat">Đăng xuất</a></li>


            </ul>
        </div>