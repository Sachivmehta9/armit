<?php echo $header; ?>

    
    <div id="magik-slideshow" class="magik-slideshow">
    <div class="container">
    <div id="content" class="row">
        <div class="col-lg-8 col-sm-12 col-md-8 wow bounceInUp animated">
        <?php echo $column_left; ?>
        </div>
        
        <aside class="col-xs-12 col-sm-12 col-md-4 wow bounceInUp animated">
        <?php echo $column_right; ?>
        </aside>

    </div>
    </div>
    </div>
    
        <?php echo $content_top; ?>

        <?php echo $content_bottom; ?>
    

<script type="text/javascript">
$('#column-left').attr('class','');
$('#column-right').attr('class','');
</script>
<?php echo $footer; ?>