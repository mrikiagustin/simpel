<?php //echo "<pre>";print_r($data);die();

?>
<style>
  .isi {font-size: 10px;}
  .meta {font-size: 10px;}
  p {font-size: 10px;}
</style>

<?php if(isset($fp) && $fp == true):?>

<span style="text-align:center">
  <h2> PERMOHONAN PENGUJIAN </h2>
  <p style="text-align:right"><?php echo $setting->kode_laporan?></p>
  <p style="text-align:left">Saya yang bertanda tangan di bawah ini</p>
</span>
<table class="meta">
  <tr>
    <td style="width:180px">Nama</td>
    <td style="width:15px">:</td>
    <td><?php echo $data->res->nama?></td>
  </tr>
  <tr>
    <td style="width:180px">Instansi / Perusahaan</td>
    <td style="width:15px">:</td>
    <td><?php echo $data->res->instansi_perusahaan?></td>
  </tr>



  <tr>
    <td style="width:180px">Alamat</td>
    <td style="width:15px">:</td>
    <td><?php echo $data->res->alamat?></td>
  </tr>
  <tr>
    <td style="width:180px">Telepon / Fax</td>
    <td style="width:15px">:</td>
    <td><?php echo $data->res->telepon_fax?></td>
  </tr>
  <tr>
    <td style="width:180px">Kontak Person</td>
    <td style="width:15px">:</td>
    <td><?php echo $data->res->kontak_person?></td>
  </tr>
  <tr>
    <td style="width:180px">PPC / Tgl Pengambilan</td>
    <td style="width:15px">:</td>
    <td><?php echo tgl_indo($data->res->tanggal_masuk)?></td>
  </tr>
  <tr>
    <td style="width:180px">Jenis Pengantaran</td>
    <td style="width:15px">:</td>
    <td><?php echo $data->res->jenis_pengantaran?></td>
  </tr>
</table>
<p>Bersama ini mengajukan permohonan pengujian seagai berikut : </p>

<?php endif;?>

<table border="1" cellpadding="2" class="isi" style="width:100%">
  <tr>
    <th style="text-align:center;width:5%">No</th>
    <th style="text-align:center;width:8%">Komoditas</th>
    <th style="text-align:center;width:14%">Jenis / Varietas</th>
    <th style="text-align:center;width:8%">Jumlah</th>
    <th style="text-align:center;width:8%">Kemasan</th>
    <th style="text-align:center;width:10%">Kondisi</th>
    <th style="text-align:center;width:18%">Parameter Pengujian</th>
    <th style="text-align:center;width:18%">Metode</th>
    <th style="text-align:center;width:12%">Keterangan</th>
  </tr>
	<?php $is_first = false;?>
  <?php $no = 1;$no2 = 1;foreach ($data->mdetail as $k => $v):
        $rowspan = count($v->mpengujian) == 0 ? 1 : count($v->mpengujian);
  ?>
	<?php if($no >= $start && $no <= $end):?>

  <tr>
    <td style="text-align:center;" rowspan="<?php echo $rowspan?>"><?php echo $no2?> </td>
    <td rowspan="<?php echo $rowspan?>"><?php echo $v->komoditas?></td>
    <td rowspan="<?php echo $rowspan?>"><?php echo $v->varietas?></td>
    <td rowspan="<?php echo $rowspan?>"><?php echo $v->jumlah?> <?php echo $v->satuan?></td>
    <td rowspan="<?php echo $rowspan?>"><?php echo $v->kemasan?></td>
    <td rowspan="<?php echo $rowspan?>"><?php echo $v->kondisi?></td>
    <td><?php echo isset($v->mpengujian[0]->caption) && $v->mpengujian[0]->caption != '' ? $v->mpengujian[0]->caption :  (isset($v->mpengujian[0]->parameter_pengujian) ? $v->mpengujian[0]->parameter_pengujian : "-")  ?></td>
    <td><?php echo isset($v->mpengujian[0]->metode) ? $v->mpengujian[0]->metode : "-"  ?></td>
    <td rowspan="<?php echo $rowspan?>"><?php echo $v->keterangan?></td>
  </tr>
	<?php endif;$no++;$no2++?>

  <?php for ($i=1; $i < count($v->mpengujian); $i++) :?>
		<?php if($no >= $start && $no <= $end):?>
    <tr>
			<?php if($no == $start){
				//hitung dulu
				$zxczxc = count($v->mpengujian) - $i;
			?>
				<td rowspan="<?php echo $zxczxc?>"></td>
		    <td rowspan="<?php echo $zxczxc?>"></td>
		    <td rowspan="<?php echo $zxczxc?>"></td>
		    <td rowspan="<?php echo $zxczxc?>"></td>
		    <td rowspan="<?php echo $zxczxc?>"></td>
		    <td rowspan="<?php echo $zxczxc?>"></td>
				<td><?php echo isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption :  (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-")  ?></td>
	      <td><?php echo isset($v->mpengujian[$i]->metode) ? $v->mpengujian[$i]->metode : "-"  ?></td>
				<td rowspan="<?php echo $zxczxc?>"></td>
			<?php }else{?>
      <td><?php echo isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption :  (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-")  ?></td>
      <td><?php echo isset($v->mpengujian[$i]->metode) ? $v->mpengujian[$i]->metode : "-"  ?></td>
			<?php }?>

    </tr>
		<?php endif;$no++?>
  <?php endfor;?>



<?php endforeach;?>
</table>

<?php if($ttd == true):?>

<br>
<br>
<br>

<table valign="top" cellpadding="5">
  <tr>
    <td style="width:30%;border:0.1px solid black;font-size:10px" >Hasil Kaji Ulang :<br><?php echo $data->res->hasil_kaji_ulang?>
		<br>&nbsp;</td>
		<td style="width:20%"></td>
    <td style="width:50%;text-align:center;font-size:10px">
				<?php
					$tg = date("Y-m-d");
					if($tgl != ""){
						$tg = str_replace(".","-",$tgl);
						$tmp_tg = explode("-",$tg);
						$tg = implode("-",array_reverse($tmp_tg));
					}
					 ?>
        jakarta , <?php echo tgl_indo($tg)?>
        <p>Customer</p>
        <br>
        <br>
        <br>
        <p><?php echo $data->res->nama?></p>

    </td>
  </tr>
</table>

<?php endif;?>
