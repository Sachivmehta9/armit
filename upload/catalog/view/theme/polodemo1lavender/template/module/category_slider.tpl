 <div class="featured-pro container wow bounceInUp animated">
  <div class="row">
    <div class="slider-items-products">
      <div class="new_title center">
      <h2><?php echo $heading_title; ?></h2>
      </div>

      <?php if(isset($slider)){?> 
      <div id="best-seller-slider" class="product-flexslider hidden-buttons">
        <div class="slider-items slider-width-col4 products-grid">
          
            <?php  foreach ($slider as $slide) { ?>   
            <div class="item">
            <div class="pro-img"><a href="<?php echo $slide['href']; ?>"><img src="<?php echo $slide['image']?>" alt="<?php echo $slide['name'];?>"></a>
            <div class="pro-info"><a href="<?php echo $slide['href']; ?>"><?php echo $slide['name'];?></a></div>
            </div>
            </div>
            <?php } ?>
        </div>
      </div>
      <?php } ?>

    </div><!-- slider-items-products -->
  </div><!-- row -->
 </div><!-- featured-pro container wow bounceInUp animated animated -->