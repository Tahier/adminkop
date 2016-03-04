<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Anggota extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here

		if(empty($this->session->userdata('id_user'))){
			redirect(base_url().'login','refresh');
		}
		// $this->session->set_userdata('level', '3');
		
		$this->load->model('anggota_mod');
		$this->load->model('koperasi_mod');
		$this->load->model('pekerjaan_mod');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">
  		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>', '</div>');
	}

	function data_anggota()
	{
		$data['anggota'] = $this->anggota_mod->get_all_anggota()->result();
		$data['title'] = "Data Anggota Koperasi";
		$data['no'] = 1;
		$this->load->view('user/anggota_data', $data);
	}

	function add_anggota(){
		$this->form_validation->set_rules('nama_depan', 'Nama Depan', 'required|xss_clean');
		$this->form_validation->set_rules('nama_belakang', 'Nama Belakang', 'xss_clean');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|xss_clean');
		$this->form_validation->set_rules('email', 'Email', 'valid_email|required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('username', 'Username', 'required|xss_clean|callback_cek_username');
		$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');
		// $this->form_validation->set_rules('koperasi', 'Koperasi', 'required|xss_clean');
		// $this->form_validation->set_rules('pekerjaan', 'Pekerjaan', 'required|xss_clean');

		if ($this->form_validation->run() == FALSE) {
			$data['pekerjaan'] = $this->pekerjaan_mod->get_all_pekerjaan()->result();
			$data['koperasi'] = $this->koperasi_mod->get_all_koperasi()->result();
			$data['title'] = "Tambah Anggota";
			$this->load->view('user/add_anggota', $data);
		} 
		else {
			$this->anggota_mod->add_anggota();
			$this->session->set_flashdata('msg','Data Anggota berhasil ditambahkan');
			redirect(base_url().'anggota','refresh');
		}

	}


	function edit_anggota(){
			$this->session->set_userdata('id',$this->uri->rsegment(3));
			redirect(base_url().'update_anggota','refresh');
	}


	function anggota_edit(){
		$this->form_validation->set_rules('nama_depan', 'Nama Depan', 'required|xss_clean');
		$this->form_validation->set_rules('nama_belakang', 'Nama Belakang', 'xss_clean');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|xss_clean');
		$this->form_validation->set_rules('email', 'Email', 'valid_email|required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('username', 'Username', 'required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');
		$this->form_validation->set_rules('koperasi', 'Koperasi', 'required|xss_clean');
		$this->form_validation->set_rules('pekerjaan', 'Pekerjaan', 'required|xss_clean');

		if ($this->form_validation->run() == FALSE) {
			if($this->anggota_mod->get_anggota_by_id($this->session->userdata('id'))->num_rows() > 0){
				$data['user'] = $this->anggota_mod->get_anggota_by_id($this->session->userdata('id'))->row_array();
				$data['pekerjaan'] = $this->pekerjaan_mod->get_all_pekerjaan()->result();
				$data['koperasi'] = $this->koperasi_mod->get_all_koperasi()->result();
				$data['title'] = "Edit Anggota";
				$this->load->view('user/edit_anggota', $data);
			}
			else {
				redirect(base_url().'not_found','refresh');
			}
		} 
		else {
				$this->anggota_mod->update_anggota();
				$this->session->set_flashdata('msg','Data Anggota berhasil diubah');
				redirect(base_url().'anggota','refresh');
		}

	}


	function delete_anggota(){
			$this->session->set_userdata('id',$this->uri->rsegment(3));
			redirect(base_url().'anggota_delete','refresh');
	}

	function anggota_delete(){
		if($this->anggota_mod->get_anggota_by_id($this->session->userdata('id'))->row_array() > 0){
			$this->anggota_mod->delete_anggota();
			$this->session->set_flashdata('msg','Data Anggota berhasil dihapus');

			redirect(base_url().'anggota','refresh');
		}
		else {
			redirect(base_url().'not_found','refresh');
		}
	}



	public function cek_username($username){

		$username = $this->input->post('username');
		$result = $this->anggota_mod->cek_username($username);


		if(!$result){
			$this->form_validation->set_message('cek_username', 'Username sudah terdaftar');
     		return FALSE;
		}
		else{
			return TRUE;
		}

	}







}

/* End of file Anggota.php */
/* Location: ./application/controllers/Anggota.php */