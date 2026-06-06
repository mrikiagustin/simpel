<?php //echo "<pre>";print_r($data2);die();

$d = $data[0];
?>
<style>
  .isi {font-size: 8px;}
  .meta {font-size: 8px;}
  p {font-size: 10px;}
</style>

<p style="text-align:right"><?php echo $kode_dokumen; //"DF/MA/-"//?></p>
<table cellpadding="5">
	<tr>
		<td style="width:60%"></td>
		<td style="width:40%;border: 1px solid black;padding:5px">
			<p >
				Kepada Yth.
				<br><i>To</i>
				<br>
				<?php
					$this->db->where("permohonan_detail.nomor_contoh",$data[0]->nomor_contoh);
					$this->db->join("permohonan p","p.id_permohonan = permohonan_detail.id_permohonan");
					$this->db->select("p.*");
					$zxc = $this->db->get("permohonan_detail")->row();
					echo $zxc->instansi_perusahaan."<br>".$zxc->alamat;
				?>
			</p>
		</td>
	</tr>
</table>

<div style="text-align:center">
  <h3> <u> LAPORAN HASIL UJI </u>
		<br>
		<i> TEST REPORT </i>
	</h3>
	<table>
		<tr>
			<td style="width:37%"></td>
			<td style="width:20%">
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
			</td>
			<td style="width:30%"></td>
		</tr>
	</table>

</div>
<table>
	<tr>
		<td style="width:5%"></td>
		<td style="width:90%">
			<table width="100%" style="margin-left:20px">
				<tr>
					<td style="width:35%">Contoh<br><i>Sample</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo $d->varietas?></td>
				</tr>

				<tr>
					<td style="width:35%">Tanggal Penerimaan Contoh<br><i>Date of sample</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo tgl_indo($d->tanggal_masuk)?></td>
				</tr>
				
				<tr>
					<td style="width:35%">Nomor Contoh<br><i>Sample COde</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo $d->nomor_contoh?></td>
				</tr>

				<tr>
					<td style="width:35%">Kondisi Contoh<br><i>Condition of sample</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo $d->kondisi?>  <?php if($d->kondisi != "Baik") : ?>( <?php echo $d->ket_kondisi?> ) <?php endif;?></td>
				</tr>

				<tr>
					<td style="width:35%">Kemasan Contoh<br><i>Packaging of sample</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo $d->kemasan?></td>
				</tr>

				<tr>
					<td style="width:35%">Jenis Pengujian<br><i>Type of analysis</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo "RESIDU PESTISIDA"//$d->laporan?></td>
				</tr>

				<tr>
					<td style="width:35%">Tanggal Selesai Pengujian<br><i>Date of finished analysis</i><br></td>
					<td style="width:2%">:</td>
					<td style="width:63%"><?php echo tgl_indo($d->tanggal_pengambilan)?></td>
				</tr>
			</table>
		</td>
		<td style="width:5%"></td>
	</tr>
</table>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<?php //if($header == "1"):?>
<?php if(0):?>
<p style="font-size:10px;text-align:justify">
	Laporan Hasil Pengujian ini dilarang diperbanyak kecuali atas persetujuan tertulis dari Laboratorium Pusat Promosi dan Sertifikasi Hasil Pertanian
<br><i>This report shall not be reproduced without the written approval from Laboratory of Pusat Promosi dan Sertifikasi Hasil Pertanian</i>
</p>
<?php endif;?>
