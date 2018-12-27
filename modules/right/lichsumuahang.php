<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Lịch Sử Mua Hàng</p>
<h3>
    
    <?php 
    if(isset($_SESSION['username'])){
     $tentaikhoan=$_SESSION['username'];
    $sql_tk="select * from taikhoan where TENDANGNHAP='$tentaikhoan'";
    $runtk=mysqli_query($con,$sql_tk);
    $dongtk=mysqli_fetch_array($runtk);
    $tentk=$dongtk['TENHIENTHI'];
 
    
    $matk=$dongtk['MATAIKHOAN'];
    $sql_dh="select *,COUNT( ctddh.MASANPHAM) as sosanpham from dondathang ddh join chitietdondathang ctddh on ddh.MADONDATHANG=ctddh.MADONDATHANG join taikhoan tk on ddh.MATAIKHOAN=tk.MATAIKHOAN join tinhtrang tt on ddh.MATINHTRANG=tt.MATINHTRANG 
     where ddh.MATAIKHOAN='$matk' GROUP by ddh.MADONDATHANG order by NGAYLAP";
    $run_dh=mysqli_query($con,$sql_dh);
    ?>
</h3>
<table width="1000px" border="1">
     <tr>
         <td>STT</td>
         <td>Mã đơn đặt hàng</td>
         <td>Tên Khách hàng</td>
         <td>Sản phẩm</td>
         <td>Tổng tiền</td>
         <td>Ngày Lập</td>
         <td colspan="2">Tình trạng</td>
         
     </tr>
     <?php
            $i=1;
            while($dong_dh=mysqli_fetch_array($run_dh)){
     ?>
     <tr>
         <td> <?php echo $i;?></td>
         <td><?php echo $dong_dh['MADONDATHANG'] ?></td>
         <td><?php echo $dong_dh['TENHIENTHI'] ?></td>
         <td><?php echo $dong_dh['sosanpham'] ?></td>
         <td><?php echo $dong_dh['TONGTHANHTIEN'] ?></td>
         <td><?php echo $dong_dh['NGAYLAP'] ?></td>
         <?php
            $sql_tt="select * from tinhtrang";
            $run_tt=mysqli_query($con,$sql_tt);
         ?>
         <td>
             <?php
             while($dong_tt=mysqli_fetch_array($run_tt)){
             if($dong_dh['MATINHTRANG']==$dong_tt['MATINHTRANG']){
                 
            echo $dong_tt['TENTINHTRANG'];
            
             }
            }
             ?>
         </td>
         <td><a href="index.php?xem=dangnhap&ac=chitietdonhang&iddh=<?php echo $dong_dh['MADONDATHANG'] ?> ">Chi Tiết</a></td>
     </tr>
     <?php
     $i++;
            }
        }
        else{
            echo "<P>Bạn chưa đăng nhập</P>";
        }
     ?>
</table>
