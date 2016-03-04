<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Anggota_mod extends CI_Model {

	
	public function __construct()
	{
		parent::__construct();
		
		
	}



	function get_all_anggota(){

		if($this->session->userdata('level') == "1"){
			$this->db->select('user_info.username,user_info.id_user, user_detail.alamat, user_detail.telp,user_detail.email, user_detail.nama_lengkap, koperasi.nama');
			$this->db->from('user_info');
			$this->db->join('user_detail', 'user_info.id_user = user_detail.id_user');
			$this->db->join('koperasi', 'user_info.koperasi = koperasi.id_koperasi');
			$this->db->where('user_info.level', "3");
			$this->db->where('user_info.status_active', "1");
			return $this->db->get();
		}
		else {
			$this->db->select('user_info.username,user_info.id_user, user_detail.alamat, user_detail.telp,user_detail.email, user_detail.nama_lengkap, koperasi.nama');
			$this->db->from('user_info');
			$this->db->join('user_detail', 'user_info.id_user = user_detail.id_user');
			$this->db->join('koperasi', 'user_info.koperasi = koperasi.id_koperasi');
			$this->db->where('user_info.level', "3");
			$this->db->where('user_info.status_active', "1");
			$this->db->where('koperasi', $this->session->userdata('koperasi'));
			return $this->db->get();
		}
	}

	function get_anggota_by_id($id){
		$this->db->select('user_info.*, user_detail.*');

		if($this->session->userdata('koperasi') != null){
			$this->db->select('koperasi.nama');
			$this->db->join('koperasi', 'koperasi.id_koperasi = user_info.koperasi');
		}


		$this->db->join('user_detail', 'user_info.id_user = user_detail.id_user');
		$this->db->where('user_info.id_user', $id);
		return $this->db->get('user_info');
	}

	function add_anggota(){
		$password = sha1(md5($this->input->post('password')));
		$id_user = "9".time();
		if($this->session->userdata('level') == "1"){
			$koperasi = $this->input->post('koperasi');
		}

		else {
			$koperasi = $this->session->userdata('koperasi');
		}

		$user_info = array('id_user' => $id_user,
						   'koperasi' => $this->input->post('koperasi'),
						   'username' => $this->input->post('username'),
						   'password' => $password,
						   'status_active' => "1",
						   'level' => "3",
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "insert",
						   'service_user'=>$this->session->userdata('id_user'));


		$user_detail = array('id_user' => $id_user,
							'nama_lengkap' => $this->input->post('nama_depan')."&nbsp;".$this->input->post('nama_belakang'),
							'nama_depan' => $this->input->post('nama_depan'),
							'nama_belakang' => $this->input->post('nama_belakang'),
							'pekerjaan' => $this->input->post('pekerjaan'),
							'alamat' => $this->input->post('alamat'),
							'jenis_kelamin' => $this->input->post('jkel'),
							'email' => $this->input->post('email'),
							'telp' => $this->input->post('telepon'),
							'service_time' => date('Y/m/d H:i:s'),
							'service_action' => 'insert',
							'service_user' => $this->session->userdata('id_user'));


		$this->db->insert('user_info', $user_info);
		$this->db->insert("user_detail", $user_detail);
	}


	function update_anggota(){
		$password = sha1(md5($this->input->post('password')));
		
		$user_info = array('password' => $password,
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "update",
						   'service_user'=>$this->session->userdata('id_user'));




		$user_detail = array('nama_lengkap' => $this->input->post('nama_depan')."&nbsp;".$this->input->post('nama_belakang'),
							'nama_depan' => $this->input->post('nama_depan'),
							'nama_belakang' => $this->input->post('nama_belakang'),
							'pekerjaan' => $this->input->post('pekerjaan'),
							'alamat' => $this->input->post('alamat'),
							'jenis_kelamin' => $this->input->post('jkel'),
							'email' => $this->input->post('email'),
							'telp' => $this->input->post('telepon'),
							'service_time' => date('Y/m/d H:i:s'),
							'service_action' => 'update',
							'service_user' => $this->session->userdata('id_user'));


		if($this->session->userdata('koperasi') == NULL){
			$koperasi = array('koperasi' => $this->input->post('koperasi'));
			$this->db->update('user_info', $koperasi, array('id_user' => $this->session->userdata('id')));
		}

		$this->db->where('id_user', $this->session->userdata('id'));
		$this->db->update('user_info', $user_info);

		$this->db->where('id_user', $this->session->userdata('id'));
		$this->db->update("user_detail", $user_detail);
	}

	function delete_anggota(){
		$this->db->where('id_user', $this->session->userdata('id'));

		$object = array('status_active' => "0",
						'service_action' => "delete",
						'service_user' => $this->session->userdata('id_user') );

		$this->db->update('user_info', $object);
	}
	

	function cek_username($username){

		$this->db->select('username');
		$this->db->where('username', $username);
		$query = $this->db->get('user_info');

		if($query->num_rows() == 0){
			return TRUE;
		}
		else {
			return FALSE;
		}

	}

		
	function upload_profile($photo){


		$data = array('foto' => $photo );

		$this->db->where('id_user', $this->session->userdata('id_user'));
		$this->db->update('user_info', $data);
	}

	function last_login(){

		if($this->session->userdata('level') == 2){
			 $this->db->select('user_detail.nama_lengkap, user_info.foto, user_info.last_login');
			 $this->db->from('user_info');
			 $this->db->join('user_detail', 'user_info.id_user = user_detail.id_user');
			 $this->db->where('user_info.koperasi', $this->session->userdata('koperasi'));
			 $this->db->order_by('user_info.last_login', 'desc');
			 return $this->db->get();
		}
		else if($this->session->userdata('level') == 1){
			 $this->db->select('user_detail.nama_lengkap, user_info.foto, user_info.last_login');
			 $this->db->join('user_detail', 'user_info.id_user = user_detail.id_user');
			 $this->db->where('user_info.level', "3");
			 $this->db->order_by('user_info.last_login', 'desc');
			 return $this->db->get('user_info', 8);
		}
		else {
			return FALSE;
		}
	}

}

/* End of file anggota_mod.php */
/* Location: ./application/models/anggota_mod.php */