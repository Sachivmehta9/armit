<?php global $config; ?>
<section class="main-col">
<div class="container">
<div class="row">
<article>
<div class="std">
    <div class="producttabs">
    <div id="magik_producttabs1" class="magik-producttabs">
    <div class="magik-pdt-container">
        <div class="magik-pdt-nav">
          <ul class="pdt-nav">
            <?php if($bestseller_products) {?>
            <li class="item-nav tab-loaded tab-nav-actived" data-type="order" data-catid="" data-orderby="best_sales" data-href="pdt_best_sales">
              <span class="title-navi"><?php echo $heading_title_bestseller;?></span>
            </li>
            <?php } ?>

            <?php if($latest_products){ ?>
            <li class="item-nav" data-type="order" data-catid="" data-orderby="new_arrivals" data-href="pdt_new_arrivals">
              <span class="title-navi"><?php echo $heading_title_latest;?></span>
            </li>
            <?php } ?>

            <?php if($products){ ?>
            <li data-href="pdt_featured" data-orderby="featured" data-catid="" data-type="order" class="item-nav"><span class="title-navi"><?php echo $heading_title_featured;?></span>
            </li>
            <?php } ?>

          </ul>
        </div>
        <div class="magik-pdt-content wide-4">
            
            <?php if($bestseller_products){?>
            <div class="pdt-content is-loaded pdt_best_sales tab-content-actived">
                    <div class="pdt-list products-grid-home zoomOut play">
                      <?php  $j=0; foreach ($bestseller_products as $product) { ?>
                      <div class="item item-animate <?php if($j==0) {echo 'wide-first';} elseif($j==3) {echo 'last';} else {echo 'odd';}?>">
                        <!-- HERE -->
                        <div class="item-inner">

  <?php if ($product['thumb']) { ?>
  <div class="item-img">
    <div class="item-img-info">

      
      <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
      <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>">
      </a>

            <?php if($config->get('magikpolo_sale_label')==1) { 
      if ($product['price'] && $product['special']) { ?>
      <div class="sale-label sale-top-right"><span><?php echo $config->get('magikpolo_sale_labeltitle'); ?></span></div>
      <?php } 
      }?>  

      <div class="item-box-hover">
        <div class="box-inner">
          
          <?php if($this->config->get('magikpolo_quickview_button') == 1) { ?>
          <div class="product-detail-bnt">
          <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="<?php echo $text_quickview; ?>" class="button detail-bnt"><span><?php echo $text_quickview; ?></span></a>     
          </div><!-- product-detail-bnt -->
          <?php } ?>

          <div class="actions">
          <a style="cursor:pointer" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php //echo $button_wishlist; ?></a>
          <a style="cursor:pointer" class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a> 
          </div><!-- action -->

          <div class="add_cart">
          <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          </div>
          


        </div>
      </div>

    </div><!-- item-img-info -->
  </div><!-- item-img -->
  <?php } ?>

  <div class="item-info">
    <div class="info-inner">
      <div class="item-title">
        <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
          <?php echo $pro_name = (strlen($product['name'])>20) ? substr($product['name'], 0,20).'...' : $product['name']; ?>
        </a>
      </div>
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
      </div><!-- item-content -->
    </div><!-- info-inner -->
  </div><!-- item-info -->
</div><!-- item-inner -->
                        <!-- HERE -->
                      </div><!-- item item-animate -->
                      <?php if($j==3) $j=0; else $j++; } ?>
                    </div>
            </div>
            <?php } else { ?>
            <div class="pdt-content is-loaded pdt_best_sales tab-content-actived">
                    <div class="pdt-list products-grid-home zoomOut play">
                      NO Product Found !!!
                    </div>
            </div>
            <?php } ?>

            <?php if($latest_products){ ?>
            <div class="pdt-content pdt_new_arrivals is-loaded">
              <div class="pdt-list products-grid-home zoomOut">
                <?php $j=0; foreach ($latest_products as $product) { ?>
                  <div class="item item-animate <?php if($j==0) {echo 'wide-first';} elseif($j==3) {echo 'last';} else {echo 'odd';}?>">
                    <!-- HERE -->
                        <div class="item-inner">

  <?php if ($product['thumb']) { ?>
  <div class="item-img">
    <div class="item-img-info">

      
      <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
      <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>">
      </a>

            <?php if($config->get('magikpolo_sale_label')==1) { 
      if ($product['price'] && $product['special']) { ?>
      <div class="sale-label sale-top-right"><span><?php echo $config->get('magikpolo_sale_labeltitle'); ?></span></div>
      <?php } 
      }?>  

      <div class="item-box-hover">
        <div class="box-inner">
          
          <?php if($this->config->get('magikpolo_quickview_button') == 1) { ?>
          <div class="product-detail-bnt">
          <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="<?php echo $text_quickview; ?>" class="button detail-bnt"><span><?php echo $text_quickview; ?></span></a>     
          </div><!-- product-detail-bnt -->
          <?php } ?>

          <div class="actions">
          <a style="cursor:pointer" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php //echo $button_wishlist; ?></a>
          <a style="cursor:pointer" class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a> 
          </div><!-- action -->

          <div class="add_cart">
          <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          </div>
          


        </div>
      </div>

    </div><!-- item-img-info -->
  </div><!-- item-img -->
  <?php } ?>

  <div class="item-info">
    <div class="info-inner">
      <div class="item-title">
        <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
          <?php echo $pro_name = (strlen($product['name'])>20) ? substr($product['name'], 0,20).'...' : $product['name']; ?>
        </a>
      </div>
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
      </div><!-- item-content -->
    </div><!-- info-inner -->
  </div><!-- item-info -->
</div><!-- item-inner -->
                    <!-- HERE -->
                  </div><!-- item item-animate-->
                <?php if($j==3) $j=0; else $j++; } ?>
              </div><!-- pdt-list products-grid-home zoomOut -->
            </div><!-- pdt-content pdt_new_arrivals is-loaded -->
            <?php } else { ?>
            <div class="pdt-content pdt_new_arrivals is-loaded">
              <div class="pdt-list products-grid-home zoomOut">
                No Product Found !!!
              </div>
            </div><!-- pdt-content pdt_new_arrivals is-loaded -->
            <?php } ?>


                        <?php if($products){ ?>
            <div class="pdt-content pdt_featured is-loaded">
              <div class="pdt-list products-grid-home zoomOut">
                <?php $j=0; foreach ($products as $product) { ?>
                  <div class="item item-animate <?php if($j==0) {echo 'wide-first';} elseif($j==3) {echo 'last';} else {echo 'odd';}?>">
                    <!-- HERE -->
                        <div class="item-inner">

  <?php if ($product['thumb']) { ?>
  <div class="item-img">
    <div class="item-img-info">

      
      <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
      <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>">
      </a>

            <?php if($config->get('magikpolo_sale_label')==1) { 
      if ($product['price'] && $product['special']) { ?>
      <div class="sale-label sale-top-right"><span><?php echo $config->get('magikpolo_sale_labeltitle'); ?></span></div>
      <?php } 
      }?>  

      <div class="item-box-hover">
        <div class="box-inner">
          
          <?php if($this->config->get('magikpolo_quickview_button') == 1) { ?>
          <div class="product-detail-bnt">
          <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="<?php echo $text_quickview; ?>" class="button detail-bnt"><span><?php echo $text_quickview; ?></span></a>     
          </div><!-- product-detail-bnt -->
          <?php } ?>

          <div class="actions">
          <a style="cursor:pointer" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php //echo $button_wishlist; ?></a>
          <a style="cursor:pointer" class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a> 
          </div><!-- action -->

          <div class="add_cart">
          <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          </div>
          


        </div>
      </div>

    </div><!-- item-img-info -->
  </div><!-- item-img -->
  <?php } ?>

  <div class="item-info">
    <div class="info-inner">
      <div class="item-title">
        <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
          <?php echo $pro_name = (strlen($product['name'])>20) ? substr($product['name'], 0,20).'...' : $product['name']; ?>
        </a>
      </div>
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
      </div><!-- item-content -->
    </div><!-- info-inner -->
  </div><!-- item-info -->
</div><!-- item-inner -->
                    <!-- HERE -->
                  </div><!-- item item-animate-->
                <?php if($j==3) $j=0; else $j++; } ?>
              </div><!-- pdt-list products-grid-home zoomOut -->
            </div><!-- pdt-content pdt_featured is-loaded -->
            <?php } else { ?>
            <div class="pdt-content pdt_new_arrivals is-loaded">
              <div class="pdt-list products-grid-home zoomOut">
                No Product Found !!!
              </div>
            </div><!-- pdt-content pdt_featured is-loaded -->
            <?php } ?>


        </div><!-- magik-pdt-content wide-4 -->
    </div>
    </div>
    </div>
</div>
</article>
</div>
</div>
</section>