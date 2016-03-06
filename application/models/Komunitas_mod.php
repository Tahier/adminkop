<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Komunitas_mod extends CI_Model {

	private $tablename = "komunitas";

	public function __construct()
	{
		parent::__construct();
		
		
	}

	function get_all_komunitas(){
		$this->db->select('user_info.username, komunitas.alamat, komunitas.telp, komunitas.nama, komunitas.id_komunitas, komunitas.ketua_komunitas');
		$this->db->from('komunitas');
		$this->db->where('komunitas.status_active', "1");
		$this->db->join('user_info', 'user_info.id_user = komunitas.id_user');
		return $this->db->get();
	}

	function get_id_nama(){
		$this->db->select('id_komunitas, nama');
		$this->db->where('status_active', "1");
		return $this->db->get('komunitas');
	}


	function get_komunitas_by_id($id){
		$this->db->select('komunitas.*, user_info.username, user_info.password');
		$this->db->join('user_info', 'user_info.id_user = komunitas.id_user');
		$this->db->where('id_komunitas', $id);
		return $this->db->get('komunitas');
	}

	function get_komunitas_by_id_profile($id){
		$this->db->select('komunitas.*, komunitas.parent_komunitas as komunitas, komunitas.nama as nama_lengkap, user_info.username, user_info.password');
		$this->db->join('user_info', 'user_info.id_user = komunitas.id_user');
		$this->db->where('komunitas.id_user', $id);
		return $this->db->get('komunitas');


	}

	function add_komunitas(){
		$id_komunitas = "6".time();
		$id_user = "9".time();
		$password = sha1(md5($this->input->post('password')));
		$user_info = array('id_user' => $id_user,
						   'username' => $this->input->post('username'),
						   'password' => $password,
						   'status_active' => "1",
						   'level' => "4",
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "insert",
						   'service_user'=>$this->session->userdata('id_user'));


		$komunitas = array('id_komunitas' => $id_komunitas,
						  'id_user'=>$id_user,
						  'nama'=>$this->input->post('nama'),
						  'status_active' => "1",
						  'service_time'=>date("Y-m-d H:i:s"),
						  'service_action'=>"insert",
						  'service_users'=>$this->session->userdata('id_user'),
						  'alamat' => $this->input->post('alamat'),
						  'telp'=> $this->input->post('telepon'),
						  'tgl_berdiri'=> $this->input->post('berdiri'),
						  'ketua_komunitas' => $this->input->post('ketua'),
						  'ketua_komunitas_telp' => $this->input->post('ketua_telp'),
						  'keterangan_komunitas'=> $this->input->post('keterangan'));


		$this->db->insert('user_info', $user_info);
		$this->db->insert($this->tablename, $komunitas);
	}


	function update_komunitas(){
		$password = sha1(md5($this->input->post('password')));


		$user_info = array('username' => $this->input->post('username'),
						   'password' => $password,
						   'status_active' => "1",
						   'service_time' => date("Y-m-d H:i:s"),
						   'service_action' => "update",
						   'service_user'=>$this->session->userdata('id_user'));


		$komunitas = array('nama'=>$this->input->post('nama'),
						  'service_time'=>date("Y-m-d H:i:s"),
						  'service_action'=>"update",
						  'service_users'=>$this->session->userdata('id_user'),
						  'alamat' => $this->input->post('alamat'),
						  'telp'=> $this->input->post('telepon'),
						  'tgl_berdiri'=> $this->input->post('berdiri'),
						  'ketua_komunitas' => $this->input->post('ketua'),
						  'ketua_komunitas_telp' => $this->input->post('ketua_telp'),
						  'keterangan_komunitas'=> $this->input->post('keterangan'),
						  'service_time' => date("Y-m-d H:i:s"),
						  'service_action' => "update",
						  'service_users'=>$this->session->userdata('id_user'));

		if($this->session->userdata('level') != "4"){

			$this->db->where('komunitas', $this->session->userdata('id'));
			$this->db->update('user_info', $user_info);

			$this->db->where('id_komunitas', $this->session->userdata('id'));
			$this->db->update($this->tablename, $komunitas);

		}

		else {

			$this->db->where('id_user', $this->session->userdata('id_user'));
			$this->db->update('user_info', $user_info);

			$this->db->where('id_user', $this->session->userdata('id_user'));
			$this->db->update($this->tablename, $komunitas);
		}
	}

	function delete_komunitas(){
		$data = array('status_active' => "0",
					  'service_time'=>date("Y-m-d H:i:s"),
					  'service_action'=>"delete",
					  'service_users'=>$this->session->userdata('id_user') );

		$this->db->where('id_komunitas', $this->session->userdata('id'));
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

/* End of file m_komunitas.php */
/* Location: ./application/models/m_komunitas.php */