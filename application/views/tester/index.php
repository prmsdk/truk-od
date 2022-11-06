<div class="main-panel py-5">
    <div class="container py-3 px-0">
        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title">Manajemen Tester</h4>
                <ul class="breadcrumbs">
                    <li class="nav-home">
                        <a href="<?=base_url('admin/dashboard')?>">
                            <i class="flaticon-home"></i>
                        </a>
                    </li>
                    <li class="separator">
                        <i class="flaticon-right-arrow"></i>
                    </li>
                    <li class="nav-item">
                        <span>Tester</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-lg-6 col-12 mx-0">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Pilih Tester</h4>
                        </div>
                        <div class="card-body">
                            <form action="<?=base_url('tester/choose_tester')?>" method="post">
                                <div class="form-group">
                                    <label for="choose_tester">Pilih User untuk Validasi</label>
                                    <select class="custom-select" name="choose_tester" id="choose_tester" required>
                                        <option value="">-- Pilih Salah Satu --</option>
                                        <?php foreach ($data as $choice ) { ?>
                                        <option value="<?=$choice->id_user?>"><?=$choice->nama_user?></option>
                                        <?php }?>
                                    </select>
                                </div>
                                <div class="p-2">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="button" id="clear" data-link="tester/clear" class="btn btn-danger clear">Clear</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-12 mx-0">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Export Images</h4>
                        </div>
                        <div class="card-body">
                            <form action="<?=base_url('tester/export_images')?>" method="post">
                                <div class="form-group">
                                    <label for="choose_tester">Pilih User untuk Export</label>
                                    <select class="custom-select" name="choose_tester" id="choose_tester" required>
                                        <option value="">-- Pilih Salah Satu --</option>
                                        <?php foreach ($data as $choice ) { ?>
                                        <option value="<?=$choice->id_user?>"><?=$choice->nama_user?></option>
                                        <?php }?>
                                    </select>
                                </div>
                                <div class="p-2">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12 mx-0">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Tabel Tester</h4>
                        </div>
                        <div class="card-body px-0">
                            <div class="px-3">
                            <button type="button" class="btn btn-primary btn-sm mb-3 mr-1" data-toggle="modal" data-target="#tambahData"><i class="fas fa-plus mr-2"></i>Tambah Data</button>
                            </div>
                            <div class="table-responsive ">
                                <table id="basic-datatables" class="display table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Kode Role</th>
                                            <th>Nama</th>
                                            <th width="90px" >Aksi</th>
                                        </tr>
                                    </thead>
                                    <?php if(count((array)$data) > 8){?>
                                    <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>Kode Role</th>
                                            <th>Nama</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </tfoot>
                                    <?php }?>
                                    <tbody>
                                        <?php $i=1; foreach ($data as $row ) { ?>
                                        <tr>
                                            <td><?=$i?>.</td>
                                            <td><?=$row->peran_user?></td>
                                            <td><?=$row->nama_user?></td>
                                            <td class="d-flex justify-content-around">
                                                <button data-tooltip="tooltip" data-placement="top" title="Hapus Data" type="button" data-id="<?= $row->id_user ?>" data-link="tester/hapus/" data-nama="<?= $row->id_user ?>" class="btn btn-danger btn-sm hapus_crud mx-auto my-auto"><i class="fas fa-trash"></i></button>

                                                <!-- <button type="button" class="btn btn-sm btn-info img-detail mx-auto my-auto" data-tooltip="tooltip" data-placement="top" title="Detail Data"
                                                data-id="<?//=$row->id_img?>"
                                                data-img-truk="<?//=base_url()?>python/truk-ori/<?//=$row->img_truk?>"><i class="fas fa-info"></i></button> -->
                                            </td>
                                        </tr>
                                        <?php $i++; } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="tambahData" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?=base_url("tester/tambah")?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="nama_user">Nama:</label>
                        <input type="text" pattern="[A-Za-z ]{3,64}" title="Masukkan nama maksimal 64 karakter" required value="<?=set_value("nama_user")?>" oninvalid="InvalidMsg(this);" onfocusout="InvalidMsg(this);"
                            class="form-control" name="nama_user" id="nama_user" placeholder="Masukkan nama (antara 3 hingga 64 karakter)">
					    <?php echo form_error('nama_user'); ?>
                    </div>
                    <div class="form-group">
                        <label for="peran_user">Kode Role:</label>
                        <input type="text" pattern="[A-Za-z ]{2,64}" title="Masukkan nama maksimal 64 karakter" required value="<?=set_value("peran_user")?>" oninvalid="InvalidMsg(this);" onfocusout="InvalidMsg(this);"
                            class="form-control" name="peran_user" id="peran_user" placeholder="Masukkan nama (antara 2 hingga 64 karakter)">
					    <?php echo form_error('peran_user'); ?>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                </form>
            </div>
        </div>
    </div>