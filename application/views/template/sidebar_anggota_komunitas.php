<li class="header">MAIN NAVIGATION</li>

<li>
    <a href="<?= base_url()."home" ?>">
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>

<?php if(($this->session->userdata('status_komunitas') != "0") AND ($this->session->userdata('status_komunitas') != "N")) {?>

<li class="header">MANAGEMENT KOMUNITAS</li>
<li class="treeview">
        <li><a href="#"><i class="fa fa-newspaper-o"></i> Data Berita Komunitas</a></li>
        <li><a href="#"><i class="fa fa-calendar"></i> Data Event Komunitas</a></li>
        <li><a href="#"><i class="fa fa-calendar-plus-o"></i> Data Agenda Komunitas</a></li>
</li>
<?php } ?>