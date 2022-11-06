<div class="main-panel py-5">
    <div class="container py-3 px-0">
        <div class="page-inner">
            <div class="row">
                <div class="col-lg-6 col-12 mx-0">
                    <div class="card">
                        <div class="card-body text-center">
                            <?php if($learning != null){?>
                                <?php if($learning->class == 1){
                                    $badge = '<span class="badge badge-pill badge-danger">Terindikasi</span>';
                                    $border = 'border border-danger';
                                }else{ 
                                    $badge = '<span class="badge badge-pill badge-success">Normal</span>';
                                    $border = 'border border-success';
                            } }else{ $badge = ''; $border = ''; }?>
                            <p class="text-center">Apakah Truk dibawah Terindikasi ODOL <i>(Over Dimension dan Overload)?</i></p>
                            <img src="<?=base_url('python/').$data->img_truk?>" style="min-height: 300px;" class="img-fluid <?=$border?> p-2" alt="Gambar Truk">
                            <div class="p-2 mt-1">
                                <div class="mb-2"><?=$badge?></div>

                                <a href="<?=base_url()?>validate/ya/<?=$data->id_img?>" class="btn btn-danger"><i class="fas fa-check mr-2"></i>Terindikasi</a>
                                <a href="<?=base_url()?>validate/tidak/<?=$data->id_img?>" class="btn btn-success"><i class="fas fa-times mr-2"></i>Normal</a>
                                <br>
                                <?php if($prev > 0 ){ ?>
                                <a href="<?=base_url()?>validate/prev/<?=$data->id_img?>" class="btn btn-primary mt-1"><i class="fas fa-arrow-left mr-2"></i>Prev</a>
                                <?php }?>
                                <?php if($next > 0 ){ ?>
                                <a href="<?=base_url()?>validate/next/<?=$data->id_img?>" class="btn btn-primary mt-1">Next<i class="fas fa-arrow-right ml-2"></i></a>
                                <?php }?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
