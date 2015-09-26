<?php global $config;?>
<?php  
$facebookurl=$config->get('magikpolo_fb');
$twitterurl=$config->get('magikpolo_twitter');
$gplusurl=$config->get('magikpolo_gglplus');
$rssurl=$config->get('magikpolo_rss');
$pintresturl=$config->get('magikpolo_pinterest');
$linkedinurl=$config->get('magikpolo_linkedin');
$youtubeurl=$config->get('magikpolo_youtube');
?>
<footer class="footer wow bounceInUp animated">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-7">
          <div class="block-subscribe">
            <div class="newsletter">
                <?php if($config->get('newslettersubscription_status')==1) {
                      echo $newslettersubscription; } ?>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-5">
      <div class="social">
      
      <ul class="link">
      <?php if($facebookurl!='') { ?>
      <li class="fb pull-left"><a href="<?php echo $facebookurl; ?>" target="_blank"></a></li>
      <?php } ?>
      <?php if($twitterurl!='') { ?>
      <li class="tw pull-left"><a href="<?php echo $twitterurl; ?>" target="_blank"></a></li>
      <?php } ?>
      <?php if($gplusurl!='') { ?>
      <li class="googleplus pull-left"><a href="<?php echo $gplusurl; ?>" target="_blank"></a></li>
      <?php } ?>
      <?php if($rssurl!='') { ?>
      <li class="rss pull-left"><a href="<?php echo $rssurl; ?>" target="_blank"></a></li>
      <?php } ?>
      <?php if($pintresturl!='') { ?>
      <li class="pintrest pull-left"><a href="<?php echo $pintresturl; ?>" target="_blank"></a></li>
      <?php } ?>
      <?php if($linkedinurl!='') { ?>
      <li class="linkedin pull-left"><a href="<?php echo $linkedinurl; ?>" target="_blank"></a></li>
      <?php } ?>
      <?php if($youtubeurl!='') { ?>
      <li class="youtube pull-left"><a href="<?php echo $youtubeurl; ?>" target="_blank"></a></li>
      <?php } ?>
      </ul>
    </div>
        </div>
      </div>
    </div>
  </div>
<div class="footer-middle container">
  <div class="row">
    <div class="col-md-3 col-sm-4">
      <?php if($config->get('magikpolo_footer_cb')==1){
      echo html_entity_decode($config->get('magikpolo_footer_cbcontent'));}?>

      <div class="payment-accept">
      <div>
      <img alt="payment1" src="catalog/view/theme/polodemo1lavender/image/payment-1.png"> 
      <img alt="payment2" src="catalog/view/theme/polodemo1lavender/image/payment-2.png"> 
      <img alt="payment3" src="catalog/view/theme/polodemo1lavender/image/payment-3.png"> 
      <img alt="payment4" src="catalog/view/theme/polodemo1lavender/image/payment-4.png">
      </div>
      </div>

    </div>

    <div class="col-md-2 col-sm-4">
      <?php if ($informations) { ?>
    
      <h4><?php echo $text_information; ?></h4>
      <ul class="links">
      <?php $i=0;$cnt=count($informations); foreach ($informations as $information) { ?>
      <li class="<?php if($i==0){echo 'first';} if($i==$cnt){echo 'last';} ?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php $i++;} ?>
      </ul>
      
      <?php } ?>
    </div>

    <div class="col-md-2 col-sm-4">
      <h4><?php echo $text_service; ?></h4>
      <ul class="links">
      <li class="first"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      <li class="last"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
      </ul> 
    </div>

    <div class="col-md-2 col-sm-4">
      <h4><?php echo $text_extra; ?></h4>
      <ul class="links">
          <li class="first"><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li class="last"><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </ul>
    </div>

    <div class="col-md-3 col-sm-4">
      <h4><?php echo $text_contact; ?></h4>
      <div class="contacts-info">
            
            <?php if ($config->get('magikpolo_address')) { ?>
            <address>
            <i class="add-icon"></i><?php echo $config->get('magikpolo_address'); ?>
            </address>

            <?php if ($config->get('magikpolo_phone')) { ?>
            <div class="phone-footer">
            <i class="phone-icon"></i><?php echo $config->get('magikpolo_phone'); ?>
            </div>
            <?php } ?>

            <?php if ($config->get('magikpolo_email')){ ?>  
            <div class="email-footer">
            <i class="email-icon"> </i>
            <a href="mailto:<?php echo $config->get('magikpolo_email'); ?>"><?php echo $config->get('magikpolo_email'); ?></a>
            </div>
            <?php } ?>

        <?php } ?>
      </div>
    </div>

  </div>
</div>

<div class="footer-bottom">
  <div class="container">
  <div class="row">   
      <?php
        if(trim($config->get('magikpolo_powerby')) != '') {
          echo html_entity_decode($config->get('magikpolo_powerby'));
        } else {
          echo $powered;
        }
      ?>  
  </div>
  </div>
</div>


</footer>
</div><!-- page footer-->


<?php if($config->get('magikpolo_scroll_totop')!=1) { ?>
<script type="text/javascript">
$(document).ready(function(){
$('body #toTop').remove();
});
</script>
<?php }?>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>