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
        include('modules/quanlychitietsanpham/them.php');
    }
    if($tam=='sua'){
        include('modules/quanlychitietsanpham/sua.php');
    }
    ?>
</div>
<div class="right">
    <?php
    include('modules/quanlychitietsanpham/lietke.php');
    ?>
</div>