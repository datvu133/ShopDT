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
        include('modules/quanlyhangsanxuat/them.php');
    }
    if($tam=='sua'){
        include('modules/quanlyhangsanxuat/sua.php');
    }
    ?>
</div>
<div class="right">
    <?php
    include('modules/quanlyhangsanxuat/lietke.php');
    ?>
</div>