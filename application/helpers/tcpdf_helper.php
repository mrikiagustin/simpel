<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


require_once('tcpdf/mypdf.php');


function init_pdf($a, $b, $c, $d, $e, $f,$header)
{
	// echo "<pre>";print_r($a);//die();
	// echo "<pre>";print_r($b);//die();
	// echo "<pre>";print_r($c);//die();
	// echo "<pre>";print_r($d);//die();
	// echo "<pre>";print_r($e);//die();
	// echo "<pre>";print_r($f);//die();
	//echo "<pre>";print_r($header);die();
	return new MyPDF($a, $b, $c, $d, $e, $f,$header);
}

function init_pdf_f4($a, $b, $c, $d, $e, $f,$header)
{
	// echo "<pre>";print_r($a);//die();
	// echo "<pre>";print_r($b);//die();
	// echo "<pre>";print_r($c);//die();
	// echo "<pre>";print_r($d);//die();
	// echo "<pre>";print_r($e);//die();
	// echo "<pre>";print_r($f);//die();
	//echo "<pre>";print_r($header);die();
	return new MyPDF_f4($a, $b, $c, $d, $e, $f,$header);
}


/* End of file tcpdf_helper.php */
/* Location: ./application/helpers/tcpdf_helper.php */
