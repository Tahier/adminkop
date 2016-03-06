
<li class="header">MAIN NAVIGATION</li>

<li>
    <a href="<?= base_url()."home" ?>">
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>
<?php if(($this->session->userdata('status_koperasi') != "0") AND ($this->session->userdata('status_koperasi') != "N")) {?>


<li class="header">MANAGEMENT ECOMMERCE</li>
<li class="treeview">
    <a href="#">
    <i class="fa fa-qrcode"></i> <span>Produk Ecommerce</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="<?= base_url()."mymemproduk" ?>"><i class="fa fa-gift"></i> Data Produk Commerce</a></li>
    </ul>
</li>

<li class="header">MINICORE BANKING</li>
<li><a href="#"><i class="fa fa-gift"></i> Lihat Rekening</a></li>
<li><a href="#"><i class="fa fa-gift"></i> Permohonan Rekening</a></li>
<li><a href="#"><i class="fa fa-gift"></i> Permohonan Kredit</a></li>

<li class="header">PORTOFOLIO</li>
<li><a href="#"><i class="fa fa-gift"></i> Portofolio</a></li>


<li class="header">TRANSAKSI</li>
<li><a href="#"><i class="fa fa-gift"></i> Lihat Pembelian Gerai</a></li>
<li><a href="#"><i class="fa fa-gift"></i> Lihat Transaksi Commerce</a></li>

<li class="header">LAINNYA</li>
<li class="treeview">
       <a href="#">
        <i class="fa fa-newspaper-o"></i> <span>Berita</span>
        <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?= base_url() ?>berita/admin"><i class="fa fa-newspaper-o"></i> Berita Admin</a></li>
            <li><a href="<?= base_url() ?>berita/koperasi"><i class="fa fa-newspaper-o"></i> Berita Koperasi</a></li>
        </ul> 
</li>
        
<li><a href="<?= base_url() ?>event/koperasi"><i class="fa fa-calendar-plus-o"></i> Event Koperasi</a></li>
<li><a href="<?= base_url() ?>agenda/koperasi"><i class="fa fa-calendar-plus-o"></i> Agenda Koperasi</a></li>
<?php } ?>
