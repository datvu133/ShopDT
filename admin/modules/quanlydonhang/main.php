<div class="left">
            <?php
             if(isset($_GET['ac']))
             {
                 $tam=$_GET['ac'];
             }
             else{
                 $tam='';
             }
             if($tam=='sua'){
                include('modules/quanlydonhang/sua.php');
            }
            ?>
</div>
<div class="right">
    <?php
    include('modules/quanlydonhang/lietke.php');
    ?>
</div>