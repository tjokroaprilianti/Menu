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
|	https://codeigniter.com/user_guide/general/routing.html
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
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//user Routes
$route['home.html']='user_cons/user';
$route['panduan.html']='user_cons/user/panduan';
$route['data_menu.html']='user_cons/user/data_menu';
$route['halaman-daftar.html']='user_cons/registrasi';
$route['halaman-login.html']='user_cons/login';
$route['daftar.html']='user_cons/registrasi/daftar';
$route['daftar_akses.html']='user_cons/registrasi/daftar';
$route['login.html']='user_cons/login/auth';
$route['login2.html/(:any)/(:any)']['get'] = 'user_cons/login/auth2/$1/$2';
$route['logout.html']='Logout';
$route['paket-pagi.html']='user_cons/user/paket_menu/pagi';
$route['paket-siang.html']='user_cons/user/paket_menu/siang';
$route['paket-malam.html']='user_cons/user/paket_menu/malam';
$route['paket-ekonomis.html']='user_cons/user/paket_menu/ekonomis';
$route['tambah-cart']='user_cons/cart/add_to_cart';
$route['hapus-cart']='user_cons/cart/remove_from_cart';
$route['perbaharui-cart']='user_cons/cart/update_cart';
$route['lihat-keranjang.html']='user_cons/cart/update_cart';
$route['proses_pesanan.html']='user_cons/order/proses_pesanan';
$route['update-data-diri.html']='user_cons/registrasi/isi_data_diri';
$route['edit_profile.html']='user_cons/user/view_profile';
$route['prosesed.html']='user_cons/order/record_pesanan';
$route['lihat-pesanan']='user_cons/order/lihat_pesanan';
//$route['lihat-menu.html']='user_cons/user/menu';
$route['lihat-menu.html']='user_cons/user/menu2';
$route['upload-bukti-pembayaran.html']='user_cons/order/bukti_pembayaran_form';
$route['upload-tiket.html']='user_cons/order/bukti_pembayaran_proses';

//untuk login meja
$route['meja1.html']='user_cons/login/auth2/meja-1@gmail.com/12345';
$route['meja2.html']='user_cons/login/auth2/meja-2@gmail.com/12345';
$route['meja3.html']='user_cons/login/auth2/meja-3@gmail.com/12345';
$route['meja4.html']='user_cons/login/auth2/meja-4@gmail.com/12345';
$route['meja5.html']='user_cons/login/auth2/meja-5@gmail.com/12345';
$route['meja6.html']='user_cons/login/auth2/meja-6@gmail.com/12345';
$route['meja7.html']='user_cons/login/auth2/meja-7@gmail.com/12345';
$route['meja8.html']='user_cons/login/auth2/meja-8@gmail.com/12345';
$route['meja9.html']='user_cons/login/auth2/meja-9@gmail.com/12345';
$route['meja10.html']='user_cons/login/auth2/meja-10@gmail.com/12345';
$route['meja11.html']='user_cons/login/auth2/meja-11@gmail.com/12345';
$route['meja12.html']='user_cons/login/auth2/meja-12@gmail.com/12345';
$route['meja13.html']='user_cons/login/auth2/meja-13@gmail.com/12345';
$route['meja14.html']='user_cons/login/auth2/meja-14@gmail.com/12345';
$route['meja15.html']='user_cons/login/auth2/meja-15@gmail.com/12345';
$route['meja16.html']='user_cons/login/auth2/meja-16@gmail.com/12345';
$route['meja17.html']='user_cons/login/auth2/meja-17@gmail.com/12345';
$route['meja18.html']='user_cons/login/auth2/meja-18@gmail.com/12345';
$route['meja19.html']='user_cons/login/auth2/meja-19@gmail.com/12345';
$route['meja20.html']='user_cons/login/auth2/meja-20@gmail.com/12345';
$route['meja21.html']='user_cons/login/auth2/meja-21@gmail.com/12345';
$route['meja22.html']='user_cons/login/auth2/meja-22@gmail.com/12345';
$route['meja23.html']='user_cons/login/auth2/meja-23@gmail.com/12345';
$route['meja24.html']='user_cons/login/auth2/meja-24@gmail.com/12345';
$route['meja25.html']='user_cons/login/auth2/meja-25@gmail.com/12345';
$route['meja26.html']='user_cons/login/auth2/meja-26@gmail.com/12345';
$route['meja27.html']='user_cons/login/auth2/meja-27@gmail.com/12345';
$route['meja28.html']='user_cons/login/auth2/meja-28@gmail.com/12345';
$route['meja29.html']='user_cons/login/auth2/meja-29@gmail.com/12345';
$route['meja30.html']='user_cons/login/auth2/meja-30@gmail.com/12345';
$route['meja31.html']='user_cons/login/auth2/meja-31@gmail.com/12345';
$route['meja32.html']='user_cons/login/auth2/meja-32@gmail.com/12345';
$route['meja33.html']='user_cons/login/auth2/meja-33@gmail.com/12345';
$route['meja34.html']='user_cons/login/auth2/meja-34@gmail.com/12345';
$route['meja35.html']='user_cons/login/auth2/meja-35@gmail.com/12345';
$route['meja36.html']='user_cons/login/auth2/meja-36@gmail.com/12345';
$route['meja37.html']='user_cons/login/auth2/meja-37@gmail.com/12345';
$route['meja38.html']='user_cons/login/auth2/meja-38@gmail.com/12345';
$route['meja39.html']='user_cons/login/auth2/meja-39@gmail.com/12345';
$route['meja40.html']='user_cons/login/auth2/meja-40@gmail.com/12345';
$route['meja41.html']='user_cons/login/auth2/meja-41@gmail.com/12345';
$route['meja42.html']='user_cons/login/auth2/meja-42@gmail.com/12345';
$route['meja43.html']='user_cons/login/auth2/meja-43@gmail.com/12345';
$route['meja44.html']='user_cons/login/auth2/meja-44@gmail.com/12345';
$route['meja45.html']='user_cons/login/auth2/meja-45@gmail.com/12345';
$route['meja46.html']='user_cons/login/auth2/meja-46@gmail.com/12345';
$route['meja47.html']='user_cons/login/auth2/meja-47@gmail.com/12345';
$route['meja48.html']='user_cons/login/auth2/meja-48@gmail.com/12345';
$route['meja49.html']='user_cons/login/auth2/meja-49@gmail.com/12345';
$route['meja50.html']='user_cons/login/auth2/meja-50@gmail.com/12345';
$route['meja51.html']='user_cons/login/auth2/meja-51@gmail.com/12345';
$route['meja52.html']='user_cons/login/auth2/meja-52@gmail.com/12345';
$route['meja53.html']='user_cons/login/auth2/meja-53@gmail.com/12345';
$route['meja54.html']='user_cons/login/auth2/meja-54@gmail.com/12345';
$route['meja55.html']='user_cons/login/auth2/meja-55@gmail.com/12345';
$route['meja56.html']='user_cons/login/auth2/meja-56@gmail.com/12345';
$route['meja57.html']='user_cons/login/auth2/meja-57@gmail.com/12345';
$route['meja58.html']='user_cons/login/auth2/meja-58@gmail.com/12345';
$route['meja59.html']='user_cons/login/auth2/meja-59@gmail.com/12345';
$route['meja60.html']='user_cons/login/auth2/meja-60@gmail.com/12345';
$route['meja61.html']='user_cons/login/auth2/meja-61@gmail.com/12345';
$route['meja62.html']='user_cons/login/auth2/meja-62@gmail.com/12345';
$route['meja63.html']='user_cons/login/auth2/meja-63@gmail.com/12345';
$route['meja64.html']='user_cons/login/auth2/meja-64@gmail.com/12345';
$route['meja65.html']='user_cons/login/auth2/meja-65@gmail.com/12345';
$route['meja66.html']='user_cons/login/auth2/meja-66@gmail.com/12345';


$route['administrator/login.html']='login';

