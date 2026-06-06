<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PhpOffice\PhpWord;



class Permohonan extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
		$this->load->model("permohonan_model");
	}


	public function word($id)
	{
		// require_once APPPATH."third_party\PhpWord\AutoLoader.php";
		// require_once APPPATH."third_party\PhpWord\TemplateProcessor.php";

		require_once APPPATH . "third_party/vendor/autoload.php";

		$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor(APPPATH . 'third_party/PhpWord/permohonan.docx');

		$texts = $this->db->get("setting_kop")->row();
		$kode_laporan = $this->db->get("setting_permohonan")->row();

		$query = $this->db->where("id_permohonan", $id)->get("permohonan");

		if ($query->num_rows() == 0) {
			echo "Data tidak ditemukan";
			die();
		}

		$main_data = new stdClass();
		$main_data->res = $query->row();

		// detail

		$this->db->join("satuan", "satuan.id_satuan = det.satuan");
		$this->db->join("kemasan", "kemasan.id_kemasan = det.kemasan");
		$this->db->join("kondisi", "kondisi.id_kondisi = det.kondisi");
		$this->db->select(" det.*
														,satuan.satuan
														,kemasan.kemasan
														,kondisi.kondisi");
		$this->db->where("det.id_permohonan", $id);
		$main_data->mdetail = $this->db->get("permohonan_detail det")->result();
		// end detail

		// pengujian dan metode

		for ($i = 0; $i < count($main_data->mdetail); $i++) {
			//pengujian
			$this->db->join("parameter_pengujian", "parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian", "left");
			$this->db->join("metode", "metode.id_metode = mpengujian.id_metode", "left");
			$this->db->select("mpengujian.* , parameter_pengujian.parameter_pengujian,metode.metode");
			$this->db->where("mpengujian.id_permohonan_detail", $main_data->mdetail[$i]->id_permohonan_detail);

			$main_data->mdetail[$i]->mpengujian = $this->db->get("permohonan_detail_parameter mpengujian")->result();

			// metode

			$this->db->join("metode", "metode.id_metode = mpengujian.id_metode", "left");
			$this->db->select("mpengujian.* , metode.metode");
			$this->db->where("mpengujian.id_permohonan_detail", $main_data->mdetail[$i]->id_permohonan_detail);

			$main_data->mdetail[$i]->mmetode = $this->db->get("permohonan_detail_metode mpengujian")->result();
		}



		// end pengujian dan metode


		$templateProcessor->setValue('header_line1', $texts->line_1);
		$templateProcessor->setValue('header_line2', $texts->line_2);
		$templateProcessor->setValue('header_line3', $texts->line_3);
		$templateProcessor->setValue('header_line4', $texts->line_4);
		$templateProcessor->setValue('header_line5', $texts->line_5);
		$templateProcessor->setValue('kode_dokumen', $kode_laporan->kode_laporan);


		$data = $main_data;
		$templateProcessor->setValue("body_nama", $data->res->nama);
		$templateProcessor->setValue("body_instansi", $data->res->instansi_perusahaan);
		//$templateProcessor->setValue("body_npwp",$data->res->nik_npwp);
		$templateProcessor->setValue("body_alamat", $data->res->alamat);
		$templateProcessor->setValue("body_telepon", $data->res->telepon_fax);
		$templateProcessor->setValue("body_kontak", $data->res->kontak_person);
		$templateProcessor->setValue("body_tanggal_ambil", $data->res->tanggal_pengambilan);

		// var_dump(strip_tags($data->res->hasil_kaji_ulang));//die();
		$hasilkaji = trim(strip_tags($data->res->hasil_kaji_ulang));
		$hasilkaji = str_replace(" ", "-", $hasilkaji);
		$hasilkaji = trim(preg_replace('!\s+!', '<w:br />', $hasilkaji));
		$hasilkaji = str_replace("-", " ", $hasilkaji);
		// var_dump($hasilkaji);die();

		$templateProcessor->setValue("hasil_kaji_ulang", '<w:br />' . $hasilkaji);
		$ttgl = tgl_indo(date("Y-m-d"));
		$templateProcessor->setValue("tanggal", $ttgl);
		$templateProcessor->setValue("customer", $data->res->nama);



		$templateProcessor->cloneRow('no', count($data->mdetail));

		for ($i = 0; $i < count($data->mdetail); $i++) {

			$final_count = count($data->mdetail[$i]->mpengujian);
			if ($final_count <= 0) $final_count = 1;
			$templateProcessor->cloneRow('no#' . ($i + 1), $final_count);
			for ($j = 1; $j < count($data->mdetail[$i]->mpengujian); $j++) :
				// echo 'no#'.($i+1)."<br>";
				$parameter_text =  isset($data->mdetail[$i]->mpengujian[$j]->caption) && $data->mdetail[$i]->mpengujian[$j]->caption != '' ? $data->mdetail[$i]->mpengujian[$j]->caption : (isset($data->mdetail[$i]->mpengujian[$j]->parameter_pengujian) ? $data->mdetail[$i]->mpengujian[$j]->parameter_pengujian : "-");
				$metode_text =  isset($data->mdetail[$i]->mpengujian[$j]->metode) ? $data->mdetail[$i]->mpengujian[$j]->metode : "-";

				$templateProcessor->setValue('parameter#' . ($i + 1) . "#" . ($j + 1), $parameter_text);
				$templateProcessor->setValue('metode#' . ($i + 1) . "#" . ($j + 1), $metode_text);

				$templateProcessor->setValue('no#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('komoditas#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('jenis#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('jumlah#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('kemasan#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('kondisi#' . ($i + 1) . "#" . ($j + 1), "");

				$templateProcessor->setValue('parameter#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('metode#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('keterangan#' . ($i + 1) . "#" . ($j + 1), "");
			endfor;



			$templateProcessor->setValue('no#' . ($i + 1) . "#1", $i + 1);
			$templateProcessor->setValue('komoditas#' . ($i + 1) . "#1", $data->mdetail[$i]->komoditas);
			$templateProcessor->setValue('jenis#' . ($i + 1) . "#1", $data->mdetail[$i]->varietas);
			$templateProcessor->setValue('jumlah#' . ($i + 1) . "#1", $data->mdetail[$i]->jumlah . " " . $data->mdetail[$i]->satuan);
			$templateProcessor->setValue('kemasan#' . ($i + 1) . "#1", $data->mdetail[$i]->kemasan);
			$templateProcessor->setValue('kondisi#' . ($i + 1) . "#1", $data->mdetail[$i]->kondisi);

			$parameter_text = isset($data->mdetail[$i]->mpengujian[0]->caption) && $data->mdetail[$i]->mpengujian[0]->caption != '' ? $data->mdetail[$i]->mpengujian[0]->caption : (isset($data->mdetail[$i]->mpengujian[0]->parameter_pengujian) ? $data->mdetail[$i]->mpengujian[0]->parameter_pengujian : "-");

			$metode_text = isset($data->mdetail[$i]->mpengujian[0]->metode) ? $data->mdetail[$i]->mpengujian[0]->metode : "-";

			$templateProcessor->setValue('parameter#' . ($i + 1) . "#1", $parameter_text);
			$templateProcessor->setValue('metode#' . ($i + 1) . "#1", $metode_text);
			$templateProcessor->setValue('keterangan#' . ($i + 1) . "#1", $data->mdetail[$i]->keterangan);
		}






		// echo date('H:i:s'), ' Saving the result document...', EOL;
		header("Content-Disposition: attachment; filename='Permohonan Penujian.docx'");
		$templateProcessor->saveAs('php://output');
		// $templateProcessor->saveAs(APPPATH.'third_party/PhpWord/Sample_23_TemplateBlock_hasil.docx');
	}


	public function pdf($id, $download = 0, $header = 0, $tanggal = "")
	{
		// get data
		$this->db->join("jenis_pengantaran","jenis_pengantaran.id_jenis_pengantaran = permohonan.id_jenis_pengantaran","left");
		$this->db->select("permohonan.*, jenis_pengantaran.jenis_pengantaran");
		$query = $this->db->where("id_permohonan", $id)->get("permohonan");

		if ($query->num_rows() == 0) {
			echo "Data tidak ditemukan";
			die();
		}

		$main_data = new stdClass();
		$main_data->res = $query->row();

		// detail

		$this->db->join("satuan", "satuan.id_satuan = det.satuan");
		$this->db->join("kemasan", "kemasan.id_kemasan = det.kemasan");
		$this->db->join("kondisi", "kondisi.id_kondisi = det.kondisi");
		$this->db->select(" det.*
														,satuan.satuan
														,kemasan.kemasan
														,kondisi.kondisi");
		$this->db->where("det.id_permohonan", $id);
		$main_data->mdetail = $this->db->get("permohonan_detail det")->result();
		// end detail

		// pengujian dan metode

		for ($i = 0; $i < count($main_data->mdetail); $i++) {
			//pengujian
			$this->db->join("parameter_pengujian", "parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian", "left");
			$this->db->join("metode", "metode.id_metode = mpengujian.id_metode", "left");
			$this->db->select("mpengujian.* , parameter_pengujian.parameter_pengujian,metode.metode");
			$this->db->where("mpengujian.id_permohonan_detail", $main_data->mdetail[$i]->id_permohonan_detail);

			$main_data->mdetail[$i]->mpengujian = $this->db->get("permohonan_detail_parameter mpengujian")->result();

			// metode

			$this->db->join("metode", "metode.id_metode = mpengujian.id_metode", "left");
			$this->db->select("mpengujian.* , metode.metode");
			$this->db->where("mpengujian.id_permohonan_detail", $main_data->mdetail[$i]->id_permohonan_detail);

			$main_data->mdetail[$i]->mmetode = $this->db->get("permohonan_detail_metode mpengujian")->result();
		}



		// end pengujian dan metode



		$setting = $this->db->get("setting_permohonan")->row();
		// end get data

		// $content = $this->load->view("permohonan_pdf",array("data" => $main_data,"setting" => $setting,"tgl"=>$tanggal),true);
		$tt = 0;
		foreach ($main_data->mdetail as $key => $value) {
			// code...
			$tt += count($value->mpengujian);
		}
		// echo $tt;

		// die();


		$view_name = "permohonan_pdf";
		$true_content = array();
		$max_data_first_page = 8;
		$max_data_per_page = 15;

		$content = $this->load->view($view_name, array("data" => $main_data, "setting" => $setting, "tgl" => $tanggal, "ttd" => true, "start" => 1, "end" => $tt + 1, "fp" => true), true);


		// echo "<pre>";print_r($count_content);die();





		// if($tt - $max_data_first_page > 0){
		// 	$true_content[] = $this->load->view($view_name,array("data" => $main_data,"setting" => $setting,"tgl"=>$tanggal,"ttd" => false , "start"=>1 , "end"=>$max_data_first_page + 1,"fp" => true),true);
		//
		//
		// 	$tot = ($tt - $max_data_first_page);
		// 	$count_content = ceil($tot / $max_data_per_page);
		//
		// 	for ($i=0; $i < $count_content; $i++) {
		// 		$position = $i + 1;
		//
		// 		$start = ($max_data_per_page * ($position - 1)) + 1 + $max_data_first_page + $position ;
		// 		$end   = $start + $max_data_per_page;
		//
		// 		$ttd = $position == $count_content ? true : false;
		//
		// 		$true_content[] = $this->load->view($view_name,array("data" => $main_data,"setting" => $setting,"tgl"=>$tanggal,"ttd" => $ttd , "start"=>$start , "end"=>$end,"fp" => false),true);
		// 	}
		// }else{
		// 	$true_content[] = $this->load->view($view_name,array("data" => $main_data,"setting" => $setting,"tgl"=>$tanggal,"ttd" => true , "start"=>1 , "end"=>$max_data_first_page,"fp" => true),true);
		// }






		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(355, 280);
		$print_header = $header;
		$pdf = init_pdf("L", "mm", $custom_layout, true, 'UTF-8', false, $print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('PT. Medeq Mandiri Utama');
		$pdf->SetTitle('Permohonan Uji Laboratorium');
		$pdf->SetSubject('Permohonan Uji Laboratorium');
		$pdf->SetKeywords('Permohonan Uji Laboratorium');

		// header
		//$pdf->SetHeaderMargin(50);
		//$pdf->SetAutoPageBreak(TRUE, 0);

		// footer
		$pdf->SetPrintHeader(true);
		$pdf->setPrintFooter(FALSE);

		// margin
		$pdf->SetMargins(10, 50, 15, 15);
		$pdf->SetAutoPageBreak(TRUE, 25);

		// font
		$pdf->SetFont('tahoma', '', 10);

		// output
		if ($print_header == 0) {
			$pdf->SetPrintHeader(false);
			$pdf->SetPrintFooter(false);

			//$pdf->SetMargins(10, 50, 15, 15);
		}

		$pdf->AddPage();
		$pdf->writeHTML($content, TRUE, FALSE, TRUE, FALSE, '');
		// $first = true;
		// foreach ($true_content as $key) {
		// 	$pdf->AddPage();
		// 	if(!$first){
		// 			$pdf->writeHTML("<br><br>", true, false, true, false, '');
		// 	}
		// 	$first = false;
		// 	$pdf->writeHTML(utf8_encode($key), true, false, true, false, '');
		// }

		// $pdf->writeHTMLCell($w = 0, $h = 0, $x = 10, $y = 150, $html='<table >
		//   <tr>
		//     <td style="width:50%">
		//       <p>Hasil Kaji Ulang : </p>
		//       '.$main_data->res->hasil_kaji_ulang.'
		//     </td>
		//     <td style="width:50%;text-align:center;">
		//
		//         <p>jakarta , 07 September 2018</p>
		//         <p>Customer</p>
		//         <br>
		//         <br>
		//         <br>
		//         <p>'.$main_data->res->nama.'</p>
		//
		//     </td>
		//   </tr>
		// </table>', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true);



		$pdf->lastPage();
		if ($download == 1) {
			$pdf->Output('invoice.pdf', 'D');
		} else {
			$pdf->Output('invoice.pdf', 'I');
		}
	}

	public function pdf_paket($id, $download = 0, $header = 0, $tanggal = "")
	{
		// get data
		$this->db->join("jenis_pengantaran","jenis_pengantaran.id_jenis_pengantaran = permohonan.id_jenis_pengantaran","left");
		$this->db->select("permohonan.*, jenis_pengantaran.jenis_pengantaran");
		$query = $this->db->where("id_permohonan", $id)->get("permohonan");

		if ($query->num_rows() == 0) {
			echo "Data tidak ditemukan";
			die();
		}

		$main_data = new stdClass();
		$main_data->res = $query->row();

		// detail

		$this->db->join("satuan", "satuan.id_satuan = det.satuan");
		$this->db->join("kemasan", "kemasan.id_kemasan = det.kemasan");
		$this->db->join("kondisi", "kondisi.id_kondisi = det.kondisi");
		$this->db->select(" det.*
														,satuan.satuan
														,kemasan.kemasan
														,kondisi.kondisi");
		$this->db->where("det.id_permohonan", $id);
		$main_data->mdetail = $this->db->get("permohonan_detail det")->result();
		// end detail

		// pengujian dan metode

		for ($i = 0; $i < count($main_data->mdetail); $i++) {
			//pengujian
			$this->db->join("parameter_pengujian", "parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian", "left");
			$this->db->join("metode", "metode.id_metode = mpengujian.id_metode", "left");
			$this->db->select("mpengujian.* , parameter_pengujian.parameter_pengujian,metode.metode");
			$this->db->where("mpengujian.id_permohonan_detail", $main_data->mdetail[$i]->id_permohonan_detail);
			$this->db->where("id_paket", "0");

			$main_data->mdetail[$i]->mpengujian = $this->db->get("permohonan_detail_parameter mpengujian")->result();

			// $this->db->join("parameter_pengujian","parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian","left");
			// $this->db->join("metode","metode.id_metode = mpengujian.id_metode","left");
			$this->db->join("paket", "paket.id_paket = mpengujian.id_paket", "left");
			$this->db->select("paket.nama_paket parameter_pengujian ,'-' metode");
			$this->db->where("mpengujian.id_permohonan_detail", $main_data->mdetail[$i]->id_permohonan_detail);
			$this->db->where("mpengujian.id_paket !=", "0");

			$this->db->group_by("mpengujian.id_paket");

			$main_data->mdetail[$i]->mpengujian_paket = $this->db->get("permohonan_detail_parameter mpengujian")->result();

			// metode

			// $this->db->join("metode","metode.id_metode = mpengujian.id_metode","left");
			// $this->db->select("mpengujian.* , metode.metode");
			// $this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);
			//
			// $main_data->mdetail[$i]->mmetode = $this->db->get("permohonan_detail_metode mpengujian")->result();


		}

		// echo "<pre>";print_r($main_data->mdetail);die();



		// end pengujian dan metode



		$setting = $this->db->get("setting_permohonan")->row();
		// end get data

		// $content = $this->load->view("permohonan_pdf",array("data" => $main_data,"setting" => $setting,"tgl"=>$tanggal),true);
		$tt = 0;
		foreach ($main_data->mdetail as $key => $value) {
			// code...
			$tt += count($value->mpengujian);
		}
		// echo $tt;

		// die();


		$view_name = "permohonan_pdf_paket";
		$true_content = array();
		$max_data_first_page = 8;
		$max_data_per_page = 15;


		// echo "<pre>";print_r($count_content);die();





		if ($tt - $max_data_first_page > 0) {
			$true_content[] = $this->load->view($view_name, array("data" => $main_data, "setting" => $setting, "tgl" => $tanggal, "ttd" => false, "start" => 1, "end" => $max_data_first_page + 1, "fp" => true), true);


			$tot = ($tt - $max_data_first_page);
			$count_content = ceil($tot / $max_data_per_page);

			for ($i = 0; $i < $count_content; $i++) {
				$position = $i + 1;

				$start = ($max_data_per_page * ($position - 1)) + 1 + $max_data_first_page + $position;
				$end   = $start + $max_data_per_page;

				$ttd = $position == $count_content ? true : false;

				$true_content[] = $this->load->view($view_name, array("data" => $main_data, "setting" => $setting, "tgl" => $tanggal, "ttd" => $ttd, "start" => $start, "end" => $end, "fp" => false), true);
			}
		} else {
			$true_content[] = $this->load->view($view_name, array("data" => $main_data, "setting" => $setting, "tgl" => $tanggal, "ttd" => true, "start" => 1, "end" => $max_data_first_page, "fp" => true), true);
		}






		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(355, 280);
		$print_header = $header;
		$pdf = init_pdf("L", "mm", $custom_layout, true, 'UTF-8', false, $print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('PT. Medeq Mandiri Utama');
		$pdf->SetTitle('Permohonan Uji Laboratorium');
		$pdf->SetSubject('Permohonan Uji Laboratorium');
		$pdf->SetKeywords('Permohonan Uji Laboratorium');

		// header
		//$pdf->SetHeaderMargin(50);
		//$pdf->SetAutoPageBreak(TRUE, 0);

		// footer
		$pdf->SetPrintHeader(true);
		$pdf->setPrintFooter(FALSE);

		// margin
		$pdf->SetMargins(10, 40, 15, 15);
		$pdf->SetAutoPageBreak(TRUE, 25);

		// font
		$pdf->SetFont('tahoma', '', 10);

		// output
		if ($print_header == 0) {
			$pdf->SetPrintHeader(false);
			$pdf->SetPrintFooter(false);

			//$pdf->SetMargins(10, 50, 15, 15);
		}

		// $pdf->AddPage();
		// $pdf->writeHTML($content, TRUE, FALSE, TRUE, FALSE, '');
		$first = true;
		foreach ($true_content as $key) {
			$pdf->AddPage();
			if (!$first) {
				$pdf->writeHTML("<br><br>", true, false, true, false, '');
			}
			$first = false;
			$pdf->writeHTML(utf8_encode($key), true, false, true, false, '');
		}

		// $pdf->writeHTMLCell($w = 0, $h = 0, $x = 10, $y = 150, $html='<table >
		//   <tr>
		//     <td style="width:50%">
		//       <p>Hasil Kaji Ulang : </p>
		//       '.$main_data->res->hasil_kaji_ulang.'
		//     </td>
		//     <td style="width:50%;text-align:center;">
		//
		//         <p>jakarta , 07 September 2018</p>
		//         <p>Customer</p>
		//         <br>
		//         <br>
		//         <br>
		//         <p>'.$main_data->res->nama.'</p>
		//
		//     </td>
		//   </tr>
		// </table>', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true);



		$pdf->lastPage();
		if ($download == 1) {
			$pdf->Output('invoice.pdf', 'D');
		} else {
			$pdf->Output('invoice.pdf', 'I');
		}
	}


	public function pdf_kontrak()
	{
		$content = $this->load->view("kontrak_kerja_pdf", array(), true);

		//echo "<pre>"; print_r($content);die();

		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(279.4, 215.9);
		$print_header = 0;
		$pdf = init_pdf("P", "mm", $custom_layout, true, 'UTF-8', false, $print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('PT. Medeq Mandiri Utama');
		$pdf->SetTitle('Dokumen PT. Medeq');
		$pdf->SetSubject('Dokumen PT. Medeq');
		$pdf->SetKeywords('purchase order, receive order, konsinyasi, mutasi, adjustment stock, invoice');

		// header
		//$pdf->SetHeaderMargin(50);
		//$pdf->SetAutoPageBreak(TRUE, 0);

		// footer
		$pdf->SetPrintHeader(true);
		$pdf->setPrintFooter(FALSE);

		// margin
		$pdf->SetMargins(10, 35, 15, 15);
		$pdf->SetAutoPageBreak(TRUE, 25);

		// font
		$pdf->SetFont('tahoma', '', 10);

		// output
		if ($print_header == 0) {
			$pdf->SetPrintHeader(false);
			$pdf->SetPrintFooter(false);

			//$pdf->SetMargins(10, 50, 15, 15);
		}

		$pdf->AddPage();
		$pdf->writeHTML($content, TRUE, FALSE, TRUE, FALSE, '');





		$pdf->lastPage();
		$pdf->Output('invoice.pdf', 'I');
	}

	public function index()
	{

		try {
			$crud = new grocery_CRUD();

			$crud->set_table('view_pub_permohonan');
			$crud->set_primary_key('id_permohonan');
			$crud->set_subject('Permohonan Pengujian');

			$crud->columns(
				'created_at',
				'no_permohonan',
				// 'nama',
				'instansi_perusahaan',
				'nik_npwp',
				'alamat',
				'telepon_fax',
				'kontak_person',
				//,'hasil_kaji_ulang'
				// 'tanggal_masuk'
			);
			// $crud->order_by('no_permohonan', 'desc');


			$crud->display_as('created_at', 'Waktu Input');
			$crud->display_as('no_permohonan', 'No. Permohonan');
			$crud->display_as('instansi_perusahaan', 'Instansi / Perusahaan')->display_as('nik_npwp', 'Nik / NPWP');
			$crud->display_as('telepon_fax', 'Telepon / Fax');
			//$crud->display_as('tanggal_masuk','Tanggal Terima Sample /<br> Tgl Pengambilan (PPC)');
			// $crud->display_as('tanggal_masuk', 'Tgl Terima Sample');


			// $crud->add_fields('pelanggan', 'nama', 'instansi_perusahaan', 'nik_npwp', 'alamat', 'telepon_fax', 'kontak_person', 'tanggal_masuk', 'detail', 'hasil_kaji_ulang');
			$crud->edit_fields('instansi_perusahaan', 'nik_npwp', 'alamat', 'telepon_fax', 'kontak_person', 'detail');


			$crud->change_field_type('hasil_kaji_ulang', 'text');
			// $crud->change_field_type('id_pelanggan', 'invisible');


			$crud->callback_add_field('pelanggan', array($this, 'pelanggan'));
			$crud->callback_add_field('detail', array($this, 'detail'));
			$crud->callback_add_field('hasil_kaji_ulang', array($this, '_hasil_kaji_ulang'));

			// $crud->callback_edit_field('pelanggan', array($this, 'pelanggan'));
			$crud->callback_edit_field('detail', array($this, 'detail'));
			// $crud->callback_edit_field('Print', array($this, 'printc'));



			$crud->callback_before_insert(array($this, '_before_insert_callback'));
			$crud->callback_before_update(array($this, '_update_callback'));

			$crud->callback_after_insert(array($this, '_after_insert_callback'));
			$crud->callback_after_update(array($this, '_after_update_callback'));


			$crud->unset_delete();
			$crud->unset_read();
			$crud->unset_clone();
			$crud->unset_add();

			if ($crud->getState() == 'add') { //add these only in add form
				$crud->set_js('assets/grocery_crud/js/jquery-1.11.1.min.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.10.3.custom.min.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/ui/i18n/datepicker/jquery.ui.datepicker-id.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/config/jquery.datepicker.config.js');
				$crud->set_js('assets/grocery_crud/themes/flexigrid/js/jquery.form.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/jquery.form.min.js');
				$crud->set_js('assets/grocery_crud/themes/flexigrid/js/flexigrid-add.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/jquery.noty.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/config/jquery.noty.config.js');



				$crud->set_js('assets/grocery_crud/texteditor/ckeditor/ckeditor.js');
				$crud->set_js('assets/grocery_crud/texteditor/ckeditor/adapters/jquery.js');
				$crud->set_js('assets/grocery_crud/js/jquery_plugins/config/jquery.ckeditor.config.js');
			}

			$crud->unset_save();
			$crud->unset_back_to_list();
			$crud->set_custom_button('Terima', base_url() . 'portal/permohonan/terima/' . '{{primary_key}}');
			$crud->set_custom_button2('Tolak', base_url() . 'portal/permohonan/tolak/' . '{{primary_key}}');


			$output = $crud->render();


			$output->title = "Permohonan Pengujian";
			//$output = $this->grocery_crud->render();
			$c = $this->load->view('permohonan_index', (array)$output, true);

			//echo $c;
			$this->page->view2($c);
		} catch (Exception $e) {
			show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
		}
	}

	public function pelanggan($value = '', $primary_key = null)
	{
		return "<table ><tr><td style='padding:5px'><input type='hidden' name='id_pelanggan'><a href='javascript:void(0)' onclick=\"open_picker()\" class='btn '> Ambil Dari Daftar</a></td><td style='padding:5px'><a href='javascript:void(0)' class='btn btn-success'> Simpan ke Daftar</a></td></tr></table>";
	}

	public function printc($value = '', $primary_key = null)
	{
		$ret = "<table ><tr>
		<td style='padding:5px'><a  href='" . base_url() . $this->router->fetch_module() . "/" . $this->router->fetch_class() . "/word/" . $primary_key . "/1" . "' class='print btn btn-primary'> Download Word</a></td>
		<td style='padding:5px'><a  href='" . base_url() . $this->router->fetch_module() . "/" . $this->router->fetch_class() . "/pdf/" . $primary_key . "/1" . "' class='print btn btn-primary'> Download PDF</a></td>
		<td style='padding:5px'><a  href='" . base_url() . $this->router->fetch_module() . "/" . $this->router->fetch_class() . "/pdf/" . $primary_key . "/0" . "' class='print btn btn-primary' target='_blank'> Print PDF</a></td>
		<td style='padding:5px'><a  href='" . base_url() . $this->router->fetch_module() . "/" . $this->router->fetch_class() . "/pdf_paket/" . $primary_key . "/0" . "' class='print btn btn-primary' target='_blank'> Print PDF (Paket)</a></td>";

		$ret .= "<td style='padding:5px;border-right:1px solid black'>
							<label><input type='radio' name='kop' value='1' checked> Dengan Kop </label>
							<br>
							<label><input type='radio' name='kop' value='0'> Tanpa Kop </label>
						</td>";
		$ret .= "<td style='padding:5px'>
											Tanggal Print : <input type='text' class='datepicker-input' id='tanggal_print' value='" . date("d/m/Y") . "'>
										</td>";
		$ret .= "</tr></table>";

		return $ret;
	}

	function detail($value = '', $primary_key = null)
	{

		// $this->db->where('id_permohonan', $primary_key);
		$detail = $this->permohonan_model->get($primary_key);

		/* options */
		$op_kodelab = new MyOptions($this->db->get("kodelab"), "kodelab", "", "kodelab", true);
		$op_satuan = new MyOptions($this->db->get("satuan"), "id_satuan", "", "satuan", true);
		$op_kemasan = new MyOptions($this->db->get("kemasan"), "id_kemasan", "", "kemasan", true);
		$op_kondisi = new MyOptions($this->db->get("kondisi"), "id_kondisi", "", "kondisi", true);

		//$op_laboratorium = new MyOptions($this->db->get("laporan"),"id_laporan","","laporan",true);

		$source_parameter_pengujian = $this->db->select("parameter_pengujian.id_parameter_pengujian,parameter_pengujian.parameter_pengujian,laporan.laporan,laporan.id_laporan
																														,CONCAT(parameter_pengujian.parameter_pengujian, ' - ' , laporan.laporan) display
																													")
			->join("laporan", "laporan.id_laporan = parameter_pengujian.id_laporan")
			->get("parameter_pengujian");
		$op_parameter_pengujian = new MyOptionsData($source_parameter_pengujian, "id_parameter_pengujian", "", "display", true, "laporan", "id_laporan");
		$op_metode = new MyOptions($this->db->get("metode"), "id_metode", "", "metode", true);


		/* end of options*/



		$html = '
            <table id="detailzzzs" class="table table-striped">
            <tr> <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th> <th></th> </tr>';

		$html .= '
            		<tr class="master_detail">

        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Komoditas</div>
        					<input  type="text"  style="width:150px;height:28px;" name="det[0][komoditas]" >
        				</td>
        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Jenis / Varietas</div>
        					<input  type="text"  style="width:150px;height:28px;" name="det[0][varietas]" >
        				</td>
        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Jumlah</div>
        					<input  type="text"  style="width:50px;height:28px;" name="det[0][jumlah]" class="number" >
        				</td>
        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Satuan</div>
        					<select class="form-control select2" style="width: 100%;" name="det[0][satuan]">
			                  ' . $op_satuan->draw() . '
			                </select>
        				</td>
        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Kemasan</div>
        					<select class="form-control select2" style="width: 100%;" name="det[0][kemasan]">
			                  ' . $op_kemasan->draw() . '
			                </select>
        				</td>
        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Kondisi</div>
        					<select class="form-control select2" style="width: 100%;" name="det[0][kondisi]">
			                  ' . $op_kondisi->draw() . '
			                </select>
        				</td>
        				<td>
									<div style="clear;font-size:12px;font-weight:700;">Ket. Kondisi</div>
									<input  type="text"  style="width:150px;height:28px;" name="det[0][ket_kondisi]" >
        				</td>
                <td>

                </td>
        				<td>

        				</td>
        				<td>
        					<a href="javascript:void(0)" class="remove_detail btn btn-danger">X</a>
        				</td>
        			</tr>

							<tr class="master_detail2" style="border-bottom:2px solid black;">
								<td colspan="5">
									<div style="font-size:12px;font-weight:700;">
										<div style="width:200px;float:left">Parameter Pengujian</div>
										<div style="width:200px;float:left">Ket. Parameter</div>
										<div style="width:200px;float:left">Metode</div>
									</div>

									<div class="param_container">
										<div class="master_param_item">
											<select class="form-control select3 multiple_check" style="width: 150px;" name="det[0][pengujian][0][param]">
														' . $op_parameter_pengujian->draw() . '
											</select>
											<input  type="text"  style="width:180px;height:28px;" name="det[0][pengujian][0][ket]">
											<select class="form-control select2 multiple_check" style="width: 150px;" name="det[0][pengujian][0][metode]">
												' . $op_metode->draw() . '
											</select>
											<input type="hidden" name="det[0][pengujian][0][hidden_id]" value="z">
											<input type="hidden" name="det[0][pengujian][0][paket_id]">
											<a href="javascript:void(0)" class="btn btn-warning btn-small param_delete"> X </a>
										</div>
									</div>

									<a href="javascript:void(0)" class="btn btn-small param_btn" data-pos="0"> Tambah Parameter</a>
								</td>

								<td>
									<div style="font-size:12px;font-weight:700;">Keterangan</div>
									<textarea  style="width:150px;" name="det[0][keterangan]" > </textarea>
									<input type="hidden" style="width:50px;" name="det[0][hidden_id]"  value="z">
								</td>
							</tr>

            ';


		$det_counter = 1;
		if ($detail != null) {
			// echo "<pre>";print_r($detail);die();
			foreach ($detail->mdetail as $x => $v) {

				$html .= '<tr>

	        								<td>
															<div style="clear;font-size:12px;font-weight:700;">Komoditas</div>
	                            <input  type="text"  style="width:150px;height:28px;" name="det[' . $det_counter . '][komoditas]" value="' . $v->komoditas . '" >
	                        </td>
	                        <td>
															<div style="clear;font-size:12px;font-weight:700;">Jenis / Varietas</div>
	                            <input  type="text"  style="width:150px;height:28px;" name="det[' . $det_counter . '][varietas]" value="' . $v->varietas . '" >
	                        </td>
	                        <td>
															<div style="clear;font-size:12px;font-weight:700;">Jumlah</div>
	                            <input  type="text"  style="width:50px;height:28px;clear:both;" name="det[' . $det_counter . '][jumlah]" value="' . $v->jumlah . '" class="number" >
	                        </td>
	                        <td>
															<div style="clear;font-size:12px;font-weight:700;">Satuan</div>
	                            <select class="form-control select2" style="width: 100%;" name="det[' . $det_counter . '][satuan]">
	                              ' . $op_satuan->set_selected($v->satuan)->draw() . '
	                            </select>
	                        </td>
	                        <td>
															<div style="clear;font-size:12px;font-weight:700;">Kemasan</div>
	                            <select class="form-control select2" style="width: 100%;" name="det[' . $det_counter . '][kemasan]">
	                              ' . $op_kemasan->set_selected($v->kemasan)->draw() . '
	                            </select>
	                        </td>
	                        <td>
															<div style="clear;font-size:12px;font-weight:700;">Kondisi</div>
	                            <select class="form-control select2" style="width: 100%;" name="det[' . $det_counter . '][kondisi]">
	                              ' . $op_kondisi->set_selected($v->kondisi)->draw() . '
	                            </select>
	                        </td>
													<td>
														<div style="clear;font-size:12px;font-weight:700;">Ket. Kondisi</div>
														<input  type="text"  style="width:150px;height:28px;" name="det[' . $det_counter . '][ket_kondisi]" value="' . $v->ket_kondisi . '" >
					        				</td>
	                        <td>

	                        </td>
	                        <td>

	                        </td>
	                        <td>
	                        </td>
	                    </tr>
	        			</tr>

								<tr style="border-bottom:2px solid black;">
								<td colspan="5">
									<div style="font-size:12px;font-weight:700;">
										<div style="width:200px;float:left">Parameter Pengujian</div>
										<div style="width:200px;float:left">Ket. Parameter</div>
										<div style="width:200px;float:left">Metode</div>
									</div>

									<div class="param_container">
										';
				$mpengujian_counter = 1;
				foreach ($v->mpengujian as $key => $value) {
					$html .= '<div>
												<select class="form-control select3 multiple_check" style="width: 150px;" name="det[' . $det_counter . '][pengujian][' . $mpengujian_counter . '][param]">
															' . $op_parameter_pengujian->set_selected($value->id_parameter_pengujian)->draw() . '
												</select>
												<input  type="text"  style="width:180px;height:28px;" name="det[' . $det_counter . '][pengujian][' . $mpengujian_counter . '][ket]" value="' . $value->caption . '">
												<select class="form-control select2 multiple_check" style="width: 150px;" name="det[' . $det_counter . '][pengujian][' . $mpengujian_counter . '][metode]">
													' . $op_metode->set_selected($value->id_metode)->draw() . '
												</select>
												<input type="hidden" name="det[' . $det_counter . '][pengujian][' . $mpengujian_counter . '][hidden_id]" value="' . $value->id_permohonan_detail_parameter . '">
												<input type="hidden" name="det[' . $det_counter . '][pengujian][' . $mpengujian_counter . '][paket_id]" value="' . $value->id_paket . '">
												


											</div>';
					$mpengujian_counter++;
				}
				$html .= '<span style="display:none" class="mepngujian_counter">' . $det_counter . '-' . $mpengujian_counter . '</span>';


				$html .= '
									</div>
								</td>

									<td>
										<div style="font-size:12px;font-weight:700;">Keterangan</div>
										<textarea  style="width:150px;" name="det[' . $det_counter . '][keterangan]" >' . $v->keterangan . '</textarea>
										<input type="hidden" style="width:50px;" name="det[' . $det_counter . '][hidden_id]"  value="' . $v->id_permohonan_detail . '">
									</td>
								</tr>



								';

				$det_counter++;
			}
		}



		$html .= '
			</table>
			
				<span style="display:none" class="counter">' . ($det_counter + 1) . '</span>';
		return $html;
	}


	public function _before_insert_callback($post_array)
	{
		// echo "<pre>";print_r($post_array);die();
		$post_array['created_by'] = 1;
		return $post_array;
	}

	public function _after_insert_callback($post_array, $primary_key)
	{
		//echo "<pre>";print_r($post_array);die();
		// delete detail
		// $this->permohonan_model->delete_details($primary_key);

		// insert detail
		$this->permohonan_model->add_details($post_array["det"], $primary_key);
	}

	public function _hasil_kaji_ulang($value = '', $primary_key = null)
	{
		if ($value == '') {

			return "<textarea id='field-hasil_kaji_ulang' name='hasil_kaji_ulang' class='texteditor' >
							Bahan Standar Uji<br/>
							Kesiapan Alat Uji<br/>
							Metode Uji<br/>
							Lama Waktu Uji<br/>
							Personil Penguji<br/>
							</textarea>";
		} else {
			return "<textarea id='field-hasil_kaji_ulang' name='hasil_kaji_ulang' class='texteditor' >" . $value . "</textarea>";
		}
	}
	public function _update_callback($post_array)
	{
		// delete detail

		// insert detail

		$post_array['updated_by'] = 1;
		$post_array['updated_at'] = date("Y-m-d H:m:s");
		return $post_array;
	}

	public function _after_update_callback($post_array, $primary_key)
	{
		// echo "<pre>";print_r($post_array);die();
		// delete detail
		$hidden_id = array();
		$hidden_id_parameter = array();
		if (isset($post_array["det"])) {
			foreach ($post_array["det"] as $key => $value) {
				if ($value["hidden_id"] != "z") {
					$hidden_id[] = $value["hidden_id"];
				}

				foreach ($value['pengujian'] as $x => $v) {
					if ($v["hidden_id"] != "z") {
						$hidden_id_parameter[] = $v['hidden_id'];
					}
				}
			}
		}
		// echo "<pre>";print_r($hidden_id);//die();
		// echo "<pre>";print_r($hidden_id_parameter);die();




		// delete detail parameter
		$this->permohonan_model->delete_parameter_where_not($primary_key, $hidden_id_parameter);

		// delete detail
		$this->permohonan_model->delete_details_where_not($primary_key, $hidden_id);




		if (isset($post_array["det"])) {

			// add detail
			$array_to_add = array();
			$array_to_add_parameter = array();
			// $array_to_add = $post_array["det"];

			//re arrange
			foreach ($post_array["det"] as $key) {
				$array_to_add[] = $key;
			}

			// echo "<pre>";print_r($array_to_add);die();

			$temp_count = count($array_to_add);

			for ($i = 0; $i < $temp_count; $i++) {
				if ($array_to_add[$i]["hidden_id"] != "z") {
					$array_to_add_parameter[] = $array_to_add[$i];
					unset($array_to_add[$i]);
				}
			}

			// echo "<pre>";print_r($array_to_add_parameter);//die();

			// for ($i=0; $i < count($array_to_add_parameter); $i++) {
			// 	// echo "<pre>";print_r($array_to_add_parameter[$i]['pengujian']);die();
			// 	for ($j=0; $j < $array_to_add_parameter[$i]['pengujian']; $j++) {
			// 		if($array_to_add_parameter[$i]['pengujian'][$j]['hidden_id'] != 'z') usnet($array_to_add_parameter[$i]['pengujian'][$j]);
			// 	}
			// }
			// echo "<pre>";print_r($array_to_add_parameter);die();
			// echo "<pre>";print_r($array_to_add);die();

			$this->permohonan_model->add_details($array_to_add, $primary_key);



			$this->permohonan_model->add_details_parameter($array_to_add_parameter, $primary_key);


			// update detail
			$array_to_update = array();
			//$array_to_update = $post_array["det"];

			//re arrange
			foreach ($post_array["det"] as $key) {
				$array_to_update[] = $key;
			}
			// echo "<pre>";print_r($array_to_update);//die();

			$temp_count = count($array_to_update);
			for ($i = 0; $i < $temp_count; $i++) {
				if ($array_to_update[$i]["hidden_id"] == "z") unset($array_to_update[$i]);
			}

			// echo "<pre>";print_r($array_to_update);die();


			$this->permohonan_model->update_parameter($array_to_update, $primary_key);
			$this->permohonan_model->update_details($array_to_update, $primary_key);
			// end of update detail

		}
	}

	// Callback untuk menambahkan custom action buttons
	public function add_custom_action_buttons($value, $row)
	{
		$id = $row->id_pub_permohonan_detail;
		$status = $row->status;

		$buttons = '<div style="min-width:300px;">';

		// Tombol Detail (selalu tampil)
		$buttons .= '<a href="' . base_url($this->router->fetch_module() . '/' . $this->router->fetch_class() . '/view_detail/' . $id) . '" 
                    class="btn btn-info btn-sm" style="margin-right:5px;">
                    <i class="fa fa-eye"></i> Detail
                </a>';

		// Tombol Approve (hanya jika status = pending)
		if ($status == 'pending') {
			$buttons .= '<a href="javascript:void(0)" 
                        onclick="confirmApprove(' . $id . ')" 
                        class="btn btn-success btn-sm" style="margin-right:5px;">
                        <i class="fa fa-check"></i> Setujui
                    </a>';

			$buttons .= '<a href="javascript:void(0)" 
                        onclick="confirmReject(' . $id . ')" 
                        class="btn btn-danger btn-sm" style="margin-right:5px;">
                        <i class="fa fa-times"></i> Tolak
                    </a>';
		}

		// Tombol Copy ke Data Utama (hanya jika status = approved dan belum dicopy)
		if ($status == 'approved' && empty($row->copied_to_id)) {
			$buttons .= '<a href="javascript:void(0)" 
                        onclick="confirmCopyToMain(' . $id . ')" 
                        class="btn btn-primary btn-sm">
                        <i class="fa fa-copy"></i> Simpan ke Data Utama
                    </a>';
		}

		// Info jika sudah dicopy
		if ($status == 'copied') {
			$buttons .= '<span class="label label-success">
                        <i class="fa fa-check-circle"></i> Sudah Disalin
                    </span>';
		}

		// Info jika ditolak
		if ($status == 'rejected') {
			$buttons .= '<span class="label label-danger">
                        <i class="fa fa-ban"></i> Ditolak
                    </span>';
		}

		$buttons .= '</div>';

		return $buttons;
	}

	public function terima($id)
	{
		ini_set('display_errors', 1);
		error_reporting(E_ALL);

		// Start transaction
		$this->db->trans_start();

		// $input = $this->input->get();

		//
		$year = date("Y");
		$pub_permohonan_detail = $this->db
			->where("id_pub_permohonan_detail", $id)
			->where("deleted_at is null")
			->get("pub_permohonan_detail")
			->row();
		if ($pub_permohonan_detail == null) {
			// return error response
			$this->session->set_flashdata('error', 'Data permohonan tidak ditemukan.');
			redirect(base_url('portal/permohonan'));
		}
		$pub_permohonan_detail_parameter = $this->db
			->where("id_pub_permohonan_detail", $pub_permohonan_detail->id_pub_permohonan_detail)
			->where("deleted_at is null")
			->get("pub_permohonan_detail_parameter")
			->result();
		$pub_user = $this->db->where("id_public_user", $pub_permohonan_detail->user_id)->get("pub_users")->row();

		// copy permohonan
		$permohonan_payload = array(
			// "id_permohonan" => ,
			// "created_at" => ,
			// "created_by" => ,
			// "updated_at" => ,
			// "updated_by" => ,
			"tanggal_pengambilan" => date("Y-m-d"),
			"id_pelanggan" => $pub_user->id_public_user,
			"nama" => $pub_user->instansi_perusahaan,
			"instansi_perusahaan" => $pub_user->instansi_perusahaan,
			"nik_npwp" => $pub_user->nik_npwp,
			"alamat" => $pub_user->alamat,
			"telepon_fax" => $pub_user->telepon_fax,
			"kontak_person" => $pub_user->kontak_person,
			// "hasil_kaji_ulang" => ,
			// "uang_muka" => ,
			// "sisa_pembayaran" => ,
			"tanggal_masuk" => date("Y-m-d"),
		);

		// copy permohonan detail
		$current_counter = $this->permohonan_model->get_counter(date("Y"));
		$current_counter++;
		$temp_nmr  = (string)$current_counter;
		$zero = "";
		for ($i = 0; $i <  (3 - strlen($temp_nmr)); $i++) {
			$zero .= "0";
		}
		$temp_nmr = $zero . $temp_nmr;

		$nomor_contoh = $temp_nmr . "/" . date("m") . "/" . date("Y");

		$permohonan_detail_payload = array(
			// "id_permohonan_detail" => "",
			// "created_at" => "",
			// "created_by" => "",
			// "updated_at" => "",
			// "updated_by" => "",
			// "id_permohonan" => "",
			"komoditas" => $pub_permohonan_detail->komoditas,
			"varietas" => $pub_permohonan_detail->varietas,
			"jumlah" => $pub_permohonan_detail->jumlah,
			"satuan" => $pub_permohonan_detail->satuan,
			"kemasan" => $pub_permohonan_detail->kemasan,
			"kondisi" => $pub_permohonan_detail->kondisi,
			"keterangan" => $pub_permohonan_detail->keterangan,
			// "pengujian" => "",
			// "metode" => "",
			"nomor_contoh" => $nomor_contoh,
			// "id_kodelab" => "",
			// "nomor_kodelab" => "",
			// "laporan" => "",
			"ket_kondisi" => $pub_permohonan_detail->ket_kondisi,
		);


		// copy permohonan detail parameter
		$permohonan_detail_parameter_payload = array();
		foreach ($pub_permohonan_detail_parameter as $key => $value) {
			$biaya = 0;
			$b = $this->db
				->select("parameter_pengujian.*,laporan.kode_contoh lap_kode_contoh")
				->where("id_parameter_pengujian", $value->id_parameter_pengujian)
				->join("laporan", "laporan.id_laporan = parameter_pengujian.id_laporan", "left")
				->get("parameter_pengujian")->row();
			if (isset($b->harga)) $biaya = $b->harga;

			$kode_contoh_to_insert = "";
			if ($b->kode_contoh != "" && $b->kode_contoh != null) {
				$kode_contoh_to_insert = $b->kode_contoh;
			} else {
				$kode_contoh_to_insert = $b->lap_kode_contoh;
			}

			// check $temp_kode_contoh
			if (isset($temp_kode_contoh[$kode_contoh_to_insert])) {
				// jika ada, gunakan $temp_kode_contoh
				$kode_contoh_final = $temp_kode_contoh[$kode_contoh_to_insert];
			} else {
				// jika tidak ada , buat kode_contoh dan simpan ke $temp_kode_contoh
				$kkodelab = $kode_contoh_to_insert;
				$current_counter_lab 	= $this->permohonan_model->get_counter_kodelab($year, $kkodelab);
				// Format nomor laboratorium : NOMOR(3 digit)/KODE LAB/BULAN(mm)/TAHUN(yy)
				//                           : 001/Bu/01/17
				$zero = "";
				$current_counter_lab++;
				$temp2 = (string)$current_counter_lab;
				for ($i = 0; $i <  (3 - strlen($temp2)); $i++) {
					$zero .= "0";
				}
				$temp2 = $zero . $temp2;

				// $kode_contoh_final = $temp2 . "/" . $kkodelab . "/" . $this->romawi(date("n")) .  "/" . date("y");
				$kode_contoh_final = "000" . "/" . $kkodelab . "/" . $this->permohonan_model->romawi(date("n")) .  "/" . date("y");

				$temp_kode_contoh[$kode_contoh_to_insert] = $kode_contoh_final;
				$this->permohonan_model->update_counter_kodelab($year, $kkodelab, $current_counter_lab);
			}

			$permohonan_detail_parameter_payload[] = array(
				// "id_permohonan_detail_parameter" => "",
				"id_parameter_pengujian" => $value->id_parameter_pengujian,
				// "id_permohonan_detail" => "",
				"biaya" => $value->biaya,
				"kode_contoh" => $kode_contoh_final,
				"caption" => $value->caption,
				"id_metode" => $value->id_metode,
				// "id_paket" => "",
			);
		}

		//insert permohonan
		$this->db->insert("permohonan", $permohonan_payload);
		$new_permohonan_id = $this->db->insert_id();

		//insert permohonan detail
		$permohonan_detail_payload['id_permohonan'] = $new_permohonan_id;
		$this->db->insert("permohonan_detail", $permohonan_detail_payload);
		$new_permohonan_detail_id = $this->db->insert_id();

		//insert permohonan detail parameter
		foreach ($permohonan_detail_parameter_payload as $key => $value) {
			$value['id_permohonan_detail'] = $new_permohonan_detail_id;
			$this->db->insert("permohonan_detail_parameter", $value);
		}

		// insert tracking
		$tracking_payload = array(
			// "id_tracking" => "",
			"id_pub_permohonan_detail" => $id,
			"no_permohonan" => $pub_permohonan_detail->no_permohonan,
			"status" => "diterima",
			"stage" => "proses",
			"description" => "Permohonan diterima dan disalin ke data utama.",
			// "notes" => "",
			// "updated_by" => "",
			// "user_id" => "",
			"activity_at" => date("Y-m-d H:m:s"),
			"created_at" => date("Y-m-d H:m:s"),
			// "updated_at" => "",
			// "deleted_at" => "",
		);
		$this->db->insert("pub_tracking", $tracking_payload);

		//update pub_permohonan_detail status to 'proses'
		$update_payload = array(
			"status" => "approved",
			"copied_to_id" => $new_permohonan_id,
			"updated_at" => date("Y-m-d H:m:s"),
		);
		$this->db->where("id_pub_permohonan_detail", $id);
		$this->db->update("pub_permohonan_detail", $update_payload);

		// Complete transaction
		$this->db->trans_complete();


		// return response
		$this->session->set_flashdata('success', 'Permohonan berhasil diterima dan disalin ke data utama.');

		// redirect
		redirect(base_url('work/permohonan/index/edit/' . $new_permohonan_id));
	}

	function tolak($id)
	{

		$year = date("Y");
		$pub_permohonan_detail = $this->db
			->where("id_pub_permohonan_detail", $id)
			->where("deleted_at is null")
			->get("pub_permohonan_detail")
			->row();
		if ($pub_permohonan_detail == null) {
			// return error response
			$this->session->set_flashdata('error', 'Data permohonan tidak ditemukan.');
			redirect(base_url('portal/permohonan'));
		}

		// insert tracking
		$tracking_payload = array(
			// "id_tracking" => "",
			"id_pub_permohonan_detail" => $id,
			"no_permohonan" => $pub_permohonan_detail->no_permohonan,
			"status" => "ditolak",
			"stage" => "ditolak",
			"description" => "Permohonan ditolak.",
			// "notes" => "",
			// "updated_by" => "",
			// "user_id" => "",
			"activity_at" => date("Y-m-d H:m:s"),
			"created_at" => date("Y-m-d H:m:s"),
			// "updated_at" => "",
			// "deleted_at" => "",
		);
		$this->db->insert("tracking", $tracking_payload);

		//update status to 'rejected'
		$update_payload = array(
			"status" => "rejected",
			"updated_at" => date("Y-m-d H:m:s"),
		);
		$this->db->where("id_pub_permohonan_detail", $id);
		$this->db->update("pub_permohonan_detail", $update_payload);

		// return response
		$this->session->set_flashdata('success', 'Permohonan berhasil ditolak.');
		redirect(base_url('portal/permohonan'));
	}
}
