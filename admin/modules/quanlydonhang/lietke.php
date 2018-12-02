<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    mysqli_set_charset($con, 'UTF8');
    $sql_dh="select *,COUNT( ctddh.MASANPHAM) as sosanpham from dondathang ddh join chitietdondathang ctddh on ddh.MADONDATHANG=ctddh.MADONDATHANG join taikhoan tk on ddh.MATAIKHOAN=tk.MATAIKHOAN join tinhtrang tt on ddh.MATINHTRANG=tt.MATINHTRANG GROUP by ddh.MADONDATHANG
        order by NGAYLAP";
    $run_dh= mysqli_query($con,$sql_dh);
?>
<input type="hidden" value="sua" name="ac" />
<table width="1000px" border="1">
     <tr>
         <td>STT</td>
         <td>Mã đơn đặt hàng</td>
         <td>Tên Khách hàng</td>
         <td>Sản phẩm</td>
         <td>Tổng tiền</td>
         <td>Ngày Lập</td>
        <td>Tình trạng</td>
         <td colspan="2">Quản lý </>
         
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
         <td><a href="index.php?quanly=quanlydonhang&ac=sua&id=<?php echo $dong_dh['MADONDATHANG'] ?>">Sửa</td>
         <td><a href="modules/quanlydonhang/xuly.php?ac=xoa&id=<?php echo $dong_dh['MADONDATHANG'] ?>">Xóa</a></td>
     </tr>
     <?php
     $i++;
            }
     ?>
</table>
