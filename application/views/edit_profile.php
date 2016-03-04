<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<link href="<?= base_url() ?>assets/AdminLTE-2.0.5//plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header"></section>
<!-- Main content -->
<section class="content">
<div class="col-md-7"><?= validation_errors() ?></div>
<div class="col-md-5">
    <?php
    if($this->session->flashdata('msg') != NULL){
    echo '<div class="alert alert-info" role="alert" style="padding: 6px 12px;height:34px;">';
        echo "<i class='fa fa-info-circle'></i> <strong><span style='margin-left:10px;'>".$this->session->flashdata('msg')."</span></strong>";
    echo '</div>';
    }?>
</div>
<div class="col-md-7">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Edit Profile</h3>
        </div>
        <div class="box-body">
            <form method="post" action="<?= base_url() ?>update_profile" enctype="multipart/form-data">
            <?php if($this->session->userdata('level') != "2"){ ?>
               <div class="form-group ">
                <label for="nama_depan">Nama Depan</label>
                <input type="text" class="form-control" placeholder="Nama Depan" required="" value="<?= $user['nama_depan'] ?>" name="nama_depan" />
              </div>
              <div class="form-group ">
                <label for="nama_belakang">Nama Belakang</label>
                <input type="text" class="form-control" placeholder="Nama Belakang" value="<?= $user['nama_belakang'] ?>" name="nama_belakang" />
              </div>
            <?php } 
                else {?>
                 <div class="form-group ">
                    <label for="nama_belakang">Nama Koperasi</label>
                    <input type="text" class="form-control" placeholder="Nama Belakang" required="" value="<?= $user['nama_lengkap'] ?>" name="nama" />
                  </div>

            <?php } ?>
                <div class="form-group ">
                    <label for="Alamat">Alamat</label>
                    <input type="text" class="form-control" placeholder="Alamat" required="" value="<?= $user['alamat'] ?>"  name="alamat" />
                </div>
                <?php if($this->session->userdata('level') != "2"){ ?>
                <div class="form-group ">
                    <label for="JenisKelamin">Jenis Kelamin</label><br />
                    <label class="radio-inline">
                        <input type="radio" name="jkel" value="laki-laki" <?php if($user['jenis_kelamin']=="l")
                        echo "checked";?>>Laki-Laki
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="jkel" value="perempuan" <?php if($user['jenis_kelamin']=="p")
                        echo "checked";?>>
                        Perempuan
                    </label>
                </div>
                <div class="form-group ">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" placeholder="E-mail" required="" value="<?= $user['email'] ?>" name="email" />
                </div>
                <?php } ?>
                <div class="form-group ">
                    <label for="NoHp">No HP</label>
                    <input type="text" class="form-control" placeholder="No Telepon / HP" required="" value="<?= $user['telp'] ?>" name="telepon" />
                </div>
                <div class="form-group ">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" placeholder="Username" required="" value="<?= $user['username'] ?>" name="username" readonly />
                </div>
                <div class="form-group ">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" placeholder="Password" required="" value="<?= $this->encrypt->decode($user['password']) ?>" name="password" />
                </div>
                
                <?php
                if($this->session->userdata('level') != "1"){ ?>
                <!-- Jika yang nginput nya user -->
                <?php if ($this->session->userdata('level') == "3") {?>
                <div class="form-group ">
                    <label for="Pekerjaan">Pekerjaan</label>
                    <select name="pekerjaan" class="form-control">
                        <?php
                        foreach ($pekerjaan as $row) { ?>
                        <option value="<?= $row->id_pekerjaan ?>" <?php if($row->id_pekerjaan == $user['pekerjaan'])
                            echo "selected";
                            else
                        echo ""; ?>><?= $row->nama ?></option><?php } ?>
                    </select>
                </div>
                <?php if(empty($this->session->userdata('koperasi'))) { ?>
                    <div class="form-group ">
                        <label for="Koperasi">Koperasi</label>
                        <select name="koperasi" class="form-control">
                            <?php
                            foreach ($data_kop as $row) { ?>
                            <option value="<?= $row->id_koperasi ?>" <?php if($row->id_koperasi == $user['koperasi'])
                                echo "selected";
                                else
                            echo ""; ?>><?= $row->nama ?></option><?php }?>
                        </select>
                    </div>
                <?php } else { ?>
                         <div class="form-group ">
                            <label for="koperasi">Koperasi</label>
                            <input type="text" class="form-control" disabled="" value="<?= $user['nama'] ?>" />
                        </div>
                <?php } ?><!-- end of if user select koperasi -->
                <?php } ?> <!-- end of if user -->
                <!-- Jika Koperasi -->
                <?php if($this->session->userdata('level')== "2") { ?>
                <div class="form-group">
                    <label>Tanggal Berdiri</label>
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" id="datemask" class="form-control" data-inputmask="'alias': 'hh/bb/tttt'" name="berdiri" value="<?= $user['tgl_berdiri'] ?>" value="<?= set_value('berdiri') ?>" data-mask/>
                        </div><!-- /.input group -->
                    </div>
                    <div class="form-group ">
                        <label for="Legal">Legal</label>
                        <input type="text" class="form-control" placeholder="Legal" value="<?= $user['legal'] ?>"  value="<?= set_value('legal') ?>" name="legal" />
                    </div>
                    <div class="form-group ">
                        <label for="Ketua">Ketua Koperasi</label>
                        <input type="text" class="form-control" placeholder="Ketua Koperasi" required="" value="<?= $user['ketua_koperasi'] ?>"  value="<?= set_value('ketua') ?>" name="ketua" />
                    </div>
                    <div class="form-group ">
                        <label for="Ketua Telp">No Telepon Ketua Koperasi</label>
                        <input type="text" class="form-control" placeholder="No Telepon Ketua Koperasi" required="" value="<?= $user['ketua_koperasi_telp'] ?>"  value="<?= set_value('ketua_telp') ?>" name="ketua_telp" />
                    </div>
                    <div class="form-group ">
                        <label for="Keterangan">Keterangan</label>
                        <textarea id="mytextarea" class="form-control" name="keterangan" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?= $user['keterangan_koperasi'] ?> <?= set_value('keterangan') ?></textarea>
                    </div>
                    
                    <?php } ?> <!-- end of if koperasi -->
                    
                    <?php } ?>  <!-- end of not admin -->
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Perbaharui Data</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-5">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Upload Foto Profil</h3>
            </div>
            <div class="box-body">
                <form method="POST" action="<?= base_url()?>photo_profile" enctype="multipart/form-data">
                    <div class="form-group ">
                        <label for="foto">Upload Foto</label>
                        <div class="input-group input-group-sm">
                            <input type="file" class="form-control" name="photo" accept="image/*" />
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-info btn-flat">Upload</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="clear-both"></div>
</section>
<!-- /.content -->
<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<script src="<?= base_url() ?>assets/AdminLTE-2.0.5/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
<script src="<?= base_url() ?>assets/AdminLTE-2.0.5/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
<script src="<?= base_url() ?>assets/AdminLTE-2.0.5/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
<script src="<?= base_url() ?>assets/AdminLTE-2.0.5/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function () {
//Datemask dd/mm/yyyy
$("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "hh/bb/tttt"});
$("#mytextarea").wysihtml5();
});
</script>
<script>
</script>
<?php
$this->load->view('template/foot');
?>