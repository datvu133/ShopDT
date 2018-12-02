<?php
if (isset($_POST["btn_submit"])) {
    $username = $_POST["username"];
    $password = $_POST["pass"];
    $password2=$_POST["pass2"];
    $name = $_POST["name"];
    $diachi=$_POST["diachi"];
    $sdt=$_POST["sdt"];
    $email = $_POST["email"];
    if ($username == "" || $password == "" || $name == "" || $email == "" ||$password2==""||$diachi==""||$sdt=="") {
         echo "<script>alert('Bạn vui lòng nhập đầy đủ thông tin')</script>";
    }else if($password!=$password2){
        echo "<script>alert('Nhập lại mật khẩu không đúng')</script>";
    }else{
            // Kiểm tra tài khoản đã tồn tại chưa
            $sql="select * from taikhoan where TENDANGNHAP='$username'";
          $kt=mysqli_query($con, $sql);

          if(mysqli_num_rows($kt)  > 0){
              echo "<script>alert('Tài khoản đã tồn tại')</script>";
          }else{
              //thực hiện việc lưu trữ dữ liệu vào db
              $sql = "insert INTO taikhoan(TENDANGNHAP,MATKHAU,TENHIENTHI,DIACHI,DIENTHOAI,EMAIL) VALUES ('$username','$password','$name','$diachi','$sdt','$email' )";
                 mysqli_query($con,$sql);
                 echo "<script>alert('chúc mừng bạn đã đăng ký thành công')</script>";
                 header('location:index.php?xem=dangnhap');
          }
                              
          
    }
}
?>

<form action="" method="post">
<table>
  <tr>
      <td>Tài Khoản :</td>
      <td><input type="text" id="username" name="username"></td>
  </tr>
  <tr>
      <td>Mật Khẩu :</td>
      <td><input type="password" id="pass" name="pass"></td>
  </tr>
  <tr>
      <td>Nhập Lại Mật Khẩu :</td>
      <td><input type="password" id="pass2" name="pass2"></td>
  </tr>
  <tr>
      <td>Họ Và Tên:</td>
      <td><input type="text" id="name" name="name"></td>
  </tr>
  <tr>
      <td>Địa chỉ:</td>
      <td><input type="text" id="diachi" name="diachi"></td>
  </tr>
  <tr>
      <td>Số Điện thoại :</td>
      <td><input type="text" id="sdt" name="sdt"></td>
  </tr>
  <tr>
      <td>Email :</td>
      <td><input type="text" id="email" name="email"></td>
  </tr>
  <tr>
      <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Đăng ký"></td>
  </tr>

</table>