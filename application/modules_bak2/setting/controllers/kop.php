<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kop extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
	}

	public function index()
	{
    //var_dump($this->input->post());die();
    if($this->input->post("line_1") != ""){
      $this->db->set("line_1",$this->input->post("line_1"));
      $this->db->set("line_2",$this->input->post("line_2"));
      $this->db->set("line_3",$this->input->post("line_3"));
      $this->db->set("line_4",$this->input->post("line_4"));
      $this->db->set("line_5",$this->input->post("line_5"));
      $this->db->set("line_6",$this->input->post("line_6"));
      $this->db->update("setting_kop");
      redirect($this->page->base_url("index"));
    }


    $data = $this->db->get("setting_kop")->row();

    $crud = new grocery_CRUD();
    $crud->set_table('setting_kop');

    $output = $crud->render();
    $output->title = "Setting Kop";
    $output->data = $data;
    $c = $this->load->view("kop_index", (array)$output,true);
    $this->page->view2($c);
  }

}
