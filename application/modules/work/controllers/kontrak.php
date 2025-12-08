<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kontrak extends CI_Controller
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

		$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor(APPPATH . 'third_party/PhpWord/kontrak_kerja.docx');

		$texts = $this->db->get("setting_kop")->row();
		$kode_laporan = $this->db->get("setting_kontrak_kerja")->row();

		$query = $this->db->where("id_permohonan", $id)->get("permohonan");

		if ($query->num_rows() == 0) {
			echo "Data tidak ditemukan";
			die();
		}

		$data = $this->permohonan_model->get($id);

		$total = 0;
		foreach ($data->mdetail as $k => $v):
			for ($i = 0; $i < count($v->mpengujian); $i++) :
				$total += $v->mpengujian[$i]->harga;
			endfor;
		endforeach;



		// end pengujian dan metode


		$templateProcessor->setValue('header_line1', $texts->line_1);
		$templateProcessor->setValue('header_line2', $texts->line_2);
		$templateProcessor->setValue('header_line3', $texts->line_3);
		$templateProcessor->setValue('header_line4', $texts->line_4);
		$templateProcessor->setValue('header_line5', $texts->line_5);
		$templateProcessor->setValue('kode_dokumen', $kode_laporan->kode_laporan);

		$ttgl = $this->tgl_indo(date("Y-m-d"));
		$templateProcessor->setValue("tanggal", $ttgl);
		$templateProcessor->setValue("customer", $data->res->nama);

		$tgl_terima = "";
		if (isset($data->res->tanggal_masuk)) {
			$tgl_terima = substr($data->res->tanggal_masuk, 0, 10);
			$tgl_terima = $this->tgl_indo($tgl_terima);
		}
		$templateProcessor->setValue("tanggal_terima", $tgl_terima);
		$tgl_ambil =  isset($data->res->tanggal_pengambilan) ?  $this->tgl_indo($data->res->tanggal_pengambilan) : "";
		$templateProcessor->setValue("tanggal_ambil", $tgl_ambil);

		$templateProcessor->setValue("total", "Rp. " . number_format($total, 0, ",", "."));
		$templateProcessor->setValue("uang_muka", "Rp. " . number_format($data->res->uang_muka, 0, ",", "."));
		$templateProcessor->setValue("sisa_pembayaran", "Rp. " . number_format($total - $data->res->uang_muka, 0, ",", "."));



		$templateProcessor->cloneRow('no', count($data->mdetail));

		for ($i = 0; $i < count($data->mdetail); $i++) {

			$final_count = count($data->mdetail[$i]->mpengujian);
			if ($final_count <= 0) $final_count = 1;
			$templateProcessor->cloneRow('no#' . ($i + 1), $final_count);
			for ($j = 1; $j < count($data->mdetail[$i]->mpengujian); $j++) :
				// echo 'no#'.($i+1)."<br>";
				$parameter_text =  isset($data->mdetail[$i]->mpengujian[$j]->parameter_pengujian) ? $data->mdetail[$i]->mpengujian[$j]->parameter_pengujian : "-";
				$biaya_text =  isset($data->mdetail[$i]->mpengujian[$j]->harga) ? $data->mdetail[$i]->mpengujian[$j]->harga : "-";

				$templateProcessor->setValue('parameter#' . ($i + 1) . "#" . ($j + 1), $parameter_text);
				$templateProcessor->setValue('biaya#' . ($i + 1) . "#" . ($j + 1), $biaya_text);

				$templateProcessor->setValue('no#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('komoditas#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('varietas#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('jumlah#' . ($i + 1) . "#" . ($j + 1), "");
				$templateProcessor->setValue('nomor_contoh#' . ($i + 1) . "#" . ($j + 1), "");
				// $templateProcessor->setValue('kemasan#'.($i+1)."#".($j+1), "");
				$templateProcessor->setValue('kondisi#' . ($i + 1) . "#" . ($j + 1), "");

				// $templateProcessor->setValue('parameter#'.($i+1)."#".($j+1), "");

				$templateProcessor->setValue('keterangan#' . ($i + 1) . "#" . ($j + 1), "");
			endfor;



			$templateProcessor->setValue('no#' . ($i + 1) . "#1", $i + 1);
			$templateProcessor->setValue('komoditas#' . ($i + 1) . "#1", $data->mdetail[$i]->komoditas);
			$templateProcessor->setValue('varietas#' . ($i + 1) . "#1", $data->mdetail[$i]->varietas);
			$templateProcessor->setValue('jumlah#' . ($i + 1) . "#1", $data->mdetail[$i]->jumlah . " " . $data->mdetail[$i]->satuan);
			// $templateProcessor->setValue('kemasan#'.($i+1)."#1", $data->mdetail[$i]->kemasan);
			$templateProcessor->setValue('kondisi#' . ($i + 1) . "#1", $data->mdetail[$i]->kondisi);
			$templateProcessor->setValue('nomor_contoh#' . ($i + 1) . "#1", $data->mdetail[$i]->nomor_contoh);

			$parameter_text = isset($data->mdetail[$i]->mpengujian[0]->parameter_pengujian) ? $data->mdetail[$i]->mpengujian[0]->parameter_pengujian : "-";
			$biaya_text =  isset($data->mdetail[$i]->mpengujian[$j]->harga) ? $data->mdetail[$i]->mpengujian[$j]->harga : "-";


			$templateProcessor->setValue('parameter#' . ($i + 1) . "#1", $parameter_text);
			$templateProcessor->setValue('biaya#' . ($i + 1) . "#1", $biaya_text);
			$templateProcessor->setValue('keterangan#' . ($i + 1) . "#1", $data->mdetail[$i]->keterangan);
		}






		// echo date('H:i:s'), ' Saving the result document...', EOL;
		header("Content-Disposition: attachment; filename='Permohonan Penujian.docx'");
		$templateProcessor->saveAs('php://output');
		// $templateProcessor->saveAs(APPPATH.'third_party/PhpWord/Sample_23_TemplateBlock_hasil.docx');
	}

	public function pdf($id, $download = 0, $header = 0, $tanggal = "")
	{
		$data = $this->permohonan_model->get($id);
		$setting = $this->db->get("setting_kontrak_kerja")->row();

		//$content = $this->load->view("kontrak_kerja_pdf",array("data" => $data,"setting" => $setting,"tgl"=>$tanggal),true);

		$view_name = "kontrak_kerja_pdf";
		$true_content = array();
		$max_data_first_page = 20;
		$max_data_per_page = 25;

		$tt = 0;
		foreach ($data->mdetail as $key => $value) {
			// code...
			$tt += count($value->mpengujian);
			// echo count($value->mpengujian)."<br>";
		}

		// echo $tt;die();




		// echo "<pre>";print_r($tt);die();


		$content = $this->load->view($view_name, array("data" => $data, "setting" => $setting, "tgl" => $tanggal, "ttd" => true, "start" => 1, "end" => $tt + 1, "fp" => true), true);


		// if($tt - $max_data_first_page > 0){
		// 	$true_content[] = $this->load->view($view_name,array("data" => $data,"setting" => $setting,"tgl"=>$tanggal,"ttd" => false , "start"=>0 , "end"=>($max_data_first_page + 1),"fp" => true),true);


		// 	$tot = ($tt - $max_data_first_page);
		// 	$count_content = ceil($tot / $max_data_per_page);

		// 	for ($i=0; $i < $count_content; $i++) {
		// 		$position = $i + 1;

		// 		$start = ($max_data_per_page * ($position - 1)) + 1 + $max_data_first_page + $position ;
		// 		$end   = $start + $max_data_per_page;

		// 		$ttd = $position == $count_content ? true : false;

		// 		$true_content[] = $this->load->view($view_name,array("data" => $data,"setting" => $setting,"tgl"=>$tanggal,"ttd" => $ttd , "start"=>$start , "end"=>$end,"fp" => false),true);
		// 	}
		// }else{
		// 	$true_content[] = $this->load->view($view_name,array("data" => $data,"setting" => $setting,"tgl"=>$tanggal,"ttd" => true , "start"=>1 , "end"=>$max_data_first_page,"fp" => true),true);
		// }

		//echo $content;die();
		//echo "<pre>"; print_r($content);die();

		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(355, 280);
		$print_header = $header;
		$pdf = init_pdf("P", "mm", $custom_layout, true, 'UTF-8', false, $print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('Riki');
		$pdf->SetTitle('Kontrak Kerja Pengujian');
		$pdf->SetSubject('Kontrak Kerja Pengujian');
		$pdf->SetKeywords('Kontrak Kerja Pengujian');

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

		$pdf->AddPage();
		$pdf->writeHTML($content, TRUE, FALSE, TRUE, FALSE, '');

		$first = true;

		// foreach ($true_content as $key) {
		// 	$pdf->AddPage();
		// 	if(!$first){
		// 			$pdf->writeHTML("<br><br>", true, false, true, false, '');
		// 	}
		// 	$first = false;
		// 	$pdf->writeHTML($key, true, false, true, false, '');
		// }





		$pdf->lastPage();
		if ($download == 1) {
			$pdf->Output('kontrak_kerja.pdf', 'D');
		} else {
			$pdf->Output('kontrak_kerja.pdf', 'I');
		}
	}

	public function pdf_paket($id, $download = 0, $header = 0, $tanggal = "")
	{
		$data = $this->permohonan_model->get($id);
		$setting = $this->db->get("setting_kontrak_kerja")->row();

		//$content = $this->load->view("kontrak_kerja_pdf",array("data" => $data,"setting" => $setting,"tgl"=>$tanggal),true);

		$view_name = "kontrak_kerja_pdf_paket";
		$true_content = array();
		$max_data_first_page = 20;
		$max_data_per_page = 25;

		$tt = 0;
		foreach ($data->mdetail as $key => $value) {
			// code...
			$tt += count($value->mpengujian);
			// echo count($value->mpengujian)."<br>";
		}

		// echo $tt;die();




		// echo "<pre>";print_r($tt);die();





		if ($tt - $max_data_first_page > 0) {
			$true_content[] = $this->load->view($view_name, array("data" => $data, "setting" => $setting, "tgl" => $tanggal, "ttd" => false, "start" => 0, "end" => ($max_data_first_page + 1), "fp" => true), true);


			$tot = ($tt - $max_data_first_page);
			$count_content = ceil($tot / $max_data_per_page);

			for ($i = 0; $i < $count_content; $i++) {
				$position = $i + 1;

				$start = ($max_data_per_page * ($position - 1)) + 1 + $max_data_first_page + $position;
				$end   = $start + $max_data_per_page;

				$ttd = $position == $count_content ? true : false;

				$true_content[] = $this->load->view($view_name, array("data" => $data, "setting" => $setting, "tgl" => $tanggal, "ttd" => $ttd, "start" => $start, "end" => $end, "fp" => false), true);
			}
		} else {
			$true_content[] = $this->load->view($view_name, array("data" => $data, "setting" => $setting, "tgl" => $tanggal, "ttd" => true, "start" => 1, "end" => $max_data_first_page, "fp" => true), true);
		}

		//echo $content;die();
		//echo "<pre>"; print_r($content);die();

		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(355, 280);
		$print_header = $header;
		$pdf = init_pdf("P", "mm", $custom_layout, true, 'UTF-8', false, $print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('Riki');
		$pdf->SetTitle('Kontrak Kerja Pengujian');
		$pdf->SetSubject('Kontrak Kerja Pengujian');
		$pdf->SetKeywords('Kontrak Kerja Pengujian');

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
			$pdf->writeHTML($key, true, false, true, false, '');
		}





		$pdf->lastPage();
		if ($download == 1) {
			$pdf->Output('kontrak_kerja.pdf', 'D');
		} else {
			$pdf->Output('kontrak_kerja.pdf', 'I');
		}
	}

	public function index()
	{

		try {
			$crud = new grocery_CRUD();

			$crud->set_table('permohonan');
			$crud->set_subject('Kontrak Kerja');

			$crud->columns(
				'created_at',
				'nama',
				'instansi_perusahaan',
				'nik_npwp',
				'alamat',
				'telepon_fax',
				'kontak_person',
				'hasil_kaji_ulang',
				'tanggal_pengambilan'
			);

			$crud->display_as('created_at', 'Waktu Input');
			$crud->display_as('instansi_perusahaan', 'Instansi / Perusahaan')->display_as('nik_npwp', 'Nik / NPWP');
			$crud->display_as('telepon_fax', 'Telepon / Fax');
			$crud->display_as('tanggal_pengambilan', 'Tanggal Pengambilan');



			$crud->edit_fields('Print', 'Detail', 'tanggal_pengambilan', 'total', 'uang_muka', 'sisa_pembayaran');

			$crud->callback_edit_field('Print', array($this, 'printc'));
			$crud->callback_edit_field('Detail', array($this, 'detail'));

			$crud->callback_edit_field('total', function ($t = 0) {
				$total = 0;
				foreach ($this->data->mdetail as $k => $v):
					for ($i = 0; $i < count($v->mpengujian); $i++) :
						$total += $v->mpengujian[$i]->biaya;
					endfor;
				endforeach;



				return '<input type="text" value="' . $total . '" name="total" class="numberOnly" disable style="background-color:#EFEFEF;text-align:right">';
			});

			$crud->callback_edit_field('uang_muka', function ($t = 0) {
				$this->uang_muka = $t;
				return '<input type="text" value="' . $t . '" name="uang_muka" class="numberOnly" style="text-align:right">';
			});

			$crud->callback_edit_field('sisa_pembayaran', function () {
				$total = 0;
				foreach ($this->data->mdetail as $k => $v):
					for ($i = 0; $i < count($v->mpengujian); $i++) :
						$total += $v->mpengujian[$i]->biaya;
					endfor;
				endforeach;

				$t = $total -	$this->uang_muka;

				return '<input type="text" value="' . $t . '"  name="sisa_pembayaran" class="numberOnly" disable style="background-color:#EFEFEF;text-align:right">';
			});


			$crud->unset_add();
			$crud->unset_delete();
			$crud->unset_read();
			$crud->unset_clone();


			$crud->callback_before_update(array($this, '_update_callback'));

			$output = $crud->render();


			$output->title = "Kontrak Kerja";
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
		$ret .= "<td style='padding:5px'>
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
		$this->data = $this->permohonan_model->get($primary_key);
		$data = $this->data;

		$html = '';
		$html .= "<table id=\"detailzzzs\" class=\"table table-bordered\" style='min-width:1000px;background:white'>
		  <tr>
		    <th>No</th>
		    <th>Komoditas</th>
		    <th>Jenis / Varietas</th>
				<th>Nomor Contoh</th>
		    <th>Jumlah</th>
		    <th>Kemasan</th>
		    <th>Kondisi</th>
		    <th>Parameter Pengujian</th>
		    <th>Biaya (Rp.)</th>
		    <th>Keterangan</th>
		  </tr>";

		$no = 1;
		foreach ($data->mdetail as $k => $v):
			$rowspan = count($v->mpengujian) == 0 ? 1 : count($v->mpengujian);
			// echo "<pre>";print_r($v);die();
			$html .= "<tr>
		    <td rowspan='" . $rowspan . "'>" . $no++ . "</td>
		    <td rowspan='" . $rowspan . "'>" . $v->komoditas . "</td>
		    <td rowspan='" . $rowspan . "'>" . $v->varietas . "</td>
				<td rowspan='" . $rowspan . "'><div class=\"input-group\">
      <input type=\"text\" class=\"form-control\" style='width:100px' value='" . $v->nomor_contoh . "' name='nomor[" . $v->id_permohonan_detail . "]'>
    </div></td>
		    <td rowspan='" . $rowspan . "'>" . $v->jumlah . " " . $v->str_satuan . "</td>
		    <td rowspan='" . $rowspan . "'>" . $v->str_kemasan . "</td>
		    <td rowspan='" . $rowspan . "'>" . $v->str_kondisi . "</td>
				<td>" . (isset($v->mpengujian[0]->caption) && $v->mpengujian[0]->caption != '' ? $v->mpengujian[0]->caption : (isset($v->mpengujian[0]->parameter_pengujian) ? $v->mpengujian[0]->parameter_pengujian : "-")) . "</td>
				<td>
					<input name='biaya[" . $v->mpengujian[0]->id_permohonan_detail_parameter . "]' style='width:100%' type='text' class='kontrakBiaya numberOnly' value='" . (isset($v->mpengujian[0]->biaya) ? $v->mpengujian[0]->biaya : "-") . "'>

				</td>
		    <td rowspan='" . $rowspan . "'>" . $v->keterangan . "</td>
		  </tr>";


			for ($i = 1; $i < count($v->mpengujian); $i++) :
				$html .= "<tr>
				<td>" . (isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption : (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-")) . "</td>
				<td><input name='biaya[" . $v->mpengujian[$i]->id_permohonan_detail_parameter . "]' style='width:100%' type='text' class='kontrakBiaya numberOnly' value='" . (isset($v->mpengujian[$i]->biaya) ? $v->mpengujian[$i]->biaya : "-") . "'></td>
		    </tr>";
			endfor;

		endforeach;
		$html .= "</table>";


		return $html;
	}

	public function _before_insert_callback($post_array)
	{
		$post_array['created_by'] = 1;
		return $post_array;
	}

	public function _after_insert_callback($post_array, $primary_key)
	{
		echo "<pre>";
		print_r($post_array);
		die();
		// delete detail
		$this->permohonan_model->delete_details($primary_key);

		// insert detail
		$this->permohonan_model->add_details($post_array["det"], $primary_key);
	}

	public function _update_callback($post_array)
	{
		//update nomor_contoh
		foreach ($post_array['nomor'] as $key => $value) {
			$this->db->update("permohonan_detail", array("nomor_contoh" => $value), array("id_permohonan_detail" => $key));
		}

		//update harga
		foreach ($post_array['biaya'] as $key => $value) {
			$this->db->update("permohonan_detail_parameter", array("biaya" => str_replace(".", "", $value)), array("id_permohonan_detail_parameter" => $key));
		}

		//
		//insert tracking
		$nomor_contoh = "";
		foreach ($post_array['nomor'] as $key => $value) {
			$nomor_contoh .= $value . ", ";
		}
		$nomor_contoh = rtrim($nomor_contoh, ", ");

		$id_permohonan = end($this->uri->segments);
		$pub_permohonan_detail = $this->db->get_where("pub_permohonan_detail", array("copied_to_id" => $id_permohonan, "deleted_at" => null))->row();
		$permohonan = $this->db->get_where("permohonan", array("id_permohonan" => $id_permohonan))->row();

		$id_pub_permohonan_detail = null;
		$no_permohonan = null;

		if ($pub_permohonan_detail != null) {
			$id_pub_permohonan_detail = $pub_permohonan_detail->id_pub_permohonan_detail;
			$no_permohonan = $pub_permohonan_detail->no_permohonan;
		} else {
			$id_pub_permohonan_detail = null;
			$no_permohonan = $permohonan->no_permohonan;
		}

		$tracking_payload = array(
			// "id_tracking" => "",
			"id_pub_permohonan_detail" => $id_pub_permohonan_detail,
			"no_permohonan" => $no_permohonan,
			"status" => "kontrak_kerja",
			"stage" => "proses",
			"description" => "Proses kontrak kerja, nomor contoh diupdate menjadi " . $nomor_contoh . " dengan total biaya " . $post_array['total'] . " dan uang muka " . $post_array['uang_muka'],
			// "notes" => "",
			// "updated_by" => "",
			// "user_id" => "",
			"activity_at" => date("Y-m-d H:m:s"),
			"created_at" => date("Y-m-d H:m:s"),
			// "updated_at" => "",
			// "deleted_at" => "",
		);
		$this->db->insert("pub_tracking", $tracking_payload);

		unset($post_array['total']);

		$post_array['uang_muka'] = str_replace(".", "", $post_array['uang_muka']);
		$post_array['updated_by'] = 1;
		$post_array['updated_at'] = date("Y-m-d H:m:s");
		return $post_array;
	}
}
