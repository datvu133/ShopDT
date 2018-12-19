<?php
      if(isset($_GET['trang'])){
        $get_trang=$_GET['trang'];
    }else{
        $get_trang='';
    }
    if($get_trang==''||$get_trang==1){
        $trang=0;
    }else{
        $trang=($get_trang*21)-21;
    }
    $sql="select * from sanpham where SOLUONGTON >=1  order by TENSANPHAM limit $trang,21";
    $query=mysqli_query($con,$sql);
?>
    <p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Tất cả sản phẩm</p>
    <div class="sanpham">
        <ul>
            <?php
                    while($dong=mysqli_fetch_array($query)){
                    ?>
                <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong['MAHANGSANXUAT'] ?>&id= <?php echo $dong['MASANPHAM'] ?>">
                        <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL'] ?>" alt="" width="150" height="150">
                        <P><?php echo $dong['TENSANPHAM'] ?></P>
                        <P>Giá: <?php echo $dong['GIASANPHAM'] ?> đ</P>
                        <P>Chi tiết sản phẩm</P>

                    </a></li>
                <?php
                    }
                    ?>
        </ul>
    </div>
    <hr>
    <div style="text-align:center;">
        <button>
            <a href="?xem=sanpham&trang=1 "> << </a>
        </button>
    <?php
        if($get_trang>1){
    ?>
            <button>
                <a style=text-decoration:none; href="?xem=sanpham&trang=<?php echo $get_trang-1?> "> < </a>
            </button>
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
        $a=ceil($count/21);
        for($i=1;$i<=$a;$i++){    
    ?>
                <button> <?php echo '<a href="?xem=sanpham&trang='.$i.'"style=text-decoration:none;">'.' '.$i.' '.'</a>'; ?> </button>
    <?php
    }
    ?>
     <?php
        if($get_trang<$a){
    ?>
                 <button> <a style=text-decoration:none; href="?xem=sanpham&trang=<?php echo $get_trang+1?> "> > </a></button>
    <?php
        }else {
    ?>
                 <button disabled="disabled"> > </button>
    <?php
                }
    ?>
                 <button> <a href="?xem=sanpham&trang=<?php echo $a ?> "> >> </a></button>
    </div>