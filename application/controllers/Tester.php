<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class Tester extends CI_Controller
{

    public function index()
	{
        $data['title'] = 'Manajemen User/Tester';
        $data['navParent'] = 'tester';
        $data['data'] = $this->crud->getAll("user")->result();
        $this->session->set_userdata(["ujicoba" => 'false']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('tester/index', $data);
        $this->load->view('templates/footer_js', $data);
        $this->load->view('templates/custom_js', $data);
        $this->load->view('templates/footer');
	}

    public function choose_tester()
    {
        $id_user = $this->input->post('choose_tester');
        $row = $this->crud->edit(['id_user' => $id_user], 'user')->row();
        $data_session = array(
            'id_user' => $id_user,
            'nama_user' => $row->nama_user,
        );

        $this->session->set_userdata($data_session);

        if ($this->session->userdata('id_user') != '') {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Tester telah dipilih!', "Tester bernama: $row->nama_user", 'success', 'success'));
            redirect("tester/");
        }else{
            $this->session->set_flashdata('pesan', $this->primslib->notify('Tester gagal dipilih!', "Terjadi kesalahan teknis", 'danger', 'error'));
            redirect("tester/");
        }
    }

    public function clear()
    {
        $this->session->sess_destroy(); //menghentikan semua sesion
        $this->session->set_flashdata('pesan', $this->primslib->notify('Sesi Tester bersih!', "Sesi tester berhasil dihapus", 'success', 'success'));
        redirect("tester/");
    }

    public function tambah()
    {
        $this->form_validation->set_rules('nama_user', 'Nama', 'trim|required|min_length[3]|max_length[64]|regex_match[/[A-Za-z ]{3,64}/]');
        $this->form_validation->set_rules('peran_user', 'Kode Peran', 'trim|required|min_length[2]|max_length[64]|regex_match[/[A-Za-z ]{2,64}/]');
        // custom pesan
        $this->form_validation->set_message('required', 'Mohon maaf, {field} harus diisi');
        $this->form_validation->set_message('min_length', '{field} harus lebih dari {param} karakter');
        $this->form_validation->set_message('max_length', '{field} harus kurang dari {param} karakter');
        $this->form_validation->set_message('regex_match', 'Masukan {field} tidak sama dengan ketentuan.');

        $this->form_validation->set_error_delimiters('<div class="text-center"><span class="badge badge-danger text-white mt-2 px-4">', '</span></div>');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Manajemen User/Tester';
            $data['navParent'] = 'tester';
            $data['data'] = $this->crud->getAll("user")->result();
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('tester/index', $data);
            $this->load->view('templates/footer_js', $data);
            $this->load->view('templates/custom_js', $data);
            $this->load->view('templates/footer');
        }else{
            $insert = [
                'nama_user' => $this->input->post('nama_user'),
                'peran_user' => $this->input->post('peran_user'),
            ];

            // menjalankan fungsi insert untuk menambah data ke database
            $this->crud->insert($insert, 'user');
            // mengirim pesan berhasil insert
            if ($this->db->affected_rows() == true) {
                $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil menambahkan data.', 'success', 'success'));
                redirect('tester/');
            } else {
                $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal menambahkan data.', 'danger', 'error'));
                redirect('tester/');
            }
        }
    }

    public function hapus($id_user)
    {
        // deklarasi $where by id
        $where = array('id_user' => $id_user);
        // menjalankan fungsi delete pada m_dosen_adm
        $this->crud->delete($where, 'user');
        // mengirim pesan berhasil dihapus
        if ($this->db->affected_rows() == true) {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil menghapus data.', 'success', 'success'));
            redirect("tester/");
        } else {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal menghapus data.', 'danger', 'error'));
            redirect("tester/");
        }
    }

    public function export_images()
    {
        $id_user = $this->input->post('choose_tester');
        $data = $this->db->query("SELECT * FROM images, user, learning WHERE
        learning.id_img = images.id_img AND
        learning.id_user = user.id_user AND
        user.id_user = $id_user")->result();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        $sheet->mergeCells("A1:P1");
        $sheet->setCellValue('A1', 'Laporan Data Images');

        $sheet->setCellValue('A3', 'no');
        $sheet->setCellValue('B3', 'img_truk');
        $sheet->setCellValue('C3', 'img_od');
        $sheet->setCellValue('D3', 'w_image');
        $sheet->setCellValue('E3', 'h_image');
        $sheet->setCellValue('F3', 'confidence_kepala');
        $sheet->setCellValue('G3', 'x_kepala');
        $sheet->setCellValue('H3', 'y_kepala');
        $sheet->setCellValue('I3', 'w_kepala');
        $sheet->setCellValue('J3', 'h_kepala');
        $sheet->setCellValue('K3', 'confidence_badan');
        $sheet->setCellValue('L3', 'x_badan');
        $sheet->setCellValue('M3', 'y_badan');
        $sheet->setCellValue('N3', 'w_badan');
        $sheet->setCellValue('O3', 'h_badan');
        $sheet->setCellValue('P3', 'class');

        $sheet->getStyle('A1:P3')->getAlignment()->setHorizontal('center');
        $sheet->getColumnDimension('B')->setWidth(200);
        $sheet->getColumnDimension('C')->setWidth(200);
        
        
        $no = 1;
        $x = 4;
        foreach($data as $row)
        {
            $sheet->setCellValue('A'.$x, $no++);
            // $sheet->setCellValue('B'.$x, $row->img_truk);
            // $sheet->setCellValue('C'.$x, $row->img_od);
            $sheet->setCellValue('D'.$x, $row->w_image);
            $sheet->setCellValue('E'.$x, $row->h_image);
            $sheet->setCellValue('F'.$x, $row->confidence_kepala);
            $sheet->setCellValue('G'.$x, $row->x_kepala);
            $sheet->setCellValue('H'.$x, $row->y_kepala);
            $sheet->setCellValue('I'.$x, $row->w_kepala);
            $sheet->setCellValue('J'.$x, $row->h_kepala);
            $sheet->setCellValue('K'.$x, $row->confidence_badan);
            $sheet->setCellValue('L'.$x, $row->x_badan);
            $sheet->setCellValue('M'.$x, $row->y_badan);
            $sheet->setCellValue('N'.$x, $row->w_badan);
            $sheet->setCellValue('O'.$x, $row->h_badan);
            $sheet->setCellValue('P'.$x, $row->class);

            $sheet->getRowDimension($x)->setRowHeight(50);
            $drawing = new Drawing();
            $drawing->setName('Truk Ori' . $x);
            $drawing->setDescription('Truk Ori' . $x);
            $drawing->setPath('./python/'. substr($row->img_truk, 2)); 
            $drawing->setCoordinates('B'.$x);
            $drawing->setWidth(60);
            $drawing->setHeight(60);
            $drawing->setWorksheet($sheet);

            $drawing2 = new Drawing();
            $drawing2->setName('Truk OD' . $x);
            $drawing2->setDescription('Truk OD' . $x);
            $drawing2->setPath('./python/'. substr($row->img_od, 2)); 
            $drawing2->setCoordinates('C'.$x);
            $drawing2->setWidth(60);
            $drawing2->setHeight(60);
            $drawing2->setWorksheet($sheet);

            $x++;
        }

        foreach ($sheet->getColumnIterator() as $column) {
            $sheet->getColumnDimension($column->getColumnIndex())->setAutoSize(true);
        }

        

        $writer = new Xlsx($spreadsheet);
        $filename = 'laporan-validate-' . date('Y-m-d') . date('his');
        
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'. $filename .'.xlsx"'); 
        header('Cache-Control: max-age=0');

        $writer->save('php://output');

        redirect('/tester');
    }
}