<div class="left">
    <?php 
    if(isset($_GET['ac']))
    {
        $tam=$_GET['ac'];
    }
    else{
        $tam='';
    }
    if($tam=='them'){
        include('modules/quanlyloaisanpham/them.php');
    }
    if($tam=='sua'){
        include('modules/quanlyloaisanpham/sua.php');
    }
    ?>
</div>
<div class="right">
    <?php
    include('modules/quanlyloaisanpham/lietke.php');
    ?>
</div>