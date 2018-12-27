<p style="text-align:left;color:red; background:#1B0301;padding:10px; margin-top: 2px;">Sửa thông tin</p>
<h3>
    
    <?php 
    if(isset($_SESSION['username'])){
     $tentaikhoan=$_SESSION['username'];
    $sql_tk="select * from taikhoan where TENDANGNHAP='$tentaikhoan'";
    $runtk=mysqli_query($con,$sql_tk);
    $dongtk=mysqli_fetch_array($runtk);
    $tentk=$dongtk['TENHIENTHI'];

     $matk=$dongtk['MATAIKHOAN'];
    ?>
    </h3>
    <?php
if (isset($_POST["btn_submit"])) {
    $name = $_POST["name"];
    $diachi=$_POST["diachi"];
    $sdt=$_POST["sdt"];
    $email = $_POST["email"];
    if ( $name == "" || $email == ""||$diachi==""||$sdt=="") {
         echo "<script>alert('Bạn vui lòng nhập đầy đủ thông tin')</script>";
    }
              $sql = "update taikhoan set TENHIENTHI='$name', DIACHI='$diachi',DIENTHOAI='$sdt',EMAIL='$email'
              where MATAIKHOAN='$matk'";
                 mysqli_query($con,$sql);
                 echo "<script>alert('chúc mừng bạn đã cập nhật thành công')</script>";
                header('location:index.php?xem=dangnhap');
          
                              
          
    
}
?>

<form action="" method="post" class ="dangky">
<table>
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
      <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Cập Nhật"></td>
  </tr>

</table>
<?php
    }else{
        echo "<P>Bạn chưa đăng nhập</P>";
    }
    ?>