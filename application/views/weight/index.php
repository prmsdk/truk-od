<div class="main-panel py-5">
    <div class="container py-3 px-0">
        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title">Manajemen Bobot LVQ</h4>
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
                        <span>Bobot LVQ</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-12 mx-0">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Tabel Bobot LVQ</h4>
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
                                            <th>Tanggal</th>
                                            <th>Maks. Iterasi</th>
                                            <th>Alpha</th>
                                            <th>Akurasi</th>
                                            <th>Status</th>
                                            <th width="90px" >Aksi</th>
                                        </tr>
                                    </thead>
                                    <?php if(count((array)$data) > 8){?>
                                    <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>Tanggal</th>
                                            <th>Maks. Iterasi</th>
                                            <th>Alpha</th>
                                            <th>Akurasi</th>
                                            <th>Status</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </tfoot>
                                    <?php }?>
                                    <tbody>
                                        <?php $i=1; foreach ($data as $row ) { ?>
                                        <tr>
                                            <td><?=$i?>.</td>
                                            <td><?=$row->datetime_weight?></td>
                                            <td><?=$row->max_epoch?></td>
                                            <td><?=$row->alpha?></td>
                                            <td><?=substr($row->prosentase, 0, 5)?>%</td>
                                            <td>
                                                <?php if ($row->status_weight == 'AKTIF') { ?>
                                                    <span class="badge badge-pill badge-danger px-3"><b>Aktif</b></span>
                                                <?php } else { ?>
                                                    <button data-id="<?= $row->id_weight ?>" data-link="/weight/active/" data-nama=" Bobot ini" class="btn btn-primary btn-sm active_status"><b>Aktifkan</b></button>
                                                <?php } ?>
                                            </td>
                                            <td class="d-flex justify-content-around">
                                                <button data-tooltip="tooltip" data-placement="top" title="Hapus Data" type="button" data-id="<?= $row->id_weight ?>" data-link="weight/hapus/" data-nama="<?= $row->id_weight ?>" class="btn btn-danger btn-sm hapus_crud mx-auto my-auto"><i class="fas fa-trash"></i></button>

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
                    <h5 class="modal-title" id="exampleModalLabel">Latih Data menggunakan LVQ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?=base_url("weight/tambah")?>" method="post">
                <div class="modal-body row">
                        <div class="col-md-12">
                            <div class="form-group form-group-default">
                                <label>Tanggal</label>
                                <input id="datetime" type="text" name="datetime" readonly value="<?= date('Y-m-d H:i:s') ?>" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-default mx-0">
                                <label>Maks. Iterasi (Epoch)</label>
                                <select class="form-control" name="max_epoch" id="max_epoch" required>
                                    <option value="">-- Pilih Maksimum Iterasi --</option>
                                    <option value="10">10</option>
                                    <option value="20">20</option>
                                    <option value="30">30</option>
                                    <option value="40">40</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                    <option value="500">500</option>
                                    <option value="1000">1000</option>
                                    <option value="1500">1500</option>
                                    <option value="3000">3000</option>
                                    <option value="5000">5000</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-default mx-0">
                                <label>Alpha</label>
                                <input id="alpha" type="number" name="alpha" pattern="^(?:0*(?:\.\d+)?|1(\.0*)?)$" class="form-control" value="0.000000" step="0.000001" min="0" max="1.000000" placeholder="Masukkan nilai antara 0.0 - 0.1" required>
                            </div>
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