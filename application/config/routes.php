<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['home'] = 'dashboard/index';
$route['profile'] = 'dashboard/edit_profile';
$route['update_profile'] = 'dashboard/edit_profile';
$route['photo_profile'] = 'dashboard/upload_photo_profile';


$route['login'] = 'auth/index';
// $route['logout'] = 'auth/logout';
$route['logout'] = 'out/index';
$route['registrasi'] = 'ger/index';


$route['admin'] = "admin/admin_data";
$route['add_admin'] = "admin/add_admin";
$route['edit_admin/(:num)'] = 'admin/edit_admin/$1';
$route['admin_edit'] = 'admin/update_admin';
$route['delete_admin/(:num)'] = 'admin/delete_admin/$1';
$route['admin_delete'] = 'admin/admin_delete';


$route['anggota'] = "anggota/data_anggota";
$route['add_anggota'] = 'anggota/add_anggota';
$route['edit_anggota/(:any)'] = 'anggota/edit_anggota/$1';
$route['update_anggota'] = 'anggota/anggota_edit';
$route['delete_anggota/(:any)'] = 'anggota/delete_anggota/$1';
$route['anggota_delete'] = 'anggota/anggota_delete';



$route['userdata/(:any)'] = 'user/user_data/$1';
$route['user'] = 'user/user_data';


$route['detail_user/(:num)'] = 'user/detail_user/$1';
$route['user_detail'] = 'user/detail';

$route['delete_user/(:num)'] = 'user/delete_user/$1';
$route['user_delete'] = 'user/user_delete';


$route['komunitas'] = 'komunitas/komunitas_data';
$route['add_komunitas'] = 'komunitas/add_komunitas';
$route['edit_komunitas/(:num)'] = 'komunitas/edit_komunitas/$1';
$route['komunitasupdate'] = 'komunitas/update_komunitas';
$route['delete_komunitas/(:num)'] = 'komunitas/delete_komunitas/$1';
$route['komunitas_delete'] = 'komunitas/komunitas_delete';

$route['anggota_komunitas'] = "anggota_komunitas/data_anggota_komunitas";
$route['add_anggota_komunitas'] = 'anggota_komunitas/add_anggota_komunitas';
$route['edit_anggota_komunitas/(:any)'] = 'anggota_komunitas/edit_anggota_komunitas/$1';
$route['update_anggota_komunitas'] = 'anggota_komunitas/anggota_komunitas_edit';
$route['delete_anggota_komunitas/(:any)'] = 'anggota_komunitas/delete_anggota_komunitas/$1';
$route['anggota_komunitas_delete'] = 'anggota_komunitas/anggota_komunitas_delete';


$route['koperasi'] = 'koperasi/koperasi_data';
$route['cabang_koperasi'] = 'koperasi/cabang_koperasi_data';
$route['add_koperasi'] = 'koperasi/add_koperasi';
$route['edit_koperasi/(:num)'] = 'koperasi/edit_koperasi/$1';
$route['koperasiupdate'] = 'koperasi/update_koperasi';
$route['delete_koperasi/(:num)'] = 'koperasi/delete_koperasi/$1';
$route['koperasi_delete'] = 'koperasi/koperasi_delete';


$route['pekerjaan'] = 'pekerjaan/pekerjaan_data';
$route['add_pekerjaan'] = 'pekerjaan/add_pekerjaan';
$route['edit_pekerjaan/(:num)'] = 'pekerjaan/edit_pekerjaan/$1';
$route['pekerjaanupdate'] = 'pekerjaan/update_pekerjaan';
$route['delete_pekerjaan/(:num)'] = 'pekerjaan/delete_pekerjaan/$1';
$route['pekerjaan_delete'] = 'pekerjaan/pekerjaan_delete';


$route['produk'] = 'produk/produk_corridor';

$route['produk_owner'] = 'produk/produk_data';
$route['produk_koperasi'] = 'produk/produk_data';
$route['produk_anggota'] = 'produk/produk_data';
$route['catatan/(:any)'] = 'produk/history_produk/$1';
$route['catatan_produk'] = 'produk/catatan_produk/$1';

$route['add_produk'] = 'produk/add_produk';
$route['detail_produk/(:any)'] = 'produk/detail_produk/$1';
$route['produk_detail'] = 'produk/produk_detail';
$route['update_produk'] = 'produk/update_produk';
$route['delete_produk/(:any)'] = 'produk/delete_produk/$1';
$route['produk_delete'] = 'produk/produk_delete';

$route['produk_kategori'] = 'produk/produk_kategori_data';
$route['add_produk_kategori'] = 'produk/add_produk_kategori';
$route['update_produk_kategori/(:any)'] = 'produk/update_produk_kategori/$1';
$route['produk_kategori_update'] = 'produk/produk_kategori_update';
$route['delete_produk_kategori/(:any)'] = 'produk/delete_produk_kategori/$1';
$route['produk_kategori_delete'] = 'produk/produk_kategori_delete';

$route['add_produk_foto'] = 'produk/add_produk_foto';
$route['upload_produk_foto'] = 'produk/upload_produk_foto';
$route['delete_produk_foto/(:any)'] = 'produk/delete_produk_foto/$1';
$route['produk_foto_delete'] = 'produk/produk_foto_delete';


$route['default_controller'] = 'auth';
$route['404_override'] = 'Notfound';
$route['translate_uri_dashes'] = FALSE;
$route['not_found'] = 'nothing';


$route['berita/(:any)'] = "berita/berita_data/$1";
$route['add_berita'] = "berita/add_berita";
$route['tambah_berita'] = "berita/tambah_berita";
$route['lihat_berita/(:any)'] = "berita/berita_lihat/$1";
$route['edit_berita/(:any)'] = "berita/edit_berita/$1";
$route['update_berita'] = "berita/berita_edit/";
$route['edit_foto_berita'] = "berita/edit_foto_berita";
$route['news'] = "berita/lihat_berita";
$route['delete_berita/(:any)'] = "berita/delete_berita/$1";
$route['berita_delete'] = "berita/berita_delete/";


$route['event/(:any)'] = "event/event_data/$1";
$route['add_event'] = "event/add_event";
$route['tambah_event'] = "event/tambah_event";
$route['lihat_event/(:any)'] = "event/event_lihat/$1";
$route['edit_event/(:any)'] = "event/edit_event/$1";
$route['update_event'] = "event/event_edit/";
$route['edit_foto_event'] = "event/edit_foto_event";
$route['event_detail'] = "event/lihat_event";
$route['delete_event/(:any)'] = "event/delete_event/$1";
$route['event_delete'] = "event/event_delete/";

$route['agenda/(:any)'] = "agenda/agenda_data/$1";
$route['add_agenda'] = "agenda/add_agenda";
$route['tambah_agenda'] = "agenda/tambah_agenda";
$route['lihat_agenda/(:any)'] = "agenda/agenda_lihat/$1";
$route['edit_agenda/(:any)'] = "agenda/edit_agenda/$1";
$route['update_agenda'] = "agenda/agenda_edit/";
$route['edit_foto_agenda'] = "agenda/edit_foto_agenda";
$route['agenda_detail'] = "agenda/lihat_agenda";
$route['delete_agenda/(:any)'] = "agenda/delete_agenda/$1";
$route['agenda_delete'] = "agenda/agenda_delete/";



//ROUTE PRODUK KOPERASI
$route['mykopproduk'] = 'produk/produk_data_kop';
$route['mymemproduk'] = 'produk/produk_data_mem';