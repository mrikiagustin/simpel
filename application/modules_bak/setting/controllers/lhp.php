<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lhp extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
	}

	public function index()
	{
    //var_dump($this->input->post());die();
    if($this->input->post()){
      $this->db->set("lembaga",$this->input->post("lembaga"));
			$this->db->set("pejabat",$this->input->post("pejabat"));
      $this->db->update("setting_lhp");
      redirect($this->page->base_url("index"));
    }


    $data = $this->db->get("setting_lhp")->row();

    $crud = new grocery_CRUD();
    $crud->set_table('setting_lhp');

    $output = $crud->render();
    $output->title = "Setting LHP";
    $output->data = $data;
    $c = $this->load->view("lhp_index", (array)$output,true);
    $this->page->view2($c);
  }

}
