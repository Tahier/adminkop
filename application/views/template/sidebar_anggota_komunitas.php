<li class="header">MAIN NAVIGATION</li>

<li>
    <a href="<?= base_url()."home" ?>">
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>

<?php if(($this->session->userdata('status_komunitas') != "0") AND ($this->session->userdata('status_komunitas') != "N")) {?>

<li class="header">LAINNYA</li>
<li class="treeview">
       <a href="#">
        <i class="fa fa-newspaper-o"></i> <span>Berita</span>
        <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?= base_url() ?>berita/admin"><i class="fa fa-newspaper-o"></i> Berita Admin</a></li>
            <li><a href="<?= base_url() ?>berita/komunitas"><i class="fa fa-newspaper-o"></i> Berita Komunitas</a></li>
        </ul>
        <li><a href="#"><i class="fa fa-calendar"></i> Data Event Komunitas</a></li>
        <li><a href="#"><i class="fa fa-calendar-plus-o"></i> Data Agenda Komunitas</a></li>
</li>
<?php } ?>