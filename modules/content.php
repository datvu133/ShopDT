<div class="content">
        <div class="trangchu">
         <?php
        if(isset($_GET['xem']))
        {
            $tam=$_GET['xem'];
        }else
        $tam='';
        if($tam=='')
        {
            include('modules/sanphamtrangchu.php');
        }
         ?>
        </div>
        <div class="left">
            <?php
            if(isset($_GET['xem']))
            {
                $tam=$_GET['xem'];
            }else
            $tam='';
            if($tam!='trangchu'&$tam!=''&$tam!='dangnhap'&$tam!='giohang'&$tam!='dangky')
            {
                include('modules/left/danhsachsanpham.php');
            }
            ?>
        </div>  
        <div class="right">
            
            <?php
          
                
                if(isset($_GET['xem']))
            {
                $tam=$_GET['xem'];
            }else
            $tam='';
            if($tam=='sanpham')
            {
                if(isset($_POST['search']))
                 {
                include('modules/right/search.php');
                 }else{
                include('modules/right/tatcasanpham.php');
                 }
            }else if($tam=='chitietsanpham' )
            {
                include('modules/right/chitietsanpham.php');
                
            }else if($tam=='chitietloaisanpham')
            {
                include('modules/right/chitietloaisanpham.php');
            }else if($tam=='chitiethangsanxuat')
            {
                include('modules/right/chitiethangsanxuat.php');
            }else if($tam=='giohang')
            {
                include('modules/right/giohang.php');
            }else if($tam=='thanhtoan')
            {
                include('modules/right/thanhtoan.php');
            }else if($tam=='dangnhap')
            {
                include('modules/right/dangnhap.php');
            }else if($tam=='dangky')
            {
                include('modules/right/dangky.php');
            }


            
            ?>
            </div>
        </div>
        </div>