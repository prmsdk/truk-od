<?php

// use PhpOffice\PhpSpreadsheet\Spreadsheet;
// use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Validate extends CI_Controller
{

    var $data;
    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('id_user') == '') {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Session tidak ditemukan.', 'Mohon pilih tester terlebih dahulu.', 'danger', 'error'));
            redirect('tester/');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy(); //menghentikan semua sesion
        $this->session->set_flashdata('pesan', $this->primslib->notify('Sesi Tester bersih!', "Sesi tester berhasil dihapus", 'success', 'success'));
        redirect("tester/");
    }

    public function index()
	{
        $data['title'] = 'Validasi Images';
        $data['navParent'] = 'validate';
        $this->session->set_userdata(["ujicoba" => 'false']);

        $id_user = $this->session->userdata('id_user');
        $img = $this->db->query("SELECT * FROM images LIMIT 1")->row();
        $data['data'] = $img;
        $data['tester'] = $this->crud->edit(['id_user' => $id_user], 'user')->row();
        $data['learning'] = $this->crud->edit(['id_user' => $id_user, 'id_img' => $img->id_img], "learning")->row();
        $data['prev'] = $this->db->query("SELECT * from images where id_img = (SELECT max(id_img) from images where id_img < $img->id_img)")->num_rows();
        $data['next'] = $this->db->query("SELECT * from images where id_img = (SELECT min(id_img) from images where id_img > $img->id_img)")->num_rows();
        // var_dump($data); exit;
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('validate/index', $data);
        $this->load->view('templates/footer_js', $data);
        $this->load->view('templates/custom_js', $data);
        $this->load->view('templates/footer');
	}

    public function img($id_img)
    {
        $data['title'] = 'Validasi Images';
        $data['navParent'] = 'validate';

        $id_user = $this->session->userdata('id_user');
        $img = $this->db->query("SELECT * FROM images WHERE id_img = $id_img LIMIT 1")->row();
        $data['data'] = $img;
        $data['tester'] = $this->crud->edit(['id_user' => $id_user], 'user')->row();
        $data['learning'] = $this->crud->edit(['id_user' => $id_user, 'id_img' => $img->id_img], "learning")->row();
        $data['prev'] = $this->db->query("SELECT * from images where id_img = (SELECT max(id_img) from images where id_img < $id_img)")->num_rows();
        $data['next'] = $this->db->query("SELECT * from images where id_img = (SELECT min(id_img) from images where id_img > $id_img)")->num_rows();
        // var_dump($data); exit;
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('validate/index', $data);
        $this->load->view('templates/footer_js', $data);
        $this->load->view('templates/custom_js', $data);
        $this->load->view('templates/footer');
    }

    public function ya($id_img)
    {
        $id_user = $this->session->userdata('id_user');
        $where = ['id_img' => $id_img, 'id_user' => $id_user];
        
        $select = $this->crud->edit($where, 'learning');

        $this->db->trans_start();
        if ($select->num_rows() > 0) {
            $whereUpdate = ['id_learn' => $select->row()->id_learn ];
            $data = [
                'id_user' => $id_user,
                'id_img' => $id_img,
                'class' => 1
            ];

            $this->crud->update($whereUpdate, $data, 'learning');
        }else{
            $data = [
                'id_user' => $id_user,
                'id_img' => $id_img,
                'class' => 1
            ];

            $this->crud->insert($data, 'learning');
        }
        $this->db->trans_complete();
        // mengirim pesan berhasil dihapus
        $next = $this->db->query("SELECT * from images where id_img = (SELECT min(id_img) from images where id_img > $id_img)");
        if($next->num_rows() > 0 ){ $next = $next->row()->id_img; }else{ $next = $id_img; }
        if ($this->db->trans_start() == TRUE) {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil validasi data.', 'success', 'success'));
            redirect("validate/img/$next");
        } else {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal validasi data.', 'danger', 'error'));
            redirect("validate/img/$next");
        }
    }

    public function prev($id_img)
    {
        $prev = $this->db->query("SELECT * from images where id_img = (SELECT max(id_img) from images where id_img < $id_img)")->row()->id_img;
        redirect("validate/img/$prev");
    }

    public function next($id_img)
    {
        $next = $this->db->query("SELECT * from images where id_img = (SELECT min(id_img) from images where id_img > $id_img)")->row()->id_img;
        redirect("validate/img/$next");
    }

    public function tidak($id_img)
    {
        $id_user = $this->session->userdata('id_user');
        $where = ['id_img' => $id_img, 'id_user' => $id_user];
        
        $select = $this->crud->edit($where, 'learning');

        $this->db->trans_start();
        if ($select->num_rows() > 0) {
            $whereUpdate = ['id_learn' => $select->row()->id_learn ];
            $data = [
                'id_user' => $id_user,
                'id_img' => $id_img,
                'class' => 0
            ];

            $this->crud->update($whereUpdate, $data, 'learning');
        }else{
            $data = [
                'id_user' => $id_user,
                'id_img' => $id_img,
                'class' => 0
            ];

            $this->crud->insert($data, 'learning');
        }
        $this->db->trans_complete();
        // mengirim pesan berhasil dihapus
        $next = $this->db->query("SELECT * from images where id_img = (SELECT min(id_img) from images where id_img > $id_img)");
        if($next->num_rows() > 0 ){ $next = $next->row()->id_img; }else{ $next = $id_img; }
        if ($this->db->trans_start() == TRUE) {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil validasi data.', 'success', 'success'));
            redirect("validate/img/$next");
        } else {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal validasi data.', 'danger', 'error'));
            redirect("validate/img/$next");
        }
    }
}