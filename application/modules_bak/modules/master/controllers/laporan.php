<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
	}

	public function index()
	{
		try{
			$crud = new grocery_CRUD();

			//$crud->set_theme('datatables');
			$crud->set_table('laporan');
			//$crud->set_subject('Office');
			//$crud->required_fields('city');
			$crud->columns('laporan','kode_contoh','kode_laporan');

			$crud->add_fields('laporan','kode_contoh','kode_laporan');
			$crud->edit_fields('laporan','kode_contoh','kode_laporan');

			$crud->callback_before_insert(array($this,'_insert_callback'));
			$crud->callback_before_update(array($this,'_update_callback'));



			$output = $crud->render();


			$output->title = "Master Laporan";
			//$output = $this->grocery_crud->render();
			$c = $this->load->view('_index',(array)$output,true);

			//echo $c;
			$this->page->view2($c);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}

		
	}


	public function _insert_callback($post_array)
	{
		$post_array['created_by'] = 1;
  		return $post_array;
	}

	public function _update_callback($post_array)
	{
		$post_array['updated_by'] = 1;
		$post_array['updated_at'] = date("Y-m-d H:m:s");
  		return $post_array;
	}
}