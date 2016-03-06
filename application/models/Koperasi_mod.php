<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Koperasi_mod extends CI_Model {

	private $tablename = "koperasi";

	public function __construct()
	{
		parent::__construct();
		
		
	}

	function get_all_koperasi(){
		$this->db->select('user_info.username, koperasi.alamat, koperasi.telp, koperasi.nama, koperasi.id_koperasi, koperasi.parent_koperasi');
		$this->db->from('koperasi');
		$this->db->where('koperasi.status_active', "1");
		$this->db->where('koperasi.parent_koperasi', "0");
		$this->db->join('user_info', 'user_info.id_user = koperasi.id_user');
		return $this->db->get();
	}

	function get_koperasi_cabang(){
		$this->db->select('user_info.id_user');
		$this->db->from('user_info');
		$this->db->where('koperasi.status_active', "1");
		$this->db->join('koperasi', 'user_info.id_user = koperasi.id_user');
		return $this->db->get();
	}

	function get_all_cabang_koperasi(){

		if($this->session->userdata('level') == "1"){
			$this->db->select('user_info.username, koperasi.alamat, koperasi.telp, koperasi.nama, koperasi.id_koperasi, koperasi.parent_koperasi');
			$this->db->from('koperasi');
			$this->db->join('user_info', 'user_info.id_user = koperasi.id_user');
			$this->db->where('koperasi.status_active', "1");
			$this->db->where('parent_koperasi !=', 0);
			return $this->db->get();
		}

		else if ($this->session->userdata('level') == "2"){
			$this->db->select('user_info.username, koperasi.alamat, koperasi.telp, koperasi.nama, koperasi.id_koperasi, koperasi.parent_koperasi');
			$this->db->from('koperasi');
			$this->db->join('user_info', 'user_info.id_user = koperasi.id_user');
			$this->db->where('koperasi.status_active', "1");
			$this->db->where('parent_koperasi !=', 0);
			$this->db->where('parent_koperasi', $this->session->userdata('koperasi'));
			return $this->db->get();
		}
	}


	function get_induk_koperasi($id){
		$this->db->select('nama');
		$this->db->where('id_koperasi', $id);
		return $this->db->get('koperasi');
	}

	function get_id_nama(){
		$this->db->select('id_koperasi, nama');
		$this->db->where('status_active', "1");
		return $this->db->get('koperasi');
	}


	function get_koperasi_by_id($id){
		$this->db->select('koperasi.*, user_info.username, user_info.password');
		$this->db->join('user_info', 'user_info.id_user = koperasi.id_user');
		$this->db->where('id_koperasi', $id);
		return $this->db->get('koperasi');
	}

	function get_koperasi_by_id_profile($id){
		$this->db->select('koperasi.*, koperasi.parent_koperasi as koperasi, koperasi.nama as nama_lengkap, user_info.username, user_info.password');
		$this->db->join('user_info', 'user_info.id_user = koperasi.id_user');
		$this->db->where('koperasi.id_user', $id);
		return $this->db->get('koperasi');


	}

	function add_koperasi(){
		$id_koperasi = "8".time();
		$id_user = "9".time();
		$password = sha1(md5($this->input->post('password')));

		if($this->session->userdata('level') == "1"){
			$koperasi = $this->input->post('koperasi');
		}
		else {
			$koperasi = $this->session->userdata('koperasi');
		}

		$user_info = array('id_user' => $id_user,
						   'koperasi' => $id_koperasi,
						   'username' => $this->input->post('username'),
						   'password' => $password,
						   'status_active' => "1",
						   'level' => "2",
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "insert",
						   'service_user'=>$this->session->userdata('id_user'));


		$koperasi = array('id_koperasi' => $id_koperasi,
						  'id_user'=>$id_user,
						  'nama'=>$this->input->post('nama'),
						  'status_active' => "1",
						  'service_time'=>date("Y-m-d H:i:s"),
						  'service_action'=>"insert",
						  'service_users'=>$this->session->userdata('id_user'),
						  'alamat' => $this->input->post('alamat'),
						  'telp'=> $this->input->post('telepon'),
						  'tgl_berdiri'=> $this->input->post('berdiri'),
						  'legal' => $this->input->post('legal'),
						  'ketua_koperasi' => $this->input->post('ketua'),
						  'ketua_koperasi_telp' => $this->input->post('ketua_telp'),
						  'keterangan_koperasi'=> $this->input->post('keterangan'),
						  'parent_koperasi' => $koperasi);


		$this->db->insert('user_info', $user_info);
		$this->db->insert($this->tablename, $koperasi);
	}


	function update_koperasi(){
		
		if($this->session->userdata('level') != "2"){
			$parent_koperasi = $this->input->post('koperasi');
		}
		else if($this->session->userdata('parent_koperasi') == "0"){
			$parent_koperasi = $this->session->userdata('id_koperasi');
		}
		else {
			$parent_koperasi = $this->session->userdata('parent_koperasi');
		}



		$user_info = array('username' => $this->input->post('username'),
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "update",
						   'service_user'=>$this->session->userdata('id_user'));


		$koperasi = array('nama'=>$this->input->post('nama'),
						  'service_time'=>date("Y-m-d H:i:s"),
						  'service_action'=>"update",
						  'service_users'=>$this->session->userdata('id_user'),
						  'alamat' => $this->input->post('alamat'),
						  'telp'=> $this->input->post('telepon'),
						  'tgl_berdiri'=> $this->input->post('berdiri'),
						  'legal' => $this->input->post('legal'),
						  'ketua_koperasi' => $this->input->post('ketua'),
						  'ketua_koperasi_telp' => $this->input->post('ketua_telp'),
						  'keterangan_koperasi'=> $this->input->post('keterangan'),
						  'parent_koperasi' => $parent_koperasi,
						  'service_time' => date("Y-m-d H:i:s"),
						  'service_action' => "update",
						  'service_users'=>$this->session->userdata('id_user'));

			$this->db->where('koperasi', $this->session->userdata('id'));
			$this->db->update('user_info', $user_info);

			$this->db->where('id_koperasi', $this->session->userdata('id'));
			$this->db->update($this->tablename, $koperasi);

	}


	function update_profil_koperasi(){
		$password = sha1(md5($this->input->post('password')));


		$user_info = array('username' => $this->input->post('username'),
						   'password' => $password,
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "update",
						   'service_user'=>$this->session->userdata('id_user'));


		$koperasi = array('nama'=>$this->input->post('nama'),
						  'alamat' => $this->input->post('alamat'),
						  'telp'=> $this->input->post('telepon'),
						  'tgl_berdiri'=> $this->input->post('berdiri'),
						  'legal' => $this->input->post('legal'),
						  'ketua_koperasi' => $this->input->post('ketua'),
						  'ketua_koperasi_telp' => $this->input->post('ketua_telp'),
						  'keterangan_koperasi'=> $this->input->post('keterangan'),
						  'service_time' => date("Y-m-d H:i:s"),
						  'service_action' => "update",
						  'service_users'=>$this->session->userdata('id_user'));

			$this->db->where('id_user', $this->session->userdata('id_user'));
			$this->db->update('user_info', $user_info);

			$this->db->where('id_user', $this->session->userdata('id_user'));
			$this->db->update($this->tablename, $koperasi);

	}


	function delete_koperasi(){
		$data = array('status_active' => "0",
					  'service_time'=>date("Y-m-d H:i:s"),
					  'service_action'=>"delete",
					  'service_users'=>$this->session->userdata('id_user') );

		$this->db->where('id_koperasi', $this->session->userdata('id'));
		$this->db->update($this->tablename, $data);
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
}

/* End of file m_koperasi.php */
/* Location: ./application/models/m_koperasi.php */