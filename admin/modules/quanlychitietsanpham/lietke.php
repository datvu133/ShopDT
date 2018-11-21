<?php
    if(isset($_GET['trang'])){
        $get_trang=$_GET['trang'];
    }else{
        $get_trang='';
    }
    if($get_trang==''||$get_trang==1){
        $trang=0;
    }else{
        $trang=($get_trang*6)-6;
    }
    $sql="select * FROM sanpham sp JOIN loaisanpham lsp on sp.MALOAISANPHAM=lsp.MALOAISANPHAM JOIN hangsanxuat hsx on sp.MAHANGSANXUAT=hsx.MAHANGSANXUAT order by MASANPHAM limit $trang,6 ";
    $run= mysqli_query($con,$sql);
?>

<table width="1000px" border="1" >
     <tr>
         <td style="width:10px">ID</td>
         <td style="width:30px">Tên</td>
         <td style="width:60px">Hình ảnh</td>
         <td style="width:30px">Giá</td>
         <td style="width:40px">Mô tả</td>
         <td style="width:30px">Loại</td>
         <td style="width:30px">Hãng</td>
         <td colspan="2" style="width:30px">Quản lý</td>
     </tr>
     <?php
         $i=1;
        while($dong=mysqli_fetch_array($run)){
     ?>
     <tr>
         <td style="width:10px"><?php echo $i;?></td>
         <td style="width:30px"><?php echo $dong['TENSANPHAM'] ?> </td>
         <td style="width:60px"><img src="modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL']?>" width="60" height="60"></td>
         <td style="width:30px"><?php echo $dong['GIASANPHAM'] ?></td>
         <td style="width:40px"><?php echo $dong['MOTA'] ?></td>
         <td style="width:30px"><?php echo $dong['TENLOAISANPHAM'] ?></td>
         <td style="width:30px"><?php echo $dong['TENHANGSANXUAT'] ?></td>
         <td style="width:15px"> <a href="index.php?quanly=quanlychitietsanpham&ac=sua&id=<?php echo $dong['MASANPHAM'] ?>" >Sửa</td>
         <td style="width:15px"><a href="modules/quanlychitietsanpham/xuly.php?id=<?php echo $dong['MASANPHAM'] ?>">Xóa</a></td>
     </tr>
     <?php
     $i++;
     }
     ?>
     
</table>
<div>
<button > <a  href="?quanly=quanlychitietsanpham&ac=them&trang=1 "> < </a></button>
<?php

if($get_trang>1){
?>
<button > <a style=text-decoration:none; href="?quanly=quanlychitietsanpham&ac=them&trang=<?php echo $get_trang-1?> "> < </a></button>
<?php
}else {
    ?>
     <button disabled="disabled"> <</button>
    <?php
}
?>
    <?php
    $sql_trang=mysqli_query($con,"select * from sanpham");
    $count=mysqli_num_rows($sql_trang);
    $a=ceil($count/6);
    for($i=1;$i<=$a;$i++)
    {
        echo '<a href="?quanly=quanlychitietsanpham&ac=them&trang='.$i.'"style=text-decoration:mone;">'.' '.$i.' '.'</a>';
    }
    ?>
<?php
if($get_trang<$a){
?>
<button > <a style=text-decoration:none; href="?quanly=quanlychitietsanpham&ac=them&trang=<?php echo $get_trang+1?> "> > </a></button>
<?php
}else {
    ?>
    <button disabled="disabled"> > </button>
    <?php
}
?> 
    <button > <a  href="?quanly=quanlychitietsanpham&ac=them&trang=<?php echo $a ?> "> > </a></button>
</div>