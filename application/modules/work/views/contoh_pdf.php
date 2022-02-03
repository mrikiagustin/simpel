<?php //echo "<pre>";print_r($data);die();

?>
<style>
  .isi {font-size: 10px;}
  .meta {font-size: 10px;}
  p {font-size: 10px;}
</style>

<span style="text-align:center">
  <h1> PENGANTAR CONTOH </h1>
  <p style="text-align:right"><?php echo $setting->kode_laporan?></p>
</span>

<p>Contoh diserahkan ke : <?php echo $setting->contoh_diserahkan_ke?></p>
<table cellpadding="2" class="meta" border="1">


  <tr>
    <th valign="center" style="text-align:center;width:20px;" rowspan="2">No</th>
    <th valign="center" style="text-align:center" colspan="4">Contoh</th>

		<th valign="center" style="text-align:center;width:120px;" rowspan="2">Kode Contoh</th>
    <th valign="center" style="text-align:center;width:120px;" rowspan="2">Parameter Pengujian</th>
    <th valign="center" style="text-align:center;width:120px;" rowspan="2">Metode</th>
    <th valign="center" style="text-align:center;width:150px;" rowspan="2">Ket</th>
  </tr>
  <tr>
		<th valign="center" style="text-align:center" >Komoditas</th>
    <th valign="center" style="text-align:center"> Jenis / Varietas</th>
    <th valign="center" style="text-align:center"> Jumlah</th>
    <th valign="center" style="text-align:center"> Kondisi</th>
  </tr>

  <?php
  $html = '';
  $no = 1;foreach ($data->mdetail as $k => $v):
  $rowspan = count($v->mpengujian) == 0 ? 1 : count($v->mpengujian);

  $html .= "
  <tr>
    <td rowspan=\"".$rowspan."\">".$no++."</td>
    <td rowspan=\"".$rowspan."\">".$v->komoditas."</td>
    <td rowspan=\"".$rowspan."\">".$v->varietas."</td>
    <td rowspan=\"".$rowspan."\">".$v->jumlah." ".$v->str_satuan."</td>
    <td rowspan=\"".$rowspan."\">".$v->str_kondisi."</td>
		<td>".(isset($v->mpengujian[0]->kode_contoh) ? $v->mpengujian[0]->kode_contoh : "-")."</td>
		<td>".(isset($v->mpengujian[0]->caption) && $v->mpengujian[0]->caption != '' ? $v->mpengujian[0]->caption :  (isset($v->mpengujian[0]->parameter_pengujian) ? $v->mpengujian[0]->parameter_pengujian : "-"))."</td>
		<td>".(isset($v->mpengujian[0]->metode) ? $v->mpengujian[0]->metode : "-")."</td>
    <td rowspan=\"".$rowspan."\">".$v->keterangan."</td>
  </tr>";


  for ($i=1; $i < count($v->mpengujian); $i++) :
    $html .= "
    <tr>
			<td>".(isset($v->mpengujian[$i]->kode_contoh) ? $v->mpengujian[$i]->kode_contoh : "-")."</td>
			<td>".(isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption :  (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-"))."</td>
			<td>".(isset($v->mpengujian[$i]->metode) ? $v->mpengujian[$i]->metode : "-")."</td>
    </tr>";
  endfor;
  endforeach;

  echo $html;
  ?>

  <!-- <tr>
    <td colspan="6"></td>
    <td colspan="1">Total</td>
    <td colspan="2">Rp. <?php echo number_format($total,0,",",".")?></td>

  </tr>

  <tr>
    <td colspan="6"></td>
    <td colspan="1">Uang Muka</td>
    <td colspan="2">Rp. <?php echo number_format($data->res->uang_muka,0,",",".")?></td>

  </tr>

  <tr>
    <td colspan="6"></td>
    <td colspan="1">Sisa Pembayaran</td>
    <td colspan="2">Rp. <?php echo number_format($total - $data->res->uang_muka,0,",",".")?></td>

  </tr> -->
</table>

<!-- <p>2 . Tanggal Terima Uji Contoh &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php $tglindo =substr($data->res->created_at,0,10);echo tgl_indo($tglindo)?></p>
<p>3 . Tanggal Pengambilan Hasij Uji &nbsp;: <?php echo isset($data->res->tanggal_pengambilan) ?  tgl_indo($data->res->tanggal_pengambilan) : ""?></p> -->

<table >
  <tr>
    <td style="width:50%;text-align:center;">
        <p>Penerima Contoh</p>
				<?php echo $setting->penerima_contoh?>
        <br>
        <br>
        <br>
        <p></p>
				(. . . . . . . . . . . . . . . . . . . . . . . . . . )

    </td>

		<td style="width:50%;text-align:center;">
        <p>Pengirim Contoh</p>
				&nbsp;&nbsp;&nbsp;&nbsp;
        <br>
        <br>
        <br>
        <p></p>
				<?php //$d = $this->session->userdata("login_info");echo $d->display_name; ?>

    </td>
  </tr>
</table>
