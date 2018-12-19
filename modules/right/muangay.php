<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Đơn hàng</p>
<h3>
    
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
    $tentk=$dongtk['TENHIENTHI'];
     echo "Xin Chào:".$tentk;
     $id=$_GET['id'];
    ?>
</h3>
<form action="index.php?xem=thanhtoanngay" method="post" >
    <table class="sanpham" width="550">
    <?php
                $value=1;
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
                 <td ><input type="text" name = "soluong" value="<?php echo $value ?>" width="50" ></td>
                </tr>

                <?php
                }
?>
</table>
    <input type="hidden"  name="mh" value="<?php echo $id ?>">
     <input type="hidden" name="tongtien" value="<?php echo $tongtien ?>" >
<p style="float:right;margin-right:30px"><a href="index.php?xem=thanhtoanngay"><button class ="buttongio" name="thanhtoanngay" > Thanh toán </button></a> </p>
</form>
<?php
 }
?>