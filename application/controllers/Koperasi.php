<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Koperasi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(empty($this->session->userdata('id_user'))){
			redirect(base_url().'login','refresh');
		}
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">
  		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>', '</div>');
		// $this->session->set_userdata('level', "1");
		$this->load->model('koperasi_mod');
	}

	function koperasi_data()
	{
		$this->session->set_userdata('url_kop', 'cabang_koperasi');
		$data['koperasi'] = $this->koperasi_mod->get_all_koperasi()->result();
		$data['no'] = 1;
		$data['title'] = "Data Koperasi";
		$this->load->view('koperasi/koperasi_data', $data);
	}

	function cabang_koperasi_data()
	{
		$this->session->set_userdata('url_kop', 'cabang_koperasi');
		$data['koperasi'] = $this->koperasi_mod->get_all_cabang_koperasi()->result();
		$data['no'] = 1;
		$data['title'] = "Data Koperasi";
		$this->load->view('koperasi/koperasi_data', $data);
	}

	function add_koperasi(){
		

		$this->form_validation->set_rules('nama', 'Nama Koperasi', 'required|xss_clean');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('berdiri', 'Tanggal Berdiri', 'required|xss_clean');
		$this->form_validation->set_rules('legal', 'Legal', 'xss_clean');
		$this->form_validation->set_rules('ketua', 'Ketua Koperasi', 'required|xss_clean');
		$this->form_validation->set_rules('ketua_telp', 'No Telepon Ketua Koperasi', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('keterangan', 'Keterangan', 'required');
		// $this->form_validation->set_rules('koperasi', 'Cabang Koperasi', 'xss_clean');

		$this->form_validation->set_rules('username', 'Username', 'required|xss_clean|alpha_numeric|callback_cek_username');
		$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');

		if ($this->form_validation->run() == FALSE) {
			$data['title'] = "Tambah Koperasi";
			$data['data_kop'] = $this->koperasi_mod->get_id_nama()->result();
			$this->load->view('koperasi/add_koperasi', $data);
		} 
		else {
				$this->session->set_flashdata('msg','Data Koperasi berhasil ditambahkan');

			$this->koperasi_mod->add_koperasi();
			if($this->session->userdata('url_kop') == "cabang_koperasi"){ 
				redirect(base_url().'cabang_koperasi','refresh');
			}
			else {
				redirect(base_url().'koperasi','refresh');

			}
	
		}
	}

	function edit_koperasi(){
		$this->session->set_userdata('id', $this->uri->rsegment(3));
		redirect(base_url().'koperasiupdate','refresh');
	}
	

	function update_koperasi(){
		
		$this->form_validation->set_rules('nama', 'Nama Koperasi', 'required|xss_clean');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('telepon', 'Telepon', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('berdiri', 'Tanggal Berdiri', 'required|xss_clean');
		$this->form_validation->set_rules('legal', 'Legal', 'xss_clean');
		$this->form_validation->set_rules('ketua', 'Ketua Koperasi', 'required|xss_clean');
		$this->form_validation->set_rules('ketua_telp', 'No Telepon Ketua Koperasi', 'numeric|required|xss_clean');
		$this->form_validation->set_rules('keterangan', 'Keterangan', 'required');
		$this->form_validation->set_rules('koperasi', 'Cabang Koperasi', 'xss_clean');
		$this->form_validation->set_rules('nama', 'Nama Koperasi', 'required|xss_clean');

		if ($this->form_validation->run() == FALSE) {
			if($this->koperasi_mod->get_koperasi_by_id($this->session->userdata('id'))->num_rows() > 0){
				$data['koperasi'] = $this->koperasi_mod->get_koperasi_by_id($this->session->userdata('id'))->row_array();
				$data['title'] = "Edit Koperasi";
				$data['data_kop'] = $this->koperasi_mod->get_id_nama()->result();
				$this->load->view('koperasi/edit_koperasi', $data);
			}
			else {
				redirect(base_url().'not_found','refresh');
			}
			
		} 
		else {
			$this->koperasi_mod->update_koperasi();
			$this->session->set_flashdata('msg','Data Koperasi berhasil diubah');

			redirect(base_url().'koperasi','refresh');
		}
	}

	function delete_koperasi(){
		$this->session->set_userdata('id', $this->uri->rsegment(3));
		redirect(base_url().'koperasi_delete','refresh');
	}

	function koperasi_delete(){
		if($this->koperasi_mod->get_koperasi_by_id($this->session->userdata('id'))->num_rows() > 0){
			$this->koperasi_mod->delete_koperasi();
			$this->session->set_flashdata('msg','Data Koperasi berhasil dihapus');
			redirect(base_url().'koperasi','refresh');
		}
		else {
				redirect(base_url().'not_found','refresh');
			}
	}

	public function cek_username($username){

		$username = $this->input->post('username');

		$result = $this->koperasi_mod->cek_username($username);


		if(!$result){
			$this->form_validation->set_message('cek_username', 'Username sudah terdaftar');
     		return FALSE;
		}
		else{
			return TRUE;
		}

	}

}

/* End of file Koperasi.php */
/* Location: ./application/controllers/Koperasi.php */