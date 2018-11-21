<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    mysqli_set_charset($con, 'UTF8');
    $sql="select * from loaisanpham ";
    $run= mysqli_query($con,$sql);
?>
<table width="1000px" border="1">
     <tr>
         <td>STT</td>
         <td>Tên loại sản phẩm</td>
         <td colspan="2" >Quản lý </td>
         
     </tr>
     <?php
            $i=1;
            while($dong=mysqli_fetch_array($run)){
     ?>
     <tr>
         <td> <?php echo $i;?></td>
         <td><?php echo $dong['TENLOAISANPHAM'] ?></td>
         <td> <a href="index.php?quanly=quanlyloaisanpham&ac=sua&id=<?php echo $dong['MALOAISANPHAM'] ?>" >Sửa</td>
         <td><a href="modules/quanlyloaisanpham/xuly.php?id=<?php echo $dong['MALOAISANPHAM'] ?>">Xóa</a></td>
     </tr>
     <?php
     $i++;
            }
     ?>
</table>