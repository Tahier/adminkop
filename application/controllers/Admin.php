<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		if(empty($this->session->userdata('id_user'))){
			redirect(base_url().'login','refresh');
		}
		// $this->session->set_userdata('level', '1');
		
		// if($this->session->userdata('level') != "1"){
		// 	redirect(base_url().'home','refresh');
		// }
		
		$this->load->model('admin_mod');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">
  		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>', '</div>');
	}



	function admin_data()
	{
		$data['admin'] = $this->admin_mod->get_all_admin()->result();
		$data['title'] = "Data Admin";
		$data['no'] = 1;
		$this->load->view('user/admin_data', $data);
	}


	function add_admin() {
		$this->form_validation->set_rules('nama_depan', 'Nama Depan', 'required|xss_clean');
		$this->form_validation->set_rules('nama_belakang', 'Nama Belakang', 'xss_clean');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|xss_clean');
		$this->form_validation->set_rules('email', 'Email', 'valid_email|required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('username', 'Username', 'required|xss_clean|alpha_numeric|callback_cek_username');
		$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');
		
		if ($this->form_validation->run() == FALSE) {
			$data['title'] = "Tambah Admin";
			$this->load->view('user/add_admin', $data);
		} 
		else {
			$this->admin_mod->insert_admin();
			$this->session->set_flashdata('msg','Data Admin berhasil ditambahkan');
			redirect(base_url().'admin','refresh');
		}
	}


	function edit_admin(){
		$this->session->set_userdata('id',$this->uri->rsegment(3));
		redirect(base_url().'admin_edit','refresh');

	}



	function update_admin(){

		$this->form_validation->set_rules('nama_depan', 'Nama Depan', 'required|xss_clean');
		$this->form_validation->set_rules('nama_belakang', 'Nama Belakang', 'xss_clean');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|xss_clean');
		$this->form_validation->set_rules('email', 'Email', 'valid_email|required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('username', 'Username', 'required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');		
		if ($this->form_validation->run() == FALSE) {
			if($this->admin_mod->get_admin_by_id($this->session->userdata('id'))->num_rows() > 0){
				$data['user'] = $this->admin_mod->get_admin_by_id($this->session->userdata('id'))->row_array();
				$data['title'] = "Edit Admin";
				$this->load->view('user/edit_admin', $data);
			}
			else {
				redirect(base_url().'not_found','refresh');
			}
		} 
		else {
				$this->session->set_flashdata('msg','Data Admin berhasil diubah');
				$this->admin_mod->update_admin();
				redirect(base_url().'admin','refresh');
			}
	}


	function delete_admin(){
		$this->session->set_userdata('id',$this->uri->rsegment(3));
		redirect(base_url().'admin_delete','refresh');

	}


	function admin_delete(){
		if($this->admin_mod->get_admin_by_id($this->session->userdata('id'))->num_rows() > 0){
			$this->admin_mod->delete_admin();
			$this->session->set_flashdata('msg','Data Admin berhasil dihapus');
			redirect(base_url().'admin','refresh');
		}
		else {
				redirect(base_url().'not_found','refresh');
			}
	}


	public function cek_username($username){

		$username = $this->input->post('username');

		$result = $this->admin_mod->cek_username($username);


		if(!$result){
			$this->form_validation->set_message('cek_username', 'Username sudah terdaftar');
     		return FALSE;
		}
		else{
			return TRUE;
		}

	}

}

/* End of file Admin.php */
/* Location: ./application/controllers/Admin.php */