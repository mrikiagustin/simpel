<?php //echo "<pre>";print_r($data);die();

?>
<style>
  .isi {font-size: 10px;}
  .meta {font-size: 10px;}
  p {font-size: 10px;}
</style>

<?php if(isset($fp) && $fp == true):?>

<span style="text-align:center">
  <h1> KONTRAK KERJA PENGUJIAN </h1>
  <p style="text-align:right"><?php echo $setting->kode_laporan?></p>
</span>

<p>Kami yang bertanda tangan di bawah ini menyatakan sepakat dan setuju dengan hal-hal sebagai berikut</p>
<p>1 . Bukti Penerimaan Contoh : </p>


<?php endif;?>

<table cellpadding="2" class="meta" border="1">


  <tr>
    <th valign="center" style="text-align:center;width:20px;" rowspan="2">No</th>
    <th valign="center" style="text-align:center" rowspan="2">Komoditas</th>
    <th valign="center" style="text-align:center" colspan="4">Contoh</th>
    <th valign="center" style="text-align:center;width:100px;" rowspan="2">Parameter Pengujian</th>
    <th valign="center" style="text-align:center;width:100px;" rowspan="2">Biaya (Rp)</th>
    <th valign="center" style="text-align:center;width:100px;" rowspan="2">Ket</th>
  </tr>
  <tr>
    <th valign="center" style="text-align:center"> Jenis / Varietas</th>
    <th valign="center" style="text-align:center"> Nomor Contoh</th>
    <th valign="center" style="text-align:center"> Jumlah</th>
    <th valign="center" style="text-align:center"> Kondisi</th>
  </tr>

  <?php $is_first = false;?>

  <?php
  $html = '';
  $no = 1;$no2 = 1;foreach ($data->mdetail as $k => $v):
  $rowspan = count($v->mpengujian) == 0 ? 1 : count($v->mpengujian);

  if($no >= $start && $no <= $end):

  $html .= "
  <tr>
    <td rowspan=\"".$rowspan."\">".$no2."</td>
    <td rowspan=\"".$rowspan."\">".$v->komoditas."</td>
    <td rowspan=\"".$rowspan."\">".$v->varietas."</td>
    <td rowspan=\"".$rowspan."\">".$v->nomor_contoh."</td>
    <td rowspan=\"".$rowspan."\">".$v->jumlah." ".$v->str_satuan."</td>
    <td rowspan=\"".$rowspan."\">".$v->str_kondisi."</td>
    <td>".$no."-".(isset($v->mpengujian[0]->caption) && $v->mpengujian[0]->caption != '' ? $v->mpengujian[0]->caption :  (isset($v->mpengujian[0]->parameter_pengujian) ? $v->mpengujian[0]->parameter_pengujian : "-"))."</td>
    <td>".(isset($v->mpengujian[0]->biaya) ? "Rp. ".number_format($v->mpengujian[0]->biaya,0,",",".") : "-")."</td>
    <td rowspan=\"".$rowspan."\">".$v->keterangan."</td>
  </tr>";

  endif;$no++;$no2++;


  for ($i=1; $i < count($v->mpengujian); $i++) :

    if($no >= $start && $no <= $end):
      if($no == $start){
				//hitung dulu
				$zxczxc = count($v->mpengujian) - $i;

        $html .= "
        <tr>
          <td rowspan=\"".$zxczxc."\"></td>
          <td rowspan=\"".$zxczxc."\"></td>
          <td rowspan=\"".$zxczxc."\"></td>
          <td rowspan=\"".$zxczxc."\"></td>
          <td rowspan=\"".$zxczxc."\"></td>
          <td rowspan=\"".$zxczxc."\"></td>
          <td>".$no."-".(isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption :  (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-"))."</td>
          <td>".(isset($v->mpengujian[$i]->biaya) ? "Rp. ".number_format($v->mpengujian[$i]->biaya,0,",",".") : "-")."</td>
          <td rowspan=\"".$zxczxc."\"></td>
        </tr>";
      }else{
        $html .= "
        <tr>

          <td>".(isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption :  (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-"))."</td>
          <td>".(isset($v->mpengujian[$i]->biaya) ? "Rp. ".number_format($v->mpengujian[$i]->biaya,0,",",".") : "-")."</td>
        </tr>";
      }


    endif;$no++;
  endfor;
  endforeach;

  $total = 0;
  foreach ($data->mdetail as $k => $v):
    for ($i=0; $i < count($v->mpengujian); $i++) :
      $total += $v->mpengujian[$i]->biaya;
    endfor;
  endforeach;

  echo $html;
  ?>
  <?php if($ttd == true):?>

  <tr>
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

  </tr>

  <?php endif;?>

</table>

<?php if($ttd == true):?>

<p>2 . Tanggal Terima Contoh Uji &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php $tglindo =substr($data->res->tanggal_masuk,0,10);echo tgl_indo($tglindo)?></p>
<p>3 . Tanggal Pengambilan Hasil Uji &nbsp;: <?php echo isset($data->res->tanggal_pengambilan) ?  tgl_indo($data->res->tanggal_pengambilan) : ""?></p>

<table >
  <tr>
      <td style="width:50%;text-align:center;">

      <p> </p>
      <p>Customer</p>
      <br>
      <br>
      <br>
      <p><?php echo $data->res->nama?></p>
    </td>
    <td style="width:50%;text-align:center;">
			<?php
				$tg = date("Y-m-d");
				if($tgl != ""){
					$tg = str_replace(".","-",$tgl);
					$tmp_tg = explode("-",$tg);
					$tg = implode("-",array_reverse($tmp_tg));
				}
				 ?>
        <p>Jakarta , <?php echo tgl_indo($tg)?></p>
        <p>Penerima Contoh</p>
        <br>
        <br>
        <br>
        <p></p>

    </td>
  </tr>
</table>

<br>
<br>
<p>Catatan : Harap lembar ini dibawa waktu pengambilan hasil pengujian</p>


<?php endif;?>
