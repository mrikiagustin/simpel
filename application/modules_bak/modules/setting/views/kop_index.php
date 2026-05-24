<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
  <div class="col-sm-10">
    <form method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">Line 1</label>
        <input type="text" name="line_1" class="form-control" id="exampleInputEmail1" placeholder="Line 1"  value="<?php echo $data->line_1?>">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Line 2</label>
        <input type="text" name="line_2" class="form-control" id="exampleInputEmail2" placeholder="Line 2" value="<?php echo $data->line_2?>">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Line 3</label>
        <input type="text" name="line_3" class="form-control" id="exampleInputEmail3" placeholder="Line 3" value="<?php echo $data->line_3?>">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Line 4</label>
        <input type="text" name="line_4" class="form-control" id="exampleInputEmail4" placeholder="Line 4" value="<?php echo $data->line_4?>">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Line 5</label>
        <input type="text" name="line_5" class="form-control" id="exampleInputEmail5" placeholder="Line 5" value="<?php echo $data->line_5?>">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Line 6</label>
        <input type="text" name="line_6" class="form-control" id="exampleInputEmail6" placeholder="Line 6" value="<?php echo $data->line_6?>">
      </div>

      <button type="submit" class="btn btn-default">Simpan</button>
    </form>
  </div>
</div>
<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
