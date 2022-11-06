<div class="main-panel py-5">
    <div class="container py-3 px-0">
    <div class="page-inner">
        <div class="page-header">
            <h4 class="page-title">Dashboard</h4>
            <ul class="breadcrumbs">
                <li class="nav-home">
                    <a href="/dashboard">
                        <i class="flaticon-home"></i>
                    </a>
                </li>
                <li class="separator">
                    <i class="flaticon-right-arrow"></i>
                </li>
                <li class="nav-item">
                    <a href="#">Welcome</a>
                </li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card d-none d-md-block d-lg-block">
                    <div class="card-body row">
                        <div class="col-lg-2 col-md-12 text-center">
                            <img src="<?=base_url()?>/assets/truk.jpg" class="img-fluid" alt="Gambar hasil positif">
                        </div>
                        <div class="col-lg-8 col-md-8 d-flex">
                            <h1 class="d-flex align-items-center px-lg-5">
                                Selamat Datang di Aplikasi Web Deteksi <br> Over Dimension dan Overload pada Truk Menggunakan Metode YOLO dan Tiny-YOLO.
                            </h1>
                        </div>
                        <div class="col-lg-2 col-md-4 my-auto text-center">
                            <a class="btn btn-primary" href="<?=base_url('/images_test')?>" role="button">Tampilkan Data</a>
                        </div>
                    </div>
                </div>
                <div class="card d-block d-md-none d-lg-none">
                    <div class="card-body row">
                        <div class="col-12">
                            <img src="<?=base_url()?>/assets/img/klasifikasipositif.png" class="img-fluid" alt="Gambar hasil positif">
                        </div>
                        <div class="col-12">
                            <h3 class="d-flex align-items-center text-center py-2">
                                Selamat Datang di Aplikasi Deteksi Dini Kanker Serviks Menggunakan Metode LVQ (Learning Vector Quantization).
                            </h3>
                        </div>
                        <div class="col-12 text-center py-2">
                            <a class="btn btn-primary" href="<?=base_url('/testing')?>" role="button">Ayo Periksa!</a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <b>
                                <h4 class="card-title">Over Dimension dan Overload</h4>
                            </b>
                        </div>
                    </div>
                    <div class="card-body">
                        <p style="text-align:justify">Fokus penelitian ini untuk mendeteksi truk ODOL (Over Dimension dan Overload), definisi ODOL yang disampaikan oleh (Yostisa, 2021) sebagai berikut, Over Dimension adalah suatu kondisi dimana dimensi pengangkut kendaraan tidak sesuai atau melebihi standar produksi dan ketentuan peraturan yang berlaku, sedangkan kondisi dimana kendaraan mengangkut muatan yang melebihi batas beban yang ditetapkan dapat disebut sebagai Overload.
                        </p>
                        <p style="text-align:right">Sumber: (Yostisa, 2021)</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <b>
                                <h4 class="card-title">YOLO (You Only Look Once)</h4>
                            </b>
                        </div>
                    </div>
                    <div class="card-body">
                        <p style="text-align:justify"><i>YOLO (You Only Look Once)</i> adalah sebuah pendekatan baru untuk sistem pendeteksian objek, yang ditargetkan untuk pemrosesan secara real-time. YOLO membingkai pendeteksian objek sebagai masalah regresi tunggal, dimana dari pixel citra langsung ke bounding box spasial yang terpisah dan probabilitas kelas yang terkait. YOLO menjalankan pendeteksian dan pengenalan objek dengan sebuah jaringan syaraf tunggal, yang memprediksi kotak pembatas dan probabilitas kelas (class) secara langsung dalam satu evaluasi (Hutauruk dkk., 2020). YOLO memiliki tugas untuk membagi gambar menjadi grid berukuran S x S. Jika suatu objek berada dalam sel grid, sel tersebut bertanggung jawab untuk memprediksi objek tersebut, setiap grid sel memprediksi B (Bounding Boxes) dan nilai daripada Bounding Boxes tersebut. 
                        </p>
                        <p style="text-align:right">Sumber: (Hutauruk dkk., 2020) dan (Adiwibowo dkk., 2020)</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <b>
                                <h4 class="card-title">Tiny-YOLO</h4>
                            </b>
                        </div>
                    </div>
                    <div class="card-body">
                        Sejarah penemuan Tiny-YOLO berawal dari penyampaian Fast YOLO oleh Joseph Redmon pada tahun 2016. Menurut (Shinde dkk., 2019) Fast YOLO menggunakan sebuah jaringan syaraf dengan lapisan konvolusional yang lebih sedikit (9 alih – alih 24) dan menggunakan lebih sedikit filter pada setiap lapisan konvolusional tersebut. Selain ukuran jaringan, semua parameter pelatihan dan pengujian adalah sama antara YOLO dan Fast YOLO. Pada pengembangan Yolo v3 maka ditemukanlah varian terkompresi dari metode YOLO yakni  Tiny-YOLO. <br>
                        Menurut (Techzizou, 2021) Tiny-Yolo merupakan varian YOLO yang telah terkompresi. Varian ini dikembangkan untuk membuat struktur YOLO yang lebih sederhana dan mengurangi parameter sehingga layak untuk dikembangkan pada perangkat seluler, komputer papan tunggal dan perangkat tertanam. FPS (Frames Per Second) yang dicapai pada penerapan Tiny-Yolo hingga delapan kali lipat dari YOLO. Namun, akurasi untuk Tiny-Yolo adalah 2/3 dari YOLO pada saat diuji pada dataset MS COCO.

                        <p style="text-align:right">Sumber: (Shinde dkk., 2019) dan (Techzizou, 2021)</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div></div>