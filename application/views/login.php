<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIMPEL | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
</head>
<style type="text/css">
  @keyframes animatedBackground {
    from {
      background-position: 0 0;
    }
  /*use negative width if you want it to flow right to left else and positive for left to right*/
    to {
      background-position: -10000px 0;
    }
  }

	body {
	  background-image: url(assets/merge2.png)!important;
    background-repeat: repeat;
	  -webkit-background-size: cover;
	  -moz-background-size: cover;
	  -o-background-size: cover;
	  background-size: cover !important;
	  padding-top: 10%;
    animation: animatedBackground 1000s linear infinite;
	}

	.login-box {
    position: absolute; 
    left: 0; 
    right: 0; 
    margin-left: auto; 
    margin-right: auto;
	   margin:auto;
	   border: 5px #004da3 solid;
     width:450px;
	}

  .wallpaper{
    background: red;
    height:100%;
    width:100%;
    position: absolute;
    z-index:1;
    top:0;
  }

  .wallpaper-1{
    background-image: url(assets/wa1.jpeg) !important;
    height:100%;
    width:25%;
  }

  .wallpaper-2{
    background-image: url(assets/wa2.jpeg) !important;
    height:100%;
    width:25%;
  }

  .wallpaper-3{
    background-image: url(assets/wa3.jpeg) !important;
    height:100%;
    width:25%;
  }

  .wallpaper-4{
    background-image: url(assets/wa4.jpeg) !important;
    height:100%;
    width:25%;
  }

  .wp{
    display:inline-block;
    -webkit-background-size: contain;
	  -moz-background-size: contain;
	  -o-background-size: contain;
	  background-size: contain !important;
  }

  .wp-con {
    height:100%;
    width:100%;
  }
</style>

<body class="hold-transition login-page">
  <!-- <div class="wallpaper">
    <div class="wp-con">
      <div class="wp wallpaper-1"></div>
      <div class="wp wallpaper-2"></div>
      <div class="wp wallpaper-3"></div>
      <div class="wp wallpaper-4"></div>
    </div>
  </div> -->
  <div class="login-box">
    <!-- /.login-logo -->
    <div class="login-box-body" style="background: white">
      <div class="row">
        <div class="col-sm-4" style="padding: 10px;">
          <img src="<?php echo base_url()?>/assets/jakarta.png" style="width: 100%;">
      </div>
      <div class="col-sm-8" style="text-align: left;padding: 0px 0px;">
          <span class="" style="color: black;font-weight: 600;font-size: 25px;text-align: left;">Sistem Informasi Manajemen Pengujian Laboratorium (SIMPEL) </span>
          <br>
          <span class="" style="color: black;font-weight: 600;">Pusat Promosi dan Sertifikasi Hasil Pertanian
            Dinas Ketahananan Pangan, Kelautan dan Pertanian
            Provinsi DKI Jakarta
          </span>
          <br><br>
      </div>
    </div>


      <form action="<?php echo base_url();?>login" method="post">
        <div class="form-group has-feedback">
          <input type="text" class="form-control" placeholder="Username" name="username">
          <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" placeholder="Password" name="password">
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col-xs-4">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

    </div>
    <!-- /.login-box-body -->
  </div>

  <div class="modal modal-danger fade" id="modal-danger">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">Error</h4>
        </div>
        <div class="modal-body" id="danger_body">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->
  <!-- /.login-box -->

  <!-- jQuery 3 -->
  <script src="<?php echo base_url();?>assets/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?php echo base_url();?>assets/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- iCheck -->
  <script src="<?php echo base_url();?>assets/adminlte/plugins/iCheck/icheck.min.js"></script>
  <script>
    $(function () {
      $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' /* optional */
      });

      <?php if($this->session->flashdata("error") != ""):?>
        $("#danger_body").html("<?php echo $this->session->flashdata("error")?>");
        $("#modal-danger").modal("show");
      <?php endif;?>
    });
  </script>
</body>
</html>
