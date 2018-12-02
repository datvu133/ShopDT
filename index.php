<?php
    session_start();
    if(isset($_GET['ac']) && $_GET['ac']=='dangxuat' ){
        unset($_SESSION['username']);
       
    } 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style/css.css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/OwlCarousel2-2.3.4/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css"rel="stylesheet" type="text/css">
    <title>Điện Tử Gia Dụng</title>
</head >
<body>
    <div class="wrapper">
    <?php
    include('admin/modules/config.php');
    include('modules/header.php');
    include('modules/menu.php');
    include('modules/content.php');
    include('modules/fooder.php');
    ?>
    </div>
    <script type="text/javascript " src="OwlCarousel2-2.3.4/OwlCarousel2-2.3.4/docs/assets/vendors/jquery.min.js"></script>
    <script type="text/javascript " src="OwlCarousel2-2.3.4/OwlCarousel2-2.3.4/dist/owl.carousel.js" ></script>
    <script type="text/javascript">
    $('.owl-carousel').owlCarousel({
    rtl:true,
    loop:true,
    margin:15,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})
    </script>
</body>
</html>