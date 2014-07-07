<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {

	
	public function index()
	{
		$this->load->view('login');
	}

	public function cek_login()
	{
		$data = array('username' => $this->input->post('username') , 
					  'password' => $this->input->post('password')
					  );
		$hasil = $this->model_user->cek_user($data);
		if ($hasil->num_rows() == 1){
			foreach($hasil->result() as $sess)
            {
              $sess_data['logged_in'] = 'Sudah Login';
              $sess_data['username'] = $sess->username;
              $sess_data['level'] = $sess->level;
              $this->session->set_userdata($sess_data);
            }
			if ($this->session->userdata('level')=='admin'){
				redirect('admin');
			}
			elseif ($this->session->userdata('level')=='member'){
				redirect('member');
			}
		}
		else
		{
			echo " <script>alert('Gagal Login: Cek username , password!');history.go(-1);</script>";
		}
		
	}

	public function logout() {
		$this->session->sess_destroy();
		redirect('auth');
	} 

}