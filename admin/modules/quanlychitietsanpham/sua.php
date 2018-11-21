<?php
    $sql="select * from sanpham where MASANPHAM=$_GET[id]";
    $run=mysqli_query($con,$sql);
    $dong=mysqli_fetch_array($run);
?>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
<form action="modules/quanlychitietsanpham/xuly.php?id=<?php echo $dong['MASANPHAM'] ?>" method="post" enctype="multipart/form-data">
<table width ="300" border="1">
<tr>
        <td colspan="2"><div align="center">Sửa sảm phẩm</div> </td>  
     </tr>
     <tr>
         <td>Tên sản phẩm:</td>
         <td>
         <input type="text" name="tensp" value="<?php echo $dong['TENSANPHAM'] ?>">
         </td>
     </tr>
     <tr>
         <td>Hình ảnh: </td>
         <td>
         <input type="file" name="hinhanh"> <img src="modules/quanlychitietsanpham/uploads/<?php echo $dong['HINHURL']?>" width="60" height="60">
         </td>
     </tr>
     <tr>
         <td>Giá: </td>
         <td>
         <input type="text" name="gia" value="<?php echo $dong['GIASANPHAM'] ?>">
         </td>
     </tr>
     <tr>
         <td>Mô tả</td>
         <td><textarea name="motasp" id="" cols="30" rows="15">
         <?php echo $dong['MOTA'] ?>
         </textarea> </td>
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
             if($dong['MALOAISANPHAM']==$dong_lsp['MALOAISANPHAM']){
                 ?>
            <option value="<?php echo $dong_lsp['MALOAISANPHAM']?>" selected>
            <?php echo $dong_lsp['TENLOAISANPHAM'] ?>
            <?php
             } else {
             ?>
                <option value="<?php echo $dong_lsp['MALOAISANPHAM']?>">
            <?php echo $dong_lsp['TENLOAISANPHAM'] ?>
            <?php
             }
             ?>
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
                if($dong['MAHANGSANXUAT']==$dong_hsx['MAHANGSANXUAT']){
             ?>
            <option value="<?php echo $dong['MAHANGSANXUAT']?>" selected>
            <?php echo $dong_hsx['TENHANGSANXUAT'] ?>
            <?php
             } else {
             ?>
             <option value="<?php echo $dong['MAHANGSANXUAT']?>" >
            <?php echo $dong_hsx['TENHANGSANXUAT'] ?>
            <?php
             }
             ?>
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
             <button name="sua" value="sua">Sửa</button>
         </div>
         </td>
         
     </tr>
</table>
</form>