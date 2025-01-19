 
  <div class="container-fluid" data-aos="fade" data-aos-delay="500"> 
    <div class="swiper-container images-carousel">
      <div class="swiper-wrapper">
          <?php 

            $slidersor=$db->prepare("SELECT * FROM slider");
            $slidersor->execute();
            while($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) {
               ?>
            <div class="swiper-slide">
              <div class="image-wrap">
                <div class="image-info">
                  <h2 class="mb-3"><?php echo $slidercek['slider_ad'] ?></h2>
                  <a href="<?php echo $slidercek['slider_link'] ?>" class="btn btn-outline-white py-2 px-4">More Photos</a>
                </div>
                <img src="<?php echo $slidercek['slider_resimyol'] ?>" alt="Image">
              </div>
            </div>
            <?php } ?>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
        <div class="swiper-scrollbar"></div>
        
    </div>
  </div>

