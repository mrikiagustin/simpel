<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku_induk extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
  	$this->load->model("rekap_model");
	}

	public function pdf($download = "0", $header = "0")
	{
		$data = $this->rekap_model->get_buku_induk();

		$content = $this->load->view("buku_induk_pdf",array("data" => $data),true);

		//echo $content;die();
		//echo "<pre>"; print_r($content);die();

		$this->load->helper('tcpdf');
		//$pdf = init_pdf();

		$custom_layout = array(210,330);
		$print_header = $header;
		$pdf = init_pdf_f4("L", "mm", $custom_layout, true, 'UTF-8', false,$print_header);

		// set document information
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetAuthor('Riki');
		$pdf->SetTitle('Rekap Buku Induk');
		$pdf->SetSubject('Rekap Buku Induk');
		$pdf->SetKeywords('Rekap Buku Induk');

		// header
		//$pdf->SetHeaderMargin(50);
		//$pdf->SetAutoPageBreak(TRUE, 0);

		// footer
		$pdf->SetPrintHeader(true);
		$pdf->setPrintFooter(true);

		// margin
		$pdf->SetMargins(10, 50, 15, 15);
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

		// echo $header;
		 //var_dump($download);die();
		if($download == "1"){
			$pdf->Output('buku_induk.pdf', 'D');
		}else {
			$pdf->Output('buku_induk.pdf', 'I');
		}
	}


  public function index()
  {


  		try{
  			$crud = new grocery_CRUD();

  			$crud->set_table('vw_bukuinduk');
        $crud->set_primary_key('id_permohonan_detail');
  			$crud->set_subject('Buku Induk');

              $crud->columns(
                "tanggal_masuk",
              	"instansi_perusahaan",
              	"alamat",
              	#kodelab."kodelab",
              	"varietas",
              	"nomor_contoh",
              	"jumlah_satuan",
              	"kemasan",
              	"laporan",
              	"parameter",
              	"harga",
                "keterangan");

                $crud->display_as('instansi_perusahaan','Instansi / Perusahaan');
                $crud->display_as('varietas','Jenis Sample');
                $crud->display_as('nomor_contoh','Nomor Sample');
                $crud->display_as('jumlah_satuan','Berat');
                $crud->display_as('laporan','Ditujukan Ke');
                $crud->display_as('harga','Biaya Pengujian ');

                $crud->callback_column('harga',function($value,$row){
                  return "<p style='text-align:right'>".number_format($value)."</p>";
                });


  			$crud->unset_add();
  			$crud->unset_delete();
  			$crud->unset_read();
  			$crud->unset_clone();
        $crud->unset_edit();

        $crud->callback_filter('bulan',function($context,$value){

        });

        $this->crud = $crud;

  			$output = $crud->render();


  			$output->title = "Buku Induk";
  			//$output = $this->grocery_crud->render();
  			$c = $this->load->view('buku_induk_index',(array)$output,true);

  			//echo $c;
  			$this->page->view2($c);

  		}catch(Exception $e){
  			show_error($e->getMessage().' --- '.$e->getTraceAsString());
  		}
  }

}
