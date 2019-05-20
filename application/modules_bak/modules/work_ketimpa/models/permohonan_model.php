<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Permohonan_model  extends CI_Model  {

	function __construct(){
		parent::__construct();
	}

	public function delete_details_child($primary_key)
	{

		$this->db->query(
		   "DELETE permohonan_detail_metode
			FROM permohonan_detail_metode
			INNER JOIN permohonan_detail ON permohonan_detail.id_permohonan_detail = permohonan_detail_metode.id_permohonan_detail
			WHERE
				permohonan_detail.id_permohonan =" . $primary_key
		);

		$this->db->query(
		   "DELETE permohonan_detail_parameter
			FROM permohonan_detail_parameter
			INNER JOIN permohonan_detail ON permohonan_detail.id_permohonan_detail = permohonan_detail_parameter.id_permohonan_detail
			WHERE
				permohonan_detail.id_permohonan =" . $primary_key
		);
	}

	public function delete_details($primary_key)
	{
		$this->delete_details_child($primary_key);

		$this->db->where("id_permohonan",$primary_key);
		$this->db->delete("permohonan_detail");
	}

	public function delete_details_where_not($primary_key,$hidden_id)
	{
		$hidden_id_str = "";
		foreach ($hidden_id as $value) {
			$hidden_id_str .= $value . ",";
		}

		$hidden_id_str = rtrim($hidden_id_str,",");

		$where2 = "";
		if(count($hidden_id) > 0) {
			$where2 = " AND id_permohonan_detail not in (".$hidden_id_str.")";
		}

		$sql = "DELETE
		 FROM permohonan_detail
		 WHERE id_permohonan = ".$primary_key.
		 $where2;

			$this->db->query(
			   $sql
				);
	}

	public function delete_parameter_where_not($primary_key,$hidden_id)
	{
		$hidden_id_str = "";
		foreach ($hidden_id as $value) {
			$hidden_id_str .= $value . ",";
		}

		$hidden_id_str = rtrim($hidden_id_str,",");

		$where2 = "";
		if(count($hidden_id) > 0) {
			$where2 = " AND permohonan_detail_parameter.id_permohonan_detail_parameter not in (".$hidden_id_str.")";
		}

		$sql = "DELETE permohonan_detail_parameter
		 FROM permohonan_detail_parameter
		 INNER JOIN permohonan_detail ON permohonan_detail.id_permohonan_detail = permohonan_detail_parameter.id_permohonan_detail
		 WHERE permohonan_detail.id_permohonan = ".$primary_key.
		 $where2;

			$this->db->query(
			   $sql
				);
	}

	public function add_details_parameter($primaryArray,$primary_key)
	{

		$year = date('Y');

		foreach ($primaryArray as $array) {
			$temp_kode_contoh = array();
			//repopulate $temp_kode_contoh

			$parameter_saat_ini =  $this->db->where("id_permohonan_detail",$array['hidden_id'])->get("permohonan_detail_parameter");
			foreach ($parameter_saat_ini->result() as $key => $value) {
				$k = substr($value->kode_contoh,4,2);
				$v = $value->kode_contoh;

				$temp_kode_contoh[$k] = $v;
			}

			// echo "<pre>";print_r($temp_kode_contoh);die();

			$child_id = $array['hidden_id'];

			foreach ($array['pengujian'] as $key) {
				if($key['hidden_id'] == 'z'){

					$biaya = 0;
					// $b = $this->db->where("id_parameter_pengujian", $key['param'])->get("parameter_pengujian")->row();
					$b = $this->db
										->select("parameter_pengujian.*,laporan.kode_contoh lap_kode_contoh")
										->where("id_parameter_pengujian", $key['param'])
										->join("laporan","laporan.id_laporan = parameter_pengujian.id_laporan","left")
										->get("parameter_pengujian")->row();
					if(isset($b->harga)) $biaya = $b->harga;

					// ambil kode contoh by parameter_pengujian , jika null ambil dari laporan\
					$kode_contoh_to_insert = "";
					if($b->kode_contoh != "" && $b->kode_contoh != null){
						$kode_contoh_to_insert = $b->kode_contoh;
					}else{
						$kode_contoh_to_insert = $b->lap_kode_contoh;
					}

					// check $temp_kode_contoh
					if(isset($temp_kode_contoh[$kode_contoh_to_insert])){
						// jika ada, gunakan $temp_kode_contoh
						$kode_contoh_final = $temp_kode_contoh[$kode_contoh_to_insert];
					}else{
						// jika tidak ada , buat kode_contoh dan simpan ke $temp_kode_contoh
						$kkodelab = $kode_contoh_to_insert;
						$current_counter_lab 	= $this->get_counter_kodelab($year,$kkodelab);
						// Format nomor laboratorium : NOMOR(3 digit)/KODE LAB/BULAN(mm)/TAHUN(yy)
						//                           : 001/Bu/01/17
						$zero = "";
						$current_counter_lab ++;
						$temp2 = (String)$current_counter_lab;
						for ($i=0; $i <  (3 - strlen($temp2)); $i++) {
							$zero .= "0";
						}
						$temp2 = $zero . $temp2;

						// $kode_contoh_final = $temp2 . "/" . $kkodelab . "/" . $this->romawi(date("n")) .  "/" . date("y");
						$kode_contoh_final = "000" . "/" . $kkodelab . "/" . $this->romawi(date("n")) .  "/" . date("y");

						$temp_kode_contoh[$kode_contoh_to_insert] = $kode_contoh_final;
						$this->update_counter_kodelab($year,$kkodelab,$current_counter_lab);
					}

					$child_data = array(
						"id_parameter_pengujian" => $key['param'],
						"id_permohonan_detail" => $child_id,
						"biaya"	=> $biaya,
						"caption" => $key['ket'],
						"id_metode" => $key['metode'],
						"kode_contoh" => $kode_contoh_final,
						"id_paket" => $key['paket_id']
					);

					$this->db->insert("permohonan_detail_parameter",$child_data);
				}


			}
		}


	}

	public function add_details($array,$primary_key)
	{
		// echo "<pre>";print_r($array);die();
		$year = date("Y");
		$current_counter 			= $this->get_counter($year);



		foreach ($array as $key => $value) {
			$current_counter++;
			$temp_nmr  = (String)$current_counter;
			$zero = "";
			for ($i=0; $i <  (3 - strlen($temp_nmr)); $i++) {
				$zero .= "0";
			}
			$temp_nmr = $zero . $temp_nmr;

			// $nomor_contoh = $temp_nmr . "/" . date("m") . "/" . date("Y");
			$nomor_contoh = "000" . "/" . date("m") . "/" . date("Y");

			// nomor kode_lab
				// $kkodelab = $this->get_kodelab_by_lab($value["laboratorium"]);
				// $current_counter_lab 	= $this->get_counter_kodelab($year,$kkodelab);
				// // Format nomor laboratorium : NOMOR(3 digit)/KODE LAB/BULAN(mm)/TAHUN(yy)
			  // //                           : 001/Bu/01/17
				// $zero = "";
				// $current_counter_lab ++;
				// $temp2 = (String)$current_counter_lab;
				// for ($i=0; $i <  (3 - strlen($temp2)); $i++) {
				// 	$zero .= "0";
				// }
				// $temp2 = $zero . $temp2;
				//
				// $nomor_kodelab = $temp2 . "/" . $kkodelab . "/" . $this->romawi(date("m")) .  "/" . date("y");

			// end of nomor kode_lab

			$data = array(
				"id_permohonan" => $primary_key,
				"komoditas" => $value['komoditas'],
				"varietas" => $value['varietas'],
				"jumlah" => $value['jumlah'],
				"satuan" => $value['satuan'],
				"kemasan" => $value['kemasan'],
				"kondisi" => $value['kondisi'],
				// "id_kodelab" => $value["laboratorium"],
				"keterangan" => $value['keterangan'],
				// "pengujian" => $value['pengujian_text'],
				// "metode" => $value['metode_text'],
				"nomor_contoh" => $nomor_contoh,
				// "laporan" => $value['laboratorium'],
				// "nomor_kodelab" => $nomor_kodelab,
				// "laporan" => $value['laboratorium'],
				"ket_kondisi" => $value['ket_kondisi'],
			);



			$this->db->insert("permohonan_detail",$data);
			// insert ke metode dan pengujian
			$child_id = $this->db->insert_id();

			$temp_kode_contoh = array();

			$child_raw = $value['pengujian'];


			foreach ($child_raw as $key) {
				$biaya = 0;
				// $b = $this->db->where("id_parameter_pengujian", $key['param'])->get("parameter_pengujian")->row();
				$b = $this->db
									->select("parameter_pengujian.*,laporan.kode_contoh lap_kode_contoh")
									->where("id_parameter_pengujian", $key['param'])
									->join("laporan","laporan.id_laporan = parameter_pengujian.id_laporan","left")
									->get("parameter_pengujian")->row();
				if(isset($b->harga)) $biaya = $b->harga;

				// ambil kode contoh by parameter_pengujian , jika null ambil dari laporan\
				$kode_contoh_to_insert = "";
				if($b->kode_contoh != "" && $b->kode_contoh != null){
					$kode_contoh_to_insert = $b->kode_contoh;
				}else{
					$kode_contoh_to_insert = $b->lap_kode_contoh;
				}

				// check $temp_kode_contoh
				if(isset($temp_kode_contoh[$kode_contoh_to_insert])){
					// jika ada, gunakan $temp_kode_contoh
					$kode_contoh_final = $temp_kode_contoh[$kode_contoh_to_insert];
				}else{
					// jika tidak ada , buat kode_contoh dan simpan ke $temp_kode_contoh
					$kkodelab = $kode_contoh_to_insert;
					$current_counter_lab 	= $this->get_counter_kodelab($year,$kkodelab);
					// Format nomor laboratorium : NOMOR(3 digit)/KODE LAB/BULAN(mm)/TAHUN(yy)
				  //                           : 001/Bu/01/17
					$zero = "";
					$current_counter_lab ++;
					$temp2 = (String)$current_counter_lab;
					for ($i=0; $i <  (3 - strlen($temp2)); $i++) {
						$zero .= "0";
					}
					$temp2 = $zero . $temp2;

					// $kode_contoh_final = $temp2 . "/" . $kkodelab . "/" . $this->romawi(date("n")) .  "/" . date("y");
					$kode_contoh_final = "000" . "/" . $kkodelab . "/" . $this->romawi(date("n")) .  "/" . date("y");

					$temp_kode_contoh[$kode_contoh_to_insert] = $kode_contoh_final;
					$this->update_counter_kodelab($year,$kkodelab,$current_counter_lab);
				}

				$child_data = array(
					"id_parameter_pengujian" => $key['param'],
					"id_permohonan_detail" => $child_id,
					"biaya"	=> $biaya,
					"caption" => $key['ket'],
					"id_metode" => $key['metode'],
					"kode_contoh" => $kode_contoh_final,
					"id_paket" => $key['paket_id'],
				);

				$this->db->insert("permohonan_detail_parameter",$child_data);

			}




			// $child2_raw = explode(",", $value["metode_text"]);
			// $child2_data = array();
			// foreach ($child2_raw as $key) {
			// 	$child2_data[] = array(
			// 		"id_metode" => $key,
			// 		"id_permohonan_detail" => $child_id
			// 	);
			// }
			//
			// $this->db->insert_batch("permohonan_detail_metode",$child2_data);
		}
		// die();
		$this->update_counter($year,$current_counter);
	}


	public function update_details($array,$primary_key)
	{
		//echo "<pre>";print_r($array);die();
		$year = date("Y");
		//$current_counter 			= $this->get_counter($year);



		foreach ($array as $key => $value) {
			//$current_counter++;
			// $temp_nmr  = (String)$current_counter;
			// $zero = "";
			// for ($i=0; $i <  (3 - strlen($temp_nmr)); $i++) {
			// 	$zero .= "0";
			// }
			// $temp_nmr = $zero . $temp_nmr;
			//
			// $nomor_contoh = $temp_nmr . "/" . date("d") . "/" . date("Y");

			// nomor kode_lab
				// $kkodelab = $this->get_kodelab_by_lab($value["laboratorium"]);
				// $current_counter_lab 	= $this->get_counter_kodelab($year,$kkodelab);
				// // Format nomor laboratorium : NOMOR(3 digit)/KODE LAB/BULAN(mm)/TAHUN(yy)
			  // //                           : 001/Bu/01/17
				// $zero = "";
				// $current_counter_lab ++;
				// $temp2 = (String)$current_counter_lab;
				// for ($i=0; $i <  (3 - strlen($temp2)); $i++) {
				// 	$zero .= "0";
				// }
				// $temp2 = $zero . $temp2;
				//
				// $nomor_kodelab = $temp2 . "/" . $kkodelab . "/" . $this->romawi(date("m")) .  "/" . date("y");

			// end of nomor kode_lab

			$data = array(
				"id_permohonan" => $primary_key,
				"komoditas" => $value['komoditas'],
				"varietas" => $value['varietas'],
				"jumlah" => $value['jumlah'],
				"satuan" => $value['satuan'],
				"kemasan" => $value['kemasan'],
				"kondisi" => $value['kondisi'],
				// "id_kodelab" => $value["laboratorium"],
				"keterangan" => $value['keterangan'],
				// "pengujian" => $value['pengujian_text'],
				// "metode" => $value['metode_text'],
				// "nomor_contoh" => $nomor_contoh,
				// "laporan" => $value['laboratorium'],
				// "nomor_kodelab" => $nomor_kodelab,
				// "laporan" => $value['laboratorium'],
				"ket_kondisi" => $value['ket_kondisi'],
			);


			//$this->update_counter_kodelab($year,$value['kodelab'],$current_counter_lab);
			$this->db->update("permohonan_detail",$data,array("id_permohonan_detail" => $value['hidden_id']));
		}

		// $this->update_counter($year,$current_counter);
	}



	public function update_parameter($array,$primary_key)
	{
		foreach ($array as $key => $value) {
			foreach ($value['pengujian'] as $x => $v) {
				$d = array(
										'id_parameter_pengujian	' => $v['param'],
										'caption' => $v['ket'],
										'id_metode' => $v['metode'],
									);
				$this->db->update("permohonan_detail_parameter",$d,array("id_permohonan_detail_parameter" => $v['hidden_id']));
			}
		}
	}

	public function get($id)
	{
		// get data

		$query = $this->db->where("id_permohonan",$id)
											->get("permohonan");

		if($query->num_rows() == 0){
			//echo "Data tidak ditemukan";die();
		}

		$main_data = new stdClass();
		$main_data->res = $query->row();

			// detail

				$this->db->join("satuan","satuan.id_satuan = det.satuan");
				$this->db->join("kemasan","kemasan.id_kemasan = det.kemasan");
				$this->db->join("kondisi","kondisi.id_kondisi = det.kondisi");
				$this->db->join("kodelab","kodelab.id_kodelab = det.id_kodelab","left");
				$this->db->select(" det.*
														,satuan.satuan str_satuan
														,kemasan.kemasan str_kemasan
														,kondisi.kondisi str_kondisi
														,kodelab.kodelab str_kodelab
														,kodelab.desc");
				$this->db->where("det.id_permohonan",$id);
				$main_data->mdetail = $this->db->get("permohonan_detail det")->result();
			// end detail

			// pengujian dan metode

				for ($i=0; $i < count($main_data->mdetail); $i++) {
					//pengujian
					$this->db->join("parameter_pengujian","parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian","left");
					$this->db->join("metode","metode.id_metode = mpengujian.id_metode","left");
					$this->db->select("mpengujian.* , parameter_pengujian.parameter_pengujian,metode.metode,parameter_pengujian.id_laporan");
					$this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);

					$main_data->mdetail[$i]->mpengujian = $this->db->get("permohonan_detail_parameter mpengujian")->result();

					$this->db->join("parameter_pengujian","parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian","left");
					$this->db->join("metode","metode.id_metode = mpengujian.id_metode","left");
					$this->db->select("mpengujian.* , parameter_pengujian.parameter_pengujian,metode.metode");
					$this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);
					$this->db->where("id_paket","0");
					$main_data->mdetail[$i]->mpengujian_nonpaket = $this->db->get("permohonan_detail_parameter mpengujian")->result();


					$this->db->join("paket","paket.id_paket = mpengujian.id_paket","left");
					$this->db->select("paket.nama_paket parameter_pengujian ,'-' metode, sum(biaya) biaya,mpengujian.kode_contoh");
					$this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);
					$this->db->where("mpengujian.id_paket !=","0");

					$this->db->group_by("mpengujian.id_paket");

					$main_data->mdetail[$i]->mpengujian_paket = $this->db->get("permohonan_detail_parameter mpengujian")->result();

					// metode

					// $this->db->join("metode","metode.id_metode = mpengujian.id_metode","left");
					// $this->db->select("mpengujian.* , metode.metode");
					// $this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);
					//
					// $main_data->mdetail[$i]->mmetode = $this->db->get("permohonan_detail_metode mpengujian")->result();


				}



			// end pengujian dan metode




		// end get data

		return $main_data;
	}

	public function get_counter($y)
	{
		$zz = $this->db->query("select counter x from counter_contoh where tahun = ".$y." limit 1 ");

		if($zz->num_rows() > 0){
			return $zz->row()->x;
		}else{
			return 0;
		}
	}

	public function get_counter_kodelab($y,$kode)
	{
		$zz = $this->db->query("select counter x from counter_lab where tahun = ".$y." and kode_lab = '".$kode."' limit 1 ");

		if($zz->num_rows() > 0){
			return $zz->row()->x;
		}else{
			return 0;
		}
	}

	public function update_counter($year,$counter)
	{
		$this->db->update("counter_contoh", array("counter" => $counter),array("tahun" => $year));
	}

	public function update_counter_kodelab($year,$kode,$counter)
	{
		$this->db->where("tahun",$year)->where("kode_lab",$kode)->delete("counter_lab");
		$this->db->insert("counter_lab", array("tahun" => $year , "kode_lab" => $kode,"counter" => $counter));
	}

	public function get_hasil($nomor,$id_laporan)
	{
		$this->db->where("nomor_contoh",$nomor);
		$this->db->where("id_laporan",$id_laporan);

		$res = $this->db->get("vw_hasil2");

		if($res->num_rows() == 0){
			echo "Data tidak ditemukan";die();
		}
		return $res->result();
	}

	public function get_hasil2($nomor,$id_laporan)
	{
		$this->db->where("nomor_contoh",$nomor);
		$this->db->where("id_laporan",$id_laporan);

		switch ($id_laporan) {
			case "4":  // RESIDU PESTISIDA (GOLONGAN LAIN)
				$res = $this->db->get("vw_hasil2_fp");
				break;
			case "8":  // RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)
			case "9":  // RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)
			case "10":  // RESIDU PESTISIDA (GOLONGAN PERETROID)
			case "11":  // RESIDU PESTISIDA (GOLONGAN KARBAMAT)
			case "15":  // RESIDU PESTISIDA (GOLONGAN LAIN)
				$res = $this->db->get("vw_hasil2_residu");
				break;
			case "12":  // KN
				$res = $this->db->get("vw_hasil2_kn");
				break;
			case "13":  // RESIDU PESTISIDA (GOLONGAN LAIN)
				$res = $this->db->get("vw_hasil2_lbm");
				break;
			case "19": // MYCOTOXIN
				$res = $this->db->get("vw_hasil2_mycotoxin");
				break;
			case "20": // MYCOTOXIN
				$res = $this->db->get("vw_hasil2_mfb");
				break;
			default:
				$res = $this->db->get("vw_hasil2");
				break;
		}

		if($res->num_rows() == 0){
			echo "Data tidak ditemukan";die();
		}
		return $res->result();
	}

	public function get_hasil2_2($nomor,$id_laporan)
	{
		$this->db->where("nomor_contoh",$nomor);
		//$this->db->where("id_laporan",$id_laporan);

		switch ($id_laporan) {
			case "4":  // RESIDU PESTISIDA (GOLONGAN LAIN)
				$res = $this->db->get("vw_hasil2_fp");
				break;
			case "8":  // RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)
			case "9":  // RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)
			case "10":  // RESIDU PESTISIDA (GOLONGAN PERETROID)
			case "11":  // RESIDU PESTISIDA (GOLONGAN KARBAMAT)
			case "15":  // RESIDU PESTISIDA (GOLONGAN LAIN)
				$res = $this->db->get("vw_hasil2_residu");
				break;
			case "12":  // KN
				$res = $this->db->get("vw_hasil2_kn");
				break;
			case "13":  // RESIDU PESTISIDA (GOLONGAN LAIN)
				$res = $this->db->get("vw_hasil2_lbm");
				break;
			case "19": // MYCOTOXIN
				$res = $this->db->get("vw_hasil2_mycotoxin");
				break;
			case "20": // MYCOTOXIN
				$res = $this->db->get("vw_hasil2_mfb");
				break;
			default:
				$res = $this->db->get("vw_hasil2");
				break;
		}

		if($res->num_rows() == 0){
			echo "Data tidak ditemukan";die();
		}
		return $res->result();
	}

	public function romawi($value)
	{
		$romawi_array = array(
			1 => "I",
			2 => "II",
			3 => "III",
			4 => "IV",
			5 => "V",
			6 => "VI",
			7 => "VII",
			8 => "VIII",
			9 => "IX",
			10 => "X",
			11 => "XI",
			12 => "XII",
		);

		return $romawi_array[$value];
	}

	public function get_kodelab_by_lab($value)
	{
		return $this->db->where("id_laporan",$value)->get("laporan")->row()->kode_contoh;
	}
}


?>
