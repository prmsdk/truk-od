<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class Weight extends CI_Controller
{

    public function index()
	{
        $data['title'] = 'Manajemen Bobot LVQ';
        $data['navParent'] = 'weight';
        $data['data'] = $this->crud->getAll("weight")->result();
        $this->session->set_userdata(["ujicoba" => 'false']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('weight/index', $data);
        $this->load->view('templates/footer_js', $data);
        $this->load->view('templates/custom_js', $data);
        $this->load->view('templates/footer');
	}

    public function hapus($id_weight)
    {
        // deklarasi $where by id
        $where = array('id_weight' => $id_weight);
        // menjalankan fungsi delete pada m_dosen_adm
        $this->crud->delete($where, 'weight');
        // mengirim pesan berhasil dihapus
        if ($this->db->affected_rows() == true) {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil menghapus data.', 'success', 'success'));
            redirect("weight/");
        } else {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal menghapus data.', 'danger', 'error'));
            redirect("weight/");
        }
    }

    public function active($id_weight)
    {
        // deklarasi $where by id
        $where = array('id_weight' => $id_weight);
        // menjalankan fungsi delete pada m_dosen_adm
        $this->db->query("UPDATE weight SET status_weight = 'NONAKTIF'");
        $this->crud->update($where, ['status_weight' => 'AKTIF'], 'weight');
        // mengirim pesan berhasil dihapus
        if ($this->db->affected_rows() == true) {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil mengaktifkan data.', 'success', 'success'));
            redirect("weight/");
        } else {
            $this->session->set_flashdata('pesan', $this->primslib->notify('Perhatian!', 'Gagal mengaktifkan data.', 'danger', 'error'));
            redirect("weight/");
        }
    }

    public function tambah()
    {
        var_dump($_POST);
        $alpha = $this->input->post('alpha');
        $max_epoch = $this->input->post('max_epoch');
        $classPerhitungan = 0;

        set_time_limit(600);

        for ($i=1; $i <= $max_epoch; $i++) { 
            $train_fetch = $this->db->query("SELECT * FROM images, user, learning WHERE
            learning.id_img = images.id_img AND
            learning.id_user = user.id_user AND
            user.peran_user = 'dev' AND
            images.status = 'active'");
            $train = $train_fetch->result_array();
            $num_row = $train_fetch->num_rows();
            $j = 1;

            // var_dump($train);

            foreach ($train as $row ) {
                // $tr_w_image = $row['w_image'];
                // $tr_h_image = $row['h_image'];
                // $tr_confidence_kepala = $row['confidence_kepala'];
                // $tr_x_kepala = $row['x_kepala'];
                // $tr_y_kepala = $row['y_kepala'];
                $tr_w_kepala = $row['w_kepala'];
                $tr_h_kepala = $row['h_kepala'];
                // $tr_confidence_badan = $row['confidence_badan'];
                // $tr_x_badan = $row['x_badan'];
                // $tr_y_badan = $row['y_badan'];
                $tr_w_badan = $row['w_badan'];
                $tr_h_badan = $row['h_badan'];
                $classDatabase = $row['class'];

                if(($i < $max_epoch) || ($j < $num_row)){

                    if(($i == 1) && ($j == 1)){
                        // $wa_w_image = rand(0, 1);
                        // $wa_h_image = rand(0, 1);
                        // $wa_confidence_kepala = rand(0, 1);
                        // $wa_x_kepala = rand(0, 1);
                        // $wa_y_kepala = rand(0, 1);
                        $wa_w_kepala = rand(0, 1);
                        $wa_h_kepala = rand(0, 1);
                        // $wa_confidence_badan = rand(0, 1);
                        // $wa_x_badan = rand(0, 1);
                        // $wa_y_badan = rand(0, 1);
                        $wa_w_badan = rand(0, 1);
                        $wa_h_badan = rand(0, 1);

                        // $wb_w_image = rand(0, 1);
                        // $wb_h_image = rand(0, 1);
                        // $wb_confidence_kepala = rand(0, 1);
                        // $wb_x_kepala = rand(0, 1);
                        // $wb_y_kepala = rand(0, 1);
                        $wb_w_kepala = rand(0, 1);
                        $wb_h_kepala = rand(0, 1);
                        // $wb_confidence_badan = rand(0, 1);
                        // $wb_x_badan = rand(0, 1);
                        // $wb_y_badan = rand(0, 1);
                        $wb_w_badan = rand(0, 1);
                        $wb_h_badan = rand(0, 1);
                    }

                    $result_a = sqrt(
                        // pow(($tr_w_image - $wa_w_image), 2) +
                        // pow(($tr_h_image - $wa_h_image), 2) +
                        // pow(($tr_confidence_kepala - $wa_confidence_kepala), 2) +
                        // pow(($tr_x_kepala - $wa_x_kepala), 2) +
                        // pow(($tr_y_kepala - $wa_y_kepala), 2) +
                        pow(($tr_w_kepala - $wa_w_kepala), 2) +
                        pow(($tr_h_kepala - $wa_h_kepala), 2) +
                        // pow(($tr_confidence_badan - $wa_confidence_badan), 2) +
                        // pow(($tr_x_badan - $wa_x_badan), 2) +
                        // pow(($tr_y_badan - $wa_y_badan), 2) +
                        pow(($tr_w_badan - $wa_w_badan), 2) +
                        pow(($tr_h_badan - $wa_h_badan), 2)
                    );

                    $result_b = sqrt(
                        // pow(($tr_w_image - $wb_w_image), 2) +
                        // pow(($tr_h_image - $wb_h_image), 2) +
                        // pow(($tr_confidence_kepala - $wb_confidence_kepala), 2) +
                        // pow(($tr_x_kepala - $wb_x_kepala), 2) +
                        // pow(($tr_y_kepala - $wb_y_kepala), 2) +
                        pow(($tr_w_kepala - $wb_w_kepala), 2) +
                        pow(($tr_h_kepala - $wb_h_kepala), 2) +
                        // pow(($tr_confidence_badan - $wb_confidence_badan), 2) +
                        // pow(($tr_x_badan - $wb_x_badan), 2) +
                        // pow(($tr_y_badan - $wb_y_badan), 2) +
                        pow(($tr_w_badan - $wb_w_badan), 2) +
                        pow(($tr_h_badan - $wb_h_badan), 2)
                    );

                    if ($result_a < $result_b) {
                        $classPerhitungan = 1;
                    } else {
                        $classPerhitungan = 0;
                    }

                    if($classPerhitungan == 1){
                        // $wa_w_image = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_w_image, $tr_w_image, $alpha);
                        // $wa_h_image = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_h_image, $tr_h_image, $alpha);
                        // $wa_confidence_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_confidence_kepala, $tr_confidence_kepala, $alpha);
                        // $wa_x_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_x_kepala, $tr_x_kepala, $alpha);
                        // $wa_y_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_y_kepala, $tr_y_kepala, $alpha);
                        $wa_w_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_w_kepala, $tr_w_kepala, $alpha);
                        $wa_h_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_h_kepala, $tr_h_kepala, $alpha);
                        // $wa_confidence_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_confidence_badan, $tr_confidence_badan, $alpha);
                        // $wa_x_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_x_badan, $tr_x_badan, $alpha);
                        // $wa_y_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_y_badan, $tr_y_badan, $alpha);
                        $wa_w_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_w_badan, $tr_w_badan, $alpha);
                        $wa_h_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wa_h_badan, $tr_h_badan, $alpha);
                    }else{
                        // $wb_w_image = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_w_image, $tr_w_image, $alpha);
                        // $wb_h_image = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_h_image, $tr_h_image, $alpha);
                        // $wb_confidence_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_confidence_kepala, $tr_confidence_kepala, $alpha);
                        // $wb_x_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_x_kepala, $tr_x_kepala, $alpha);
                        // $wb_y_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_y_kepala, $tr_y_kepala, $alpha);
                        $wb_w_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_w_kepala, $tr_w_kepala, $alpha);
                        $wb_h_kepala = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_h_kepala, $tr_h_kepala, $alpha);
                        // $wb_confidence_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_confidence_badan, $tr_confidence_badan, $alpha);
                        // $wb_x_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_x_badan, $tr_x_badan, $alpha);
                        // $wb_y_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_y_badan, $tr_y_badan, $alpha);
                        $wb_w_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_w_badan, $tr_w_badan, $alpha);
                        $wb_h_badan = $this->hitungWeight($classPerhitungan, $classDatabase, $wb_h_badan, $tr_h_badan, $alpha);
                    }

                }else{
                    $akurasi = 0;
                    foreach ($train as $rowTrain ) :
                        // $latih_w_image = $rowTrain['w_image'];
                        // $latih_h_image = $rowTrain['h_image'];
                        // $latih_confidence_kepala = $rowTrain['confidence_kepala'];
                        // $latih_x_kepala = $rowTrain['x_kepala'];
                        // $latih_y_kepala = $rowTrain['y_kepala'];
                        $latih_w_kepala = $rowTrain['w_kepala'];
                        $latih_h_kepala = $rowTrain['h_kepala'];
                        // $latih_confidence_badan = $rowTrain['confidence_badan'];
                        // $latih_x_badan = $rowTrain['x_badan'];
                        // $latih_y_badan = $rowTrain['y_badan'];
                        $latih_w_badan = $rowTrain['w_badan'];
                        $latih_h_badan = $rowTrain['h_badan'];

                        $result_aLatih = sqrt(
                            // pow(($latih_w_image - $wa_w_image), 2) +
                            // pow(($latih_h_image - $wa_h_image), 2) +
                            // pow(($latih_confidence_kepala - $wa_confidence_kepala), 2) +
                            // pow(($latih_x_kepala - $wa_x_kepala), 2) +
                            // pow(($latih_y_kepala - $wa_y_kepala), 2) +
                            pow(($latih_w_kepala - $wa_w_kepala), 2) +
                            pow(($latih_h_kepala - $wa_h_kepala), 2) +
                            // pow(($latih_confidence_badan - $wa_confidence_badan), 2) +
                            // pow(($latih_x_badan - $wa_x_badan), 2) +
                            // pow(($latih_y_badan - $wa_y_badan), 2) +
                            pow(($latih_w_badan - $wa_w_badan), 2) +
                            pow(($latih_h_badan - $wa_h_badan), 2)
                        );

                        $result_bLatih = sqrt(
                            // pow(($latih_w_image - $wb_w_image), 2) +
                            // pow(($latih_h_image - $wb_h_image), 2) +
                            // pow(($latih_confidence_kepala - $wb_confidence_kepala), 2) +
                            // pow(($latih_x_kepala - $wb_x_kepala), 2) +
                            // pow(($latih_y_kepala - $wb_y_kepala), 2) +
                            pow(($latih_w_kepala - $wb_w_kepala), 2) +
                            pow(($latih_h_kepala - $wb_h_kepala), 2) +
                            // pow(($latih_confidence_badan - $wb_confidence_badan), 2) +
                            // pow(($latih_x_badan - $wb_x_badan), 2) +
                            // pow(($latih_y_badan - $wb_y_badan), 2) +
                            pow(($latih_w_badan - $wb_w_badan), 2) +
                            pow(($latih_h_badan - $wb_h_badan), 2)
                        );

                        if ($result_aLatih < $result_bLatih) {
                            $classLatih = 1;
                        } else {
                            $classLatih = 0;
                        }

                        if ($rowTrain['class'] == $classLatih) {
                            $akurasi += 1;
                        }
                    endforeach;

                    $prosentase = ($akurasi / $num_row) * 100;
                    $insert = [
                        'alpha' => $alpha,
                        'max_epoch' => $max_epoch,
                        'datetime_weight' => date('Y-m-d H:i:s'),
                        'status_weight' => 'NONAKTIF',
                        'prosentase' => $prosentase,

                        // 'wa_w_image' => $wa_w_image,
                        // 'wa_h_image' => $wa_h_image,
                        // 'wa_confidence_kepala' => $wa_confidence_kepala,
                        // 'wa_x_kepala' => $wa_x_kepala,
                        // 'wa_y_kepala' => $wa_y_kepala,
                        'wa_w_kepala' => $wa_w_kepala,
                        'wa_h_kepala' => $wa_h_kepala,
                        // 'wa_confidence_badan' => $wa_confidence_badan,
                        // 'wa_x_badan' => $wa_x_badan,
                        // 'wa_y_badan' => $wa_y_badan,
                        'wa_w_badan' => $wa_w_badan,
                        'wa_h_badan' => $wa_h_badan,

                        // 'wb_w_image' => $wb_w_image,
                        // 'wb_h_image' => $wb_h_image,
                        // 'wb_confidence_kepala' => $wb_confidence_kepala,
                        // 'wb_x_kepala' => $wb_x_kepala,
                        // 'wb_y_kepala' => $wb_y_kepala,
                        'wb_w_kepala' => $wb_w_kepala,
                        'wb_h_kepala' => $wb_h_kepala,
                        // 'wb_confidence_badan' => $wb_confidence_badan,
                        // 'wb_x_badan' => $wb_x_badan,
                        // 'wb_y_badan' => $wb_y_badan,
                        'wb_w_badan' => $wb_w_badan,
                        'wb_h_badan' => $wb_h_badan,
                    ];

                    $this->crud->insert($insert, 'weight');

                    $selectTertinggi = $this->db->query("SELECT * FROM `weight` ORDER BY weight.prosentase DESC LIMIT 1")->row()->id_weight;
                    $where = array('id_weight' => $selectTertinggi);
                    // menjalankan fungsi delete pada m_dosen_adm
                    $this->db->query("UPDATE weight SET status_weight = 'NONAKTIF'");
                    $this->crud->update($where, ['status_weight' => 'AKTIF'], 'weight');
                    
                    $this->session->set_flashdata('pesan', $this->primslib->notify('Selamat!', 'Berhasil melatih data.', 'success', 'success'));
                    redirect('weight');
                }

                $j++;
            }
        }
    }

    public function hitungWeight($ClassPerhitunganSebelumnya, $ClassDatasetSebelumnya, $weightSebelumnya, $weightDataset, $alpha)
    {
        if ($ClassDatasetSebelumnya == $ClassPerhitunganSebelumnya) {
            $resultWeight = $weightSebelumnya + ($alpha * ($weightDataset - $weightSebelumnya));
        } else {
            $resultWeight = $weightSebelumnya - ($alpha * ($weightDataset - $weightSebelumnya));
        }

        return $resultWeight;
    }
}