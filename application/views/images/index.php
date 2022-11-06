<div class="main-panel py-5">
    <div class="container py-3 px-0">
        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title">Manajemen Images</h4>
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
                        <span>Images</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-12 mx-0">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Tabel Images</h4>
                            <a class="btn btn-success btn-sm" href="<?=base_url('images/export_excel')?>" role="button"><i class="fas fa-file-excel mr-2"></i>Export Excel</a>
                        </div>
                        <div class="card-body px-0">
                            <div class="table-responsive ">
                                <table id="basic-datatables" class="display table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Truk Ori</th>
                                            <th>Truk OD</th>
                                            <th>Data</th>
                                            <th width="90px" >Aksi</th>
                                        </tr>
                                    </thead>
                                    <?php if(count((array)$data) > 8){?>
                                    <tfoot>
                                        <tr>
                                            <th>Truk Ori</th>
                                            <th>Truk OD</th>
                                            <th>Data</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </tfoot>
                                    <?php }?>
                                    <tbody>
                                        <?php $i=1; foreach ($data as $row ) { ?>
                                        <tr>
                                            <td><img src="<?=base_url()?>python/<?=$row->img_truk?>" style="max-height: 200px;" ></td>
                                            <td><img src="<?=base_url()?>python/<?=$row->img_od?>" style="max-height: 200px;" ></td>
                                            <td>
                                                wImage: <?=$row->w_image?> | hImage: <?=$row->h_image?> <br>
                                                <hr class="my-1">
                                                <b>Kepala Truk </b>(<?=$row->confidence_kepala?>%) <br>
                                                xKepala: <?=$row->x_kepala?> | yKepala: <?=$row->y_kepala?> <br>
                                                wKepala: <?=$row->w_kepala?> | hKepala: <?=$row->h_kepala?> <br>
                                                <hr class="my-1">
                                                <b>Badan Truk </b>(<?=$row->confidence_badan?>%) <br>
                                                xBadan: <?=$row->x_badan?> | yBadan: <?=$row->y_badan?> <br>
                                                wBadan: <?=$row->w_badan?> | hBadan: <?=$row->h_badan?> <br>
                                            </td>
                                            <td class="d-flex justify-content-around">
                                                <button data-tooltip="tooltip" data-placement="top" title="Hapus Data" type="button" data-id="<?= $row->id_img ?>" data-link="images/hapus/" data-nama="<?= $row->id_img ?>" class="btn btn-danger btn-sm hapus_crud mx-auto my-auto"><i class="fas fa-trash"></i></button>

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

    <script>
    </script>