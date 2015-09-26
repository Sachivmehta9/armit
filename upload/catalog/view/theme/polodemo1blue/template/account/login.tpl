<?php echo $header; ?>
  <!-- <div class="breadcrumbs">
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
 -->
<div class="container-fluid container-color">
  <div class="container">
    <div class="col-sm-12 col-main">
      <div class="active-container">
        <div class="active-text-container">
          <h1 class="activate-text">Activate</h1>
        </div>
        <h3 class="lets-active-text">Let’s activate your device</h3>
      </div>
      <div class="progress-container">
        <div class="checkout-wrap">
          <ul class="checkout-bar">
            <li class="visited first"><a href="#">SIGN UP | LOGIN</a></li>
            <li class="previous visited">SELECT CONNECTION</li>
            <li class="active">ACTIVATE</li>
            <li class="next">myARMIT SETTINGS</li>
          </ul>
        </div>
      </div>
    </div>  
  </div>
</div>
<div class="main-container col2-right-layout">
<div class="main container">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-sm-12 col-main"><?php echo $content_top; ?>
      <!-- <div class="page-title"><h2><?php echo $heading_title; ?></h2></div> -->
      <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-4">
          <div class="well">
           <!--  <h2><?php echo $text_returning_customer; ?></h2>
            <p><strong><?php echo $text_i_am_returning_customer; ?></strong></p> -->
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <button type="submit" class="button login-now-btn colorblack"><span><span><?php //echo $button_login; ?>Login Now</span></span></button><!-- <a href="<?php echo $forgotten; ?>" class="forgot_link"><?php echo $text_forgotten; ?></a> -->
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
              <div class="form-group">
                <div class="input-group  cuatom-input-group">
                  <span class="input-group-addon custom-input-group-addon" for="entered_login"><i class="glyphicon glyphicon-user fonticon-login"></i></span>
                  <input type="text" name="email" value="<?php echo $email; ?>" placeholder="Username   <?php echo $entry_email; ?>" id="input-email" class="form-control custom-form-control margin0 field loginfeilds" />
                </div>
                <span class="worry-msg">Don't worry. We do not spam :)</span>
              </div>
              <div class="form-group">
                <div class="input-group  cuatom-input-group">
                  <span class="input-group-addon custom-input-group-addon"><i class="fa fa-lock fonticonpass"></i></span>
                  <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control custom-form-control margin0 field loginfeilds" />
                </div>
              </div>
              <div class="form-group text-center">
                <input type="checkbox" name="Rememberme" class="checkrember"> <span class="rememberme remembertext">Remember me on this computer</span>
              </div>
              <div class="form-group login text-center">
            <button type="submit" class="button letsgo btn-lg btn-circle submit-form-contact colorblack"><i class="glyphicon Glyphicons Halflings"></i>Let's Go</button>
            </div>
             <!--  <input type="submit" value="<?php //echo $button_login; ?>" class="btn btn-primary" /> -->
            </form>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
  <!--             <h2><?php //echo $text_new_customer; ?></h2>
              <p><strong><?php //echo $text_register; ?></strong></p>
              <p><?php //echo $text_register_account; ?></p> -->
              <a href="<?php echo $register; ?>">
                <button class="button login-now-btn"><span><span><?php //echo $button_continue; ?>Create Account</span></span></button>
              </a>
              <div class="form-group">
                <span class="worry-msg create-text">Create your ArmIt account to activate your device</span>
              </div>                     
              <div class="form-group login text-center">
            <button onclick="window.location='http://jove1.armit.co/store/index.php?route=account/register';" type="submit" class="button letsgo btn-lg btn-circle submit-form-contact colorblack"><i class="glyphicon Glyphicons Halflings"></i>Create</button>
            </div>
            </div>
        </div>
        <div class="col-sm-2"></div>
      </div>
      </div>
    <?php //echo $column_right; ?></div>
    </div><!-- main container -->
    <?php //echo $content_bottom; ?>
</div>
<script type="text/javascript">
 $('#column-right').attr('class','col-sm-3 col-xs-12 sidebar');
</script>
<?php echo $footer; ?>