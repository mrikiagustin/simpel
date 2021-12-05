<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paket extends CI_Controller {

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
			$crud->set_table('paket');
			//$crud->set_subject('Office');
			//$crud->required_fields('city');
			// $crud->columns('paket');

			// $crud->set_relation_n_n('parameter', 'paket_detail', 'parameter_pengujian', 'id_paket', 'id_parameter_pengujian', 'caption','priority');

			$crud->callback_before_insert(array($this,'_insert_callback'));
			$crud->callback_before_update(array($this,'_update_callback'));

			$crud->add_fields('nama_paket','detail');
			$crud->callback_add_field('detail', array($this, 'detail'));
			$crud->callback_edit_field('detail', array($this, 'detail'));

			$crud->callback_after_insert(array($this,'_after_insert_callback'));
            $crud->callback_after_update(array($this,'_after_update_callback'));


			$output = $crud->render();


			$output->title = "Master Paket";
			//$output = $this->grocery_crud->render();
			$c = $this->load->view('paket_index',(array)$output,true);

			//echo $c;
			$this->page->view2($c);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}


	}

	public function detail($value = '', $primary_key = null)
	{
		$html = "";

		

		// options
		$source_parameter_pengujian = $this->db->select("parameter_pengujian.id_parameter_pengujian,parameter_pengujian.parameter_pengujian,laporan.laporan,laporan.id_laporan
												,CONCAT(parameter_pengujian.parameter_pengujian, ' - ' , laporan.laporan) display
											")
										->join("laporan","laporan.id_laporan = parameter_pengujian.id_laporan")
										->get("parameter_pengujian");
		$op_parameter_pengujian = new MyOptionsData($source_parameter_pengujian,"id_parameter_pengujian","","display",true,"laporan","id_laporan");
		// end of options


		// existing
			$existing = "";
			if($primary_key != null){
				$existing = $this->db->where("id_paket",$primary_key)->get("paket_detail")->result();

				$html .= "
					<script>
						var existing = ".json_encode($existing).";
					</script>
				";
			}
		// end of existing

		$html .= '
			<table class="table">
				<thead>
					<tr>
						<th>Parameter Uji</th>
						<th>BMR / BMC</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody class="placeholder_detail">
					<tr class="master_detail">
						<td>
							<select class="form-control select2 " style="width: 500px;" name="det[1][id_parameter_pengujian]">
								'.$op_parameter_pengujian->draw().'
							</select>
						</td>
						<td>
							<input type="text" name="det[1][bmr]" style="width:150px;height:28px;">
						</td>
						<td>
							<a href="javascript:void(0)" class="btn btn-danger btn-small param_delete"> X </a>
						</td>
					</tr>
				</tbody>
				<tfooter>
					<tr>
						<td>
							<a href="javascript:void(0)" class="btn btn-small btn_param_add" data-pos="0"> Tambah Parameter</a>
						</td>
					</tr>
				<tfooter>
			</table>
		';

		return $html;
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

	public function _after_insert_callback($post_array,$primary_key){
		
		$payload = array();
		foreach ($post_array['det'] as $key => $value) {
			$payload[] = array(
				"id_parameter_pengujian" => $value['id_parameter_pengujian'],
				"id_paket" => $primary_key,
				"bmr" => $value['bmr']
			);
		}

		$this->db->insert_batch("paket_detail",$payload);
	}

	public function _after_update_callback($post_array,$primary_key){

		// delete existing
		$this->db->where("id_paket",$primary_key)->delete("paket_detail");

		// insert batch
		$payload = array();
		foreach ($post_array['det'] as $key => $value) {
			$payload[] = array(
				"id_parameter_pengujian" => $value['id_parameter_pengujian'],
				"id_paket" => $primary_key,
				"bmr" => $value['bmr']
			);
		}

		$this->db->insert_batch("paket_detail",$payload);
	}
}
