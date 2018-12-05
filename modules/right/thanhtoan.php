<?php 
   if(!isset($_SESSION['username'])){
    ?>
    <p>Bạn chưa đăng nhập vui lòng đăng nhập</p>
    <a href="index.php?xem=dangnhap"><button>Đăng nhập</button></a>
    <?php
  
}else{
    
    $tentaikhoan=$_SESSION['username'];
    $sql_tk="select * from taikhoan where TENDANGNHAP='$tentaikhoan'";
    $runtk=mysqli_query($con,$sql_tk);
    $dongtk=mysqli_fetch_array($runtk);
    $matk=$dongtk['MATAIKHOAN'];
    $tongtien=$_POST['tongtien'];
    $maTT=1;
 if(isset($_POST['thanhtoan']))
  {
    $sql_them="insert into dondathang (MATAIKHOAN,MATINHTRANG,NGAYLAP,TONGTHANHTIEN) value ($matk,$maTT,CURRENT_TIMESTAMP(),$tongtien)";
    mysqli_query($con,$sql_them);
    $sql_maDH="select * FROM dondathang ORDER by MADONDATHANG DESC LIMIT 0,1";
    $run_maDH=  mysqli_query($con,$sql_maDH);
    $dong_maDH=mysqli_fetch_array($run_maDH);
    $maDH=$dong_maDH['MADONDATHANG'];
    foreach($_SESSION as $name => $value){
        if($value>0){
            if(substr($name,0,5)=='cart_'){
                $id=substr($name,5,strlen($name)-5);
                $sql="select * from sanpham where MASANPHAM='".$id."'";
                $query=mysqli_query($con,$sql);
                while($dong = mysqli_fetch_array($query)){
                    $gia=$dong['GIASANPHAM'];
                    $sql_themct="insert into chitietdondathang (MASANPHAM,MADONDATHANG,SOLUONG,GIABAN) value($id,$maDH,$value,$gia)";
                    mysqli_query($con,$sql_themct);
                    $slt_m=$dong['SOLUONGTON']-$value;
                    $slm_m=$dong['SOLUONGBAN']+$value;
                    $sql_up="update sanpham set SOLUONGTON='$slt_m',SOLUONGBAN='$slm_m' where MASANPHAM='$id'";
                    mysqli_query($con,$sql_up);
                }
            }
        }
    }
  
    echo "Bạn thanh toán !<br>"; 
    echo '<a href="index.php?xem=giohang&xoahet">Quay lại mua hàng</a>';
  }
}
?>