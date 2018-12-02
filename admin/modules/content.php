<div class="content">
          <?php
          if(isset($_GET['quanly']))
          {
              $tam=$_GET['quanly'];
          }else{
              $tam='';
          }
          if($tam=='quanlyloaisanpham')
          {
              include('modules/quanlyloaisanpham/main.php');
          }elseif($tam=='quanlyhangsanxuat')
          {
              include('modules/quanlyhangsanxuat/main.php');
          }elseif($tam=='quanlychitietsanpham')
          {
              include('modules/quanlychitietsanpham/main.php');
          }elseif($tam=='quanlydonhang')
          {
              include('modules/quanlydonhang/main.php');
          }

          ?>
</div>