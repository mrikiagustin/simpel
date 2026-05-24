<?php //echo "<pre>";print_r($data2);die();
  $setting = $this->db->get("setting_lhp")->row();

  //$data_detail = $this->db->where("prim",$data)->get("hasil_lbm")->row();
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
<table border="1" cellpadding="2" style="text-align:center">
	<tr>
		<td style="width:5%">No.</td>
		<td style="width:15%">Parameter
			<br><i>Parameter</i>
		</td>
		<td style="width:10%">
			Hasil
			<br><i>Result</i>
		</td>
		<td style="width:10%">LoD
			<br>
		</td>
    <td style="width:10%">LoQ
			<br>
		</td>
    <td style="width:10%">Satuan
			<br><i>Unit</i>
		</td>
		<td style="width:40%">
			Metode/Teknik Pengujian
			<br><i>Analitycal  Methods </i>
		</td>

	</tr>
<?php $no=1;foreach($data as $x  => $v):?>
  <?php if($no >= $start && $no < $end):?>
  <tr>
		<td><?php echo $no?></td>
		<td><?php echo $v->caption == "" ? $v->parameter_pengujian : $v->caption?></td>
		<td><?php echo $v->hasil?></td>
		<td><?php echo $v->lod?></td>
    <td><?php echo $v->loq?></td>
    <td><?php echo $v->satuan_hasil?></td>
		<td><?php echo $v->metode?></td>
	</tr>
  <?php endif;$no++?>
<?php endforeach;?>
</table>




<?php if($ttd == true):?>

<br><br>

<table>
  <tr>
    <th colspan="3">Catatan</th>
  </tr>

  <tr>
    <td style="width:10%" >ttd</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">tidak terdeteksi</td>
  </tr>

  <tr>
		<td style="width:10%" >LoD</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">Limit of Detection (Limit Deteksi)</td>
  </tr>

  <tr>
		<td style="width:10%" >LoQ</td>
    <td style="width:5%"> : </td>
    <td style="width:85%">Limit of Quantitation (Limit Kuantitasi)</td>
  </tr>

  <tr>
    <td colspan="3"><?php echo isset($data_detail->catatan) ? $data_detail->catatan : ""?></td>
  </tr>
</table>

<br>
<br>
<br>
<table cellpadding="1" valign="center">
	<tr>
    <td style="width:4%;">
			<table border="1">
				<tr>
          <?php if(isset($data2->ceklis_1)){?>
            <?php if($data2->ceklis_1 == 1){?>

					<td><img src="assets/check.png" alt="test alt attribute" width="20" height="20" border="0" /></td>
          <?php }else{?>
            <td><img src="assets/check_blank.png" alt="test alt attribute" width="20" height="20" border="0" /></td>
            <?php };?>
          <?php }else{?>
          <td><img src="assets/check_blank.png" alt="test alt attribute" width="20" height="20" border="0" /></td>
          <?php };?>
				</tr>
			</table>
		</td>
		<td style="width:90%;font-size:10px">
			Hasil Pengujian hanya berlaku untuk contoh yang diuji
			<br><i>The test result is only valid for the sample analyzed</i>
			<br>
		</td>
	</tr>

	<tr>
		<td style="width:4%;padding-top:10px;">
			<table border="1">
				<tr>
          <?php if(isset($data2->ceklis_2)){?>
            <?php if($data2->ceklis_2 == 1){?>

					<td><img src="assets/check.png" alt="test alt attribute" width="20" height="20" border="0"  /></td>
          <?php }else{?>
            <td><img src="assets/check_blank.png" alt="test alt attribute" width="20" height="20" border="0"  /></td>
            <?php };?>
          <?php }else{?>
          <td><img src="assets/check_blank.png" alt="test alt attribute" width="20" height="20" border="0"  /></td>
          <?php };?>
				</tr>
			</table>
		</td>
		<td style="width:90%;font-size:10px">
			Hasil Pengujian berlaku untuk kelompok (Lot)
			<br><i>The test result is only valid for the group sample taken</i>
		</td>
	</tr>
</table>
<br>
<br>
<table>
	<tr>
		<td style="width:40%"></td>
		<td style="width:60%;text-align:center;">
			Jakarta, <?php echo tgl_indo(date("Y-m-d"))?><br>
			<span style="font-size:12px;">
				<?php echo $setting->lembaga?>
		<br><br><br>
		<?php echo $setting->pejabat?>
			</span>


		</td>
	</tr>
</table>

<p style="font-size:10xp">
	Laporan Hasil Pengujian ini dilarang diperbanyak kecuali atas persetujuan tertulis dari Manajemen Puncak Laboratorium Pusat Pengujian Mutu Dan Promosi Hasil Pertanian
<br><i>This report shall not be reproduced without the written approval from Laboratory Top Management Laboratorium Pusat Pengujian Mutu Dan Promosi Hasil Pertanian</i>
</p>

<?php endif;?>
