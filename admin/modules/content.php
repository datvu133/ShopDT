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
          }
          if($tam=='quanlyhangsanxuat')
          {
              include('modules/quanlyhangsanxuat/main.php');
          }

          ?>
</div>