<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

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
			$crud->set_table('user');
			//$crud->set_subject('Office');
			//$crud->required_fields('city');
			$crud->columns('username','display_name','email','id_role','is_active','Lab');
			// $crud->add_action('Smileys', 'load-icon', 'demo/action_smiley');

			$crud->set_relation_n_n('Lab','user_lab','laporan','id_user','id_laporan','laporan','priority');

			$crud->add_fields('username','display_name','email','password','verify_password','is_active','created_by','id_role','Lab');
			$crud->edit_fields('username','display_name','email','is_active','created_by','id_role','Lab');

			$crud->display_as('id_role','Role');
			$crud->set_relation('id_role','role','nama_role');

			$crud->change_field_type('password', 'password');
			$crud->change_field_type('verify_password', 'password');
			$crud->change_field_type('created_by', 'invisible');

			$crud->set_rules('username', 'Username', 'required');
			$crud->set_rules('display_name', 'Display Name', 'required');
			$crud->set_rules('email', 'Email', 'required');
			$crud->set_rules('password', 'Password', 'required');
			$crud->set_rules('verify_password', 'Verify Password', 'required|matches[password]');

			$crud->callback_before_insert(array($this,'_insert_callback'));
			//$crud->callback_before_update(array($this,'_update_callback'));



			$output = $crud->render();


			$output->title = "User Management";
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
		$post_array['password'] = pertanian_password($post_array['password']);
		$post_array['created_by'] = 1;

		unset($post_array['verify_password']);
  		return $post_array;
	}
}
