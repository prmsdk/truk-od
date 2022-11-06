<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class Images_test extends CI_Controller
{

    public function index()
	{
        $data['title'] = 'Manajemen Images';
        $data['navParent'] = 'images_test';
        $data['data'] = $this->crud->getAll("images_test")->result();
        $this->session->set_userdata(["ujicoba" => 'true']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('images/test', $data);
        $this->load->view('templates/footer_js', $data);
        $this->load->view('templates/custom_js', $data);
        $this->load->view('templates/footer');
	}

    public function hapus($id_img_test)
    {
        // deklarasi $where by id
        $where = array('id_img_test' => $id_img_test);
        // menjalankan fungsi delete pada m_dosen_adm
        $this->crud->delete($where, 'images_test');
        // mengirim pesan berhasil dihapus
        if ($this->db->affected_rows() == true) {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil menghapus data.', 'success', 'success'));
            redirect("images_test/");
        } else {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal menghapus data.', 'danger', 'error'));
            redirect("images_test/");
        }
    }

    public function export_excel()
    {
        $data = $this->crud->getAll("images_test")->result();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        $sheet->mergeCells("A1:O1");
        $sheet->setCellValue('A1', 'Laporan Data images_test All');

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
            $sheet->setCellValue('P'.$x, $row->od_test);

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
        $filename = 'laporan-images_testAll-' . date('Y-m-d') . date('his');
        
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'. $filename .'.xlsx"'); 
        header('Cache-Control: max-age=0');

        $writer->save('php://output');

        redirect('/tester');
    }
}