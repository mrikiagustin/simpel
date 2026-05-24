<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Parameter_pengujian extends CI_Controller {

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
			$crud->set_table('parameter_pengujian');
			//$crud->set_subject('Office');
			//$crud->required_fields('city');
			$crud->columns('parameter_pengujian', 'id_laporan','caption');
			

			$crud->add_fields('parameter_pengujian','id_laporan','caption');
			$crud->edit_fields('parameter_pengujian','id_laporan','caption');

			$crud->field_type('caption','invisible');

			$crud->display_as('id_laporan','Laporan');
			$crud->set_relation('id_laporan','laporan','laporan');

			$crud->callback_before_insert(array($this,'_insert_callback'));
			$crud->callback_before_update(array($this,'_update_callback'));



			$output = $crud->render();


			$output->title = "Master Parameter Parameterengujian";
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
		$q_laporan = $this->db->where("id_laporan",$post_array['id_laporan'])->get("laporan")->row();
		if($q_laporan->laporan){
			$lap = $q_laporan->laporan;
		}else{
			$lap = "";
		}
		

		$post_array['created_by'] = 1;
		$post_array['caption'] = $post_array['parameter_pengujian'] . " - ". $lap;
		return $post_array;
	}

	public function _update_callback($post_array)
	{
		$q_laporan = $this->db->where("id_laporan",$post_array['id_laporan'])->get("laporan")->row();
		if($q_laporan->laporan){
			$lap = $q_laporan->laporan;
		}else{
			$lap = "";
		}

		$post_array['caption'] = $post_array['parameter_pengujian'] . " - ". $lap;

		$post_array['updated_by'] = "1a";
		$post_array['updated_at'] = date("Y-m-d H:m:s");

		// echo '<pre>';print_r($post_array);die(); // TODO debug die();

		return $post_array;
	}
}