<?php echo $header; ?>
<?php global $config;?>
<!-- <script type="text/javascript" src="view/javascript/colorpicker/colorpicker-color.js"></script>
<script type="text/javascript" src="view/javascript/colorpicker/colorpicker.js"></script> -->
<link rel="stylesheet" href="view/javascript/colorpicker/bootstrap-3.0.0.min.css">
<link rel="stylesheet" href="view/javascript/colorpicker/pick-a-color-1.2.3.min.css">
<link rel="stylesheet" href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css">



<style type="text/css">
.heading{
color: #279882;
font-size: 24px!important;
}
.thead{
color: #e74c3c!important;
font-weight: bold;
text-transform: uppercase
}
</style>

<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-magikpolo" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-magikpolo" class="form-horizontal">
          

 <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
<li class="active"><a href="#general" data-toggle="tab">General</a></li>
<li><a href="#colors" data-toggle="tab">Colors</a></li>
<li><a href="#fonts" data-toggle="tab">Fonts</a></li>
<li><a href="#footer" data-toggle="tab">Footer</a></li>
<?php if($config->get('config_maintenance')){ ?>
<li><a href="#maintenance" data-toggle="tab">Maintenance</a></li>
<?php } ?>
<li><a href="#support" data-toggle="tab">Support</a></li>
</ul>
<div id="my-tab-content" class="tab-content">
<div class="tab-pane active" id="general">
<br>
  <b class="heading">GENERAL THEME SETTINGS</b><hr>
   

    <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_home_option">Home option in menu:</label>
            <div class="col-sm-10">
              <select name="magikpolo_home_option" id="input-magikpolo_home_option" class="form-control">
                <?php if ($magikpolo_home_option) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          


      <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_quickview_button">Product's Quick View:</label>
            <div class="col-sm-10">
              <select name="magikpolo_quickview_button" id="input-magikpolo_quickview_button" class="form-control">
                <?php if ($magikpolo_quickview_button) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_scroll_totop">Show scroll to top button:</label>
            <div class="col-sm-10">
              <select name="magikpolo_scroll_totop" id="input-magikpolo_scroll_totop" class="form-control">
                <?php if ($magikpolo_scroll_totop) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


        <div class="form-group">
        <label class="col-sm-2 control-label" for="input-magikpolo_animation_effect">Animation Effect:</label>
        <div class="col-sm-10">
        <select name="magikpolo_animation_effect" id="input-magikpolo_animation_effect" class="form-control">
        <?php if ($magikpolo_animation_effect) { ?>
        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
        <option value="0"><?php echo $text_disabled; ?></option>
        <?php } else { ?>
        <option value="1"><?php echo $text_enabled; ?></option>
        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
        <?php } ?>
        </select>
        </div>
        </div>

          

                  
<hr><b class="thead">PRODUCTS "SALE" LABEL</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_sale_label">Show "Sale" label for products with discount:</label>
            <div class="col-sm-10">
              <select name="magikpolo_sale_label" id="input-magikpolo_sale_label" class="form-control">
                <?php if ($magikpolo_sale_label) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_sale_labeltitle">Sale label title:</label>
            <div class="col-sm-10">
            <input name="magikpolo_sale_labeltitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_sale_labeltitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_sale_labelcolor">Sale label color:</label>
            <div class="col-sm-10">
            <input name="magikpolo_sale_labelcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_sale_labelcolor; ?>" class="pick-a-color form-control"/>
            </div>
          </div>


<?php /* ?>
<hr><b class="thead">HEADER CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_headercb_ed">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="magikpolo_headercb_ed" id="input-magikpolo_headercb_ed" class="form-control">
                <?php if ($magikpolo_headercb_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_headercb_content">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_headercb_content" placeholder="Enetr text here" id="input-magikpolo_headercb_content" class="form-control"><?php echo $magikpolo_headercb_content; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikpolo_headercb_content').summernote({height: 300});
          </script>  
<?php */ ?>
          <!-- end -->

<hr><b class="thead">MENUBAR CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_menubar_cb">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="magikpolo_menubar_cb" id="input-magikpolo_menubar_cb" class="form-control">
                <?php if ($magikpolo_menubar_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_menubar_cbtitle">Block title:</label>
            <div class="col-sm-10">
            <input name="magikpolo_menubar_cbtitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_menubar_cbtitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_menubar_cbcontent">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_menubar_cbcontent" placeholder="Enetr text here" id="input-magikpolo_menubar_cbcontent" class="form-control"><?php echo $magikpolo_menubar_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikpolo_menubar_cbcontent').summernote({height: 300});
          </script>  

<?php /* ?>
<hr><b class="thead">VERTICAL MENUBAR CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_vmenubar_cb">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="magikpolo_vmenubar_cb" id="input-magikpolo_vmenubar_cb" class="form-control">
                <?php if ($magikpolo_vmenubar_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_vmenubar_cbtitle">Block title:</label>
            <div class="col-sm-10">
            <input name="magikpolo_vmenubar_cbtitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_vmenubar_cbtitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_vmenubar_cbcontent">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_vmenubar_cbcontent" placeholder="Enetr text here" id="input-magikpolo_vmenubar_cbcontent" class="form-control"><?php echo $magikpolo_vmenubar_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikpolo_vmenubar_cbcontent').summernote({height: 300});
          </script>  

<?php */ ?>
<hr><b class="thead">PRODUCT CUSTOM TABS</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_product_ct">Enable custom Tab1:</label>
            <div class="col-sm-10">
              <select name="magikpolo_product_ct" id="input-magikpolo_product_ct" class="form-control">
                <?php if ($magikpolo_product_ct) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_product_cttitle">Tab1 title:</label>
            <div class="col-sm-10">
            <input name="magikpolo_product_cttitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_product_cttitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_product_ctcontent">Tab1 content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_product_ctcontent" placeholder="Enetr text here" id="input-magikpolo_product_ctcontent" class="form-control"><?php echo $magikpolo_product_ctcontent; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-magikpolo_product_ctcontent').summernote({height: 300});
        </script>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_product_ct2">Enable custom Tab2:</label>
            <div class="col-sm-10">
              <select name="magikpolo_product_ct2" id="input-magikpolo_product_ct2" class="form-control">
                <?php if ($magikpolo_product_ct2) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_product_ct2title">Tab2 title:</label>
            <div class="col-sm-10">
            <input name="magikpolo_product_ct2title" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_product_ct2title; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_product_ct2content">Tab2 content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_product_ct2content" placeholder="Enetr text here" id="input-magikpolo_product_ct2content" class="form-control"><?php echo $magikpolo_product_ct2content; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-magikpolo_product_ct2content').summernote({height: 300});
        </script>  
<?php /* ?>
<hr><b class="thead">FOOTER NEWSLETTER</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_newsletter">Enable footer newsletter:</label>
            <div class="col-sm-10">
              <select name="magikpolo_newsletter" id="input-magikpolo_newsletter" class="form-control">
                <?php if ($magikpolo_newsletter) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_newslettercontent">Footer Newsletter content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_newslettercontent" placeholder="Enetr text here" id="input-magikpolo_newslettercontent" class="form-control"><?php echo $magikpolo_newslettercontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikpolo_newslettercontent').summernote({height: 300});
          </script>     
<?php */ ?>
<?php /* ?>
<hr><b class="thead">FOOTER FEATURES BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_footer_fb">Enable footer feature block:</label>
            <div class="col-sm-10">
              <select name="magikpolo_footer_fb" id="input-magikpolo_footer_fb" class="form-control">
                <?php if ($magikpolo_footer_fb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_footer_fbcontent">Footer feature block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_footer_fbcontent" placeholder="Enetr text here" id="input-magikpolo_footer_fbcontent" class="form-control"><?php echo $magikpolo_footer_fbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikpolo_footer_fbcontent').summernote({height: 300});
          </script>  <?php */ ?>

<hr><b class="thead">FOOTER CUSTOM BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_footer_cb">Enable footer custom block:</label>
            <div class="col-sm-10">
              <select name="magikpolo_footer_cb" id="input-magikpolo_footer_cb" class="form-control">
                <?php if ($magikpolo_footer_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_footer_cbcontent">Footer custom block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_footer_cbcontent" placeholder="Enetr text here" id="input-magikpolo_footer_cbcontent" class="form-control"><?php echo $magikpolo_footer_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikpolo_footer_cbcontent').summernote({height: 300});
          </script>      


</div>
<div class="tab-pane" id="colors">
<br>
<b class="heading">THEME COLORS</b><br>
In this section, you can change theme colors. To change the color of element just click inside text field and use color picker.

<hr><b class="thead">MAIN</b><hr>

       <?php if(empty($magikpolo_body_bg)) { $magikpolo_body_bg="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_body_bg">Body background:</label>
            <div class="col-sm-2">
                <select name="magikpolo_body_bg_ed" id="input-magikpolo_body_bg_ed" class="form-control">
                <?php if ($magikpolo_body_bg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_body_bg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_body_bg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

      <?php if(empty($magikpolo_fontcolor)) { $magikpolo_fontcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_fontcolor">Body font color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_fontcolor_ed" id="input-magikpolo_fontcolor_ed" class="form-control">
                <?php if ($magikpolo_fontcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_fontcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_fontcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>
          

      <?php if(empty($magikpolo_linkcolor)) { $magikpolo_linkcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_linkcolor">Link color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_linkcolor_ed" id="input-magikpolo_linkcolor_ed" class="form-control">
                <?php if ($magikpolo_linkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_linkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_linkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>


       <?php if(empty($magikpolo_linkhovercolor)) { $magikpolo_linkhovercolor="#23527c"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_linkhovercolor">Link hover color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_linkhovercolor_ed" id="input-magikpolo_linkhovercolor_ed" class="form-control">
                <?php if ($magikpolo_linkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_linkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_linkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #23527c</div>
          </div>

<hr><b class="thead">HEADER</b><hr>


       <?php if(empty($magikpolo_headerbg)) { $magikpolo_headerbg="#1c95d1"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_headerbg">Header background:</label>
            <div class="col-sm-2">
                <select name="magikpolo_headerbg_ed" id="input-magikpolo_headerbg_ed" class="form-control">
                <?php if ($magikpolo_headerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_headerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_headerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #1c95d1</div>
          </div>

      <?php if(empty($magikpolo_headerlinkcolor)) { $magikpolo_headerlinkcolor="#d1f0ff"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_headerlinkcolor">Header link color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_headerlinkcolor_ed" id="input-magikpolo_headerlinkcolor_ed" class="form-control">
                <?php if ($magikpolo_headerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_headerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_headerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #d1f0ff</div>
          </div>
          

      <?php if(empty($magikpolo_headerlinkhovercolor)) { $magikpolo_headerlinkhovercolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_headerlinkhovercolor">Header link hover color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_headerlinkhovercolor_ed" id="input-magikpolo_headerlinkhovercolor_ed" class="form-control">
                <?php if ($magikpolo_headerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_headerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_headerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($magikpolo_headerclcolor)) { $magikpolo_headerclcolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_headerclcolor">Header currency/language links color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_headerclcolor_ed" id="input-magikpolo_headerclcolor_ed" class="form-control">
                <?php if ($magikpolo_headerclcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_headerclcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_headerclcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

<hr><b class="thead">MAIN MENU</b><hr>


       <?php if(empty($magikpolo_mmbgcolor)) { $magikpolo_mmbgcolor="#41ade2"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_mmbgcolor">Main menu background color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_mmbgcolor_ed" id="input-magikpolo_mmbgcolor_ed" class="form-control">
                <?php if ($magikpolo_mmbgcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_mmbgcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_mmbgcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #41ade2</div>
          </div>


       <?php if(empty($magikpolo_mmlinkscolor)) { $magikpolo_mmlinkscolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_mmlinkscolor">Main menu links color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_mmlinkscolor_ed" id="input-magikpolo_mmlinkscolor_ed" class="form-control">
                <?php if ($magikpolo_mmlinkscolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_mmlinkscolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_mmlinkscolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($magikpolo_mmlinkshovercolor)) { $magikpolo_mmlinkshovercolor="#222222"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_mmlinkshovercolor">Main menu links Hover color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_mmlinkshovercolor_ed" id="input-magikpolo_mmlinkshovercolor_ed" class="form-control">
                <?php if ($magikpolo_mmlinkshovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_mmlinkshovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_mmlinkshovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #222222</div>
          </div>


      <?php if(empty($magikpolo_mmslinkscolor)) { $magikpolo_mmslinkscolor="#222222"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_mmslinkscolor">Main menu sublinks color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_mmslinkscolor_ed" id="input-magikpolo_mmslinkscolor_ed" class="form-control">
                <?php if ($magikpolo_mmslinkscolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_mmslinkscolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_mmslinkscolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #222222</div>
          </div>

      <?php if(empty($magikpolo_mmslinkshovercolor)) { $magikpolo_mmslinkshovercolor="#222222"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_mmslinkshovercolor">Main menu sublinks Hover color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_mmslinkshovercolor_ed" id="input-magikpolo_mmslinkshovercolor_ed" class="form-control">
                <?php if ($magikpolo_mmslinkshovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_mmslinkshovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_mmslinkshovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #222222</div>
          </div>


<hr><b class="thead">BUTTONS</b><hr>

<!-- #0088cc -->
       <?php if(empty($magikpolo_buttoncolor)) { $magikpolo_buttoncolor=""; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_buttoncolor">Button color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_buttoncolor_ed" id="input-magikpolo_buttoncolor_ed" class="form-control">
                <?php if ($magikpolo_buttoncolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_buttoncolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_buttoncolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label"><!-- Default: #0088cc --></div>
          </div>

      <?php if(empty($magikpolo_buttonhovercolor)) { $magikpolo_buttonhovercolor="#37a4d9"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_buttonhovercolor">Button Hover color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_buttonhovercolor_ed" id="input-magikpolo_buttonhovercolor_ed" class="form-control">
                <?php if ($magikpolo_buttonhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_buttonhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_buttonhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #37a4d9</div>
          </div>


      <hr><b class="thead">PRODUCT</b><hr>


       <?php if(empty($magikpolo_pricecolor)) { $magikpolo_pricecolor="#ff0000"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_pricecolor">Price color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_pricecolor_ed" id="input-magikpolo_pricecolor_ed" class="form-control">
                <?php if ($magikpolo_pricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_pricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_pricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #ff0000</div>
          </div>

      <?php if(empty($magikpolo_oldpricecolor)) { $magikpolo_oldpricecolor="#777777"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_oldpricecolor">Old Price color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_oldpricecolor_ed" id="input-magikpolo_oldpricecolor_ed" class="form-control">
                <?php if ($magikpolo_oldpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_oldpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_oldpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #777777</div>
          </div>


      <?php if(empty($magikpolo_newpricecolor)) { $magikpolo_newpricecolor="#ff0000"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_newpricecolor">New Price color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_newpricecolor_ed" id="input-magikpolo_newpricecolor_ed" class="form-control">
                <?php if ($magikpolo_newpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_newpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_newpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #ff0000</div>
          </div>


<hr><b class="thead">FOOTER</b><hr>


       <?php if(empty($magikpolo_footerbg)) { $magikpolo_footerbg="#1c242f"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_footerbg">Footer background:</label>
            <div class="col-sm-2">
                <select name="magikpolo_footerbg_ed" id="input-magikpolo_footerbg_ed" class="form-control">
                <?php if ($magikpolo_footerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_footerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_footerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #1c242f</div>
          </div>

      <?php if(empty($magikpolo_footerlinkcolor)) { $magikpolo_footerlinkcolor="#999999"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_footerlinkcolor">Footer links color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_footerlinkcolor_ed" id="input-magikpolo_footerlinkcolor_ed" class="form-control">
                <?php if ($magikpolo_footerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_footerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_footerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #999999</div>
          </div>
          

      <?php if(empty($magikpolo_footerlinkhovercolor)) { $magikpolo_footerlinkhovercolor="#ffffff"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_footerlinkhovercolor">Footer links hover color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_footerlinkhovercolor_ed" id="input-magikpolo_footerlinkhovercolor_ed" class="form-control">
                <?php if ($magikpolo_footerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_footerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_footerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #ffffff</div>
          </div>


       <?php if(empty($magikpolo_powerbycolor)) { $magikpolo_powerbycolor="#cccccc"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_powerbycolor">Footer powered by text color:</label>
            <div class="col-sm-2">
                <select name="magikpolo_powerbycolor_ed" id="input-magikpolo_powerbycolor_ed" class="form-control">
                <?php if ($magikpolo_powerbycolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikpolo_powerbycolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_powerbycolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #cccccc</div>
          </div>

                 

</div>
<div class="tab-pane" id="fonts">
<br><b>THEME FONTS</b><br>
Choose font from list
<hr>


<div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikpolo_fonttransform">Font transform:</label>
            <div class="col-sm-8">
              <?php $gfonts = "Abel,Abril Fatface,Aclonica,Acme,Actor,Adamina,Aguafina Script,Aladin,Aldrich,Alegreya,Alegreya SC,Alex Brush,Alfa Slab One,Alice,Alike,Alike Angular,Allan,Allerta,Allerta Stencil,Allura,Almendra,Almendra SC,Amaranth,Amatic SC,Amethysta,Andada,Andika,Annie Use Your Telescope,Anonymous Pro,Antic,Anton,Arapey,Arbutus,Architects Daughter,Arial,Arimo,Arizonia,Armata,Artifika,Arvo,Asap,Asset,Astloch,Asul,Atomic Age,Aubrey,Bad Script,Balthazar,Bangers,Basic,Baumans,Belgrano,Bentham,Bevan,Bigshot One,Bilbo,Bilbo Swash Caps,Bitter,Black Ops One,Bonbon,Boogaloo,Bowlby One,Bowlby One SC,Brawler,Bree Serif,Bubblegum Sans,Buda,Buenard,Butcherman,Butterfly Kids,Cabin,Cabin Condensed,Cabin Sketch,Caesar Dressing,Cagliostro,Calligraffitti,Cambo,Candal,Cantarell,Cardo,Carme,Carter One,Caudex,Cedarville Cursive,Ceviche One,Changa One,Chango,Chelsea Market,Cherry Cream Soda,Chewy,Chicle,Chivo,Coda,Coda Caption,Comfortaa,Comic Sans MS,Coming Soon,Concert One,Condiment,Contrail One,Convergence,Cookie,Copse,Corben,Cousine,Coustard,Covered By Your Grace,Crafty Girls,Creepster,Crete Round,Crimson Text,Crushed,Cuprum,Damion,Dancing Script,Dawning of a New Day,Days One,Delius,Delius Swash Caps,Delius Unicase,Devonshire,Didact Gothic,Diplomata,Diplomata SC,Dorsa,Dr Sugiyama,Droid Sans,Droid Sans Mono,Droid Serif,Duru Sans,Dynalight,EB Garamond,Eater,Electrolize,Emblema One,Engagement,Enriqueta,Erica One,Esteban,Euphoria Script,Ewert,Exo,Expletus Sans,Fanwood Text,Fascinate,Fascinate Inline,Federant,Federo,Felipa,Fjord One,Flamenco,Flavors,Fondamento,Fontdiner Swanky,Forum,Francois One,Fredericka the Great,Fresca,Frijole,Fugaz One,Galdeano,Gentium Basic,Gentium Book Basic,Geo,Geostar,Geostar Fill,Germania One,Give You Glory,Glegoo,Gloria Hallelujah,Goblin One,Gochi Hand,Goudy Bookletter 1911,Gravitas One,Gruppo,Gudea,Habibi,Hammersmith One,Handlee,Herr Von Muellerhoff,Holtwood One SC,Homemade Apple,Homenaje,IM Fell DW Pica,IM Fell DW Pica SC,IM Fell Double Pica,IM Fell Double Pica SC,IM Fell English,IM Fell English SC,IM Fell French Canon,IM Fell French Canon SC,IM Fell Great Primer,IM Fell Great Primer SC,Iceberg,Iceland,Inconsolata,Inder,Indie Flower,Inika,Irish Grover,Istok Web,Italianno,Jim Nightshade,Jockey One,Josefin Sans,Josefin Slab,Judson,Julee,Junge,Jura,Just Another Hand,Just Me Again Down Here,Kameron,Kaushan Script,Kelly Slab,Kenia,Knewave,Kotta One,Kranky,Krpolo,Kristi,La Belle Aurore,Lancelot,Lato,League Script,Leckerli One,Lekton,Lemon,Lilita One,Limelight,Linden Hill,Lobster,Lobster Two,Lora,Love Ya Like A Sister,Loved by the King,Luckiest Guy,Lusitana,Lucida Grande,Lustria,Macondo,Macondo Swash Caps,Magra,Maiden Orange,Mako,Marck Script,Marko One,Marmelad,Marvel,Mate,Mate SC,Maven Pro,Meddon,MedievalSharp,Medula One,Megrim,Merienda One,Merriweather,Metamorphous,Metrophobic,Michroma,Miltonian,Miltonian Tattoo,Miniver,Miss Fajardose,Modern Antiqua,Molengo,Monofett,Monoton,Monsieur La Doulaise,Montaga,Montez,Montserrat,Mountains of Christmas,Mr Bedfort,Mr Dafoe,Mr De Haviland,Mrs Saint Delafield,Mrs Sheppards,Muli,Neucha,Neuton,News Cycle,Niconne,Nixie One,Nobile,Norican,Nosifer,Nothing You Could Do,Noticia Text,Nova Cut,Nova Flat,Nova Mono,Nova Oval,Nova Round,Nova Script,Nova Slim,Nova Square,Numans,Nunito,Old Standard TT,Oldenburg,Open Sans,Open Sans Condensed,Orbitron,Original Surfer,Oswald,Over the Rainbow,Overlock,Overlock SC,Ovo,PT Sans,PT Sans Caption,PT Sans Narrow,PT Serif,PT Serif Caption,Pacifico,Parisienne,Passero One,Passion One,Patrick Hand,Patua One,Paytone One,Permanent Marker,Petrona,Philosopher,Piedra,Pinyon Script,Plaster,Play,Playball,Playfair Display,Podkova,Poller One,Poly,Pompiere,Port Lligat Sans,Port Lligat Slab,Prata,Princess Sofia,Prociono,Puritan,Quantico,Quattrocento,Quattrocento Sans,Questrial,Quicksand,Qwigley,Radley,Raleway,Rammetto One,Rancho,Rationale,Redressed,Reenie Beanie,Ribeye,Ribeye Marrow,Righteous,Rochester,Rock Salt,Rokkitt,Ropa Sans,Rosario,Rouge Script,Ruda,Ruge Boogie,Ruluko,Ruslan Display,Ruthie,Sail,Salsa,Sancreek,Sansita One,sans-serif,Sarina,Satisfy,Schoolbell,Shadows Into Light,Shanti,Share,Shojumaru,Short Stack,Sigmar One,Signika,Signika Negative,Sirin Stencil,Six Caps,Slackey,Smokum,Smythe,Sniglet,Snippet,Sofia,Sonsie One,Sorts Mill Goudy,Special Elite,Spicy Rice,Spinnaker,Spirax,Squada One,Stardos Stencil,Stint Ultra Condensed,Stint Ultra Expanded,Stoke,Sue Ellen Francisco,Sunshiney,Supermercado One,Swanky and Moo Moo,Syncopate,Tangerine,Tahoma,Times New Roman,Telex,Tenor Sans,Terminal Dosis,The Girl Next Door,Tienne,Tinos,Titan One,Trade Winds,Trochut,Trykker,Tulpen One,Ubuntu,Ubuntu Condensed,Ubuntu Mono,Ultra,Uncial Antiqua,UnifrakturCook,UnifrakturMaguntia,Unkempt,Unlock,Unna,VT323,Varela,Varela Round,Vast Shadow,Vibur,Vidaloka,Viga,Volkhov,Vollkorn,Voltaire,Verdana,Waiting for the Sunrise,Wallpoet,Walter Turncoat,Wellfleet,Wire One,Yanone Kaffeesatz,Yellowtail,Yeseva One,Yesteryear,Zeyada";
      $magikpolofonts = explode(',', $gfonts);
      ?>

<select name="magikpolo_fonttransform" id="input-magikpolo_fonttransform" class="form-control">
<option value="" <?php if ($magikpolo_fonttransform=='') {?>selected<?php } ?>  ></option>
<?php foreach ($magikpolofonts as $f ){ ?>
<option value="<?php echo $f; ?>" <?php if($magikpolo_fonttransform==$f){echo 'selected';} ?>>
  <?php echo $f; ?>
</option>
<?php } ?>
</select>
            </div>

            <div class="col-sm-2 control-label"></div>
          </div>



</div>
<div class="tab-pane" id="footer">
<br>
<p align="left">Fill in contact details you want to be displayed in your custom footer. If you don't want some of contact details to be displayed, just leave these fields empty.
 </p>
<hr>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_address">Address:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_address" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_address; ?>"/>
              </div>
          </div>

         


          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_phone">Phone:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_phone" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_phone; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_email">Email:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_email" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_email; ?>"/>
              </div>
          </div>
<hr>
<p align="left">Leave url field empty if you don't want to display this social icon in footer.</p>
<hr>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_fb">Facebook:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_fb" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_fb; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_twitter">Twitter:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_twitter" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_twitter; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_gglplus">Google Plus:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_gglplus" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_gglplus; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_rss">RSS:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_rss" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_rss; ?>"/>
              </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_pinterest">Pinterest:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_pinterest" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_pinterest; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_linkedin">Linkedin:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_linkedin" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_linkedin; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikpolo_youtube">You Tube:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikpolo_youtube" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikpolo_youtube; ?>"/>
              </div>
          </div>


                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikpolo_powerby">Powered by text:</label>
                  <div class="col-sm-10">
                    <textarea name="magikpolo_powerby" placeholder="Enetr text here" id="input-magikpolo_powerby" class="form-control"><?php echo $magikpolo_powerby; ?></textarea>
                  </div>
                </div>

 <script type="text/javascript">
$('#input-magikpolo_powerby').summernote({height: 300});
</script> 
             
 
</div>
<?php 
if($config->get('config_maintenance')){?>
<div class="tab-pane" id="maintenance">
<br>
<p>Choose date to display on Maintenance page</p><hr>


                <div class="form-group">
              <label class="control-label col-sm-3" for="input-magikpolo_maintenancedate">Date</label>
              <div class="col-sm-7 input-group datetime">
              <input type="text" name="magikpolo_maintenancedate" value="<?php echo $magikpolo_maintenancedate ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-magikpolo_maintenancedate" class="form-control" />
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
              </span></div>
              </div>


</div>
<?php } ?>

<div class="tab-pane" id="support">
<h1 class="heading">Magikpolo theme for Open Cart 2.0.3.1 </h1><hr>
  <p style="font-weight:bold">Theme designed and developed by <a href="http://themeforest.net/user/magikcommerce">Magikcommerce</a>.</p>
<p>Thank you for buying this theme! Contact us for any question or problems regarding the theme at - support@magikcommerce.com.</p>
<p>If you like theme dont forget to rate theme with stars (you can do it in your Downloads tab, inside your ThemeForest profile. Just click on stars! This little thing helps me to make new theme updates! Thank you!</p>
</div>
</div> 

            
        </form>
      </div>
	</div>
  </div>
</div>



<!-- <script src="build/dependencies/jquery-1.9.1.min.js"></script> -->
  <script src="view/javascript/colorpicker/tinycolor-0.9.15.min.js"></script>
  <script src="view/javascript/colorpicker/pick-a-color-1.2.3.min.js"></script>  
  
  <script type="text/javascript">
  
    $(document).ready(function () {

      $(".pick-a-color").pickAColor({
        showSpectrum            : true,
        showSavedColors         : true,
        saveColorsPerElement    : true,
        fadeMenuToggle          : true,
        showAdvanced            : true,
        showBasicColors         : true,
        showHexInput            : true,
        allowBlank              : true,
        inlineDropdown          : true
      });
      
    });
  
    </script>
  <script type="text/javascript"><!--
    $('.datetime').datetimepicker({
      pickDate: true,
      pickTime: true
    });
//--></script>
<?php echo $footer; ?>