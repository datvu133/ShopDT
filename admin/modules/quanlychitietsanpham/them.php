
<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
<form action="modules/quanlychitietsanpham/xuly.php" method="post" enctype="multipart/form-data">
<table width ="300" border="1">
<tr>
        <td colspan="2"><div align="center">Thêm sảm phẩm</div> </td>  
     </tr>
     <tr>
         <td>Tên sản phẩm:</td>
         <td>
         <input type="text" name="tensp">
         </td>
     </tr>
     <tr>
         <td>Hình ảnh: </td>
         <td>
         <input type="file" name="hinhanh">
         </td>
     </tr>
     <tr>
         <td>Giá: </td>
         <td>
         <input type="text" name="gia">
         </td>
     </tr>
     <tr>
         <td>Mô tả</td>
         <td><textarea name="motasp" id="" cols="30" rows="15"></textarea> </td>
     </tr>
     <tr>
         <?php
            $sql_lsp="select * from loaisanpham";
            $run_lsp=mysqli_query($con,$sql_lsp);
         ?>
         <td>Loại sản phẩm</td>
         <td><select name="loaisp" id="">
             <?php
             while($dong_lsp=mysqli_fetch_array($run_lsp)){
             ?>
            <option value="<?php echo $dong_lsp['MALOAISANPHAM']?>">
            <?php echo $dong_lsp['TENLOAISANPHAM'] ?>
        </option>
            <?php
             }
             ?>
         </select>
         </td>
     </tr>
     <tr>
     <?php
            $sql_hsx="select * from hangsanxuat";
            $run_hsx=mysqli_query($con,$sql_hsx);
         ?>
         <td>Hãng sản xuất</td>
         <td><select name="hangsx" id="">
         <?php
             while($dong_hsx=mysqli_fetch_array($run_hsx)){
             ?>
            <option value="<?php echo $dong_hsx['MAHANGSANXUAT']?>">
            <?php echo $dong_hsx['TENHANGSANXUAT'] ?>
        </option>
        <?php
             }
             ?>
         </select>
         </td>
     </tr>
     <tr>
         <td colspan="2">
         <div align="center">
             <button name="them" value="Thêm">Thêm</button>
         </div>
         </td>
         
     </tr>
</table>
</form>