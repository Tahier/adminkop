
<li>
    <a href="<?= base_url()."home" ?>">
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>
<li class="header">MANAGEMENT ANGGOTA</li>
<li class="treeview">
    <a href="#">
    <i class="fa fa-users"></i> <span>Management Anggota</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="<?= base_url()."admin" ?>"><i class="fa fa-user"></i> Data Admin</a></li>
        <li><a href="<?= base_url()."koperasi" ?>"><i class="fa fa-user"></i> Data Koperasi Induk</a></li>
        <li><a href="<?= base_url()."cabang_koperasi" ?>"><i class="fa fa-user"></i> Data Cabang Koperasi</a></li>
        <li><a href="<?= base_url()."anggota" ?>"><i class="fa fa-user"></i> Data Anggota Koperasi</a></li>
         <li><a href="<?= base_url()."komunitas" ?>"><i class="fa fa-user"></i> Data Komunitas</a></li>
        <li><a href="<?= base_url()."anggota_komunitas" ?>"><i class="fa fa-user"></i> Data Anggota Komunitas</a></li>
    </ul>
</li>
<li class="header">MANAGEMENT ECOMMERCE</li>
<li class="treeview">
    <a href="#">
    <i class="fa fa-qrcode"></i> <span>Produk Ecommerce</span>
    <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="<?= base_url()."produk_owner" ?>"><i class="fa fa-gift"></i> Data Produk Gerai Lumrah</a></li>
        <li><a href="<?= base_url()."produk_koperasi" ?>"><i class="fa fa-gift"></i> Data Produk Koperasi</a></li>
        <li><a href="<?= base_url()."produk_anggota" ?>"><i class="fa fa-gift"></i> Data Produk Anggota</a></li>
        <li><a href="<?= base_url()."produk_kategori" ?>"><i class="fa fa-bookmark"></i> Kategori Produk</a></li>
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


<li class="header">MANAGEMENT KONTEN</li>
<li class="treeview">
       <a href="#">
        <i class="fa fa-newspaper-o"></i> <span>Management Berita</span>
        <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?= base_url() ?>berita/admin"><i class="fa fa-newspaper-o"></i> Berita Admin</a></li>
            <li><a href="<?= base_url() ?>berita/koperasi"><i class="fa fa-newspaper-o"></i> Berita Koperasi</a></li>
            <li><a href="<?= base_url() ?>berita/komunitas"><i class="fa fa-newspaper-o"></i> Berita Komunitas</a></li>
        </ul>
</li>
<li class="treeview">

        <a href="#">
            <i class="fa fa-fa fa-calendar"></i> <span>Management Event</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
            <ul class="treeview-menu">
                <li><a href="<?= base_url() ?>event/koperasi"><i class="fa fa-calendar"></i> Event Koperasi</a></li>
                <li><a href="<?= base_url() ?>event/komunitas"><i class="fa fa-calendar"></i> Event Komunitas</a></li>
            </ul>
</li>
<li class="treeview">
        <a href="#">
            <i class="fa fa-calendar-plus-o"></i> <span>Management Agenda</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
            <ul class="treeview-menu">
                <li><a href="agenda/koperasi"><i class="fa fa-calendar-plus-o"></i> Agenda Koperasi</a></li>
                <li><a href="agenda/komunitas"><i class="fa fa-calendar-plus-o"></i> Agenda Komunitas</a></li>
            </ul>
</li>
<li class="treeview">
        <a href="#">
            <i class="fa fa-user"></i> <span>Management Compro</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
            <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-user"></i> Compro Koperasi</a></li>
                <li><a href="#"><i class="fa fa-user"></i> Compro Komunitas</a></li>
            </ul>
</li>
