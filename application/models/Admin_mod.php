<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_mod extends CI_Model {

	function get_all_admin(){
		$this->db->select('user_info.id_user, user_info.username, user_detail.nama_lengkap, user_detail.email, user_detail.telp');
		$this->db->from('user_info');
		$this->db->join('user_detail', 'user_info.id_user = user_detail.id_user');
		$this->db->where('user_info.status_active', '1');
		$this->db->where('user_info.level', '1');
		return $this->db->get();
	}

	function get_admin_by_id(){
		$this->db->select('user_detail.*, user_info.username as username, user_info.password as password');
		$this->db->from("user_detail");
		$this->db->join('user_info', 'user_info.id_user = user_detail.id_user', 'left');
		$this->db->where('user_detail.id_user', $this->session->userdata('id_user'));
		return $this->db->get();
	}	


	function insert_admin(){
		$id_user = "9".time();
		$password = sha1(md5($this->input->post('password')));
		$data = array('id_user' => $id_user,
					  'username' => $this->input->post('username'),
					  'password' => $password,
					  'status_active' => 1,
					  'level' => "1",
					  'last_login'=> date('H:i:s'),
					  'service_time' => date('Y/m/d H:i:s'),
					  'service_action' => 'insert',
					  'service_user' => $this->session->userdata('id_user'));

		$object = array('id_user' => $id_user,
						'nama_lengkap' => $this->input->post('nama_depan')."&nbsp;".$this->input->post('nama_belakang'),
						'nama_depan' => $this->input->post('nama_depan'),
						'nama_belakang' => $this->input->post('nama_belakang'),
						'alamat' => $this->input->post('alamat'),
						'jenis_kelamin' => $this->input->post('jkel'),
						'email' => $this->input->post('email'),
						'telp' => $this->input->post('telepon'),
						'service_time' => date('Y/m/d H:i:s'),
						'service_action' => 'insert',
						'service_user' => $this->session->userdata('id_user') );

		$this->db->insert("user_info", $data);
		$this->db->insert("user_detail", $object);
	}


	function update_admin(){
		$id_user = "9".time();
		$password = sha1(md5($this->input->post('password')));
		$data = array('username' => $this->input->post('username'),
					  'password' => $password,
					  'status_active' => 1,
					  'level' => "1",
					  'last_login'=> date('H:i:s'),
					  'service_time' => date('Y/m/d H:i:s'),
					  'service_action' => 'insert',
					  'service_user' => $this->session->userdata('id_user'));

		$object = array('nama_lengkap' => $this->input->post('nama_depan')."&nbsp;".$this->input->post('nama_belakang'),
						'nama_depan' => $this->input->post('nama_depan'),
						'nama_belakang' => $this->input->post('nama_belakang'),
						'alamat' => $this->input->post('alamat'),
						'jenis_kelamin' => $this->input->post('jkel'),
						'email' => $this->input->post('email'),
						'telp' => $this->input->post('telepon'),
						'service_time' => date('Y/m/d H:i:s'),
						'service_action' => 'insert',
						'service_user' => $this->session->userdata('id_user') );

		$this->db->where('id_user', $this->session->userdata('id'));
		$this->db->update('user_info', $data);

		$this->db->where('id_user', $this->session->userdata('id'));
		$this->db->update("user_detail", $object);
	
	}

	function delete_admin(){
		$this->db->where('id_user', $this->session->userdata('id'));

		$object = array('status_active' => "0",
						'service_action' => "delete",
						'service_user' => $this->session->userdata('id_user') );

		$this->db->update('user_info', $object);
	}


	function upload_profile($photo){


		$data = array('foto' => $photo );

		$this->db->where('id_user', $this->session->userdata('id_user'));
		$this->db->update('user_info', $data);
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
}

/* End of file admin_mod.php */
/* Location: ./application/models/admin_mod.php */