
<span style="text-align:center;font-size:16px;">
   Buku Kode Contoh Lab
</span>
<br><br>


Tahun : <?php echo date("Y")?>
<br>
<br>
<table border="1" cellpadding="5">
  <thead>
      <tr bgcolor="#FFA500" >
        <th style="width:30px">#</th>
        <th style="width:165px">Tanggal Masuk</th>
        <th style="width:165px">No. Contoh</th>
        <th style="width:165px">Kode Contoh</th>
      </tr>
  </thead>
  <tbody>
    <?php $n=1;for ($i=0; $i < 30  ; $i++):?>
    <?php foreach ($data->result() as $key => $value):?>
      <tr <?php echo $n%4 == 1 || $n%4 == 2 ? 'bgcolor="#cccccc"' : ''?>>
        <td style="width:30px"><?php echo $n++?></td>
        <td style="width:165px"><?php echo $value->tanggal_masuk?></td>
        <td style="width:165px"><?php echo $value->nomor_contoh?></td>
        <td style="width:165px"><?php echo $value->nomor_kodelab?></td>
      </tr>
    <?php endforeach;?>
  <?php endfor;?>
  </tbody>
</table>
