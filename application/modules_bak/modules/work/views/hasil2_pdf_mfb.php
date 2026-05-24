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
		<td rowspan="2" style="width:5%">No.</td>
		<td rowspan="2" style="width:25%">karakteristik
			<br><i>Characteristics</i>
		</td>
    <td rowspan="2" style="width:15%">
			Satuan
			<br><i>Unit</i>
		</td>
		<td rowspan="2" style="width:15%">
			Hasil
			<br><i>Result</i>
		</td>

    <td colspan="2" style="width:20%">
			Persyaratan*
			<br><i>Requirements*</i>
		</td>

		<td rowspan="2" style="width:20%">
			Metode
			<br><i>Method </i>
		</td>
	</tr>

  <tr>
    <td>Medium</td>
    <td>Premium</td>
  </tr>
<?php $no=1;foreach($data as $x  => $v):?>
  <?php if($no >= $start && $no < $end):?>
	<tr>
		<td><?php echo $no?></td>
		<td style="text-align:left"><?php echo $v->caption == "" ? $v->parameter_pengujian : $v->caption?></td>
    <td><?php echo $v->satuan_hasil?></td>
		<td><?php echo $v->hasil?></td>
    <td><?php echo $v->medium?></td>
    <td><?php echo $v->premium?></td>
		<td><?php echo $v->metode?></td>
	</tr>
  <?php endif;$no++?>
<?php endforeach;?>
</table>




<?php if($ttd == true):?>

<br><br>

<table>
  <tr>
    <th colspan="3">*Berdasarkan Permentan Nomor 31/Permentan/PP.130/8/2017 tentang Kelas Mutu Beras</th>
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

<?php if($header == "1"):?>
<p style="font-size:10px;text-align:justify">
	Laporan Hasil Pengujian ini dilarang diperbanyak kecuali atas persetujuan tertulis dari Laboratorium Pusat Promosi dan Sertifikasi Hasil Pertanian
<br><i>This report shall not be reproduced without the written approval from Laboratory of Pusat Promosi dan Sertifikasi Hasil Pertanian</i>
</p>
<?php endif;?>

<?php endif;?>
