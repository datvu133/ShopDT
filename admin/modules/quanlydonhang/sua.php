<?php
    $sql="select *,COUNT( ctddh.MASANPHAM) as sosanpham from dondathang ddh join chitietdondathang ctddh on ddh.MADONDATHANG=ctddh.MADONDATHANG join taikhoan tk on ddh.MATAIKHOAN=tk.MATAIKHOAN join tinhtrang tt on ddh.MATINHTRANG=tt.MATINHTRANG 
    where ddh.MADONDATHANG=$_GET[id]";
    mysqli_set_charset($con, 'UTF8');
    $run= mysqli_query($con,$sql);
    $dong_dh=mysqli_fetch_array($run);
?>
<form action="modules/quanlydonhang/xuly.php?ac=sua&id=<?php echo $dong_dh['MADONDATHANG'] ?>" method="post" enctype="multipart/form-data">
<table width ="300" border="1">
<tr>
       
         <td>Mã đơn đặt hàng</td>
         <td>Tên Khách hàng</td>
         <td>Sản phẩm</td>
         <td>Tổng tiền</td>
         <td>Ngày Lập</td>
        <td>Tình trạng</td>
       
         
     </tr>
     <tr>
        
         <td><?php echo $dong_dh['MADONDATHANG'] ?></td>
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
         </tr>
         <tr>
         <td colspan="2">
         <div align="center">
             <button name="sua" value="sua">Sửa</button>
         </div>
         </td>
         
     </tr>

</table>
</form>
