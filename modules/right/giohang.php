
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Giỏ Hàng</p>
<h3>
    
    <?php 
    if(isset($_SESSION['username'])){
     $tentaikhoan=$_SESSION['username'];
    $sql_tk="select * from taikhoan where TENDANGNHAP='$tentaikhoan'";
    $runtk=mysqli_query($con,$sql_tk);
    $dongtk=mysqli_fetch_array($runtk);
    $tentk=$dongtk['TENHIENTHI'];
     echo "Xin Chào:".$tentk;
    }
    ?>
</h3>
<?php
    if(isset($_GET['add']) && !empty($_GET['add'])){
        $id=$_GET['add'];
        @$_SESSION['cart_'.$id]+=1;
       header('location:index.php?xem=giohang');
    }
    if(isset($_GET['them']))
    {
        $_SESSION['cart_'.$_GET['them']]+=1;
        header('location:index.php?xem=giohang');
       
    }  if(isset($_GET['tru']))
    {
        $_SESSION['cart_'.$_GET['tru']]--;
       header('location:index.php?xem=giohang');
        
    }
    if(isset($_GET['xoa']))
    {
        $_SESSION['cart_'.$_GET['xoa']]=0;
       header('location:index.php?xem=giohang');
      
    }
    if(isset($_GET['xoahet']))
    {
        foreach($_SESSION as $name => $value){
            if($value>0){
                $tongtien=0;
                if(substr($name,0,5)=='cart_'){
                    $id=substr($name,5,strlen($name)-5);
        unset($_SESSION['cart_'.$id]);
    }}}
       header('location:index.php?xem=giohang');
      
    }


    $thanhtien=0;
    ?>

<form action="index.php?xem=thanhtoan" method="post" enctype="multipart/form-data">
    <table class="sanpham" width="550">
    <?php
    foreach($_SESSION as $name => $value){
        if($value>0){
            $tongtien=0;
            if(substr($name,0,5)=='cart_'){
                $id=substr($name,5,strlen($name)-5);
                $sql="select * from sanpham where MASANPHAM='".$id."'";
                $query=mysqli_query($con,$sql);
                while($dong = mysqli_fetch_array($query)){
                    if($value>=$dong['SOLUONGTON']){
                        echo "<script>alert('Số lượng còn lại là:'".$dong['SOLUONGTON'].")</script>";
                    }
                    $tongtien=$dong['GIASANPHAM']*$value;
                    ?>
                <tr>
                <td  ><img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL'] ?>" width="150" height="150"></td>
                
                 <td ><?php echo $dong['TENSANPHAM']?></td>
                 <td ><input type="text" name = "soluong" value="<?php echo $value ?>" width="50" disabled></td>
                <td ><a href="index.php?xem=giohang&them=<?php echo $id?>">[+]   </a><a href="index.php?xem=giohang&tru=<?php echo $id?>">[-]   </a><a href="index.php?xem=giohang&xoa=<?php echo $id?>">X</a></td>
                <td ><p><?php echo $tongtien ?>VNĐ</p></td>
                </tr>
                <tr>
                <td colspan="5" align="right"><a href="index.php?xem=giohang&xoahet">Xóa Tất Cả</a></td></tr>
                <?php
                }
            }
            $thanhtien+=$tongtien;
        }

    }
   
?>
<?php
 if($thanhtien==0){
    echo '<div class="gio"> 
    <img src="imags/giotrong.png" alt="" ><br/> Giỏ hàng trống <br/>
    </div>';
    echo '<a href="index.php">Quay lại mua hàng</a>';
}
?>

</table>
<?php
 if($thanhtien!=0){?>

    <p >Tổng tiền: <input type="text" name="tongtien" value="<?php echo $thanhtien ?>" >VNĐ </p>
<p style="float:right;margin-right:30px"><a href="index.php?xem=thanhtoan&ac=thanhtoan"><button class ="buttongio" name="thanhtoan"> Thanh toán </button></a> </p>
<?php
}
?>

</form>