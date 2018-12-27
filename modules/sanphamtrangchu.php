<?php
    $sql_spm="select * from sanpham where SOLUONGTON >=1 order by NGAYNHAP desc limit 0,10";
    $query_spm=mysqli_query($con,$sql_spm);
    $sql_spmn="select * from sanpham where SOLUONGTON >=1 order by SOLUONGBAN desc limit 0,10";
    $query_spmn=mysqli_query($con,$sql_spmn);
    $sql_spx="select * from sanpham where SOLUONGTON >=1 order by SOLUONGXEM desc limit 0,10";
    $query_spx=mysqli_query($con,$sql_spx);
?>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 5px;">Sản phẩm mới</p>
<div class="sanpham">
    <ul class="owl-carousel owl-theme">
        <?php while($dong_spm=mysqli_fetch_array($query_spm)){ ?>
        <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_spm['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong_spm['MAHANGSANXUAT'] ?>&id= <?php echo $dong_spm['MASANPHAM'] ?>">
                    <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong_spm['HINHURL'] ?>" alt="" width="250px" height="250px">
                    <P><?php echo $dong_spm['TENSANPHAM'] ?></P>
                    <P>Giá: <?php echo $dong_spm['GIASANPHAM'] ?> đ</P>
                    <P>Chi tiết sản phẩm</P>

                </a>
        </li>
        <?php } ?>
    </ul>
</div>
<hr>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 5px;">Sản phẩm mua nhiều</p>
<div class="sanpham">

    <ul class="owl-carousel owl-theme">
        <?php while($dong_spmn=mysqli_fetch_array($query_spmn)){ ?>
        <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_spmn['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong_spmn['MAHANGSANXUAT'] ?>&id= <?php echo $dong_spmn['MASANPHAM'] ?>">
                    <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong_spmn['HINHURL'] ?>" alt="" width="250px" height="250px">
                    <P><?php echo $dong_spmn['TENSANPHAM'] ?></P>
                    <P>Giá: <?php echo $dong_spmn['GIASANPHAM'] ?> đ</P>
                    <P>Chi tiết sản phẩm</P>

                </a>
        </li>
        <?php } ?>
    </ul>
</div>
<hr>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Sản phẩm xem nhiều</p>
<div class="sanpham">
    <ul class="owl-carousel owl-theme">
        <?php while($dong_spx=mysqli_fetch_array($query_spx)){ ?>

        <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_spx['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong_spx['MAHANGSANXUAT'] ?>&id= <?php echo $dong_spx['MASANPHAM'] ?>">
                    <img id='status' src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong_spx['HINHURL'] ?>" alt="" width="250px" height="250px">
                    <P><?php echo $dong_spx['TENSANPHAM'] ?></P>
                    <P>Giá: <?php echo $dong_spx['GIASANPHAM'] ?> đ</P>
                    <P>Chi tiết sản phẩm</P>

                </a>
        </li>
        <?php } ?>
    </ul>
</div>