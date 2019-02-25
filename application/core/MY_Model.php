<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Model extends CI_Model {

	public $model_db;
	public $table;
	public $id = 'id';
	public $deleted_at = true;
	public $fields;
	public $filter = array();
	public $keyword;
	public $where;
	public $sql_where;
	public $like =array();
	public $sql_like;
	public $offset;
	public $order;
	public $limit = 0;

	public $pagination = 'on';

	public $temporary_table;
	
	
	public function __construct()
	{
		parent::__construct();
		
		$CI =& get_instance();
		$this->model_db = $CI->db;
		
		$this->sql_where = $this->sql_like = '';
		$this->keyword = '';
	}
	
	
	public function by_id($id)
	{
		$this->filter();
		$src = $this->model_db->get_where($this->table, array($this->id => $id));
		return $src->num_rows() > 0 ? $src->row() : $this->fields;
	}
	
	
	public function set_filter($q_encoded)
	{
		$params_json = base64_decode($q_encoded);
		$params_arr = (mb_detect_encoding($params_json) == 'ASCII') ? (array) json_decode($params_json) : array();
		
		foreach ($params_arr as $key => $val) {
			if (is_object($val)) $this->filter[$key] = (array) $val;
			else if ($key == 'keyword') $this->keyword = trim($val);
			else $this->filter[$key] = $val;
		}
	}
	
	
	# obsolete
	public function set_keyword($q_encoded)
	{
		$q_decoded = base64_decode($q_encoded);
		$this->keyword = (mb_detect_encoding($q_decoded) == 'ASCII') ? $q_decoded : '';
	}
	
	
	public function set_grid_params($params)
	{
		$this->offset = $params['offset'];
		$this->order = $params['item'].' '.$params['order'];
		$this->limit = $params['limit'];
	}
	
	
	# obsolete
	public function like()
	{
		$i = 1;
		foreach ($this->like as $field) {
			if ($i == 1) $this->model_db->like($field, $this->keyword, 'both');
			else $this->model_db->or_like($field, $this->keyword, 'both');
			$i++;
		}
	}
	
	public function filter()
	{
		// active data
		if ($this->deleted_at)
			if($this->temporary_table !=null){
				$this->model_db->where($this->temporary_table.'.deleted_at IS NULL');
			}else{
				$this->model_db->where($this->table.'.deleted_at IS NULL');	
			}
			
		
		// set filter pencarian
		if (count($this->like) > 0)
			$this->sql_like = '1 = 0';
		
		$i = 1;
		foreach ($this->like as $field) {
			$this->sql_like .= " OR $field LIKE '%".$this->keyword."%'";
			$i++;
		}
		
		if (count($this->like) > 0)
			$this->model_db->where('('.$this->sql_like.')');
		
		// set filter where
		// echo "<pre>";var_dump($this->filter);die();
		foreach ($this->filter as $field => $filter) {
			if (is_array($filter)) {
				$this->model_db->where("($field BETWEEN '$filter[start]' AND '$filter[end]')");
			}
			else if (substr($field, 0, 4) == '_or_'){
				$this->model_db->or_where(substr($field,4),$filter);
			}
			else if ($filter !== '' AND $filter !== FALSE) {
				$this->model_db->where($field, $filter);
			}
			
			else{
				$this->model_db->where($field);	
			}
		}
	}
	
	
	public function num_rows()
	{
		$this->filter();
		return $this->model_db->count_all_results($this->table);
	}
	
	
	protected function get()
	{
		$this->filter();
		$this->model_db->order_by($this->order);
		
		if ($this->limit != 0 AND $this->pagination == 'on')
			$this->model_db->limit($this->limit, $this->offset);
		
		
		return $this->model_db->get($this->table);
	}
	
	
}
// END MY_Model Class

/* End of file MY_Model.php */
/* Location: ./system/core/MY_Model.php */