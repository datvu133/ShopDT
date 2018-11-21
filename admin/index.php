<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style/css.css" >
    <title>Quản lí shop</title>
</head>
<body>
    <?php
    session_start();
    if(!isset($_SESSION['dangnhap'])){
        header('location:login.php');
    }
    ?>
    <div class ="wrapper">
    <?php
    include('modules/config.php');
    include('modules/header.php');
    include('modules/menu.php');
    include('modules/content.php');
    include('modules/fooder.php');
    ?>
        
       
        
    </div>
</body>
</html>