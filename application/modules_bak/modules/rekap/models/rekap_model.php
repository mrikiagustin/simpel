<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekap_model  extends CI_Model  {

	function __construct(){
		parent::__construct();
	}

	public function get_buku_induk()
	{
		$sql = "select
							permohonan.tanggal_masuk,
							permohonan.instansi_perusahaan,
							permohonan.alamat,
							#kodelab.kodelab,
							permohonan_detail.varietas,
							permohonan_detail.nomor_contoh,
							permohonan_detail.jumlah,
							satuan.satuan,
							kemasan.kemasan,
							permohonan_detail.keterangan,
							GROUP_CONCAT(DISTINCT laporan.laporan ) laporan,
							GROUP_CONCAT(parameter_pengujian.parameter_pengujian) parameter,
							sum(parameter_pengujian.harga) harga,
							permohonan_detail.id_permohonan_detail,
							CONCAT(permohonan_detail.jumlah,' ',satuan.satuan) jumlah_satuan

						from permohonan_detail
						left join permohonan ON permohonan.id_permohonan = permohonan_detail.id_permohonan
						left join kodelab ON permohonan_detail.id_kodelab = kodelab.id_kodelab
						left join satuan ON permohonan_detail.satuan = satuan.id_satuan
						left join kemasan ON kemasan.id_kemasan = permohonan_detail.kemasan
						left join permohonan_detail_parameter ON permohonan_detail.id_permohonan_detail = permohonan_detail_parameter.id_permohonan_detail
						left join parameter_pengujian ON  parameter_pengujian.id_parameter_pengujian = permohonan_detail_parameter.id_parameter_pengujian
						left join laporan ON laporan.id_laporan = parameter_pengujian.id_laporan
						GROUP BY permohonan_detail.id_permohonan_detail ";
		return $this->db->query($sql);
	}

	public function get_buku_lab()
	{
		$sql = "select
							permohonan.tanggal_masuk,
							permohonan_detail.nomor_contoh,
							permohonan_detail.nomor_kodelab
						from permohonan_detail
						left join permohonan ON permohonan.id_permohonan = permohonan_detail.id_permohonan ";
		return $this->db->query($sql);
	}
}
