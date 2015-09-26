<?php echo $header; global $config; ?>
  <div class="breadcrumbs">
  <div class="container">
  <div class="row">
  <div class="col-xs-12">
    <ul>
    <?php $b_i=0; $b_cnt=count($breadcrumbs); foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><?php if($b_i!=0) {?><span>—› </span><?php } ?>
      <?php if($b_i==($b_cnt-1)){ ?>
      <strong><?php echo $breadcrumb['text']; ?></strong><?php } 
      else { ?>
      <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php }?>
    </li>
    <?php $b_i++ ;} ?>
  </ul>
  </div>
  </div>
  </div>
  </div>



<section class="main-container col2-left-layout">
<div class="main container">
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php //echo $content_top; ?>
     
          <div class="category-description std">
            <?php if ($thumb) { ?>
            <img src="<?php echo $thumb; ?>"> 
            <?php }?>
            
            <?php if ($description) { ?>
            <!--  <div><?php // echo $description; ?></div> -->
            <?php } ?>
          </div><!-- category-description std -->

        <div class="category-title">
        <h1><?php echo $heading_title; ?></h1>
        </div>

          <?php  if ($categories) { ?>
          <div class="category-list">
          <h3><?php echo $text_refine; ?></h3>
          <?php //if (count($categories) <= 5) { ?>
          <div class="row">
          <div class="col-sm-12 category-list">
          <ul>
          <?php foreach ($categories as $category) { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          </ul>
          </div>
          </div>
          <?php /*} else { ?>
          <div class="row">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-3">
          <ul>
          <?php foreach ($categories as $category) { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          </ul>
          </div>
          <?php } ?>
          </div>
          <?php } */ ?> 
          </div>
          <?php }  ?>

       
        <?php if ($products) { ?>  
        
      <div class="toolbar">
        <div class="sorter">
          <div class="view-mode">
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            
            <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
          </div>
        </div>

        <div id="sort-by">
          <label class="left"><?php echo $text_sort; ?></label>
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>

        <div class="pager">
          <div id="limiter">
            <label><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
          </div>
        </div>


      </div><!-- toolbar -->
        
      <div class="row">
        <?php foreach ($products as $product) { ?>
         <div class="product-layout product-list col-xs-12">
          <div class="product-thumb col-item">
              
            <div class="image product-image-area">
              <?php if($config->get('magikpolo_sale_label')==1) { 
                    if ($product['price'] && $product['special']) { ?>
                    <div class="sale-label sale-top-right">
                      <?php echo $config->get('magikpolo_sale_labeltitle'); ?>
                    </div>
                    <?php } } ?> 
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
            
            <div class="hover_fly"> 
            <a class="exclusive ajax_add_to_cart_button" onclick="cart.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart; ?>">
            <div><i class="icon-shopping-cart"></i><span><?php echo $button_cart; ?></span></div>
            </a> 

            <?php if($this->config->get('magikpolo_quickview_button') == 1) { ?>
            <a class="quick-view" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="<?php echo $text_quickview; ?>">
            <div><i class="icon-eye-open"></i><span><?php echo $text_quickview; ?></span></div>
            </a> 
            <?php } ?>

            <a class="add_to_compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
            <div><i class="icon-random"></i><span><?php echo $button_compare; ?></span></div>
            </a> 

            <a class="addToWishlist wishlistProd_5" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" >
            <div><i class="icon-heart"></i><span><?php echo $button_wishlist; ?></span></div>
            </a>

            </div>

            </div>
            <div class="info">
              <div class="caption info-inner">
                <div class="item-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                 <div class="pro-desc"><p><?php echo $product['description']; ?></p></div> 
                
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
                <?php // } ?>
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

              </div>

            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="bottom_pagination">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
        

  <?php } ?>
    <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>"><button type="button" class="button"><?php echo $button_continue; ?></button></a></div>
      </div>
      <?php } ?>

      
    </div><!-- content -->
    <?php echo $column_right; ?>
  </div><!-- row -->
  
</div><!-- container --><?php echo $content_bottom; ?>

</section>
<script type="text/javascript">
 $('#column-left').attr('class','col-left sidebar col-sm-3 col-xs-12 wow bounceInUp animated hidden-xs');
 $('#content').attr('class','col-main col-sm-9 wow bounceInUp animated');
// </script>
<?php echo $footer; ?>
