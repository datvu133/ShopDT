<div class="header" > 
            <a href="index.php">
       
        <script>
  var i = 0;
  var images = [];
  var time = 3000;

  // Image list
  images[0] = 'imags/bia.png';
  images[1] = 'imags/bia4.png';
  images[2] = 'imags/bia1.png';
  images[3] = 'imags/bia5.png';
  images[4] = 'imags/bia2.png';
  images[5] = 'imags/bia3.png';

  // Change image
  function changeImage(){

    document.slide.src = images[i];

    if(i <images.length - 1){
      i++;
    } else {
      i = 0;
    }
    setTimeout("changeImage()", time);
  }

  window.onload = changeImage;
</script>
<img name="slide" alt="" width="100%" height="250px">  
            </a>
            
        </div>
    

