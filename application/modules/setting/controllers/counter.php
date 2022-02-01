<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class counter extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->page->use_directory();

		$this->load->library('grocery_CRUD');
	}

    public function index(){
        
    }

}