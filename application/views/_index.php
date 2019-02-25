<link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/font-awesome/css/font-awesome.min.css">
<style type="text/css">
	.pilih:before{
		content: "Pilih"
	}
</style>
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php echo $output; ?>

<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<script type="text/javascript">
	$("body").on("click",".pilih",function (e) {
		setTimeout(function(){ window.opener.retrieve(window.location.href)}, 100);
	});
</script>