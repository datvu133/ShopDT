<?php
         $id=$_GET['id'];
        $sql="select * from sanpham sp JOIN loaisanpham lsp on sp.MALOAISANPHAM=lsp.MALOAISANPHAM JOIN hangsanxuat hsx on sp.MAHANGSANXUAT=hsx.MAHANGSANXUAT where MASANPHAM=$_GET[id]";
        $query=mysqli_query($con,$sql);
        $dong=mysqli_fetch_array($query);
        $sql_lsp="select * from sanpham where MALOAISANPHAM=$_GET[idloaisp] and MASANPHAM<>$_GET[id] limit 0,5";
        $query_lsp=mysqli_query($con,$sql_lsp);
        $sql_hsx="select * from sanpham where MAHANGSANXUAT=$_GET[idhangsx] and MASANPHAM<>$_GET[id] limit 0,5";
        $query_hsx=mysqli_query($con,$sql_hsx);
        $i=1;
        $dem=$dong['SOLUONGXEM']+$i;
        $sql_up="update sanpham set SOLUONGXEM='$dem' where MASANPHAM='$id'";
        mysqli_query($con,$sql_up);
?>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Chi Tiết Sản Phẩm </p>
<table width="750" stype="border-collapse:collapse">
    <tr>
        <td colspan="2"></td>
       
    </tr>
    <tr>
        <td rowspan="4"><img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL'] ?>" width="auto" height="200"></td>
        <td  ><?php echo $dong['TENSANPHAM']?></td>
    </tr>
    <tr>
    <td>Loại sản phầm:<?php echo $dong['TENLOAISANPHAM']?></td>
    </tr>
    <tr>
    <td>Hãng sản xuất:<?php echo $dong['TENHANGSANXUAT']?></td>
    </tr>
    <tr>
    
        <td style="color:red ;width:200">Giá:<?php echo ''. $dong['GIASANPHAM']?>VNĐ</td>
 
    </tr>
    <tr>
    <td> <img src="imags/eye.png" alt="">:<?php echo $dem ?>
    <img src="imags/gio.jpg" alt="" width="30" height="30"> :<?php echo $dong['SOLUONGBAN']?></td>
    <td colspan="4">
    <a href="index.php?xem=giohang&add=<?php echo $dong['MASANPHAM']?>"><button class ="button"> Thêm vào giỏ hàng </button></a>
    </td>
    </tr>
    <tr>
        <td colspan="2">Thông số kỹ thuật: </td>
        
    </tr>
    <tr>
        <td colspam="2" style="width:200" > <?php echo $dong['MOTA']?></td>
        
    </tr>
    
</table>
<hr>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 5px;">Sản phẩm cùng loại</p>
            <div class="sanpham"  >
                <ul class="owl-carousel owl-theme" >
                <?php
             
                 while($dong_lsp=mysqli_fetch_array($query_lsp)){
                    ?>
                <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_lsp['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong_lsp['MAHANGSANXUAT'] ?>&id= <?php echo $dong_lsp['MASANPHAM'] ?>">
                        <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong_lsp['HINHURL'] ?>" alt="" width="150" height="auto">
                        <P><?php echo $dong_lsp['TENSANPHAM'] ?></P>
                        <P>Giá: <?php echo $dong_lsp['GIASANPHAM'] ?> đ</P>
                        <P>Chi tiết sản phẩm</P>

                    </a></li>
                    <?php
                  
                    }
                    ?>

                    
                </ul>
            </div>
            <hr>
            <p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 5px;">Sản phẩm cùng hãng</p>
            <div class="sanpham"  >
                <ul class="owl-carousel owl-theme" >
                <?php
             
                 while($dong_hsx=mysqli_fetch_array($query_hsx)){
                    ?>
                <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_hsx['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong_hsx['MAHANGSANXUAT'] ?>&id= <?php echo $dong_hsx['MASANPHAM'] ?>">
                        <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong_hsx['HINHURL'] ?>" alt="" width="150" height="auto">
                        <P><?php echo $dong_hsx['TENSANPHAM'] ?></P>
                        <P>Giá: <?php echo $dong_hsx['GIASANPHAM'] ?> đ</P>
                        <P>Chi tiết sản phẩm</P>

                    </a></li>
                    <?php
                    }
                    ?>

                    
                </ul>
            </div>
            <hr>