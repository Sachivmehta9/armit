<?php if ($modules) { ?>

<?php if (isset($this->request->get['route'])) { $route = $this->request->get['route'];  } else {  $route = 'common/home';  } ?>
<?php if($route=='common/home' || $route=='home') { $l='home'; } else { $l="nhome"; } ?>

<?php if($l=='home') { ?> <div> <?php } else { ?> <column id="column-right" class="col-sm-3"> <?php } ?>

  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>

<?php if($l=='home') { ?> </div> <?php } else { ?> </column> <?php } ?>

<?php } ?>
