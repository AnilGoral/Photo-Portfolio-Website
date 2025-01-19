<?php include 'header.php'; ?>
  <div class="site-section"  data-aos="fade">
    <div class="container-fluid">

      <div class="row justify-content-center">
        
        <div class="col-md-7">
          
              <h2 class="site-section-heading text-center">Nature Gallery</h2>
            </div>
          
      </div>
       <div class="row" id="lightgallery">
        <?php 
        $fotografsor=$db->prepare("SELECT * FROM fotograf WHERE fotograf_id AND kategori_id = 1 ");
        $fotografsor->execute();

        while($fotografcek=$fotografsor->fetch(PDO::FETCH_ASSOC)) { ?>
      
      
        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 item" data-aos="fade" data-src="<?php echo $fotografcek['fotograf_resimyol'] ?>" data-sub-html="<h4><?php echo $fotografcek['fotograf_ad']?></h4><p><?php echo $fotografcek['fotograf_detay']?></p>">
          <a href="#"><img src="<?php echo $fotografcek['fotograf_resimyol'] ?>" width="190" height="218" alt="<?php echo $fotografcek['fotograf_resimyol'] ?>"  class="resize"></a>
        </div>
     
        <?php } ?>
           
          
                       


     </div>
    </div>
   </div>  

        
 <?php include 'footer.php'; ?>