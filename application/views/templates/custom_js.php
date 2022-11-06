<script>
    $(document).ready(function() {

        $("#basic-datatables").DataTable({});
        <?php echo $this->session->flashdata('pesan');?>

    });

    //Function untuk aksi hapus di SEGALA CRUD
    $('#basic-datatables, #basic-datatables2, #kelolaOption').on('click', '.hapus_crud', function() {
        var id = $(this).data('id');
        var link = $(this).data('link');
        var nama = $(this).data('nama');

        swal({
            title: 'Perhatian!',
            text: "Yakin akan menghapus data " + nama + " ?",
            icon: 'warning',

            buttons: {
                cancel: {
                    visible: true,
                    text: 'Tidak',
                    className: 'btn btn-danger'
                },
                confirm: {
                    text: 'Ya',
                    className: 'btn btn-success'
                }
            }
        }).then((willDelete) => {
            if (willDelete) {
                window.location.href = "<?= base_url() ?>" + link + id;
            } else {
                swal.close();
            }
        });

    });

    //Function untuk aksi hapus di SEGALA CRUD
    $('.active_status').on('click', function() {
        var id = $(this).data('id');
        var link = $(this).data('link');

        swal({
            title: 'Perhatian!',
            text: "Yakin akan mengaktifkan weight ini ?",
            icon: 'warning',

            buttons: {
                cancel: {
                    visible: true,
                    text: 'Tidak',
                    className: 'btn btn-danger'
                },
                confirm: {
                    text: 'Ya',
                    className: 'btn btn-success'
                }
            }
        }).then((willDelete) => {
            if (willDelete) {
                window.location.href = "<?= base_url() ?>" + link + id;
            } else {
                swal.close();
            }
        });

    });

    //Function untuk aksi clear session
    $('.clear').on('click', function() {
        var link = $(this).data('link');

        swal({
            title: 'Perhatian!',
            text: "Yakin akan menghapus sesi tester ?",
            icon: 'warning',

            buttons: {
                cancel: {
                    visible: true,
                    text: 'Tidak',
                    className: 'btn btn-danger'
                },
                confirm: {
                    text: 'Ya',
                    className: 'btn btn-success'
                }
            }
        }).then((willDelete) => {
            if (willDelete) {
                window.location.href = "<?= base_url() ?>" + link ;
            } else {
                swal.close();
            }
        });
    });

    // Aksi Detail Img Test
    $('#basic-datatables, #basic-datatables2, #kelolaOption').on('click', '.img-detail', function() {
        $('#modelDetailImg').modal('show');
        $('#imgTruk').attr('src', $(this).data('imgtruk'));
        $('#wtruk').html($(this).data('wtruk'));
        $('#htruk').html($(this).data('htruk'));
        $('#ckepala').html($(this).data('ckepala'));
        $('#cbadan').html($(this).data('cbadan'));
        $('#xkepala').html($(this).data('xkepala'));
        $('#ykepala').html($(this).data('ykepala'));
        $('#wkepala').html($(this).data('wkepala'));
        $('#hkepala').html($(this).data('hkepala'));
        $('#xbadan').html($(this).data('xbadan'));
        $('#ybadan').html($(this).data('ybadan'));
        $('#wbadan').html($(this).data('wbadan'));
        $('#hbadan').html($(this).data('hbadan'));
        classtruk = '';
        if($(this).data('classtruk') == 0){
            classtruk = 'Normal';
            $('#classtruk').addClass("text-success");
            $('#classtruk').removeClass("text-danger");
        }else{
            classtruk = 'Terindikasi';
            $('#classtruk').addClass("text-danger");
            $('#classtruk').removeClass("text-success");
        }
        $('#classtruk').html(classtruk);
    });

    function InvalidMsg(textbox) {

        if(textbox.validity.patternMismatch){
            $(textbox).addClass("border border-danger");
            $(textbox).removeClass("border-success");
        }    
        else {
            $(textbox).addClass("border border-success");
            $(textbox).removeClass("border-danger");
        }
        return true;
    }
</script>