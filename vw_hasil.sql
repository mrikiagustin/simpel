	create or replace
	algorithm = UNDEFINED view `vw_hasil` as
	select
	    `a`.`nomor_contoh` as `nomor_contoh`,
	    `d`.`laporan` as `laporan`,
	    `a`.`komoditas` as `komoditas`,
	    `a`.`varietas` as `varietas`,
	    `a`.`jumlah` as `jumlah`,
	    `e`.`satuan` as `satuan`,
	    `f`.`kondisi` as `kondisi`,
	    sum(`c`.`harga`) as `total_biaya`,
	    group_concat(`c`.`parameter_pengujian` separator ',') as `parameter`,
	    `a`.`keterangan` as `keterangan`,
	    `d`.`id_laporan` as `id_laporan`,
	    concat(replace(`a`.`nomor_contoh`, '/', '-'), '_', `d`.`id_laporan`) as `prim`,
	    `g`.`nomor_seri` as `nomor_seri`,
	    `g`.`ceklis_1` as `ceklis_1`,
	    `g`.`ceklis_2` as `ceklis_2`,
	    `a`.`ket_kondisi` as `ket_kondisi`,
	    `g`.`tanggal_pengujian` as `tanggal_pengujian`,
	    `g`.`tanggal_selesai` as `tanggal_selesai`,
	    `g`.`metode_analisis` as `metode_analisis`
	from
	    (((((((`permohonan_detail` `a`
	left join `permohonan_detail_parameter` `b` on
	    (`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))
	left join `parameter_pengujian` `c` on
	    (`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))
	left join `laporan` `d` on
	    (`c`.`id_laporan` = `d`.`id_laporan`))
	left join `satuan` `e` on
	    (`a`.`satuan` = `e`.`id_satuan`))
	left join `kondisi` `f` on
	    (`a`.`kondisi` = `f`.`id_kondisi`))
	left join `hasil` `g` on
	    (`g`.`prim` = concat(replace(`a`.`nomor_contoh`, '/', '-'), '_', `d`.`id_laporan`)))
	join `permohonan` `xx` on
	    (`a`.`id_permohonan` = `xx`.`id_permohonan`))
	group by
	    `a`.`nomor_contoh`,
	    `d`.`laporan`
	order by
	    `a`.`nomor_contoh`,
	    `d`.`laporan`