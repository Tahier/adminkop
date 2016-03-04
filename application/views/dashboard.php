<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<link href="<?= base_url() ?>assets/AdminLTE-2.0.5/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
    Selamat Datang di Panel GeraiLumrah
    <!-- <small>it all starts here</small> -->
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Dashboard</a></li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <?php if($this->session->userdata('level')=="2" OR $this->session->userdata('level')=="3"){ ?>
        <?php if(($this->session->userdata('status_koperasi') == "N")){?>
        <div class="alert alert-warning">
            <h4><i class="icon fa fa-warning"></i> Perhatian !</h4>
            Anda belum memilih koperasi, silakan pilih koperasi anda di menu <strong><a href="<?= base_url() ?>profile">Profil</a></strong>
        </div>
        <? } ?>
        <?php if ($this->session->userdata('status_koperasi') == "0" AND $this->session->userdata('level') == "3") { ?>
        <div class="alert alert-danger">
            <h4><i class="icon fa fa-ban"></i> Perhatian !</h4>
            Koperasi anda dalam status <strong>Tidak Aktif</strong> Silakan hubungi koperasi anda.
        </div>
        <?php } ?>
        <?php if ($this->session->userdata('status_koperasi') == "0" AND $this->session->userdata('level') == "2") { ?>
        <div class="alert alert-danger">
            <h4><i class="icon fa fa-ban"></i> Perhatian !</h4>
            Koperasi induk anda dalam status <strong>Tidak Aktif</strong> Silakan hubungi koperasi induk anda.
        </div>
        <?php } 
        }?>



<?php if($this->session->userdata('level') == 1) { ?>
<div class="row">
    <div class="col-md-3 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?= $produk ?></h3>
                <p>Produk</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="<?= base_url() ?>produk_owner" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div><!-- ./col -->
    <div class="col-md-3 col-xs-6">
        <div class="small-box bg-green">
            <div class="inner">
                <h3><?= $koperasi_induk ?></h3>
                <p>Koperasi Induk</p>
            </div>
            <div class="icon">
                <i class="ion ion-ios-world-outline"></i>
            </div>
            <a href="<?= base_url() ?>koperasi" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div><!-- ./col -->
    <div class="col-md-3 col-xs-6">
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3><?= $koperasi_cabang ?></h3>
                <p>Koperasi Cabang</p>
            </div>
            <div class="icon">
                <i class="ion ion-ios-world"></i>
            </div>
            <a href="<?= base_url() ?>cabang_koperasi" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div><!-- ./col -->
    <div class="col-md-3 col-xs-6">
        <div class="small-box bg-red">
            <div class="inner">
                <h3><?= $anggota ?></h3>
                <p>Anggota</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="<?= base_url() ?>anggota" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>
 <?php } ?>


<?php if($this->session->userdata('level') == 2){ ?>
<div class="row">
    <div class="col-md-4 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?= $produk ?></h3>
                <p>Produk</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="<?= base_url() ?>mykopproduk" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div><!-- ./col -->
    <div class="col-md-4 col-xs-6">
        <div class="small-box bg-green">
            <div class="inner">
                <h3><?= $koperasi ?></h3>
                <p>Cabang Koperasi</p>
            </div>
            <div class="icon">
                <i class="ion ion-ios-world-outline"></i>
            </div>
            <a href="<?= base_url() ?>cabang_koperasi" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>

        </div>
    </div><!-- ./col -->
    <div class="col-md-4 col-xs-6">
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3><?= $anggota ?></h3>
                <p>Anggota</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="<?= base_url() ?>anggota" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>

        </div>
    </div><!-- ./col -->
</div>
<?php } ?>



<?php if($this->session->userdata('level') == "3"){ ?>
<div class="row">
    <div class="col-md-4 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?= $produk ?></h3>
                <p>Produk</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="<?= base_url() ?>mymemproduk" class="small-box-footer">Lihat Data <i class="fa fa-arrow-circle-right"></i></a>

        </div>
    </div><!-- ./col -->
</div>
<?php } ?>



<?php if($this->session->userdata('level') != 3) { ?>
<div class="row">
    <div class="col-md-8">
        <!-- USERS LIST -->
        <div class="box box-danger">
            <div class="box-header with-border">
                <h3 class="box-title">Anggota Yang Terakhir Login</h3>
                <div class="box-tools pull-right">
                    <!-- <span class="label label-danger">8 New Members</span> -->
                    <!-- <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                    </button> -->
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
                <ul class="users-list clearfix">
                    <?php foreach ($last_login_user as $row) { ?>
                    <li>
                        <img src="<?php
                        if($row->foto == NULL){
                        echo base_url()."assets/images/user/default.jpg";
                        }
                        else {
                        echo base_url()."assets/images/user/".$row->foto;
                        }
                        ?>" class="image-last-login" alt="User Image"/>
                        <a class="users-list-name" href="#"><?= $row->nama_lengkap ?></a>
                        <span class="users-list-date"> <?php
                            $date = new DateTime($row->last_login);
                            echo $date->format('d M y, H:i:s');
                        ?></span>
                    </li>
                    <?php } ?>
                </ul>
                <!-- /.users-list -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer text-center">
                <!-- <a href="javascript::" class="uppercase">View All Users</a> -->
            </div>
            <!-- /.box-footer -->
        </div>
        <!--/.box -->
    </div>
</div>

<?php } ?>




</section><!-- /.content -->
<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('template/foot');
?>