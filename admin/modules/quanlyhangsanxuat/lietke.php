<?php
    
    $sql="select * from hangsanxuat ";
    $run= mysqli_query($con,$sql);
?>
<table width="1000px" border="1">
     <tr>
         <td>STT</td>
         <td>Tên hãng sản xuất</td>
         <td colspan="2" >Quản lý </td>
         
     </tr>
     <?php
            $i=1;
            while($dong=mysqli_fetch_array($run)){
     ?>
     <tr>
         <td> <?php echo $i;?></td>
         <td><?php echo $dong['TENHANGSANXUAT'] ?></td>
         <td> <a href="index.php?quanly=quanlyhangsanxuat&ac=sua&id=<?php echo $dong['MAHANGSANXUAT'] ?>" >Sửa</td>
         <td><a href="modules/quanlyhangsanxuat/xuly.php?id=<?php echo $dong['MAHANGSANXUAT'] ?>">Xóa</a></td>
     </tr>
     <?php
     $i++;
            }
     ?>
</table>