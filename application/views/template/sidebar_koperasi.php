
<li>
    <a href="<?= base_url()."home" ?>">
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>

<?php if(($this->session->userdata('status_koperasi') != "0") AND ($this->session->userdata('status_koperasi') != "N")) {?>

<li class="header">MANAGEMENT ANGGOTA</li>
<li class="treeview">
    <a href="#">
    <i class="fa fa-users"></i> <span>Management Anggota</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="<?= base_url()."cabang_koperasi" ?>"><i class="fa fa-user"></i> Data Cabang Koperasi</a></li>
        <li><a href="<?= base_url()."anggota" ?>"><i class="fa fa-user"></i> Data Anggota Koperasi</a></li>
    </ul>
</li>

<li class="header">MANAGEMENT ECOMMERCE</li>
<li class="treeview">
    <a href="#">
    <i class="fa fa-qrcode"></i> <span>Produk Ecommerce</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="<?= base_url()."mykopproduk" ?>"><i class="fa fa-gift"></i> Data Produk Commerce</a></li>
    </ul>
</li>

<li class="header">MINICORE BANGKING</li>
<li class="treeview">
    <a href="#">
    <i class="fa fa-users"></i> <span>Management Operasi</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="#"><i class="fa fa-user"></i> Teller - Setor Tunai</a></li>
        <li><a href="#"><i class="fa fa-user"></i> Teller - Penarikan</a></li>
        <li><a href="#"><i class="fa fa-user"></i> Teller - Pindah Buku</a></li>
        <li><a href="#"><i class="fa fa-user"></i> Teller - Transfer</a></li>

        <li><a href="#"><i class="fa fa-user"></i> CS - Pembukaan Rekening</a></li>
        <li><a href="#"><i class="fa fa-user"></i> CS - Lihat Rekening</a></li>

        <li><a href="#"><i class="fa fa-user"></i> Pemasaran - Pinjaman</a></li>

        <li><a href="#"><i class="fa fa-user"></i> Hitung Bunga</a></li>
    </ul>
</li>

<li class="treeview">
    <a href="#">
    <i class="fa fa-users"></i> <span>Management Produk</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="#"><i class="fa fa-user"></i> Tabungan</a></li>
        <li><a href="#"><i class="fa fa-user"></i> Deposito</a></li>
        <li><a href="#"><i class="fa fa-user"></i> Pinjaman</a></li>
    </ul>
</li>

<?php } ?>
