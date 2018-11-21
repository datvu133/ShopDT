<?php
    $sql="select * from hangsanxuat where MAHANGSANXUAT=$_GET[id]";
    mysqli_set_charset($con, 'UTF8');
    $run= mysqli_query($con,$sql);
    $dong=mysqli_fetch_array($run);
?>
<form action="modules/quanlyhangsanxuat/xuly.php?id=<?php echo $dong['MAHANGSANXUAT'] ?>" method="post" enctype="multipart/form-data">
<table width ="300" border="1">
    <tr>
        <td colspan="2">
            <div align="center">Sửa hãng sản xuất</div>
        </td>
       
    </tr>
    <tr>
        <td>Tên hãng sản xuất</td>
        <td><input type="text" name="tenhangsx" value="<?php echo $dong['TENHANGSANXUAT'] ?>"></td>
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