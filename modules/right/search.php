<?php
      if(isset($_POST['search'])){
          $search=$_POST['searchtext'];
          if($search!=''){
    $sql="select * from sanpham sp join loaisanpham lsp on sp.MALOAISANPHAM=lsp.MALOAISANPHAM
                                    join hangsanxuat hsx on sp.MAHANGSANXUAT=hsx.MAHANGSANXUAT
                                    where sp.TENSANPHAM LIKE '%$search %'
                                    or lsp.TENLOAISANPHAM LIKE '%$search%'
                                    or hsx.TENHANGSANXUAT LIKE '%$search%'";
    $query=mysqli_query($con,$sql);
    $cout=mysqli_num_rows($query);
          }else{
              $cout=0;
          }
      }
?>
<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Sản phẩm tìm thấy</p>
            <div class="sanpham"  >
                <?php
                if($cout==0){
                ?>
                <p>Không tìm thấy sản phẩm nào</p>
                <?php
                }else {
                ?>
                <ul >
                <?php
                    while($dong=mysqli_fetch_array($query)){
                    ?>
                <li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong['MALOAISANPHAM'] ?>&idhangsx=<?php echo $dong['MAHANGSANXUAT'] ?>&id= <?php echo $dong['MASANPHAM'] ?>">
                        <img src="admin/modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL'] ?>" alt="" width="150" height="auto">
                        <P><?php echo $dong['TENSANPHAM'] ?></P>
                        <P>Giá: <?php echo $dong['GIASANPHAM'] ?> đ</P>
                        <P>Chi tiết sản phẩm</P>

                    </a></li>
                    <?php
                    }
                }
                    ?>
                    </ul>
            </div>