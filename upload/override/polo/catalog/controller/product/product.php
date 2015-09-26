<?php
class polo_ControllerProductProduct extends ControllerProductProduct {

    public function index() {
   // $this->document->addScript('catalog/view/theme/polodemo1blue/js/cloud-zoom.js');
   // $this->document->addScript('catalog/view/theme/polodemo1blue/js/jquery.flexslider.js');
  //  $this->document->addStyle('catalog/view/theme/polodemo1blue/stylesheet/flexslider.css');
    $this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
    $this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
    // call parent method
    return parent::index();
}
} 