<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
  <div class="col-sm-10">
    <form method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">Kode Laporan</label>
        <input type="text" name="kode_laporan" class="form-control" id="exampleInputEmail1" placeholder="Kode Laporan"  value="<?php echo $data->kode_laporan?>">
      </div>

			<div class="form-group">
        <label for="exampleInputEmail1">Contoh Diserahkan ke </label>
        <input type="text" name="contoh_diserahkan_ke" class="form-control" id="exampleInputEmail1" placeholder="Contoh Diserahkan ke "  value="<?php echo $data->contoh_diserahkan_ke?>">
      </div>

			<div class="form-group">
        <label for="exampleInputEmail1">Penerima Contoh </label>
        <input type="text" name="penerima_contoh" class="form-control" id="exampleInputEmail1" placeholder="Penerima Contoh "  value="<?php echo $data->penerima_contoh?>">
      </div>

      <button type="submit" class="btn btn-default">Simpan</button>
    </form>
  </div>
</div>
<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
