<?php //echo "<pre>";print_r($data2);die();
  $setting = $this->db->get("setting_lhp")->row();
?>
<style>
  .isi {font-size: 8px;}
  .meta {font-size: 8px;}
  p {font-size: 12px;}
</style>


<table style="width:250px;text-align:left">
  <tr>
    <td>Nomor Seri</td>
    <td style="width:15px;">:</td>
    <td><?php echo $data2 != null && $data2->nomor_seri != null ? $data2->nomor_seri : "" ?></td>
  </tr>
  <tr>
    <td><i>Serial Number</i></td>
    <td></td>
    <td></td>
  </tr>
</table>

<div style="text-align:center">
  	<b style="font-size:14px">HASIL UJI</b>
		<br>
		<i style="font-size:12px">Test Result</i>
</div>
<br>
<table border="1" cellpadding="2" style="text-align:center;font-size:10px;">
	<tr>
		<td style="width:5%">No.</td>
		<td style="width:20%">Parameter
			<br><i>Parameter</i>
		</td>
		<td style="width:15%">
			Hasil
			<br><i>Result</i>
		</td>
		<td style="width:10%">MQL
			<br>
		</td>
		<td style="width:30%">
			Metode/Teknik Pengujian
			<br><i>Analitycal  Methods </i>
		</td>
		<td style="width:20%">
			BMR
			<br>
		</td>
	</tr>
<?php $no=1;foreach($data as $x  => $v):?>
  <?php if($no >= $start && $no < $end):?>
  <tr>
		<td><?php echo $no?></td>
		<td style="text-align:left"><?php echo $v->caption == "" ? $v->parameter_pengujian : $v->caption?></td>
		<td><?php echo $v->hasil?></td>
		<td><?php echo $v->mql?></td>
		<td><?php echo $v->metode?></td>
		<td><?php echo $v->bmr?></td>
	</tr>
  <?php endif;$no++?>
<?php endforeach;?>
</table>




<?php if($ttd == true):?>

<br><br>

<table>
	<tr>
		<td style="width:10%" >Unit</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">ppm = mg/kg</td>
  </tr>

  <tr>
    <td style="width:10%" >ttd</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">Kurang dari Method Quantitaion Limit, Namun perlu diperhatikan pestisida yang ditetapkan sebagai "tidak terdeteksi" pada contoh, istilah ini menandakan bahwa hasil yang kurang dari Method Detection Limit (1/10 sampai 1/2 dari MQL).</td>
  </tr>

  <tr>
		<td style="width:10%" >MQL</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">Method Quantitation Limit</td>
  </tr>

  <tr>
		<td style="width:10%" >BMR</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">Batas Maksimum Residu</td>
  </tr>
</table>

<br><br>

<?php if($data_detail->num_rows() > 0): $my_row = $data_detail->row();?>
<?php if($my_row->g1 != 0 || $my_row->g2 != 0 || $my_row->g3 != 0 || $my_row->l1 != 0 || $my_row->l2 != 0):?>
<table>
	<tr>
		<td colspan='3'>Metode Analitikal </td>
  </tr>

	<?php if($my_row->g1 == 1) : ?>
  <tr>
    <td style="width:10%" >G1</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">GC-ECD/FPD</td>
  </tr>
	<?php endif;?>

	<?php if($my_row->g2 == 1) : ?>
	<tr>
    <td style="width:10%" >G2</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">GC-ECD/FID/NPD</td>
  </tr>
	<?php endif;?>

	<?php if($my_row->g3 == 1) : ?>
	<tr>
    <td style="width:10%" >G3</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">GC-MS</td>
  </tr>
	<?php endif;?>

	<?php if($my_row->l1 == 1) : ?>
	<tr>
    <td style="width:10%" >L1</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">LC-FLD</td>
  </tr>
	<?php endif;?>

	<?php if($my_row->l2 == 1) : ?>
	<tr>
    <td style="width:10%" >L2</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">LC-MS/MS(MRM)</td>
  </tr>
	<?php endif;?>
</table>

<?php endif;endif;?>

<br>
<table valign="center" border="1" cellpadding="5">
	<tr>
		<td style="width:50%;font-size:10px">
			<b>Hasil Pengujian hanya berlaku untuk contoh yang diuji
			<br><i>The test result is only valid for the sample analyzed</i>
      </b>
		</td>
	</tr>
</table>
<br>
<br>
<table>
  <?php
    $tg = date("Y-m-d");
    if($tgl != ""){
      $tg = str_replace(".","-",$tgl);
      $tmp_tg = explode("-",$tg);
      $tg = implode("-",array_reverse($tmp_tg));
    }
     ?>
	<tr>
		<td style="width:40%"></td>
		<td style="width:60%;text-align:center;">
			Jakarta, <?php echo tgl_indo($tg)?><br>
			<span style="font-size:12px;">
				<?php echo $setting->lembaga?>
		<br><br><br>
		<?php echo $setting->pejabat?>
			</span>


		</td>
	</tr>
</table>

<?php //if($header == "1"):?>
<?php if(0):?>
<p style="font-size:10px;text-align:justify">
	Laporan Hasil Pengujian ini dilarang diperbanyak kecuali atas persetujuan tertulis dari Laboratorium Pusat Promosi dan Sertifikasi Hasil Pertanian
<br><i>This report shall not be reproduced without the written approval from Laboratory of Pusat Promosi dan Sertifikasi Hasil Pertanian</i>
</p>
<?php endif;?>

<?php endif;?>
