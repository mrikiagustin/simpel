<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan_picker extends CI_Controller {

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
			$crud->set_table('pelanggan');
			//$crud->set_subject('Office');
			//$crud->required_fields('city');
			$crud->columns('nama','instansi_perusahaan','alamat','telepon_fax','kontak_person');

			$crud->add_fields('nama','instansi_perusahaan','alamat','telepon_fax','kontak_person');
			$crud->edit_fields('nama','instansi_perusahaan','alamat','telepon_fax','kontak_person');

			$crud->change_field_type('alamat', 'text');

			$crud->callback_before_insert(array($this,'_insert_callback'));
			$crud->callback_before_update(array($this,'_update_callback'));

			$crud->unset_add();
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_read();
			//void add_action( string $label,  string $image_url , string $link_url , string $css_class ,  mixed $url_callback)
			$crud->add_action('Smileys', '', '','pilih',array($this,'just_a_test'));
			//$crud->add_action('Photos', '', '','ui-icon-image',array($this,'just_a_test'));


			$output = $crud->render();


			$output->title = "Master Pelanggan";
			//$output = $this->grocery_crud->render();
			$c = $this->load->view('_index',(array)$output,true);

			echo $c;
			// $this->page->view2($c);

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

	function just_a_test($primary_key , $row)
	{
		// var_dump($row);die();
		//return site_url('demo/action/action_photos').'?country='.$row->id_pelanggan;
		$q  = $this->db->where("id_pelanggan",$row->id_pelanggan)->get("pelanggan")->row();
		//echo "<pre>";print_r($q->result());die();

		return "#".$q->id_pelanggan. "X.X" . $q->nama. "X.X" . $q->instansi_perusahaan. "X.X" . $q->nik_npwp. "X.X" . $q->alamat. "X.X" . $q->telepon_fax. "X.X" . $q->kontak_person;
	}
}
