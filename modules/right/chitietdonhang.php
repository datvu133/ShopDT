<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Chi Tiết đơn Hàng</p>
<h3>
    <?php 
    if(isset($_SESSION['username'])){
     $tentaikhoan=$_SESSION['username'];
    $sql_tk="select * from taikhoan where TENDANGNHAP='$tentaikhoan'";
    $runtk=mysqli_query($con,$sql_tk);
    $dongtk=mysqli_fetch_array($runtk);
    $tentk=$dongtk['TENHIENTHI'];
     echo "Xin Chào:".$tentk;
    }?>
    </h3>
    <?php
    $iddh=$_GET['iddh'];
    $sql_dh="select * from dondathang ddh join chitietdondathang ctddh on ddh.MADONDATHANG=ctddh.MADONDATHANG join taikhoan tk on ddh.MATAIKHOAN=tk.MATAIKHOAN join tinhtrang tt on ddh.MATINHTRANG=tt.MATINHTRANG 
     where ddh.MADONDATHANG='$iddh'";
    $run_dh=mysqli_query($con,$sql_dh);
    ?>
<table width="1000px" border="1">
     <tr>
         <td>STT</td>
         <td>Mã đơn đặt hàng</td>
         <td>Tên Khách hàng</td>
         <td>Sản phẩm</td>
         <td>Số lượng </td>
         <td>Đơn Giá</td>
         <td>Ngày Lập</td>
         <td >Tình trạng</td> 
     </tr>
     <?php
            $i=1;
            while($dong_dh=mysqli_fetch_array($run_dh)){
     ?>
     <tr>
         <td> <?php echo $i;?></td>
         <td><?php echo $dong_dh['MADONDATHANG'] ?></td>
         <td><?php echo $dong_dh['TENHIENTHI'] ?></td>
         <td><?php echo $dong_dh['MASANPHAM'] ?></td>
         <td><?php echo $dong_dh['SOLUONG']?></td>
         <td><?php echo $dong_dh['GIABAN'] ?></td>
         <td><?php echo $dong_dh['NGAYLAP'] ?></td>
         <td><?php echo $dong_dh['TENTINHTRANG'] ?></td>
     </tr>
     <?php
     $i++;
        }
     ?>
</table>
