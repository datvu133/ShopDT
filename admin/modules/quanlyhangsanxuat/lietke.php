<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdtgd';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    $sql="select * from hangsanxuat ";
    $run= mysqli_query($con,$sql);
?>
<table width="100%" border="1">
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