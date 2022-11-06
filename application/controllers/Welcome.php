<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

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
		// $this->load->view('welcome_message');
		$data['title'] = 'Welcome to Web Deteksi Over Dimension dan Overload Menggunakan Metode YOLO dan Tiny-YOLO';
        $data['navParent'] = 'welcome';
        $this->session->set_userdata(["ujicoba" => 'false']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('weight/dashboard', $data);
        $this->load->view('templates/footer_js', $data);
        $this->load->view('templates/custom_js', $data);
        $this->load->view('templates/footer');
	}
}
