<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
  <div class="col-sm-10">
    <form method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">TTD Lembaga</label>
        <input type="text" name="lembaga" class="form-control" id="exampleInputEmail1" placeholder="TTD Lembaga"  value="<?php echo $data->lembaga?>">
      </div>

			<div class="form-group">
        <label for="exampleInputEmail1">TTD Pejabat</label>
        <input type="text" name="pejabat" class="form-control" id="exampleInputEmail1" placeholder="TTD Pejabat"  value="<?php echo $data->pejabat?>">
      </div>

      <button type="submit" class="btn btn-default">Simpan</button>
    </form>
  </div>
</div>
<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
