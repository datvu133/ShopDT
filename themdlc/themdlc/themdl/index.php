    <?php
 $tenmaychu='localhost:3306';
 $csdl='shopdt';
 $pass='';
 $tentaiklhoan='root';
 $con=mysqli_connect($tenmaychu,$tentaiklhoan,$pass,$csdl) or die ('Không kết nối được') ;
 $con->set_charset('utf8');
require('Classes/PHPExcel.php');
if(isset($_POST['btnname'])){
    $file=$_FILES['file']['tmp_name'];
    $objReader=PHPExcel_IOFactory::createReaderForFile($file);
    $objReader->setLoadSheetsOnly('Sheet1');
    $objReader=$objReader->load($file);
    $sheetData=$objReader->getActiveSheet()->toArray('null',true,true,true);
    
    $high=$objReader->setActiveSheetIndex()->getHighestRow();
 

for($i=3;$i<=$high;$i++)
{
    $idhang=$sheetData[$i]['A'];
    $idloai=$sheetData[$i]['B'];
    $ten=$sheetData[$i]['C'];
    $hinh=$sheetData[$i]['D'];
    $gia=$sheetData[$i]['E'];
    $slt=$sheetData[$i]['G'];
    $slb=$sheetData[$i]['H'];
    $slx=$sheetData[$i]['I'];
    $text=$sheetData[$i]['J'];
    $sql="insert into sanpham (MAHANGSANXUAT,MALOAISANPHAM,TENSANPHAM,HINHURL,GIASANPHAM,NGAYNHAP,SOLUONGTON,SOLUONGBAN,SOLUONGXEM,MOTA) VALUES ($idhang,$idloai,'$ten','$hinh',$gia,CURRENT_TIMESTAMP(),$slt,$slb,$slx,'$text')";
    mysqli_query($con,$sql);
}
       
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form method="POST" enctype="multipart/form-data">
    <input type="file" name ="file">
    <button type="submit" name="btnname">them</button>
    </form>
</body>
</html>