<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengantar_contoh extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
	}

	public function index()
	{
    //var_dump($this->input->post());die();
    if($this->input->post()){
      $this->db->set("kode_laporan",$this->input->post("kode_laporan"));
			$this->db->set("contoh_diserahkan_ke",$this->input->post("contoh_diserahkan_ke"));
			$this->db->set("penerima_contoh",$this->input->post("penerima_contoh"));
      $this->db->update("setting_pengantar_contoh");
      redirect($this->page->base_url("index"));
    }


    $data = $this->db->get("setting_pengantar_contoh")->row();

    $crud = new grocery_CRUD();
    $crud->set_table('setting_pengantar_contoh');

    $output = $crud->render();
    $output->title = "Setting Pengantar Contoh";
    $output->data = $data;
    $c = $this->load->view("pengantar_contoh_index", (array)$output,true);
    $this->page->view2($c);
  }

}
