<?php //echo "<pre>";print_r($data2);die();?>
<style>
  .isi {font-size: 8px;}
  .meta {font-size: 8px;}
  p {font-size: 12px;}
</style>

<!-- <p>
	Halaman / page : <b>1</b> dari/of  <b>2</b>
</p> -->

<!-- <table border="1" cellpadding="1">
	<tr>
		<td style="font-size:9px;text-align:center;width:55%">
			<b>LABORATORIUM PENGUJIAN MUTU HASIL PERTANIAN<br>
			DINAS KELAUTAN, PERTANIAN DAN KETAHANAN PANGAN <br>
			PROVINSI DKI JAKARTA</b>

		</td>
		<td style="width:5%"></td>
		<td style="width:40%">
			<table>
				<tr>
					<td style="width:50%">No. Bagian </td>
					<td style="width:5%">:</td>
					<td style="width:45%">5.8</td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td style="width:50%">No. Identitas </td>
					<td style="width:5%">:</td>
					<td style="width:45%">DF/MA/026</td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td style="width:50%">Terbitan/Revisi  </td>
					<td style="width:5%">:</td>
					<td style="width:45%">2/2</td>
				</tr>
			</table>
			<hr>

			<table>
				<tr>
					<td style="width:50%">Tanggal Terbit    </td>
					<td style="width:5%">:</td>
					<td style="width:45%">25/3/2014</td>
				</tr>
			</table>
			<hr>

			<table>
				<tr>
					<td style="width:50%">Tanggal Revisi  </td>
					<td style="width:5%">:</td>
					<td style="width:45%">1/10/2015</td>
				</tr>
			</table>
			<hr>

			<table>
				<tr>
					<td style="width:50%">Lembar ke </td>
					<td style="width:5%">:</td>
					<td style="width:45%">2 dari 2</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="3" style="font-size:11;"><b> DAFTAR FORMULIR </b></td>
	</tr>
</table> -->
<!-- <br>
<br> -->
<!-- Nomor Seri	: 150107
<br>
<i>Serial Number</i> -->
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
		<td style="width:10%">Satuan
			<br><i>Unit</i>
		</td>
		<td style="width:40%">
			Metode/Teknik Pengujian
			<br><i>Analitycal  Methods </i>
		</td>
		<td style="width:20%">
			Keterangan
			<br><i>Description</i>
		</td>

	</tr>
<?php $no=1;foreach($data as $x  => $v):?>
	<tr>
		<td><?php echo $no++?></td>
		<td><?php echo $v->parameter_pengujian?></td>
		<td><?php echo $v->hasil?></td>
		<td><?php echo $v->satuan_hasil?></td>
		<td><?php echo $v->metode?></td>
		<td><?php echo $v->keterangan_hasil?></td>
	</tr>
<?php endforeach;?>
</table>
<br>
<br>
<br>
<table cellpadding="1" valign="center">
	<tr>
		<td style="width:6%"></td><td style="width:4%;">
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
		<td style="width:6%"></td><td style="width:4%;padding-top:10px;">
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
			Jakarta, <?php echo tgl_indo(date("Y-m-d"))?>
			<span style="font-size:12px;">
				<br>Kepala Pusat
	<br>Promosi Dan Sertifikasi Hasil Pertanian
	<br>Manajemen Puncak
	<br><i>Top Management</i>
		<br><br><br>
		.................................................
			</span>


		</td>
	</tr>
</table>

<p style="font-size:10px">
	Laporan Hasil Pengujian ini dilarang diperbanyak kecuali atas persetujuan tertulis dari Laboratorium Pusat Promosi dan Sertifikasi Hasil Pertanian
<br><i>This report shall not be reproduced without the written approval from Laboratory of Pusat Promosi dan Sertifikasi Hasil Pertanian</i>
</p>
