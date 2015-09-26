 <?php global $config; ?>
 <div class="featured-pro container wow bounceInUp animated">
    <div class="slider-items-products">
      <div class="new_title center">
        <h2><?php echo $heading_title; ?></h2>
      </div>

      <div id="featured-slider" class="product-flexslider hidden-buttons">
        
         <?php if($products) { ?>
         <div class="slider-items slider-width-col4">
         <?php foreach ($products as $product) { ?>
         <!-- Item -->
          <div class="item">
            <div class="col-item">

              <?php if ($product['thumb']) { ?>
              <?php if($config->get('magikpolo_sale_label')==1) { 
              if ($product['price'] && $product['special']) { ?>
              <div class="sale-label sale-top-right">
              <?php echo $config->get('magikpolo_sale_labeltitle'); ?>
              </div>
              <?php } } ?> 

              <div class="product-image-area"> 
                
                <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
                <img src="<?php echo $product['thumb']; ?>" class="img-responsive" alt="<?php echo $product['name']; ?>" /> 
                </a>

                <div class="actions-links">
                  <span class="add-to-links"> 
                    <?php if($this->config->get('magikpolo_quickview_button') == 1) { ?>
                    <a title="<?php echo $text_quickview; ?>" class="magik-btn-quickview" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');"><span><?php echo $text_quickview; ?></span>
                    </a> 
                    <?php } ?>
                    <a title="<?php echo $button_wishlist; ?>" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a> 

                    <a title="<?php echo $button_compare; ?>" class="link-compare" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a>
                  </span>
                </div>

              </div>
              <?php } ?>

              <div class="info">
                <div class="info-inner">
                  <div class="item-title">
                        <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
                        <?php echo $pro_name = (strlen($product['name'])>20) ? substr($product['name'], 0,20).'...' : $product['name']; ?>
                        </a>
                  </div><!--item-title-->

                        <div class="item-content">
                        
                          <?php //if ($product['rating']) { ?>
                          <div class="rating">
                          <div class="ratings">
                          <div class="rating-box">
                          <?php for ($i = 1; $i <= 5; $i++) { ?>
                          <?php if ($product['rating'] < $i) { ?>
                          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                          <?php } else { ?>
                          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                          <?php } ?>
                          <?php } ?>
                          </div>
                          </div>
                          </div><!-- rating -->
                          <?php // }?>

                          <?php if ($product['price']) { ?>
                          <div class="item-price">
                          <div class="price-box"> 
                          <?php if (!$product['special']) { ?>
                          <span class="regular-price"><span class="price"><?php echo $product['price']; ?></span></span> 
                          <?php } else { ?>
                          <span class="old-price"><span class="price"><?php echo $product['price']; ?></span></span> 
                          <span class="special-price"><span class="price"><?php echo $product['special']; ?></span></span> 
                          <?php } ?>
                          <?php /* if ($product['tax']) { ?>
                          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                          <?php } */?>
                          </div>
                          </div>
                          <?php } ?>

                        </div>
                        <!--item-content--> 

                </div><!--info-inner-->

                <div class="actions">
                  <button type="button" title="<?php echo $button_cart; ?>" class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span>
                  </button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div><!-- End Item --> 

         <?php } ?>
         </div><!-- slider items -->
         <?php } else { ?>
         <?php echo "No Product Found !!";?>
         <?php } ?>
        
      </div><!-- featured-slider -->

    </div><!-- slider-items-products -->
</div>