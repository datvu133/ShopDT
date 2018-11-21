<?php
    $tenmaychu='localhost:3306';
    $csdl='shopdt';
    $pass='';
    $tentaiklhoan='root';
    $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl);
    mysqli_set_charset($con, 'UTF8');
    session_start();
    if(isset($_POST['login'])){
        $tentaikhoan=$_POST['taikhoan'];
        $matkhau=$_POST['matkhau'];
        $sql="select * from admin where TAIKHOAN='$tentaikhoan' and MATKHAU='$matkhau' limit 1";
        $query=mysqli_query($con,$sql);
        $nums=mysqli_num_rows($query);
        if($nums>0)
        {
            $_SESSION['dangnhap']=$tentaikhoan;
            header('location:index.php');
        }else{
            header('location:login.php');
        }
    }
?>
<form method="post" >
<center><table width="300" border="1" style="text-align:center">
    <tr>
        <td colsapn="2">Đăng nhập</td>
        
    </tr>
    <tr>
        <td>Tài khoản</td>
        <td> <input type="text" name="taikhoan" size="20"></td>
    </tr>
    <tr>
        <td>Mật khẩu</td>
        <td><input type="password" name="matkhau" size="20"></td>
    </tr>
    <tr>
        <td colspan="2">
            <div align="center">
            <input type="submit" name="login" value="Đăng nhập">
            </div>
            </td>
        
    </tr>
</table></center>
</form>