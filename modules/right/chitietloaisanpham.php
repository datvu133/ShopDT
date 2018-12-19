<?php
    $sql_sp="select * from sanpham where SOLUONGTON >=1 and MALOAISANPHAM=$_GET[id]";
    $query_sp=mysqli_query($con,$sql_sp);
    $sql_lsp="select * from loaisanpham where MALOAISANPHAM=$_GET[id]";
    $query_lsp=mysqli_query($con,$sql_lsp);
    $dong_lsp=mysqli_fetch_array($query_lsp);
?>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;"><?php echo $dong_lsp['TENLOAISANPHAM'] ?> </p>
            <div class="sanpham"  >
                <ul >
                    <?php
                    while($dong_sp=mysqli_fetch_array($query_sp)){
                    ?>
                <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_sp['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong_sp['MAHANGSANXUAT'] ?>&id= <?php echo $dong_sp['MASANPHAM'] ?>">
                        <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong_sp['HINHURL'] ?>" alt="" width="150" height="auto">
                        <P><?php echo $dong_sp['TENSANPHAM'] ?></P>
                        <P>Giá: <?php echo $dong_sp['GIASANPHAM'] ?> đ</P>
                        <P>Chi tiết sản phẩm</P>
                    </a></li>
                    <?php
                    }
                    ?>
                    </ul>
            </div>
           