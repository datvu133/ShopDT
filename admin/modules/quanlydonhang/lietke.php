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
<form action="modules/quanlydonhang/xuly.php" method="get">
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
         <td><input type="text" name="id" value="<?php echo $dong_dh['MADONDATHANG'] ?>" disabled /> </td>
         <td><?php echo $dong_dh['TENHIENTHI'] ?></td>
         <td><?php echo $dong_dh['sosanpham'] ?></td>
         <td><?php echo $dong_dh['TONGTHANHTIEN'] ?></td>
         <td><?php echo $dong_dh['NGAYLAP'] ?></td>
         <?php
            $sql_tt="select * from tinhtrang";
            $run_tt=mysqli_query($con,$sql_tt);
         ?>
         <td><select name="idtt" value="<?php echo $dong_dh['MATINHTRANG'] ?>">
             <?php
             while($dong_tt=mysqli_fetch_array($run_tt)){
             if($dong_dh['MATINHTRANG']==$dong_tt['MATINHTRANG']){
                 ?>
            <option value="<?php echo $dong_tt['MATINHTRANG']?>" selected>
            <?php echo $dong_tt['TENTINHTRANG'] ?>
            <?php
             } else {
             ?>
                <option value="<?php echo $dong_tt['MATINHTRANG']?>">
            <?php echo $dong_tt['TENTINHTRANG'] ?>
            <?php
             }
             ?>
        </option>
            <?php
             }
             ?>
         </select>
         </td>
         <td><button type="submit">Sửa</button></td>
         <td><a href="modules/quanlydonhang/xuly.php?ac=xoa&id=<?php echo $dong_dh['MADONDATHANG'] ?>">Xóa</a></td>
     </tr>
     <?php
     $i++;
            }
     ?>
</table>
</form>