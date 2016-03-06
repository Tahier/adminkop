<li class="header">MAIN NAVIGATION</li>


<li>
    <a href="<?= base_url()."home" ?>">
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>

<li class="header">MANAGEMENT ANGGOTA</li>
<li class="treeview">
        <li><a href="<?= base_url()."anggota_komunitas" ?>"><i class="fa fa-user"></i> Data Anggota Komunitas</a></li>
</li>

<li class="header">MANAGEMENT KOMUNITAS</li>
<li class="treeview">
       <a href="#">
        <i class="fa fa-newspaper-o"></i> <span>Management Berita</span>
        <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?= base_url() ?>berita/admin"><i class="fa fa-newspaper-o"></i> Berita Admin</a></li>
            <li><a href="<?= base_url() ?>berita/komunitas"><i class="fa fa-newspaper-o"></i> Berita Komunitas</a></li>
        </ul>
        
</li>
<li><a href="<?= base_url() ?>event/komunitas"><i class="fa fa-calendar-plus-o"></i> Event Komunitas</a></li>
<li><a href="<?= base_url() ?>agenda/komunitas"><i class="fa fa-calendar"></i> Agenda Komunitas</a></li>
