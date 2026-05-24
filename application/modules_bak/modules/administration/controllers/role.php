<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Role extends CI_Controller {

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
			$crud->set_table('role');
			//$crud->set_subject('Office');
			//$crud->required_fields('city');
			$crud->columns('nama_role');

			$crud->add_fields('nama_role','created_by','updated_by','updated_at');
			$crud->edit_fields('nama_role','created_by','updated_by','updated_at');

			
			$crud->change_field_type('created_by', 'invisible');
			$crud->change_field_type('updated_by', 'invisible');
			$crud->change_field_type('updated_at', 'invisible');

			$crud->set_rules('nama_role', 'Nama Role', 'required');

			$crud->callback_before_insert(array($this,'_insert_callback'));
			$crud->callback_before_update(array($this,'_update_callback'));



			$output = $crud->render();


			$output->title = "Role Management";
			//$output = $this->grocery_crud->render();
			$c = $this->load->view('user_index',(array)$output,true);

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