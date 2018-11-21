<?php
    $sql="select * from loaisanpham where MALOAISANPHAM=$_GET[id]";
    $run=mysqli_query($con,$sql);
    $dong=mysqli_fetch_array($run);
?>
<form action="modules/quanlyloaisanpham/xuly.php?id=<?php echo $dong['MALOAISANPHAM'] ?>" method="post" enctype="multipart/form-data">
<table width ="300" border="1">
    <tr>
        <td colspan="2">
            <div align="center">Sửa loại sản phẩm</div>
        </td>
       
    </tr>
    <tr>
        <td>Tên loại sản phẩm</td>
        <td><input type="text" name="tenloaisp" value="<?php echo $dong['TENLOAISANPHAM'] ?>"></td>
    </tr>
    <tr>
    <td colspan="2">
            <div align="center">
                <input type="submit" name="sua" id="sua" value="Sửa" >
            </div>
        </td>
    </tr>
</table>
</form>