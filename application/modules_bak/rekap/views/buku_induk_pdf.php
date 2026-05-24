
<span style="text-align:center;font-size:16px;">
   Buku Induk
</span>
<br><br>


Tahun : <?php echo date("Y")?>
<br>
<br>
<table border="1" cellpadding="5">
  <thead>
      <tr bgcolor="#FFA500" >
        <th style="width:30px">#</th>
        <th style="width:65px">Tanggal Masuk</th>
        <th style="width:90px">Instansi / Perusahaan</th>
        <th style="width:80px">Alamat</th>
        <th style="width:80px">Jenis Sample</th>
        <th style="width:70px">Nomor Sample</th>
        <th style="width:50px">Berat</th>
        <th style="width:80px">Kemasan</th>
        <th style="width:80px">Ditujukan ke</th>
        <th style="width:80px">Parameter</th>
        <th style="width:80px">Biaya Pengujian</th>
        <th style="width:80px">Keterangan</th>
      </tr>
  </thead>
  <tbody>
    <?php $n=1;for ($i=0; $i < 30  ; $i++):?>
    <?php foreach ($data->result() as $key => $value):?>
      <tr <?php echo $n%4 == 1 || $n%4 == 2 ? 'bgcolor="#cccccc"' : ''?>>
        <td style="width:30px"><?php echo $n++?></td>
        <td style="width:65px"><?php echo $value->tanggal_masuk?></td>
        <td style="width:90px"><?php echo $value->instansi_perusahaan?></td>
        <td style="width:80px"><?php echo $value->alamat?></td>
        <td style="width:80px"><?php echo $value->varietas?></td>
        <td style="width:70px"><?php echo $value->nomor_contoh?></td>
        <td style="width:50px"><?php echo $value->jumlah_satuan?></td>
        <td style="width:80px"><?php echo $value->kemasan?></td>
        <td style="width:80px"><?php echo $value->laporan?></td>
        <td style="width:80px"><?php echo $value->parameter?></td>
        <td style="width:80px"><?php echo $value->harga?></td>
        <td style="width:80px"><?php echo $value->keterangan?></td>
      </tr>
    <?php endforeach;?>
  <?php endfor;?>
  </tbody>
</table>
