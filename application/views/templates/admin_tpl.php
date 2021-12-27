<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo isset($title) && !empty($title) ? $title : 'missing title'?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="icon" href="<?php echo base_url('assets')?>/jakarta.png" type="image/png">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/Ionicons/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/dist/css/skins/_all-skins.min.css">

  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/select2/dist/css/select2.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="<?php echo base_url()?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>SIMPEL</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>SIMPEL</b></span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Tasks: style can be found in dropdown.less -->
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="<?php echo base_url()?>login/logout" >
              <span class="hidden-xs">Logout</span>
            </a>

          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- search form -->
      <!-- <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                  <i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form> -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">NAVIGATION</li>
        <?php
          $module = $this->router->fetch_module();
          $class = $this->router->fetch_class();

          $this->db->order_by("urut");
          if($this->session->userdata('login_info')->id_role != "1"){
            $this->db->join("menu_access","menu_access.id_menu = menu.id_menu");
            $this->db->where("menu_access.id_role",$this->session->userdata('login_info')->id_role);
          }
          $menu  = $this->db->get_where("menu", array("parent_menu" => 0));
        ?>

        <?php foreach($menu->result() as $x => $v):?>

          <!-- get child menu -->
          <?php
            $this->db->order_by("urut");
            if($this->session->userdata('login_info')->id_role != "1"){
              $this->db->join("menu_access","menu_access.id_menu = menu.id_menu");
              $this->db->where("menu_access.id_role",$this->session->userdata('login_info')->id_role);
            }
            $child_menu = $this->db->get_where("menu", array("parent_menu" => $v->id_menu));
            //var_dump($child_menu->result());
          ?>

          <li class="<?php echo $child_menu->num_rows() > 0 ? 'treeview' : ''?> <?php echo $module == $v->class ? "active" : ""?>">
            <a href="<?php echo $v->base_url == 1 ? base_url() : '';echo $v->url?>">
              <i class="fa fa-circle-o"></i> <span><?php echo $v->nama_menu?></span>
              <?php if($child_menu->num_rows() > 0):?>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
              <?php endif?>
            </a>

            <?php if($child_menu->num_rows() > 0):?>
              <ul class="treeview-menu">
                <?php foreach($child_menu->result() as $a => $b ):?>
                  <li class="<?php echo $class == $b->class ? "active" : ""?>"><a href="<?php echo $b->base_url == 1 ? base_url() : '';echo $b->url?>"><i class="fa fa-circle-o"></i> <?php echo $b->nama_menu?></a></li>
                <?php endforeach;?>

              </ul>
            <?php endif?>
          </li>
        <?php endforeach;?>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?php echo isset($title) && !empty($title) ? $title : 'missing title'?>
        <small><?php echo isset($title2) && !empty($title2) ? $title2 : ''?></small>
      </h1>
      <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
      <?php
          if($zxc == 1){
              $this->load->view($content);
          }else{
              echo $c;
          }
      ?>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <!-- <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved. -->
  </footer>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url('assets/adminlte')?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url('assets/adminlte')?>/dist/js/adminlte.min.js"></script>

<!-- Select2 -->
<script src="<?php echo base_url('assets/adminlte')?>/bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
</html>
