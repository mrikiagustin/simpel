<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function tgl_indo($tanggal){

	if($tanggal == "") return "-";

	$bulan = array (
		1 =>'Januari',
		'Februari',
		'Maret',
		'April',
		'Mei',
		'Juni',
		'Juli',
		'Agustus',
		'September',
		'Oktober',
		'November',
		'Desember'
	);
	$pecahkan = explode('-', $tanggal);

	// variabel pecahkan 0 = tanggal
	// variabel pecahkan 1 = bulan
	// variabel pecahkan 2 = tahun

	return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
}

class Node {}

class MyOptions{
	public $src;
	public $id;
	public $ref_val;
	public $text_field;
	public $with_pilih = false;
	public $ref_val_collection = array();
	public $mutiple = false;

	public function __construct($src, $id, $ref_val, $text_field,$with_pilih = false){
		$this->src = $src ;
		$this->id = $id ;
		$this->ref_val = $ref_val ;
		$this->text_field = $text_field ;
		$this->with_pilih = $with_pilih;
	}

	public function set_selected($id)
	{
		$this->ref_val = $id ;
		return $this;
	}

	public function draw()
	{
		$this->ref_bool = false;
		$this->options = '';


		foreach ($this->src->result() as $row) {
			$this->opt_value	= $row->{$this->id};
			$this->text_value	= $row->{$this->text_field};

			if($this->mutiple){
				// var_dump($this->ref_val_collection);die();
				if (in_array ($this->opt_value,$this->ref_val_collection)) {
					$this->ref_bool = true;
					$this->options .= '<option value="'.$this->opt_value.'" selected>'.$this->text_value.'</option>';
				}
				else {
					$this->options .= '<option value="'.$this->opt_value.'">'.$this->text_value.'</option>';
				}
			}else{
				if ($row->{$this->id} == $this->ref_val) {
					$this->ref_bool = true;
					$this->options .= '<option value="'.$this->opt_value.'" selected>'.$this->text_value.'</option>';
				}
				else {
					$this->options .= '<option value="'.$this->opt_value.'">'.$this->text_value.'</option>';
				}
			}


		}



		if($this->with_pilih == true && $this->mutiple == false){
			if($this->ref_bool == true){
				$this->options = '<option value="" disabled="">- Pilih -</option>'.$this->options;
			}else{
				$this->options = '<option value="" disabled="" selected="">- Pilih -</option>'.$this->options;
			}

		}

		if($this->mutiple){
			//var_dump($this->options);die();
		}



		return $this->options;
	}

	public function set_selected_mutiple($d)
	{
		$arr =array();
		if(is_array($d)){
			$arr = $d;
		}else{
			$arr = explode(",", $d);
		}
		$this->ref_val_collection = $arr;

		$this->mutiple = true;
		return $this;
	}
}


class MyOptionsData{
	public $src;
	public $id;
	public $ref_val;
	public $text_field;
	public $with_pilih = false;
	public $ref_val_collection = array();
	public $mutiple = false;

	public $data1 = false;
	public $data2 = false;
	public $data3 = false;

	public function __construct($src, $id, $ref_val, $text_field,$with_pilih = false,$data1= "",$data2="",$data3=""){
		$this->src = $src ;
		$this->id = $id ;
		$this->ref_val = $ref_val ;
		$this->text_field = $text_field ;
		$this->with_pilih = $with_pilih;

		$this->data1 = $data1;
		$this->data2 = $data2;
		$this->data3 = $data3;
	}

	public function set_selected($id)
	{
		$this->ref_val = $id ;
		return $this;
	}

	public function draw()
	{
		$this->ref_bool = false;
		$this->options = '';


		foreach ($this->src->result() as $row) {
			$this->opt_value	= $row->{$this->id};
			$this->text_value	= $row->{$this->text_field};

			$d1 = ($this->data1 == "" ? "" : $row->{$this->data1});
			$d2 = ($this->data2 == "" ? "" : $row->{$this->data2});
			$d3 = ($this->data3 == "" ? "" : $row->{$this->data3});


			if($this->mutiple){
				// var_dump($this->ref_val_collection);die();
				if (in_array ($this->opt_value,$this->ref_val_collection)) {
					$this->ref_bool = true;
					$this->options .= '<option data-data1="'.$d1.'" data-data2="'.$d2.'"  data-data3="'.$d3.'" value="'.$this->opt_value.'" selected>'.$this->text_value.'</option>';
				}
				else {
					$this->options .= '<option data-data1="'.$d1.'" data-data2="'.$d2.'"  data-data3="'.$d3.'" value="'.$this->opt_value.'">'.$this->text_value.'</option>';
				}
			}else{
				if ($row->{$this->id} == $this->ref_val) {
					$this->ref_bool = true;
					$this->options .= '<option data-data1="'.$d1.'" data-data2="'.$d2.'"  data-data3="'.$d3.'" value="'.$this->opt_value.'" selected>'.$this->text_value.'</option>';
				}
				else {
					$this->options .= '<option data-data1="'.$d1.'" data-data2="'.$d2.'"  data-data3="'.$d3.'" value="'.$this->opt_value.'">'.$this->text_value.'</option>';
				}
			}


		}



		if($this->with_pilih == true && $this->mutiple == false){
			if($this->ref_bool == true){
				$this->options = '<option value="" disabled="">- Pilih -</option>'.$this->options;
			}else{
				$this->options = '<option value="" disabled="" selected="">- Pilih -</option>'.$this->options;
			}

		}

		if($this->mutiple){
			//var_dump($this->options);die();
		}



		return $this->options;
	}

	public function set_selected_mutiple($d)
	{
		$arr =array();
		if(is_array($d)){
			$arr = $d;
		}else{
			$arr = explode(",", $d);
		}
		$this->ref_val_collection = $arr;

		$this->mutiple = true;
		return $this;
	}
}


function excel_header($filename)
{
	header("Content-type: application/octet-stream");
	header("Content-Disposition: attachment; filename=$filename");
	header("Pragma: no-cache");
	header("Expires: 0");
}

function def($field)
{
	$CI =& get_instance();

	return	$CI->db->get("default")->row()->$field;


}

function user_session($field = "")
{
	$CI =& get_instance();
	$user = $CI->session->userdata('login');

	if($field == ""){
		return $user;
	}else  {
		return empty($user) ? null : $user->$field;
	}

}

function user_detail($field = "")
{
	$CI =& get_instance();
	$user = $CI->session->userdata('detail');

	if($field == ""){
		return $user;
	}else  {
		return empty($user) ? null : $user->$field;
	}

}

function fmm_password($raw_password)
{
	return strtoupper(md5('FMM-'.$raw_password.'-*123#'));
}

function pertanian_password($raw){
	$salted = "pertanian123" + $raw + "789";
	return md5($salted);
}

function sub_50($value='')
{
	return substr($value, 0,50).". . .";
}

function options($src, $id, $ref_val, $text_field,$with_pilih = false)
{
	$ref_bool = false;
	$options = '';


	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;

		if ($row->$id == $ref_val) {
			$ref_bool = true;
			$options .= '<option value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}



	if($with_pilih == true){
		if($ref_bool == true){
			$options = '<option value="" disabled="">- Pilih -</option>'.$options;
		}else{
			$options = '<option value="" disabled="" selected="">- Pilih -</option>'.$options;
		}

	}

	return $options;
}

function options_0($src, $id, $ref_val, $text_field,$with_pilih = false)
{
	$ref_bool = false;
	$options = '';


	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;

		if ($row->$id == $ref_val) {
			$ref_bool = true;
			$options .= '<option value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}



	if($with_pilih == true){
		if($ref_bool == true){
			$options = '<option value="0" >-- Semua --</option>'.$options;
		}else{
			$options = '<option value="0"  selected="">-- Semua --</option>'.$options;
		}

	}

	return $options;
}

function options_with_data($src, $id, $ref_val, $text_field,$with_pilih = false,$sub_field)
{
	$options = '';
	if($with_pilih){
		$options .= '<option value="" disabled="" selected="">-- Pilih --</option>';
	}

	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;
		$sub_value	= $row->$sub_field;

		if ($row->$id == $ref_val) {
			$options .= '<option class="options_with_data" style="display:none" data-sub="'.$sub_value.'" value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option class="options_with_data" style="display:none" data-sub="'.$sub_value.'" value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}
	return $options;
}

function options_with_data_v($src, $id, $ref_val, $text_field,$with_pilih = false,$sub_field)
{
	$options = '';
	if($with_pilih){
		$options .= '<option value="" disabled="" selected="">-- Pilih --</option>';
	}

	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;
		$sub_value	= $row->$sub_field;

		if ($row->$id == $ref_val) {
			$options .= '<option class="options_with_data" data-sub="'.$sub_value.'" value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option class="options_with_data" data-sub="'.$sub_value.'" value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}
	return $options;
}

function options_with_data_0($src, $id, $ref_val, $text_field,$with_pilih = false,$sub_field)
{
	$options = '';
	if($with_pilih){
		$options .= '<option value="0" selected="">-- Semua --</option>';
	}

	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;
		$sub_value	= $row->$sub_field;

		if ($row->$id == $ref_val) {
			$options .= '<option class="options_with_data" data-sub="'.$sub_value.'" value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option class="options_with_data" data-sub="'.$sub_value.'" value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}
	return $options;
}

function options_with_data_2($src, $id, $ref_val, $text_field,$with_pilih = false,$sub_field,$sub_field2)
{
	$options = '';
	if($with_pilih){
		$options .= '<option value="" disabled="" selected="">-- Pilih --</option>';
	}

	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;
		$sub_value	= $row->$sub_field;
		$sub_value2	= $row->$sub_field2;

		if ($row->$id == $ref_val) {
			$options .= '<option class="options_with_data" style="display:none" data-sub2="'.$sub_value2.'" data-sub="'.$sub_value.'" value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option class="options_with_data" style="display:none" data-sub2="'.$sub_value2.'" data-sub="'.$sub_value.'" value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}
	return $options;
}

function options_with_data_3($src, $id, $ref_val, $text_field,$with_pilih = false,$sub_field,$sub_field2,$sub_field3)
{
	$options = '';
	if($with_pilih){
		$options .= '<option value="" disabled="" selected="">-- Pilih --</option>';
	}

	foreach ($src->result() as $row) {
		$opt_value	= $row->$id;
		$text_value	= $row->$text_field;
		$sub_value	= $row->$sub_field;
		$sub_value2	= $row->$sub_field2;
		$sub_value3	= $row->$sub_field3;

		if ($row->$id == $ref_val) {
			$options .= '<option class="options_with_data" style="display:none" data-sub3="'.$sub_value3.'" data-sub2="'.$sub_value2.'" data-sub="'.$sub_value.'" value="'.$opt_value.'" selected>'.$text_value.'</option>';
		}
		else {
			$options .= '<option class="options_with_data" style="display:none" data-sub3="'.$sub_value3.'" data-sub2="'.$sub_value2.'" data-sub="'.$sub_value.'" value="'.$opt_value.'">'.$text_value.'</option>';
		}
	}
	return $options;
}

function to_number($str)
{
	return str_replace(',', '.', str_replace('.', '', $str));
}

function form_data($names)
{
	$CI =& get_instance();

	foreach ($names as $name) {
		$words = explode('_', $name);
		$prefix = $words[0];

		if ($prefix == 'num') {
			$name = substr($name, 4);
			$data[$name] = to_number(trim($CI->input->post($name)));
		}
		else if ($prefix == 'upper') {
			$name = substr($name, 6);
			$data[$name] = strtoupper(trim($CI->input->post($name)));
		}
		else if ($prefix == 'lower') {
			$name = substr($name, 6);
			$data[$name] = strtolower(trim($CI->input->post($name)));
		}
		else {
			$data[$name] = trim($CI->input->post($name));
		}

		if ($data[$name] == '') $data[$name] = NULL;
	}

	return $data;
}

function remove_commas($str)
{

	if(substr($str, -1) == "0"){
		$new = substr($str, 0, -1);
		if(substr($str, -1) == ",")  $str = substr($str, 0, -1);
		return remove_commas($new);
	}else{
		if(substr($str, -1) == ",")  $str = substr($str, 0, -1);
		return $str;
	}
}

function remove_dot($str)
{

	if(strlen($str) == 0){
		return 0;
	}

	return str_replace(".",".",$str);
}

function number_id($number)
{
	$res = number_format($number, 2, ',', '.');
	$x = remove_commas($res);

	// echo "string".$x;

	return $x;
}



function idr_currency($number)
{
	return 'Rp '.number_id($number);
}

class BriqResponse{

}

function briq_response($status_code = 200, $briq_code = '', $data = '', $message = '')
{
	$default_message = '';

	switch ($status_code) {
		case 200: {
			$briq_code = 'ok';
			break;
		}
		case 401: {
			$briq_code = 'unauthorized';
			$default_message = 'Anda tidak memiliki hak akses.';
			break;
		}
		case 403: {
			$briq_code = 'forbidden';
			$default_message = 'Permintaan ditolak.';
			break;
		}
	}

	if ($message == '') $message = $default_message;

	header('HTTP/1.1 '.$status_code.' '.$briq_code, true, $status_code);
	// $response = array (
	// 	'briq_code' => $briq_code,
	// 	'message' => $message,
	// 	'data' => $data,
	// );

	$response = new BriqResponse();
	$response->briq_code = $briq_code;
	$response->message = $message;
	if($data != ""){
		$response->data = $data;
	}
	// header('Content-type:application/json');
	echo json_encode($response);

	exit();
}

function check_auth()
{
	$CI =& get_instance();
	$token = $CI->input->post('token');

	# cek dari database
	$CI->db->where(array('access_token' => $token));
	$CI->db->where("NOW() < expiry_time");
	$src = $CI->db->get('_api_oauth');

	if ($src->num_rows() > 0) {
		return $src->row();
	}
	else {
		briq_response(401);
	}
}

function count_offset($page, $limit)
{
	return ($page - 1) * $limit;
}

function get_week($date)
{
	$date = new DateTime($date);
	return $date->format('W');
}

function get_day($date)
{
	if ($date == '') return '';
	return date('w', strtotime($date));
}

function check_name($name)
{
	// echo $name;die();
	$blacklist = array('', '-', '--', '---', '#', '.', '..', '...', '@', '_', '__', '___', '0', '+');
	return array_search($name, $blacklist) === false;
}

function date_string($str)
{
	$bulan = array (1 =>   'Januari',
				"2" =>'Februari',
				"3" =>'Maret',
				"4" =>'April',
				"5" =>'Mei',
				"6" =>'Juni',
				"7" =>'Juli',
				"8" =>'Agustus',
				"9" =>'September',
				"10" =>'Oktober',
				"11" =>'November',
				"12" =>'Desember'
			);
	$bulan_index = date('n',strtotime($str));
	return date('d ', strtotime($str)).$bulan[$bulan_index].date(' Y', strtotime($str));
}


/* End of file riki_helper.php */
/* Location: ./application/helpers/riki_helper.php */
