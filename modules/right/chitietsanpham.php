<?php
         $id=$_GET['id'];
        $sql="select * from sanpham where MASANPHAM=$_GET[id]";
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
<table width="700" stype="border-collapse:collapse">
    <tr>
        <td colspan="2"><div algin="center">Chi tiết sản phẩm</div></td>
       
    </tr>
    <tr>
        <td rowspan="2"><img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL'] ?>" width="200" height="200"></td>
        <td  ><?php echo $dong['TENSANPHAM']?></td>
    </tr>
    <tr>
        <td style="color:red ;width:200">Giá:<?php echo ''. $dong['GIASANPHAM']?>VNĐ</td>
        
    </tr>
    <tr>
        <td colspan="2">Thông số kỹ thuật </td>
        
    </tr>
    <tr>
        <td colspam="2"> <?php echo $dong['MOTA']?></td>
        
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