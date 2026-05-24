<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contoh extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
  	$this->load->model("permohonan_model");


	}

	function tgl_indo($tanggal){
		$bulan = array (
			1 =>'Januari',
			'Februari',
			'Maret',
			'April',
			'Mei',
			'Juni',
			'Juli',
			'Agustus',
			'September',
			'Oktober',
			'November',
			'Desember'
		);
		$pecahkan = explode('-', $tanggal);

		// variabel pecahkan 0 = tanggal
		// variabel pecahkan 1 = bulan
		// variabel pecahkan 2 = tahun

		return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
	}

	public function word($id)
	{
		// require_once APPPATH."third_party\PhpWord\AutoLoader.php";
		// require_once APPPATH."third_party\PhpWord\TemplateProcessor.php";

		require_once APPPATH."third_party/vendor/autoload.php";

		$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor(APPPATH.'third_party/PhpWord/pengantar_contoh.docx');

		$texts = $this->db->get("setting_kop")->row();
		$kode_laporan = $this->db->get("setting_pengantar_contoh")->row();

		$query = $this->db->where("id_permohonan",$id)->get("permohonan");

		if($query->num_rows() == 0){
			echo "Data tidak ditemukan";die();
		}

		$main_data = new stdClass();
		$main_data->res = $query->row();

			// detail

				$this->db->join("satuan","satuan.id_satuan = det.satuan");
				$this->db->join("kemasan","kemasan.id_kemasan = det.kemasan");
				$this->db->join("kondisi","kondisi.id_kondisi = det.kondisi");
				$this->db->select(" det.*
														,satuan.satuan
														,kemasan.kemasan
														,kondisi.kondisi");
				$this->db->where("det.id_permohonan",$id);
				$main_data->mdetail = $this->db->get("permohonan_detail det")->result();
			// end detail

			// pengujian dan metode

				for ($i=0; $i < count($main_data->mdetail); $i++) {
					//pengujian
					$this->db->join("parameter_pengujian","parameter_pengujian.id_parameter_pengujian = mpengujian.id_parameter_pengujian");
					$this->db->select("mpengujian.* , parameter_pengujian.parameter_pengujian");
					$this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);

					$main_data->mdetail[$i]->mpengujian = $this->db->get("permohonan_detail_parameter mpengujian")->result();

					// metode

					$this->db->join("metode","metode.id_metode = mpengujian.id_metode","left");
					$this->db->select("mpengujian.* , metode.metode");
					$this->db->where("mpengujian.id_permohonan_detail",$main_data->mdetail[$i]->id_permohonan_detail);

					$main_data->mdetail[$i]->mmetode = $this->db->get("permohonan_detail_metode mpengujian")->result();


				}



			// end pengujian dan metode


		$templateProcessor->setValue('header_line1', $texts->line_1);
		$templateProcessor->setValue('header_line2', $texts->line_2);
		$templateProcessor->setValue('header_line3', $texts->line_3);
		$templateProcessor->setValue('header_line4', $texts->line_4);
		$templateProcessor->setValue('header_line5', $texts->line_5);
		$templateProcessor->setValue('kode_dokumen', $kode_laporan->kode_laporan);
		$templateProcessor->setValue('diserahkan', $kode_laporan->contoh_diserahkan_ke);
		$templateProcessor->setValue('penerima', $kode_laporan->penerima_contoh);


		$data = $main_data;

		$d = $this->session->userdata("login_info");
		$templateProcessor->setValue("user",$d->display_name);




		$templateProcessor->cloneRow('no', count($data->mdetail));

		for ($i=0; $i < count($data->mdetail); $i++) {

			$final_count = count($data->mdetail[$i]->mpengujian);
			if($final_count <= 0) $final_count = 1;
			$templateProcessor->cloneRow('no#'.($i+1), $final_count) ;
			for ($j=1; $j < count($data->mdetail[$i]->mpengujian); $j++) :
				// echo 'no#'.($i+1)."<br>";
		      $parameter_text =  isset($data->mdetail[$i]->mpengujian[$j]->parameter_pengujian) ? $data->mdetail[$i]->mpengujian[$j]->parameter_pengujian : "-" ;
		      $metode_text =  isset($data->mdetail[$i]->mmetode[$j]->metode) ? $data->mdetail[$i]->mmetode[$j]->metode : "-";

					$templateProcessor->setValue('parameter#'.($i+1)."#".($j+1), $parameter_text);
					$templateProcessor->setValue('metode#'.($i+1)."#".($j+1), $metode_text);

					$templateProcessor->setValue('no#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('komoditas#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('jenis#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('jumlah#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('kemasan#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('kondisi#'.($i+1)."#".($j+1), "");

					$templateProcessor->setValue('parameter#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('metode#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('keterangan#'.($i+1)."#".($j+1), "");
					$templateProcessor->setValue('kode_contoh#'.($i+1)."#".($j+1), "");
		  endfor;



			$templateProcessor->setValue('no#'.($i+1)."#1", $i+1);
			$templateProcessor->setValue('komoditas#'.($i+1)."#1", $data->mdetail[$i]->komoditas);
			$templateProcessor->setValue('jenis#'.($i+1)."#1", $data->mdetail[$i]->varietas);
			$templateProcessor->setValue('jumlah#'.($i+1)."#1", $data->mdetail[$i]->jumlah." ".$data->mdetail[$i]->satuan);
			$templateProcessor->setValue('kemasan#'.($i+1)."#1", $data->mdetail[$i]->kemasan);
			$templateProcessor->setValue('kondisi#'.($i+1)."#1", $data->mdetail[$i]->kondisi);

			$parameter_text = isset($data->mdetail[$i]->mpengujian[0]->parameter_pengujian) ? $data->mdetail[$i]->mpengujian[0]->parameter_pengujian : "-";
			$metode_text = isset($data->mdetail[$i]->mmetode[0]->metode) ? $data->mdetail[$i]->mmetode[0]->metode : "-";

			$templateProcessor->setValue('parameter#'.($i+1)."#1", $parameter_text);
			$templateProcessor->setValue('metode#'.($i+1)."#1", $metode_text);
			$templateProcessor->setValue('keterangan#'.($i+1)."#1", $data->mdetail[$i]->keterangan);
			$templateProcessor->setValue('kode_contoh#'.($i+1)."#1", $data->mdetail[$i]->nomor_contoh);
		}






		// echo date('H:i:s'), ' Saving the result document...', EOL;
		header("Content-Disposition: attachment; filename='Permohonan Penujian.docx'");
		$templateProcessor->saveAs('php://output');
		// $templateProcessor->saveAs(APPPATH.'third_party/PhpWord/Sample_23_TemplateBlock_hasil.docx');
	}


	public function pdf($id, $download = 0, $header = 0)
	{
		$data = $this->permohonan_model->get($id);
		$setting = $this->db->get("setting_pengantar_contoh")->row();

		$content = $this->load->view("contoh_pdf",array("data" => $data,"setting" => $setting),true);

		//echo $content;die();
		//echo "<pre>"; print_r($content);die();

		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(355,280);
		$print_header = $header;
		$pdf = init_pdf("L", "mm", $custom_layout, true, 'UTF-8', false,$print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('Riki');
		$pdf->SetTitle('Pengantar Contoh');
		$pdf->SetSubject('Pengantar Contoh');
		$pdf->SetKeywords('Pengantar Contoh');

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
		if($print_header == 0){
			$pdf->SetPrintHeader(false);
			$pdf->SetPrintFooter(false);

			//$pdf->SetMargins(10, 50, 15, 15);
		}

		$pdf->AddPage();
		$pdf->writeHTML($content, TRUE, FALSE, TRUE, FALSE, '');





		$pdf->lastPage();
		if($download == 1){
			$pdf->Output('pengantar_contoh.pdf', 'D');
		}else {
			$pdf->Output('pengantar_contoh.pdf', 'I');
		}
	}

	public function pdf_paket($id, $download = 0, $header = 0)
	{
		$data = $this->permohonan_model->get($id);
		$setting = $this->db->get("setting_pengantar_contoh")->row();

		$content = $this->load->view("contoh_pdf_paket",array("data" => $data,"setting" => $setting),true);

		//echo $content;die();
		//echo "<pre>"; print_r($content);die();

		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(355,280);
		$print_header = $header;
		$pdf = init_pdf("L", "mm", $custom_layout, true, 'UTF-8', false,$print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('Riki');
		$pdf->SetTitle('Pengantar Contoh');
		$pdf->SetSubject('Pengantar Contoh');
		$pdf->SetKeywords('Pengantar Contoh');

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
		if($print_header == 0){
			$pdf->SetPrintHeader(false);
			$pdf->SetPrintFooter(false);

			//$pdf->SetMargins(10, 50, 15, 15);
		}

		$pdf->AddPage();
		$pdf->writeHTML($content, TRUE, FALSE, TRUE, FALSE, '');





		$pdf->lastPage();
		if($download == 1){
			$pdf->Output('pengantar_contoh.pdf', 'D');
		}else {
			$pdf->Output('pengantar_contoh.pdf', 'I');
		}
	}


	public function index()
	{

		try{
			$crud = new grocery_CRUD();

			$crud->set_table('permohonan');
			$crud->set_subject('Pengantar Contoh');

            $crud->columns(
                'nama'
                ,'instansi_perusahaan'
                ,'nik_npwp'
                ,'alamat'
                ,'telepon_fax'
                ,'kontak_person'
                ,'hasil_kaji_ulang'
                ,'tanggal_pengambilan');

            $crud->display_as('instansi_perusahaan','Instansi / Perusahaan')->display_as('nik_npwp','Nik / NPWP');
            $crud->display_as('telepon_fax','Telepon / Fax');



      $crud->edit_fields('Print','Detail');

      $crud->callback_edit_field('Print', array($this, 'printc'));
			$crud->callback_edit_field('Detail', array($this, 'detail'));



			$crud->unset_add();
			$crud->unset_delete();
			$crud->unset_read();
			$crud->unset_clone();


			$crud->callback_before_update(array($this,'_update_callback'));

			$output = $crud->render();


			$output->title = "Pengantar Contoh";
			//$output = $this->grocery_crud->render();
			$c = $this->load->view('permohonan_index',(array)$output,true);

			//echo $c;
			$this->page->view2($c);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}


	}

	public function pelanggan($value = '', $primary_key = null)
	{
		return "<table ><tr><td style='padding:5px'><input type='hidden' name='id_pelanggan'><a href='javascript:void(0)' onclick=\"open_picker()\" class='btn '> Ambil Dari Daftar</a></td><td style='padding:5px'><a href='javascript:void(0)' class='btn btn-success'> Simpan ke Daftar</a></td></tr></table>";
	}

	public function printc($value = '', $primary_key = null)
	{
		$ret = "<table ><tr>
		<td style='padding:5px'><a  href='".base_url().$this->router->fetch_module()."/".$this->router->fetch_class()."/word/".$primary_key."/1". "' class='print btn btn-primary'> Download Word</a></td>
		<td style='padding:5px'><a  href='".base_url().$this->router->fetch_module()."/".$this->router->fetch_class()."/pdf/".$primary_key."/1". "' class='print btn btn-primary'> Download PDF</a></td>
		<td style='padding:5px'><a  href='".base_url().$this->router->fetch_module()."/".$this->router->fetch_class()."/pdf/".$primary_key."/0". "' class='print btn btn-primary' target='_blank'> Print PDF</a></td>
		<td style='padding:5px'><a  href='".base_url().$this->router->fetch_module()."/".$this->router->fetch_class()."/pdf_paket/".$primary_key."/0". "' class='print btn btn-primary' target='_blank'> Print PDF (Paket)</a></td>";
		$ret .= "<td style='padding:5px'>
							<label><input type='radio' name='kop' value='1' checked> Dengan Kop </label>
							<br>
							<label><input type='radio' name='kop' value='0'> Tanpa Kop </label>
						</td>";

		$ret .="</tr></table>";

		return $ret;
	}

	function detail($value = '', $primary_key = null){
		$this->data = $this->permohonan_model->get($primary_key);
		$data = $this->data;

		// echo "<pre>";print_r($data);die();

		$html = '';
		$html .= "<table id=\"detailzzzs\" class=\"table table-bordered\" style='min-width:1000px;background:white'>
		  <tr>
		    <th>No</th>
		    <th>Komoditas</th>
		    <th>Jenis / Varietas</th>
		    <th>Jumlah</th>
		    <th>Kemasan</th>
		    <th>Kondisi</th>
				<th>Kode Contoh</th>
		    <th>Parameter Pengujian</th>
		    <th>Metode</th>
		    <th>Keterangan</th>
		  </tr>";

		  $no = 1;foreach ($data->mdetail as $k => $v):
      $rowspan = count($v->mpengujian) == 0 ? 1 : count($v->mpengujian);

			$html .= "<tr>
		    <td rowspan='".$rowspan."'>".$no++."</td>
		    <td rowspan='".$rowspan."'>".$v->komoditas."</td>
		    <td rowspan='".$rowspan."'>".$v->varietas."</td>
		    <td rowspan='".$rowspan."'>".$v->jumlah." ".$v->str_satuan."</td>
		    <td rowspan='".$rowspan."'>".$v->str_kemasan."</td>
		    <td rowspan='".$rowspan."'>".$v->str_kondisi."</td>
				<td>
					<input type=\"text\" class=\"form-control\" style='width:100px' value='".(isset($v->mpengujian[0]->kode_contoh) ? $v->mpengujian[0]->kode_contoh : "-")."' name='kode_contoh[".$v->id_permohonan_detail."][".$v->mpengujian[0]->id_laporan."][".$v->mpengujian[0]->id_permohonan_detail_parameter."]'>
				</td>
		    <td>".(isset($v->mpengujian[0]->caption) && $v->mpengujian[0]->caption != '' ? $v->mpengujian[0]->caption :  (isset($v->mpengujian[0]->parameter_pengujian) ? $v->mpengujian[0]->parameter_pengujian : "-"))."</td>
		    <td>".(isset($v->mpengujian[0]->metode) ? $v->mpengujian[0]->metode : "-")."</td>
		    <td rowspan='".$rowspan."'>".$v->keterangan."</td>
		  </tr>";


		  for ($i=1; $i < count($v->mpengujian); $i++) :
		    $html .= "<tr>
				<td><input type=\"text\" class=\"form-control\" style='width:100px' value='".(isset($v->mpengujian[$i]->kode_contoh) ? $v->mpengujian[$i]->kode_contoh : "-")."' name='kode_contoh[".$v->id_permohonan_detail."][".$v->mpengujian[$i]->id_laporan."][".$v->mpengujian[$i]->id_permohonan_detail_parameter."]'></td>
				<td>".(isset($v->mpengujian[$i]->caption) && $v->mpengujian[$i]->caption != '' ? $v->mpengujian[$i]->caption :  (isset($v->mpengujian[$i]->parameter_pengujian) ? $v->mpengujian[$i]->parameter_pengujian : "-"))."</td>
				<td>".(isset($v->mpengujian[$i]->metode) ? $v->mpengujian[$i]->metode : "-")."</td>
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

    public function _after_insert_callback($post_array,$primary_key)
    {
        //echo "<pre>";print_r($post_array);die();
        // delete detail
        $this->permohonan_model->delete_details($primary_key);

        // insert detail
        $this->permohonan_model->add_details($post_array["det"],$primary_key);
    }

		public function _update_callback($post_array)
		{
					//update nomor_contoh

					// echo "<pre>";print_r($post_array);die();




					$paten = array();
					foreach ($post_array['kode_contoh'] as $key => $value) {
						$paten[$key] = array();
						foreach ($value as $k => $v) {
							$paten[$key][$k] = array();
							foreach ($v as $z => $x) {
								if(substr($x,0,3) != "000"){
									$paten[$key][$k]= $x; break;
								}
							}

							foreach ($v as $z => $x) {
								$this->db->update("permohonan_detail_parameter",array("kode_contoh" => $paten[$key][$k]),array("id_permohonan_detail_parameter" => $z));
							}

						}
					}

					// echo "<pre>";print_r($paten);die();


					//set header data
					// $head['RP'] = "031"


	        //update harga

					// foreach ($post_array['kode_contoh'] as $key => $value) {
					//
					// 	$this->db->update("permohonan_detail_parameter",array("biaya" => str_replace(".","",$value)),array("id_permohonan_detail_parameter" => $key));
					// }

					echo  '{
		         "success":true,
		        "insert_primary_key":true,
		        "success_message":"<p>Your data has been successfully updated. <a href=\'http:\/\/localhost\/pertanian\/work\/hasil\/index\/\'>Go back to list<\/a><\/p>",
		        "success_list_url":"http:\/\/localhost\/pertanian\/work\/permohonan\/index\/success\/1"
		      }';
		      die();

	  		return $post_array;
		}
}
