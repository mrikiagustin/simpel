<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{

		if($this->input->post("username") != ""){
			$this->session->unset_userdata('login_info');
			$data = $this->db->where("username",$this->input->post("username"))->get("user");


			if($data->num_rows() > 0 ){
				if($data->row()->password == pertanian_password($this->input->post("password"))){
					$newdata = $data->row();

					$this->session->set_userdata("login_info",$newdata);
					redirect("work/permohonan");
				}else{
					$this->session->set_flashdata('error', 'Username atau password salah');
					redirect("login");
				}



			}else{
				$this->session->set_flashdata('error', 'Username atau password salah');
				redirect("login");
			}

		}else{
				$this->load->view('login');
		}


	}

	function logout(){
		$this->session->unset_userdata('login_info');
		redirect("login");
	}
}
