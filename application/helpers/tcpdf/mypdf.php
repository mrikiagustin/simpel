<?php


require_once('tcpdf.php');


class MyPDF extends TCPDF {
	var $header = 0;
	var $orientation = "L";

	public function __construct($a, $b, $c, $d, $e, $f,$header)
	{
		// echo "<pre>";print_r($a);//die();
		// echo "<pre>";print_r($b);//die();
		// echo "<pre>";print_r($c);//die();
		// echo "<pre>";print_r($d);//die();
		// echo "<pre>";print_r($e);//die();
		// echo "<pre>";print_r($f);//die();
		// echo "<pre>";print_r($header);die();
		parent::__construct($a, $b, $c, $d, $e, $f);
		$this->header = $header;
		$this->orientation = $a;
	}

	private $_CI;

	public function Header()
	{
		if($this->header == 1){
			$this->_CI =& get_instance();

			$_fontsize= 14;
			$_position= 145;

			if($this->orientation == "P"){
				$_fontsize= 12;
				$_position= 80;
			}

			$texts = $this->_CI->db->get("setting_kop")->row();

			$line1 = $texts->line_1;//"PEMERINTAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA";//$this->_CI->db->get_where('ref_kop_surat',  array('id' => $ses_kop_id ))->row();
			$dinas = $texts->line_2;//"DINAS KETAHANAN PANGAN, KELAUTAN DAN PERTANIAN";//$this->_CI->db->get_where('ref_kota',  array('id' => $medeq->id_kota))->row();
			$instansi = $texts->line_3;//"PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN";//$medeq->alamat.", ".$kota->nama.". Kode Pos: ".$medeq->kode_pos;
			$lab = $texts->line_4;//"LABORATORIUM PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN";
			$alamat = $texts->line_5;//"Jl. Raya Jambore No. 1 Cibubur Jakarta Timur";
			$telepon = $texts->line_6;//'Telp. / Fax : (021) 87752692';//'Telp: '.$medeq->no_telp.'. Fax: '.$medeq->fax.'. Email: '.$medeq->email;

			$image_file = K_PATH_IMAGES.'jakarta.png';
      $this->Image($image_file, 10, 10, 20, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);


			$this->SetFont('helvetica', 'C', $_fontsize);
			$this->Cell($_position + 140, 15, $line1, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->Cell($_position + 180, 15, $dinas, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->Cell($_position + 180, 15, $instansi, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->SetFont('helveticaB', 'C', $_fontsize);
			$this->Cell($_position + 180, 15, $lab, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->SetFont('helvetica', 'C', $_fontsize);

			$this->Cell($_position + 180, 15, $alamat, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->Cell($_position + 180, 15, $telepon, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->SetLineStyle(array('width' => 0.1, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0));
			$this->Cell(0, 0, '', 'T', 0, 'C');
		}else{
			//$this->setHeaderData('',0,'','',array(0,0,0), array(255,255,255) );
		}

	}


}

class MyPDF_f4 extends TCPDF {
	var $header = 0;
	var $orientation = "L";

	public function __construct($a, $b, $c, $d, $e, $f,$header)
	{
		// echo "<pre>";print_r($a);//die();
		// echo "<pre>";print_r($b);//die();
		// echo "<pre>";print_r($c);//die();
		// echo "<pre>";print_r($d);//die();
		// echo "<pre>";print_r($e);//die();
		// echo "<pre>";print_r($f);//die();
		// echo "<pre>";print_r($header);die();
		parent::__construct($a, $b, $c, $d, $e, $f);
		$this->header = $header;
		$this->orientation = $a;
	}

	private $_CI;

	public function Header()
	{
		if($this->header == 1){
			$this->_CI =& get_instance();

			$_fontsize= 14;
			$_position= 100;

			if($this->orientation == "P"){
				$_fontsize= 12;
				$_position= 30;
			}

			if($this->orientation == "L"){
				$_fontsize= 12;
				$_position= 140;
			}


			$texts = $this->_CI->db->get("setting_kop")->row();

			$line1 = $texts->line_1;//"PEMERINTAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA";//$this->_CI->db->get_where('ref_kop_surat',  array('id' => $ses_kop_id ))->row();
			$dinas = $texts->line_2;//"DINAS KETAHANAN PANGAN, KELAUTAN DAN PERTANIAN";//$this->_CI->db->get_where('ref_kota',  array('id' => $medeq->id_kota))->row();
			$instansi = $texts->line_3;//"PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN";//$medeq->alamat.", ".$kota->nama.". Kode Pos: ".$medeq->kode_pos;
			$lab = $texts->line_4;//"LABORATORIUM PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN";
			$alamat = $texts->line_5;//"Jl. Raya Jambore No. 1 Cibubur Jakarta Timur";
			$telepon = $texts->line_6;//'Telp. / Fax : (021) 87752692';//'Telp: '.$medeq->no_telp.'. Fax: '.$medeq->fax.'. Email: '.$medeq->email;

			$image_file = K_PATH_IMAGES.'jakarta.png';
      $this->Image($image_file, 10, 10, 20, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);


			$this->SetFont('helvetica', 'C', $_fontsize);
			$this->Cell($_position + 140, 15, $line1, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->Cell($_position + 180, 15, $dinas, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->Cell($_position + 180, 15, $instansi, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->SetFont('helveticaB', 'C', $_fontsize);
			$this->Cell($_position + 180, 15, $lab, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->SetFont('helvetica', 'C', $_fontsize);

			$this->Cell($_position + 180, 15, $alamat, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->Cell($_position + 180, 15, $telepon, 0, FALSE, 'C', 0, '', 0, FALSE, 'M', 'M');
			$this->Ln(5);

			$this->SetLineStyle(array('width' => 0.1, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0));
			$this->Cell(0, 0, '', 'T', 0, 'C');
		}else{
			//$this->setHeaderData('',0,'','',array(0,0,0), array(255,255,255) );
		}

	}

	// Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-15);
				$this->SetX(10);
        // Set font
        $this->SetFont('times', 'N', 12);
        // Page number
        $this->Cell(0, 0, 'Halaman / page : '.$this->getAliasNumPage().' dari / of '.$this->getAliasNbPages().'', 0, false, 'L', 0, '', 0, false, 'T', 'M');

				//$this->writeHTMLCell($w = 0, $h = 0, $x = 10, $y = -1, $html='Halaman / page : <b>'.$this->getAliasNumPage().'</b> dari/of <b>'.$this->getAliasNbPages().'</b>', $border=0, $ln=0, $fill=0, $reseth=true, $align='',true);


    }
}


?>
