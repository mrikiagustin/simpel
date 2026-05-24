<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kontrak_kerja extends CI_Controller {

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
      $this->db->update("setting_kontrak_kerja");
      redirect($this->page->base_url("index"));
    }


    $data = $this->db->get("setting_kontrak_kerja")->row();

    $crud = new grocery_CRUD();
    $crud->set_table('setting_kontrak_kerja');

    $output = $crud->render();
    $output->title = "Setting Kontrak Kerja";
    $output->data = $data;
    $c = $this->load->view("permohonan_index", (array)$output,true);
    $this->page->view2($c);
  }

}
