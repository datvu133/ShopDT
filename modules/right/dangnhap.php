<?php
          
        if(isset($_POST["btn_submit"])){
		$username = $_POST["username"];
		$password = $_POST["password"];
		if ($username == "" || $password =="") {
			echo "<script>alert('username hoặc password bạn không được để trống!')</script>";
		}else{
			$sql = "select * from taikhoan where TENDANGNHAP = '$username' and MATKHAU = '$password' ";
			$query = mysqli_query($con,$sql);
			$num_rows = mysqli_num_rows($query);
			if ($num_rows==0) {
				echo "<script>alert('tên đăng nhập hoặc mật khẩu không đúng !')</script>";
			}else{
	
                $_SESSION['username'] = $username;
                
              
			}
		}
    }


?>
<?php 
   if(isset($_SESSION['username'])){ 
	$tentaikhoan=$_SESSION['username'];
    $sql_tk="select * from taikhoan where TENDANGNHAP='$tentaikhoan'";
    $runtk=mysqli_query($con,$sql_tk);
    $dongtk=mysqli_fetch_array($runtk);
	$tentk=$dongtk['TENHIENTHI'];
	$email=$dongtk['EMAIL'];
	$diachi=$dongtk['DIACHI'];
	$sdt=$dongtk['DIENTHOAI'];
	?>
	<P>Thông tin khách hàng</P>
	<table class="dangnhap">
	<tr>
	<td>Tên Khách hàng:</td>
	<td><?php echo $tentk?></td>
	</tr>
	<tr>
	<td>Địa chỉ:</td>
	<td><?php echo $diachi ?></td>
	</tr>
	<tr>
	<td>Số điện thoại:</td>
	<td><?php echo $sdt ?></td>
	</tr>
	<tr>
	<td>Email:</td>
	<td><?php echo $email ?></td>
	</tr>
	</table>
    <P><a href="index.php?&ac=dangxuat"><button>Đăng xuất</button></a></P>
    <?php
}else{
    ?>
	<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Đăng Nhập </p> <br>

	<div class="dangnhap">
<form method="POST">

	    <legend>Đăng nhập</legend>
	    	<table>
	    		<tr>
	    			<td>Username: </td>
	    			<td><input type="text" name="username" size="30"></td>
	    		</tr>
	    		<tr>
	    			<td>Password: </td>
	    			<td><input type="password" name="password" size="30"></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="center"> <input type="submit" name="btn_submit" value="Đăng nhập"></td>
	    		</tr>
	    	</table>
			<p>Bạn chưa có tài khoản <a href="index.php?xem=dangky"> tạo tài khoản mới</a></p>

  
  </form>

  <?php
}
?>
</div>