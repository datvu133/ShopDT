<?php
     
    $sql_loaisp="select * from loaisanpham order by TENLOAISANPHAM";
    $query_loaisp=mysqli_query($con,$sql_loaisp);
    $sql_hangsx="select * from hangsanxuat order by TENHANGSANXUAT";
    $query_hangsx=mysqli_query($con,$sql_hangsx);
?>

<p style="text-align:center;color:red; background:#1B0301;padding:8px">Danh sách sản phẩm</p>
          <div class="danhsachsanpham">
              <ul>
                 <?php
                      while($dong_sp =mysqli_fetch_array($query_loaisp)){
                 ?>
                  <li><a href="index.php?xem=chitietloaisanpham&id= <?php echo $dong_sp['MALOAISANPHAM'] ?>"><?php echo $dong_sp['TENLOAISANPHAM']?></a></li>
                <?php
                     }
                ?>
				   
              </ul>
            </div>
              <p style="text-align:center;color:red; background:#1B0301;padding:8px">Danh sách hãng sản xuất</p>
          <div class="danhsachsanpham">
              <ul>
                 <?php
                     while($dong_sx =mysqli_fetch_array($query_hangsx)){
                 ?>
                  <li><a href="index.php?xem=chitiethangsanxuat&id= <?php echo $dong_sx['MAHANGSANXUAT'] ?>"> <?php echo $dong_sx['TENHANGSANXUAT']?></a></li>
                  <?php
                     }
                ?>   
              </ul>
          </div>