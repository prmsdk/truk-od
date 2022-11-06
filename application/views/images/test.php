<div class="main-panel py-5">
    <div class="container py-3 px-0">
        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title">Manajemen Image Test</h4>
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
                        <span>Image Tests</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-12 mx-0">
                    <div class="card">
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
                                                <?php if($row->od_test == 1){?>
                                                    <span class="text-danger"><b>Terindikasi OD</b></span>
                                                <?php }else{?>
                                                    <span class="text-success"><b>Normal</b></span>
                                                <?php }?><br>
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
                                            <td class="justify-content-around">
                                                <button data-tooltip="tooltip" data-placement="top" title="Hapus Data" type="button" data-id="<?= $row->id_img_test ?>" data-link="images_test/hapus/" data-nama="<?= $row->id_img_test ?>" class="btn btn-danger btn-sm hapus_crud mx-auto my-auto"><i class="fas fa-trash"></i></button>

                                                <button type="button" class="btn btn-sm btn-info img-detail mx-auto my-auto" data-tooltip="tooltip" data-placement="top" title="Detail Data"
                                                data-id="<?=$row->id_img_test?>"
                                                data-imgtruk="<?=base_url()?>python/<?=$row->img_truk?>"
                                                data-wtruk="<?=$row->w_image?>" data-htruk="<?=$row->h_image?>"
                                                data-ckepala="<?=$row->confidence_kepala?>%"
                                                data-xKepala="<?=$row->x_kepala?>" data-yKepala="<?=$row->y_kepala?>"
                                                data-wKepala="<?=$row->w_kepala?>" data-hKepala="<?=$row->h_kepala?>"
                                                data-cbadan="<?=$row->confidence_badan?>%"
                                                data-xBadan="<?=$row->x_badan?>" data-yBadan="<?=$row->y_badan?>"
                                                data-wBadan="<?=$row->w_badan?>" data-hBadan="<?=$row->h_badan?>"
                                                data-classtruk="<?=$row->od_test?>">
                                                <i class="fas fa-info"></i></button>
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
    <div class="modal fade" id="modelDetailImg" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Detail Image</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
                <div class="modal-body row">
                    <div class="col-8 text-center">
                        <img style="height: 500px;" src="" class="img-fluid" alt="Image Truk" id="imgTruk">
                    </div>
                    <div class="col-4">
                        <style>
                            .table > tbody > tr > td, .table > tbody > tr > th {padding: 6px !important;}
                            .table td, .table th { height: 40px !important;}
                        </style>
                        Detail:
                        <table class="table table-bordered m-0">
                            <tbody>
                                <tr>
                                    <th colspan="2" id="classtruk" class="text-danger"></th>
                                </tr>
                                <tr>
                                    <th>Lebar Truk</th>
                                    <td id="wtruk"></td>
                                </tr>
                                <tr>
                                    <th>Tinggi Truk</th>
                                    <td id="htruk"></td>
                                </tr>
                                <tr>
                                    <th>Prediksi Kepala</th>
                                    <td id="ckepala"></td>
                                </tr>
                                <tr>
                                    <th>X Kepala Truk</th>
                                    <td id="xkepala"></td>
                                </tr>
                                <tr>
                                    <th>Y Kepala Truk</th>
                                    <td id="ykepala"></td>
                                </tr>
                                <tr>
                                    <th>Lebar Kepala Truk</th>
                                    <td id="wkepala"></td>
                                </tr>
                                <tr>
                                    <th>Tinggi Kepala Truk</th>
                                    <td id="hkepala"></td>
                                </tr>
                                <tr>
                                    <th>Prediksi Badan</th>
                                    <td id="cbadan"></td>
                                </tr>
                                <tr>
                                    <th>X Badan Truk</th>
                                    <td id="xbadan"></td>
                                </tr>
                                <tr>
                                    <th>Y Badan Truk</th>
                                    <td id="ybadan"></td>
                                </tr>
                                <tr>
                                    <th>Lebar Badan Truk</th>
                                    <td id="wbadan"></td>
                                </tr>
                                <tr>
                                    <th>Tinggi Badan Truk</th>
                                    <td id="hbadan"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>

    <script>
    </script>