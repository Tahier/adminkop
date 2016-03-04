-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2016 at 01:47 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `koperasi_share`
--

-- --------------------------------------------------------

--
-- Table structure for table `komunitas`
--

CREATE TABLE `komunitas` (
  `id_komunitas` varchar(25) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status_active` int(11) NOT NULL DEFAULT '1',
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL,
  `tgl_berdiri` varchar(20) DEFAULT NULL,
  `ketua_komunitas` varchar(70) DEFAULT NULL,
  `ketua_komunitas_telp` varchar(20) DEFAULT NULL,
  `keterangan_komunitas` text,
  `id_user` varchar(50) NOT NULL,
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL,
  `service_users` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konten_agenda`
--

CREATE TABLE `konten_agenda` (
  `id_agenda` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text,
  `link_gambar` varchar(250) DEFAULT NULL,
  `tanggal_agenda` datetime DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `service_time` datetime DEFAULT NULL,
  `serrvice_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konten_berita`
--

CREATE TABLE `konten_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text,
  `link_gambar` varchar(250) DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `service_time` datetime DEFAULT NULL,
  `serrvice_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konten_compro`
--

CREATE TABLE `konten_compro` (
  `id_compro` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text,
  `link_gambar` varchar(250) DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `service_time` datetime DEFAULT NULL,
  `serrvice_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konten_event`
--

CREATE TABLE `konten_event` (
  `id_event` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text,
  `link_gambar` varchar(250) DEFAULT NULL,
  `tanggal_event` datetime DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `service_time` datetime DEFAULT NULL,
  `serrvice_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `koperasi`
--

CREATE TABLE `koperasi` (
  `id_koperasi` varchar(25) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status_active` int(11) NOT NULL DEFAULT '1',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL,
  `service_users` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL,
  `tgl_berdiri` varchar(20) DEFAULT NULL,
  `legal` text,
  `ketua_koperasi` varchar(70) DEFAULT NULL,
  `ketua_koperasi_telp` varchar(20) DEFAULT NULL,
  `keterangan_koperasi` text,
  `parent_koperasi` varchar(25) DEFAULT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koperasi`
--

INSERT INTO `koperasi` (`id_koperasi`, `nama`, `status_active`, `service_time`, `service_action`, `service_users`, `alamat`, `telp`, `tgl_berdiri`, `legal`, `ketua_koperasi`, `ketua_koperasi_telp`, `keterangan_koperasi`, `parent_koperasi`, `id_user`) VALUES
('81456252551', 'Pijar International', 1, '2016-02-29 07:45:26', 'update', '91456331037', 'Jl. HMS Mintaredja, Gd. BITC lt. 4, Baros, Cimahi', '12345555', '12/11/2031', '123/koperasi/X/2015', 'Bobby Chahya', '34501234', '<div>We believe that the future of business and life&nbsp;</div><div>will involve more collaboration and working together,</div><div>because the best partnerships handle the worst case scenarios in future.</div>', '81456507703', '91456500773'),
('91456484148', 'Nirleka Studios', 1, '2016-02-26 17:59:14', 'insert', '91456331037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81456507703', '91456331037'),
('81456507703', 'Cimahi Creative Assocation', 1, '2016-03-01 20:19:37', 'update', '91456507703', 'Jl. HMS Mintaredja, Gd. BITC lt. 4, Baros, Cimahi', '1220145069', '28/10/2009', '123/koperasi/X/2015', 'Rudy Sutedja', '34501234', 'advadv&nbsp;<br><a target="_blank" rel="nofollow" href="http://www.cca.or.id">http://www.cca.or.id</a><br>"''"""<br>TEST', '0', '91456507703'),
('81456524588', 'GRU', 1, '2016-02-26 22:10:07', 'delete', '91456331037', 'Jl. HMS Mintaredja, Gd. BITC lt. 4, Baros, Cimahi', '08579389', '31/03/2045', '', 'Ronny Ruabiana', '34501234', 'hfjfjhgvhvkg', '81456507703', '91456524588'),
('81456741937', 'Muslimah Gallery', 1, '2016-02-29 10:32:17', 'insert', '91456331075', 'Jl. Raya', '08122333113', '09/09/2009', 'SK 009/2015', 'Mrs. Muslimah', '0813456789', 'Muslimah Gallery&nbsp;', '0', '91456741937'),
('81456822763', 'Aksara Enterprise', 1, '2016-03-01 12:40:10', 'update', '91456822763', 'Jl. HMS Mintaredja, Gd. BITC lt. 4, Baros, Cimahi', '12345678', '12/03/2015', 'test', 'Gusti', '5478', 'Kaohjodjs', '81456507703', '91456822763'),
('81456847241', 'KaREN', 1, '2016-03-01 15:47:21', 'insert', '91456331037', 'Jl. HMS Mintaredja, Gd. BITC lt. 4, Baros, Cimahi, Indonesia', '086899999', '12/02/2020', '', 'Ronny Ruabiana', '12345', 'KASTA RENDAH', '81456741937', '91456847241'),
('81456848348', 'Bara Enterprise', 1, '2016-03-01 16:05:48', 'insert', '91456507703', 'Jl. Sariwangi', '6786876899', '20/03/2067', '', 'Gani', '127682764', 'Bara Enterprise', '81456507703', '91456848348');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(10) NOT NULL,
  `nama` varchar(250) NOT NULL DEFAULT '',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama`, `service_time`, `service_action`, `service_user`) VALUES
(1, 'Petani', NULL, '', ''),
(2, 'Wirausaha', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `desk` text,
  `warna` varchar(100) DEFAULT '',
  `tipe` varchar(100) DEFAULT '',
  `berat` varchar(11) DEFAULT '',
  `price_n` int(10) NOT NULL DEFAULT '0',
  `price_s` int(10) NOT NULL DEFAULT '0',
  `qty` int(10) NOT NULL DEFAULT '0',
  `terjual` int(10) DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT '',
  `user` varchar(100) NOT NULL DEFAULT '',
  `service_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT '',
  `owner` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `desk`, `warna`, `tipe`, `berat`, `price_n`, `price_s`, `qty`, `terjual`, `status`, `user`, `service_time`, `service_action`, `service_user`, `owner`) VALUES
('201032016234642', 'Macbook Pro', 'Macbook Pro Mid 2012\r\n\r\nCore i5\r\n500 GB HDD\r\n4GB RAM\r\nIntel HD Graphic 4000', 'Silver', '', '1', 16000000, 15950000, 14, NULL, '1', '91456822446', '2016-03-01 18:17:03', 'update', '91456822446', '3'),
('202032016011832', 'iPhone 4s 64 Gb', 'iPhone 4s 64Gb\r\n\r\n512 Ram\r\niOs 9.2.1\r\n', 'White, Black', '', '1', 2300000, 0, 4, NULL, '1', '91456507703', '2016-03-01 18:18:32', 'insert', '91456507703', '2'),
('2147483647', 'Minyak Gorenggggg coy', '1Lt Bimoli', '', '', '1', 21000, 18500, 17, NULL, '0', '91456484148', '2016-02-29 15:05:15', 'delete', '91456331075', '3'),
('2222620', 'Terigu Merahhhhh', 'Segitiga Biru', '', '', '1', 30000, 28000, 5, NULL, '1', '91456331075', '2016-02-28 11:32:52', 'update', '91456331075', '1'),
('2222710', 'Terigu', 'Segitiga Biru', '', '', '1', 30000, 28000, 5, NULL, '0', '91456331075', '2016-02-29 15:05:21', 'delete', '91456331075', '1'),
('2222809', 'Beras Cianjur', 'Segitiga Biru', '', '', '1', 30000, 28000, 10, NULL, '0', '91456507703', '2016-02-29 15:04:58', 'delete', '91456331075', '2'),
('2222829', 'Beras Tasik', 'Daerah daria singaparna', '', '', '1', 30000, 28000, 5, NULL, '0', '91456507703', '2016-02-29 15:05:00', 'delete', '91456331075', '2'),
('229022016174200', 'QK75', 'Bahan Combed\r\nTermasuk jilbab', 'Hijau alpukat', '', '300', 210, 205, 10, NULL, '1', '91456741937', '2016-02-29 12:43:24', 'update', '91456741937', '2'),
('229022016174655', 'QK74', 'Bahan Combed\r\nTermasuk jilbab\r\n', 'Biru Toska Muda', 'Baju', '300', 210000, 205000, 10, NULL, '1', '91456741937', '2016-02-29 10:46:55', 'insert', '91456741937', '2'),
('229022016174939', 'Bross RB2 Small 0.23', 'Tersedia Warna Hijau', 'Tidak berwarna', '', '300', 6000, 5500, 10, NULL, '1', '91456741937', '2016-02-29 10:49:39', 'insert', '91456741937', '2'),
('229022016175129', 'Bross RB2 Small 0.75', 'Warna Sesuai Gambar', 'Tidak Berwarna', '', '500', 20000, 18500, 10, NULL, '1', '91456741937', '2016-02-29 10:51:29', 'insert', '91456741937', '2'),
('229022016175240', 'Bross RB2 Medium 0.33', 'Tersedia Warna Gold dan Biru', 'Tidak berwarna', '', '500', 10000, 7500, 10, NULL, '1', '91456741937', '2016-02-29 10:52:40', 'insert', '91456741937', '2'),
('229022016175243', 'Sarung Kid Quds 2', 'Sarung anak motif ceria. Cocok digunakan oleh anak usia 4-10 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : All Size\r\nTersedia Warna : Hijau, Biru,', 'Hijau', 'Baju', '300', 74500, 64500, 10, NULL, '1', '91456741937', '2016-02-29 12:44:23', 'update', '91456741937', '2'),
('229022016175420', 'Kemko Zayd Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Biru', '', '200', 269500, 259500, 10, NULL, '1', '91456741937', '2016-02-29 12:46:09', 'update', '91456741937', '2'),
('229022016175559', 'Kemko Yazeed Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Merah', '', '200', 269500, 259500, 10, NULL, '1', '91456741937', '2016-02-29 12:50:47', 'update', '91456741937', '2'),
('229022016175725', 'Kemko Wazi Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Grey', 'Kemko', '200', 249500, 239500, 10, NULL, '1', '91456741937', '2016-02-29 12:52:29', 'update', '91456741937', '2'),
('229022016175732', 'Mukena Sevila', 'Mukena dengan konsep abaya ini yaitu tanpa penutup kepala yang cocok digunakan untuk di bawa  bepergian. Bahannya yang dingin dan tidak transparan. Dilengkapi dengan tas cantik agar menambah kesan simple.\r\n\r\nPANJANG  MUKENA : 155\r\nPANJANG TANGAN DARI LEHER: 86\r\nLEBAR DADA: 134', 'Ungu', 'Alat Shalat', '300', 359500, 349500, 10, NULL, '1', '91456741937', '2016-02-29 12:45:08', 'update', '91456741937', '2'),
('229022016175828', 'Kemko Wazi Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Ungu', 'Kemko', '200', 249500, 239500, 10, NULL, '1', '91456741937', '2016-02-29 12:53:11', 'update', '91456741937', '2'),
('229022016180000', 'Kemko Wazi Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Biru', 'Kemko', '200', 249500, 239500, 10, NULL, '0', '91456741937', '2016-02-29 12:54:30', 'delete', '91456741937', '2'),
('229022016180103', 'Kemko Omar Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Kuning', 'Kemko', '200', 269500, 259500, 10, NULL, '1', '91456741937', '2016-02-29 13:00:28', 'update', '91456741937', '2'),
('229022016180147', 'Sarung Kid Quds 4', 'Sarung anak motif ceria. Cocok digunakan oleh anak usia 4-10 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : All Size', 'Biru', 'Baju', '300', 65500, 64500, 10, NULL, '1', '91456741937', '2016-02-29 12:46:27', 'update', '91456741937', '2'),
('229022016180259', 'Kemko Faraz Mst', 'Kemko Formil atau semi formil. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Cokelat Kopi', 'Kemko', '200', 269500, 259500, 10, NULL, '1', '91456741937', '2016-02-29 13:03:09', 'update', '91456741937', '2'),
('229022016180422', 'Kemko Baraa Pdk', 'Kemko formal dan informal. Kemko ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok dipakai untuk usia 20-35 tahun pada kesempatan formal maupun acara santai.', 'Biru', 'Kemko', '200', 259500, 249500, 10, NULL, '1', '91456741937', '2016-02-29 13:03:59', 'update', '91456741937', '2'),
('229022016180431', 'Sarung Kid Quds 3', 'Sarung anak motif ceria. Cocok digunakan oleh anak usia 4-10 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : All Size', 'Coklat', 'Baju', '300', 65500, 64500, 10, NULL, '1', '91456741937', '2016-02-29 12:46:53', 'update', '91456741937', '2'),
('229022016180515', 'Kemko Xighma V5 Pdk', 'Kemko formal dan informal dengan akses kotak-kotak dibagian bawah garis kancing. Kemko ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok dipakai untuk usia 20-35 tahun pada kesempatan formal maupun acara santai.', 'Merah Ati', 'Kemko', '300', 229500, 219500, 10, NULL, '1', '91456741937', '2016-02-29 15:30:57', 'update', '91456741937', '2'),
('229022016180538', 'Sarung Kid Quds 1', 'Sarung anak motif ceria. Cocok digunakan oleh anak usia 4-10 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : All Size', 'Ungu', 'Baju', '300', 65500, 64500, 10, NULL, '1', '91456741937', '2016-02-29 12:47:19', 'update', '91456741937', '2'),
('229022016180626', 'Kemko Laqa Mst', 'Kemko dengan detail border berbeda warna di bagian kerah&plaket sebagai aksen. Kemko ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 30-50 tahun.', 'Merah Ati', 'Kemko', '300', 239500, 229500, 10, NULL, '1', '91456741937', '2016-02-29 15:31:47', 'update', '91456741937', '2'),
('229022016180746', 'Kemko Radya Pdk', 'Style dari Kemko ini adalah untuk acara Formal,tapi dapat digunakan juga untuk acara Semi Formal.Kemko dengan detail embro di bagian saku sebagai aksen ini dapat digunakan untuk pria dewasa usia 25-50 Tahaun. Kemko ini dapat menyerap keringat,lembut dan terasa dingin bila digunakan karen ada perpaudan bahan Cotton.', 'Grey', 'Kemko', '300', 186500, 176500, 10, NULL, '1', '91456741937', '2016-02-29 13:05:34', 'update', '91456741937', '2'),
('229022016180849', 'Kemko Azhim Pdk', 'Kemko Formal dengan detail embro di bagian lengan sebagai aksen .Kemko ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 30-50 tahun. ', 'Grey', 'Kemko', '300', 224500, 214500, 10, NULL, '1', '91456741937', '2016-02-29 13:06:26', 'update', '91456741937', '2'),
('229022016180945', 'Kerundung Zinny', 'Kerudung instan casual dari bahan look denim dengan variasi jahitan tindis dan kancing sebagai pemanis. Kerudung ini nyaman digunakan karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslimah usia 20-30 tahun.\r\n\r\n\r\n\r\n\r\n\r\nBahan Dasar : \r\nDenim Spain\r\n\r\nTersedia Ukuran : S M L XL', 'Spearmint', 'Kerudung', '300', 70500, 69500, 10, NULL, '1', '91456741937', '2016-02-29 12:47:51', 'update', '91456741937', '2'),
('229022016181049', 'Kemko Azhar Blg', 'Kemko dengan detail perpaduan style jacket dan kemeja. Dengan detail rib pada manset dan kain printing look denim mix.Kemko ini dapat digunakan untuk acara semi formal maupun casual.Kemko yang dapat menyerap keringat kesan dingin dan lembut. Kemko ini dapat digunakan untuk pria usia 18-35 Tahun.', 'Biru', 'Kemko', '300', 219500, 209500, 10, NULL, '1', '91456741937', '2016-02-29 13:07:31', 'update', '91456741937', '2'),
('229022016181305', 'Kemko Sajadda V2', 'Kemko dengan kerah kemejda dan style office look ini dapat digunakan untuk berbagai acara formal .Dari bahan nya sendiri dapat menyerap keringat dan tidak mudah kusut. Kemko ini dapat digunakan untuk pria dewasa mulai usia 30-50 tahun.', 'Biru', 'Kemko', '300', 179500, 169500, 10, NULL, '1', '91456741937', '2016-02-29 13:08:02', 'update', '91456741937', '2'),
('229022016181310', 'Kerudung Fatin Blonk Rbi', 'Kerudung selendang bolong rib yang bisa di styling dengan berbagai macam gaya ini dapat digunakan oleh remaja mulai usia 18-40 Tahun.bahan nya dapat menyerap keringat,stretch dan tidak terawang.\r\nBahan Dasar : \r\nHyget dan Polyester\r\n\r\nTersedia Ukuran : All Size', 'Hitam', 'Kerudung', '300', 80500, 79500, 10, NULL, '1', '91456741937', '2016-02-29 12:48:27', 'update', '91456741937', '2'),
('229022016181439', 'Kemko Zaston Mst', 'Kemko dengan border berbeda warna di bagian bahu dan ditambah detail embro sebagai aksennya membuat design Kemko ini menjadi lebih indah.Kemko ini bisa digunakan untuk acara Formal maupun Semi Formal. dari bahan nya yang dapat menyerap keringat dan idak mudah kusut bila sudah digunakan.Cocok digunakan untuk usia 20-50 tahun.', 'Hitam', 'Kemko', '300', 309500, 299500, 10, NULL, '1', '91456741937', '2016-02-29 13:08:57', 'update', '91456741937', '2'),
('229022016181602', 'Kerudung Great Altis', 'Konsep kerudung sekolah ini berbahan kaos simple dan sederhana.dibagian atas terdapat lukisan bunga yang cantik. Dan Kerudung ini cocok dipakai oleh anak-anak remaja  sekolah sampai dewasa 10-35 tahun.\r\n\r\nBahan Dasar : \r\nPolyester\r\n\r\nTersedia Ukuran : S M L', 'Algres Blue', 'Kerudung', '300', 74500, 73500, 10, NULL, '1', '91456741937', '2016-02-29 12:49:55', 'update', '91456741937', '2'),
('229022016181645', 'Kemko Sangkot Genie', 'Kemko formal glamour dengan detail motif garis pada bagian bahu depan dan manset lengan memberikan kesan formal. Kemko ini nyaman dipakai karena menyerap keringat, tidak panas dan tidak mudah kusut. Cocok digunakan oleh muslim usia 25-40 tahun.', 'Pink', 'Kemko', '300', 479500, 469500, 10, NULL, '1', '91456741937', '2016-02-29 13:10:37', 'update', '91456741937', '2'),
('229022016181806', 'Kemko Blomma Mst', 'Kemko Formil atau semi formil dengan style corak di bagian pergelangan tangan memberikan kesan modern dan simple. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun.', 'Grey', 'Kemko', '300', 239500, 229500, 10, NULL, '1', '91456741937', '2016-02-29 13:10:59', 'update', '91456741937', '2'),
('229022016181926', 'Kerudung Fatin Blonk Pti', 'Kerudung selendang bolong bergo yang bisa di styling dengan berbagai macam gaya ini dapat digunakan untuk remaja mulai usia 18-40 tahun.Cocok untuk acara Formal ataupun Semi Formal.\r\n\r\nBahan Dasar : \r\nHyget\r\n\r\nTersedia Ukuran : All Size', 'Pink Dharma Wanita', 'Kerudung', '300', 83500, 82500, 10, NULL, '1', '91456741937', '2016-02-29 12:50:24', 'update', '91456741937', '2'),
('229022016182114', 'Kerudung Fatin Therru Darra', 'Kerudung dengan style hoodie ini seperti memakai pashmina.Dengan berbahan Polyester dapat menyerap keringat,stretch,lembut dan dingin saat digunakan.Dapat digunakan untuk acara Formal atau semi Formal.Cocok untuk remaja usia 15-40 tahun.\r\n\r\nBahan Dasar : \r\nPolyester\r\n\r\nTersedia Ukuran : S M L XL', 'Salmon Rose', 'Kerudung', '300', 55500, 54500, 10, NULL, '1', '91456741937', '2016-02-29 12:51:03', 'update', '91456741937', '2'),
('229022016182217', 'Kemko Kaufman Mst', 'Kemko nyaman dipakai, tidak mudah kusut, penyerap keringat dan tidak panas. Cocok digunakan oleh muslim 25-40 tahun.', 'Merah Ati', 'Kemko', '300', 239500, 229500, 10, NULL, '1', '91456741937', '2016-02-29 13:11:46', 'update', '91456741937', '2'),
('229022016182337', 'Outer Kimoera', 'Outer dengan lengan kimono, cutting empire di bagian dada kesan slim&kaki jenjang bagi si pemakai. Bisa di mix&match dengan dresslim polos atau blouse&rok/kulot. Outer ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 18-40 tahun.\r\n\r\nBahan Dasar : \r\nPolyester dan Spandex\r\n\r\nTersedia Ukuran : XS S M L XL XXL', 'Abu Muda', 'Baju', '300', 195500, 194500, 10, NULL, '1', '91456741937', '2016-02-29 12:51:24', 'update', '91456741937', '2'),
('229022016182400', 'Kemko Kalba Pdk', 'Kemko ini nyaman dipakai, tidak mudah kusut, tidak panas dan menyerap keringat. cocok digunakan pada kesempatan semi formil oleh muslim usia 18-40 tahun.', 'Cokelat', 'Kemko', '300', 184500, 174500, 10, NULL, '1', '91456741937', '2016-02-29 13:13:21', 'update', '91456741937', '2'),
('229022016194138', 'Kemko Hamri Pdk', 'Mohon Maaf Produk Sold Out !', 'Biru', 'Kemko', '300', 200000, 200000, 10, NULL, '1', '91456741937', '2016-02-29 13:13:45', 'update', '91456741937', '2'),
('229022016195341', 'Outer Geomma', 'Outer casual dengan motif khas Rabbani yaitu motif Geomma. Dapat dipadupadankan dengan dresslim atau rok polos. Outer ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 20-35 tahun.\r\n\r\nBahan Dasar : \r\nPolyester\r\n\r\nTersedia Ukuran : XS S M L XL XXL', 'Merah', 'Baju', '300', 130500, 129500, 10, NULL, '1', '91456741937', '2016-02-29 12:54:02', 'update', '91456741937', '2'),
('229022016195505', 'Outer Shady', 'Outer casual/semi formal dengan style jacket androginy, memadukan style maskulin dengan bahan knitting bermotif floral cocok untuk kesempatan casual/semi formal. Bisa di mix & match dengan busana polos berbahan knitting/woven. Cocok digunakan oleh muslimah usia 18-30 tahun.\r\n\r\nBahan Dasar : \r\nKain campuran Rayon dan Polyester\r\n\r\nTersedia Ukuran : XS M L XL', 'Hitam', 'Baju', '300', 320500, 319500, 10, NULL, '1', '91456741937', '2016-02-29 12:55:44', 'update', '91456741937', '2'),
('229022016195713', 'Outer Sangkarra', 'Outer model cape dengan modifikasi bahan polosan-motif. Outer ini cocok dipadukan dengan dresslim bacis bermotif atau dresslim dengan potongan simple untuk kegiatan santai. Outer ini cocok digunakan oelh muslimah usia 25-35 tahun.\r\nBahan Dasar : \r\nFdy baro \r\n\r\nTersedia Ukuran : S M L', 'Fushia Pink', 'Baju', '300', 130500, 129500, 10, NULL, '1', '91456741937', '2016-02-29 12:59:27', 'update', '91456741937', '2'),
('229022016200131', 'Outer Ayesha', 'Outer untuk kesempatan semi formil dengan detail decorative zipper pada bagian kerah dan saku. Outer ini nyaman digunakan tidak panas dan menyerap keringat. Cocok dipakai oleh muslimah usia 20-30 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : S M L', 'Tomato Puree', 'Baju', '300', 245500, 244500, 10, NULL, '1', '91456741937', '2016-02-29 13:12:49', 'update', '91456741937', '2'),
('229022016201403', 'Dresslim S3 Betha V4', 'Dresslim formal dengan motif dibagian bawah. Dresslim ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 25-50 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : S M L', 'Krem', 'Baju', '300', 340500, 339500, 10, NULL, '1', '91456741937', '2016-02-29 13:14:22', 'update', '91456741937', '2'),
('229022016201505', 'Kemko Wairish Pdk', 'Kemko ini dapat digunakan untuk kesempatan casual (sehari-hari) atau kesempatan semi formil Cocok digunakan oleh pria dewasa 20-40 tahun. Karakter kain dapat menyerap keringat, pemakaian baju tidak panas dan daya tahan kusut cukup baik. ', 'Grey', 'Kemko', '300', 204500, 194500, 10, NULL, '1', '91456741937', '2016-02-29 13:16:16', 'update', '91456741937', '2'),
('229022016201701', 'Kemko Vier Pdk', 'Kemko dengan detail aplikasi bordir motif abstrak yang diletakan di ujung lengan. Kemko ini nyaman dipakai, tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan untuk kesempatan semi formil oleh muslim dewasa usia 20-40 tahun.', 'Ungu', 'Kemko', '300', 266500, 25500, 10, NULL, '1', '91456741937', '2016-02-29 13:17:29', 'update', '91456741937', '2'),
('229022016201901', 'Dresslim lazetha Tribby', 'Dresslim casual dengan corak khas Rabbani yaitu Motif Tribby bisa dipadupadankan dengan outer atau kerudung polos. Dresslim ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 25-50 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : M', 'Coklat Kopi', 'Baju', '300', 200500, 199500, 10, NULL, '1', '91456741937', '2016-02-29 13:20:09', 'update', '91456741937', '2'),
('229022016201945', 'Kemko Barli Mst', 'Kemko Formil atau semi formil dengan style bordir garis panah pada bagian bawah memberikan kesan modern dan simple. Kemko ini nyaman dipakai karena tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslim usia 25-45 tahun', 'Toska', 'Kemko', '300', 244500, 234500, 10, NULL, '1', '91456741937', '2016-02-29 13:20:47', 'update', '91456741937', '2'),
('229022016202150', 'Kemko Duasa Pdk', 'Kemko semiformil dengan detail cutting dan bordir minimalis, cocok digunakan untuk busana kerja atau semi formil. Kemko ini nyaman digunakan, tidak mudah kusut, tidak panas, dan menyerap keringat. ', 'Grey', 'Kemko', '300', 199500, 189500, 10, NULL, '1', '91456741937', '2016-02-29 13:22:11', 'update', '91456741937', '2'),
('229022016202218', 'Dresslim lazetha Shakila', 'Dresslim casual dengan corak leopard bisa dipadupadankan dengan kerudung polos. Dresslim ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 25-50 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : M L', 'Regal Red', 'Baju', '300', 310500, 309500, 10, NULL, '1', '91456741937', '2016-02-29 13:22:48', 'update', '91456741937', '2'),
('229022016202313', 'Kemko Arfad Pdk', 'Kemko dengan detail aplikasi bordir motif abstrak yang diletakan A-simetris. Kemko ini nyaman dipakai, tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan untuk kesempatan semi formil oleh muslim dewasa usia 20-40 tahun.', 'Cokelat Susu', 'Kemko', '300', 199500, 189500, 10, NULL, '1', '91456741937', '2016-02-29 13:24:03', 'update', '91456741937', '2'),
('229022016202420', 'Dresslim lazetha Sangkarra', 'Dresslim casual dengan corak motif khas Rabbani yaitu motif Sangkarra bisa dipadupadankan dengan outer atau kerudung polos. Dresslim ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 20-50 tahun.\r\n\r\nBahan Dasar : \r\nFdy baro\r\nTersedia Ukuran : M L', 'Fushia Pink', 'Baju', '300', 200500, 199500, 10, NULL, '1', '91456741937', '2016-02-29 13:24:42', 'update', '91456741937', '2'),
('229022016202455', 'Kemko Fulqi Pdk', 'Kemko dewasa casual dengan cutting simple dan fokus bordir pada bagian saku. Kemko nyaman dipakai, tidak mudah kusut, penyerap keringat dan tidak panas. Cocok digunakan oleh muslim 20-30 tahun.', 'Navy', 'Kemko', '300', 194500, 184500, 10, NULL, '1', '91456741937', '2016-02-29 13:25:37', 'update', '91456741937', '2'),
('229022016202551', 'Dresslim lazetha Keysa', 'Dresslim casual dengan corak gradasi warna yang unik dan cerah bisa dipadupadankan dengan kerudung polos atau motif. Dresslim ini nyaman digunakan karena tidak panas, tidak mudah kusut dan menyerap keringat. Cocok digunakan oleh muslimah usia 25-50 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : M L', 'Coklat Kopi', 'Baju', '300', 310500, 309500, 10, NULL, '1', '91456741937', '2016-02-29 13:27:13', 'update', '91456741937', '2'),
('229022016202729', 'Kolo Muhar', 'Mohon Maaf Produk Sold Out !\r\n', 'Putih', 'Kolo', '300', 180000, 170000, 10, NULL, '1', '91456741937', '2016-02-29 13:28:37', 'update', '91456741937', '2'),
('229022016202919', 'Kemko Anak Ashraf', 'Kemko anak ini dapat digunakan untuk acara Formal,Semi Formal maupun Casual. Kemko dengan detail perpaduan style jakcet dan kemeja ini dapat dipadupadankan dengan celana panjang berbahan jeans.terdapat detail rib pada manset dan kain printing look dan denim mix.Dapat digunakan untuk usia 5-12 tahun.\r\n\r\nBahan Dasar : \r\nPolyester dan Cotton\r\n\r\nTersedia Ukuran : M L', 'Coklat Susu', 'Baju', '300', 162500, 161500, 10, NULL, '1', '91456741937', '2016-02-29 13:30:27', 'update', '91456741937', '2'),
('229022016203127', 'St Anak Calia', 'Stelan anak dengan perpaduan bahan knitting dan cotton printing. Stelan anak ini dapat digunakan untuk acara Formal maupun Casual.Dengan bahan yang dapat menyerap keringat,lembut dan dingin karena ada perpaduan dari bahan Cotton.Dapat digunakan untuk usia 5-12 tahun.\r\n\r\nBahan Dasar : \r\nCVC Solid dan Clorist Printing\r\n\r\nTersedia Ukuran : XS S M L', 'Krem', 'Baju', '300', 250500, 249500, 10, NULL, '1', '91456741937', '2016-02-29 13:31:55', 'update', '91456741937', '2'),
('229022016203224', 'Kemko Ibra Pdk', 'Kermko semi formil.Kemko Standar dengan aksen cutting temple dan jahit tindis untuk kesan casual.Dapat digunakan Ikhwan remaja hingga dewasa 18-45 Tahun.bahan dari campuran Polyester dan Cotton (dominan Cotton).Karakter kainnya nyaman di pakai,komposisi Cotton kain dapat menyerap keringat.sementara komposisi Polyester kain tahan kusutnya lebih baik.', 'Ungu', 'Kemko', '300', 190000, 200000, 10, NULL, '1', '91456741937', '2016-02-29 13:32:55', 'update', '91456741937', '2'),
('229022016203300', 'Kemko Anak Attarik', 'Kemko dengan detail aplikasi dan embroidery pada bagian depan ini dapat digunakan untuk acara Semi Formal atau Casual.Karakteristik dari kemko ini sendiri dapat menyerap keringat dingin dan lembut.Dapat digunakan untuk usia 5-12 Tahun.\r\n\r\nBahan Dasar : \r\nCVC Solid + Fa 2954 \r\n\r\nPolyester dan Cotton \r\n\r\nTersedia Ukuran : XS S M L', 'Classic Blue', 'Baju', '300', 135500, 134500, 10, NULL, '1', '91456741937', '2016-02-29 13:38:04', 'update', '91456741937', '2'),
('229022016203358', 'Kemko Larnell Pdk', 'Kemeja Koko Formal dengan variasi cutting motif songket di bagian sisi kiri. Cocok dipakai untuk usia 25-40 tahun pada kesempatan formal maupun semi formal.', 'Grey', 'Kemko', '300', 224500, 14500, 10, NULL, '1', '91456741937', '2016-02-29 13:34:34', 'update', '91456741937', '2'),
('229022016203520', 'Kemko Safir Blg', 'Kemko kain border pinggiran sebagai aksen yang diaplikasikan di bagian dada berbentuk vertikal dari leher hingga bawah. Memberikan kesan slim pada si pemakai. Kemko ini cocok digunakan untuk kesempatan formal dan semi formal usia 25-45 tahun.', 'Putih', 'Kemko', '300', 207500, 197500, 10, NULL, '1', '91456741937', '2016-02-29 13:36:31', 'update', '91456741937', '2'),
('229022016203719', 'Kemko Agha Mst', 'Mohon Maaf Produk Sold Out !', 'Biru', 'Kemko', '300', 200000, 190000, 10, NULL, '1', '91456741937', '2016-02-29 13:39:04', 'update', '91456741937', '2'),
('229022016203805', 'Kemko Abura Blg', 'Kemko minimalis dengan detail border bagian dada. Kemko ini dapat digunakan untuk kesempatan casual atau kesempatan semi formal usia dewasa 20-40 tahun. Karakteristik kain dapat menyerap keringat dan tidak panas. ', 'Burgundy', 'Kemko', '300', 194500, 184500, 10, NULL, '1', '91456741937', '2016-02-29 13:39:23', 'update', '91456741937', '2'),
('229022016203927', 'St Anak Pinky zoo', 'Stelan anak dengan perpaduan bahan knitting dan cotton printing ini dapat digunakan untuk acara semi Formal ataupun juga acara casual.Detail aplikasi embroidery pada bagian bawah baju ini membuat baju terlihat lebih lucu bila digunakan oleh anak usia 5-12 Tahun.\r\n\r\nBahan Dasar : \r\nCVC Solid dan Denim Look Printing \r\n\r\nTersedia Ukuran : XS S M L', 'Lichen', 'Baju', '300', 300500, 299500, 10, NULL, '1', '91456741937', '2016-02-29 13:41:12', 'update', '91456741937', '2'),
('229022016204020', 'Kemko Umar Pdk', 'Kemko minimalis dengan detail border bagian dada. Kemko ini dapat digunakan untuk kesempatan casual atau kesempatan semi formal usia dewasa 20-40 tahun. Karakteristik kain dapat menyerap keringat dan tidak panas.', 'Putih', 'Kemko', '300', 214500, 204500, 10, NULL, '1', '91456741937', '2016-02-29 13:41:02', 'update', '91456741937', '2'),
('229022016204145', 'Kemko Hilal Pdk', 'kemko Casual.Kemko berbahan dasar denim dengan variasi kulit membuat si pemakai tampak  terlihat lebih modis.Cocok dipakai untuk usia20-35 tahun pada kesempatan formal maupun acara santai.', 'Biru', 'Kemko', '300', 199500, 189500, 10, NULL, '1', '91456741937', '2016-02-29 13:42:13', 'update', '91456741937', '2'),
('229022016204257', 'Jumper Baby Rafiq', 'Bahan terdiri campuran katun dan polyester, (lebih banyak komposisi cvc nya) Karakter kain dapat menyerap keringat, pemakaian baju tidak panas, dan karena ada campuran polyesternya, jadi kusutnya sedikit lebih baik. Jumper baby ini bisa di gunakan oleh bayi usia 1-12 bulan. Spesifik Item :\r\n\r\nBahan Dasar : \r\nKaos/Cotton Viscosa (cvc)\r\n\r\nTersedia Ukuran : All size All size No 12', 'Grey', 'Baju', '300', 135500, 134500, 10, NULL, '1', '91456741937', '2016-02-29 13:43:15', 'update', '91456741937', '2'),
('229022016204258', 'Kemko Labib Mst', 'Kemko Casual Denim.Kemko ini berbahan dasar denim dengan variasi cuttingmotif “RO” di bagian sisi kiridan kanan dada membuat sipemakaitampak terlihat lebih modis.Sangat cocok dipakai untuk usia 25-35 tahunpada kesempatan formal maupunsemi formal.', 'Dark blue', 'Kemko', '300', 209500, 199500, 10, NULL, '1', '91456741937', '2016-02-29 13:43:53', 'update', '91456741937', '2'),
('229022016204524', 'Kemko Alkhaleej Pdk', 'Kemko Casual Denim.Kemko dengan bahan dasar denim polos di mix denganbahan kulit dibagian bahu danbagian dalam kerah.Sangat cocok dipakai untuk usia 20-35 Tahun pada kesempatan semiformal.Daya serap terhadap keringat baik dengan tahan kusut cukup.Gramasi kain cukup besar, sehingga ketebalan kain cukup baik.', 'Light blue', 'Kemko', '300', 204500, 194500, 10, NULL, '1', '91456741937', '2016-02-29 13:45:44', 'update', '91456741937', '2'),
('229022016204630', 'Kemko Akhram Pdk', 'Kemko berbahan dasar denim dengan variasi cutting motif “RO” di bagian sisi kiri dan kanan dada membuat sipemakai tampak terlihat lebih modis.Sangat cocok dipakai untuk usia 25-35 tahun pada kesempatan formal maupun semiformaldaya serap terhadap keringat baik dengan tahan kusut cukup. Gramasi kain cukup besar, sehingga ketebalan kain cukup baik.', 'Medium blue', 'Kemko', '300', 184500, 174500, 10, NULL, '1', '91456741937', '2016-02-29 13:47:03', 'update', '91456741937', '2'),
('229022016204744', 'Krd Zahira Derter S', 'Kerudung segi4 dengan panjang 1,15 M , simple, formil dan modis. Kerudung kotak yang bisa di pakai di acara formal maupun semi formal . Karakteristik kain ini yaitu nyaman dipakai, kain tidak mudah kusut. Kerudung ini cocok dipakai oleh muslimah dewasa awal usia 20thn keatas. Dapat dipadupadankan dengan busana gamis maupun setelan tunik untuk kesempatan semi formal.\r\n\r\nPANJANG KELILING       110\r\nBahan Dasar : \r\nFinex\r\n\r\nTersedia Ukuran : S', 'Putih', 'Kerudung', '300', 46500, 45500, 10, NULL, '1', '91456741937', '2016-02-29 13:48:51', 'update', '91456741937', '2'),
('229022016204745', 'Kemko Abiyu Pdk', 'Kemko Casual Denim.Kemko dengan bahan dasar denim polos di mix dengan bahan kulit di bagian kerah dan variasi dekat saku.Sangat cocok dipakai untuk usia 20-35Tahun pada kesempatan semiformal.Daya serap terhadap keringat baik dengan tahan kusut cukup.Gramasi kain cukup besar, sehingga ketebalan kain cukup baik.', 'Light blue', 'Kemko', '300', 179500, 169500, 10, NULL, '1', '91456741937', '2016-02-29 13:48:08', 'update', '91456741937', '2'),
('229022016204916', 'Kemko Fathan Pdk', 'Kemko berbahan dasar denim dengan variasi kulit membuat sipemakai tampak terlihat lebih modis. Cocok dipakai untuk usia 20-35 tahun pada kesempatan formal maupun acara santai. ', 'Biru', 'Kolo', '300', 203500, 193500, 10, NULL, '1', '91456741937', '2016-02-29 13:49:47', 'update', '91456741937', '2'),
('229022016205034', 'Kemko Dasyir Pdk', 'Kemko ini dapat digunakan untuk kesempatan casual (sehari-hari) atau kesempatan semi formil Cocok digunakan oleh pria dewasa 20-40 tahun. Karakter kain dapat menyerap keringat, pemakaian baju tidak panas dan daya tahan kusut cukup baik. ', 'Cokelat Kopi', 'Kemko', '300', 197500, 187500, 10, NULL, '1', '91456741937', '2016-02-29 13:51:06', 'update', '91456741937', '2'),
('229022016205144', 'Kemko Abasta Mst', 'Konsep Kemeja Koko FormaL dengan variasi cutting motif songket tegak lurus di bagian kanan. Kemko ini cocok dipakai untuk usia 25-40 tahun pada kesempatan formal maupun semiformal. ', 'Hijau Olive', 'Kemko', '300', 259500, 249500, 10, NULL, '1', '91456741937', '2016-02-29 13:52:04', 'update', '91456741937', '2'),
('229022016205154', 'Krd Zahira Zaitra', 'Kerudung segi4 dengan panjang 1,15 M , simple, formil dan modis. Kerudung kotak yang bisa di pakai di acara formal maupun semi formal . Karakteristik kain ini yaitu nyaman dipakai, kain tidak mudah kusut. Kerudung ini cocok dipakai oleh muslimah dewasa awal usia 20thn keatas. Dapat dipadupadankan dengan busana gamis maupun setelan tunik untuk kesempatan semi formal.\r\n\r\nPANJANG KELILING :110\r\n\r\nBahan Dasar : \r\nFinex\r\n\r\nTersedia Ukuran : S', 'Peach Fuzz', 'Kerudung', '300', 60500, 59500, 10, NULL, '1', '91456741937', '2016-02-29 13:52:38', 'update', '91456741937', '2'),
('229022016205425', 'Selendang AJ Lavender', 'Selendang polos dengan ukuran 200 cm x 60 cm yang bisa dibentuk dengan berbagai model kerudung sesuai keinginan si pemakai. Selendang ini nyaman dipakai, tidak mudah kusut, tidak panas dan menyerap keringat. Cocok digunakan oleh muslimah usia 20-40 tahun.\r\n\r\nBahan Dasar : \r\nTersedia Ukuran : All Size', 'Violet', 'Selendang', '300', 95500, 94500, 10, NULL, '1', '91456741937', '2016-02-29 13:55:54', 'update', '91456741937', '2'),
('229022016205722', 'Selendang Helga', 'Selendang berbahan Hyget ini cocok digunakan untuk para remaja mulai usia 17-35 tahun.\r\n\r\ndan dapat juga dipadupadankan dengan dresslim ataupun kastun. cocok untuk acara formal ataupun aktivitas keseharian lainnya.\r\n\r\nBahan Dasar : \r\nHyget\r\n\r\nTersedia Ukuran :\r\nAll Size', 'Arabesque', 'Selendang', '300', 30500, 29500, 10, NULL, '1', '91456741937', '2016-02-29 13:58:05', 'update', '91456741937', '2'),
('229022016205956', 'Krd Zahira Argentine Fleur', 'Kerudung segi empat casual/semi formal bermotif bunga berbahan woven, bisa di mix&match dgn busana polos berbahan knitting/woven. Cocok digunakan oleh muslimah semua generasi.\r\n\r\nBahan Dasar : \r\nPolyester\r\n\r\nTersedia Ukuran : S', 'Dark Toska', 'Kerudung', '300', 77500, 76500, 10, NULL, '1', '91456741937', '2016-02-29 14:00:18', 'update', '91456741937', '2');

-- --------------------------------------------------------

--
-- Table structure for table `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_foto` varchar(30) NOT NULL,
  `id_produk` varchar(50) NOT NULL,
  `foto_path` varchar(255) NOT NULL DEFAULT '',
  `service_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `service_action` varchar(100) DEFAULT '0',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_foto`
--

INSERT INTO `produk_foto` (`id_foto`, `id_produk`, `foto_path`, `service_time`, `service_action`, `service_user`) VALUES
('327022016022402', '2222809', '7b2bd0565a72c66c1596ea941b9a3183.JPG', '2016-02-26 12:24:02', 'insert', '91456331075'),
('329022016194416', '229022016175243', '7b148666c371b049a30e458208dc669e.jpg', '2016-02-29 05:44:16', 'insert', '91456741937'),
('329022016194503', '229022016175732', '1181b5d7431627149c4f65b4493255f5.jpg', '2016-02-29 05:45:03', 'insert', '91456741937'),
('329022016194556', '229022016175420', '114267127520f86a4898e47d5e937808.jpg', '2016-02-29 05:45:56', 'insert', '91456741937'),
('329022016194619', '229022016180147', '15e68710faaf176eadd906e4f8293778.jpg', '2016-02-29 05:46:19', 'insert', '91456741937'),
('329022016194646', '229022016180431', 'e4140abd6ec2cb39520843d1a2bcc0ca.jpg', '2016-02-29 05:46:46', 'insert', '91456741937'),
('329022016194715', '229022016180538', '23a373ea03b5ad1e7fda40d205a0877b.jpg', '2016-02-29 05:47:15', 'insert', '91456741937'),
('329022016194748', '229022016180945', '09bc65fad08ffb67e2d9998c6d507811.jpg', '2016-02-29 05:47:48', 'insert', '91456741937'),
('329022016194820', '229022016181310', '76098c77bf096edd64b75660c9a450f9.jpg', '2016-02-29 05:48:20', 'insert', '91456741937'),
('329022016194939', '229022016181602', 'b0beceed69ab687cfa5dd18ef2990576.jpg', '2016-02-29 05:49:39', 'insert', '91456741937'),
('329022016195016', '229022016181926', 'b8f6d347855a15db89e40015351acf8f.jpg', '2016-02-29 05:50:16', 'insert', '91456741937'),
('329022016195042', '229022016175559', '539916426454262440409c9c7abdc891.jpg', '2016-02-29 05:50:42', 'insert', '91456741937'),
('329022016195059', '229022016182114', 'ce921113d53fe76183a8b57fafea4fc7.jpg', '2016-02-29 05:50:59', 'insert', '91456741937'),
('329022016195121', '229022016182337', '3fc727bcc3c688a9312b02575c2938b9.jpg', '2016-02-29 05:51:21', 'insert', '91456741937'),
('329022016195140', '229022016175725', '094f3591f4a220dcaaf6219701bd83e9.jpg', '2016-02-29 05:51:40', 'insert', '91456741937'),
('329022016195308', '229022016175828', 'cc23b6d63e01a41e26be994782a39378.jpg', '2016-02-29 05:53:08', 'insert', '91456741937'),
('329022016195359', '229022016195341', '2e9ae4f06c3c608fc315c476ea7403f2.jpg', '2016-02-29 05:53:59', 'insert', '91456741937'),
('329022016195541', '229022016195505', '438807d297f215e2a04a4b602ecef85e.jpg', '2016-02-29 05:55:41', 'insert', '91456741937'),
('329022016195704', '229022016180103', '29699ee07a5795f439964a42103d2889.jpg', '2016-02-29 05:57:04', 'insert', '91456741937'),
('329022016195925', '229022016195713', '78ba6a6b6495b1572140b9a2a833ca8a.jpg', '2016-02-29 05:59:25', 'insert', '91456741937'),
('329022016200143', '229022016200131', '5696ef040fc0feefaad3c317e85babe5.jpg', '2016-02-29 06:01:43', 'insert', '91456741937'),
('329022016200335', '229022016180422', 'f381d35fd507baf76db818274ab4c9a7.jpg', '2016-02-29 06:03:35', 'insert', '91456741937'),
('329022016200531', '229022016180746', '7ad55425ba2b2c456a349e42232df782.jpg', '2016-02-29 06:05:31', 'insert', '91456741937'),
('329022016200623', '229022016180849', 'bab694d833ffccb45dc1ed801d7994a7.jpg', '2016-02-29 06:06:23', 'insert', '91456741937'),
('329022016200727', '229022016181049', 'b1976be7ac15c58be26c4a9a65889604.jpg', '2016-02-29 06:07:27', 'insert', '91456741937'),
('329022016200800', '229022016181305', '037e2e95bd75fa1ab832928cfc80fc42.jpg', '2016-02-29 06:08:00', 'insert', '91456741937'),
('329022016200854', '229022016181439', 'abfbac077dbe0366726c71e76e85cc5f.jpg', '2016-02-29 06:08:54', 'insert', '91456741937'),
('329022016201035', '229022016181645', '21a6971208271cc0635f0bca6277d19d.jpg', '2016-02-29 06:10:35', 'insert', '91456741937'),
('329022016201057', '229022016181806', '79edd8f1c3debbcfdda577135231adf5.jpg', '2016-02-29 06:10:57', 'insert', '91456741937'),
('329022016201144', '229022016182217', '02ce64175de633e50bf4c490cb022892.jpg', '2016-02-29 06:11:44', 'insert', '91456741937'),
('329022016201319', '229022016182400', '64dbaca1df15e009009ec1088e708f94.jpg', '2016-02-29 06:13:19', 'insert', '91456741937'),
('329022016201342', '229022016194138', '7109c33cdc7c47c16e9265ce70b4579b.jpg', '2016-02-29 06:13:42', 'insert', '91456741937'),
('329022016201417', '229022016201403', 'a6ab3f1884b8b0802c3fdc86db2a8fd6.jpg', '2016-02-29 06:14:17', 'insert', '91456741937'),
('329022016201556', '229022016201505', '59c4b9f62e6a971551926859c8522f7d.jpg', '2016-02-29 06:15:56', 'insert', '91456741937'),
('329022016201726', '229022016201701', 'bd7be1d912b05a3bc0d49857fa1147a5.jpg', '2016-02-29 06:17:26', 'insert', '91456741937'),
('329022016201919', '229022016201901', '91eac0e72d924c2450f978ece0739417.jpg', '2016-02-29 06:19:19', 'insert', '91456741937'),
('329022016202004', '229022016201945', 'd132d9f379d4b314a520f72aa57e56ad.jpg', '2016-02-29 06:20:04', 'insert', '91456741937'),
('329022016202209', '229022016202150', '943d9133d1c7b806b22b483a05f05247.jpg', '2016-02-29 06:22:09', 'insert', '91456741937'),
('329022016202237', '229022016202218', '7aa171b7e285b0673c1e1b1abc51f0db.jpg', '2016-02-29 06:22:37', 'insert', '91456741937'),
('329022016202401', '229022016202313', 'ae11978a9c7e81f89c34633cc610bad2.jpg', '2016-02-29 06:24:01', 'insert', '91456741937'),
('329022016202435', '229022016202420', 'c9b176ef5e51e06d8edd8d42cd4a6efb.jpg', '2016-02-29 06:24:35', 'insert', '91456741937'),
('329022016202515', '229022016202455', 'fa3b28205ed7423c3226000fa146ce5d.jpg', '2016-02-29 06:25:15', 'insert', '91456741937'),
('329022016202607', '229022016202551', '6561e4b68b2ec137846cc47e612222c5.jpg', '2016-02-29 06:26:07', 'insert', '91456741937'),
('329022016202818', '229022016202729', 'c8ad2aa6fc6d6ce7fde304ef0174754c.jpg', '2016-02-29 06:28:18', 'insert', '91456741937'),
('329022016203022', '229022016202919', 'eef8bf7d4455445734c2d2909845c2d8.jpg', '2016-02-29 06:30:22', 'insert', '91456741937'),
('329022016203149', '229022016203127', '7f25fe99bb4cd6bf01d5a3a1a43e0a5c.jpg', '2016-02-29 06:31:49', 'insert', '91456741937'),
('329022016203247', '229022016203224', 'a73297e268cc111b8ac2504dc2b0d6da.jpg', '2016-02-29 06:32:47', 'insert', '91456741937'),
('329022016203432', '229022016203358', 'f3a1ddb96383c55ff0f6f240082e1894.jpg', '2016-02-29 06:34:32', 'insert', '91456741937'),
('329022016203629', '229022016203520', '5c0de2b0dad505559cd795574e0518b4.jpg', '2016-02-29 06:36:29', 'insert', '91456741937'),
('329022016203758', '229022016203300', 'f89aa846ddb39e9512083b157a3de39b.jpg', '2016-02-29 06:37:58', 'insert', '91456741937'),
('329022016203902', '229022016203719', '07c250e3eb0147848f192fd3784f5d9b.jpg', '2016-02-29 06:39:02', 'insert', '91456741937'),
('329022016203921', '229022016203805', '424932a76341a170515d2d0f73e226eb.jpg', '2016-02-29 06:39:21', 'insert', '91456741937'),
('329022016204053', '229022016204020', 'ee73cb9085a916d21dc803d73966ba18.jpg', '2016-02-29 06:40:53', 'insert', '91456741937'),
('329022016204100', '229022016203927', '95ab54a338438c910f15cb844598e76d.jpg', '2016-02-29 06:41:00', 'insert', '91456741937'),
('329022016204211', '229022016204145', '007ed0cd67b0d5a7c6bc811609e2665d.jpg', '2016-02-29 06:42:11', 'insert', '91456741937'),
('329022016204310', '229022016204257', '85766f0a8a4541c135144e9d772b8383.jpg', '2016-02-29 06:43:10', 'insert', '91456741937'),
('329022016204328', '229022016204258', '772a3d47c2f144c74edc87192739bb9e.jpg', '2016-02-29 06:43:28', 'insert', '91456741937'),
('329022016204542', '229022016204524', 'd7a383bb422d3e4ddf48679587c91f23.jpg', '2016-02-29 06:45:42', 'insert', '91456741937'),
('329022016204701', '229022016204630', 'af814b7f032dd8c791d851f4e959b1fa.jpg', '2016-02-29 06:47:01', 'insert', '91456741937'),
('329022016204805', '229022016204745', '1bee88223994d3dc93e8acb375d068a0.jpg', '2016-02-29 06:48:05', 'insert', '91456741937'),
('329022016204844', '229022016204744', '15dce3755373aa8510d17554eff10a31.jpg', '2016-02-29 06:48:44', 'insert', '91456741937'),
('329022016204944', '229022016204916', '0f3a7a920c86ffbe1f25753fd08ac050.jpg', '2016-02-29 06:49:44', 'insert', '91456741937'),
('329022016205052', '229022016205034', 'bbd274cebbc18443a230e083659107c4.jpg', '2016-02-29 06:50:52', 'insert', '91456741937'),
('329022016205202', '229022016205144', '74e25494a18abb7eb8e4cbb980449265.jpg', '2016-02-29 06:52:02', 'insert', '91456741937'),
('329022016205234', '229022016205154', 'efde3634a471cd085c4a7bfcc368610e.jpg', '2016-02-29 06:52:34', 'insert', '91456741937'),
('329022016205549', '229022016205425', '10b77e2e3327790378ff6c269a0efa01.jpg', '2016-02-29 06:55:49', 'insert', '91456741937'),
('329022016205758', '229022016205722', '6226e1bff2c6ce52ee511f92f5b6cd08.jpg', '2016-02-29 06:57:58', 'insert', '91456741937'),
('329022016210015', '229022016205956', 'bba8b895b97d71987b7281bd0435b335.jpg', '2016-02-29 07:00:15', 'insert', '91456741937'),
('329022016223055', '229022016180515', 'f3eefa002f07a29ed6c2ac635f8bb0cd.jpg', '2016-02-29 15:30:55', 'insert', '91456741937'),
('329022016223145', '229022016180626', '1b49d19ef62273f668542514a525d57d.jpg', '2016-02-29 15:31:45', 'insert', '91456741937'),
('302032016011613', '201032016234642', 'e6f05dd197c4b45356860b497e01a950.jpg', '2016-03-01 18:16:13', 'insert', '91456822446');

-- --------------------------------------------------------

--
-- Table structure for table `produk_history`
--

CREATE TABLE `produk_history` (
  `id_produk` varchar(50) NOT NULL,
  `harga_jual` varchar(100) NOT NULL DEFAULT '',
  `warna` varchar(100) DEFAULT '',
  `tipe` varchar(100) DEFAULT '',
  `price_s` varchar(100) DEFAULT NULL,
  `price_n` varchar(100) DEFAULT NULL,
  `berat` varchar(100) DEFAULT '',
  `ket` text,
  `service_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `service_action` varchar(100) NOT NULL DEFAULT '',
  `service_user` varchar(100) NOT NULL DEFAULT '',
  `qty` int(10) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_history`
--

INSERT INTO `produk_history` (`id_produk`, `harga_jual`, `warna`, `tipe`, `price_s`, `price_n`, `berat`, `ket`, `service_time`, `service_action`, `service_user`, `qty`, `user`) VALUES
('2222620', '', '', '', '28000', '30000', '1', 'Management Produk', '2016-02-26 19:07:30', 'update', '91456331075', 5, ''),
('2222710', '', '', '', '28000', '30000', '1', 'Management Produk', '2016-02-26 19:07:38', 'update', '91456331075', 5, ''),
('2147483647', '', '', '', NULL, NULL, '', 'Management Produk', '2016-02-26 19:09:59', 'delete', '91456331075', 0, ''),
('2222809', '', '', '', '28000', '30000', '1', 'Management Produk', '2016-02-26 19:14:58', 'update', '91456331075', 10, ''),
('2147483647', '', '', '', '18500', '21000', '1', 'Management Produk', '2016-02-26 19:26:41', 'update', '91456331075', 6, ''),
('2147483647', '', '', '', '18500', '21000', '1', 'Management Produk', '2016-02-26 19:34:25', 'update', 'Bobby Chahya', 17, ''),
('2222829', '', '', '', '28000', '30000', '1', 'Management Produk', '2016-02-26 19:37:40', 'update', 'Bobby Chahya', 5, ''),
('2222620', '', '', '', '28000', '30000', '1', 'Management Produk', '2016-02-28 11:32:52', 'update', 'Bobby Chahya', 5, ''),
('229022016174200', '', 'Hijau alpukat', '', '205000', '210000', '300', 'Management Produk', '2016-02-29 10:42:00', 'insert', 'Muslimah Gallery', 10, ''),
('229022016174655', '', 'Biru Toska Muda', 'Baju', '205000', '210000', '300', 'Management Produk', '2016-02-29 10:46:55', 'insert', 'Muslimah Gallery', 10, ''),
('229022016174939', '', 'Tidak berwarna', '', '5500', '6000', '300', 'Management Produk', '2016-02-29 10:49:39', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175129', '', 'Tidak Berwarna', '', '18500', '20000', '500', 'Management Produk', '2016-02-29 10:51:29', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175240', '', 'Tidak berwarna', '', '7500', '10000', '500', 'Management Produk', '2016-02-29 10:52:40', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175243', '', 'Hijau', 'Baju', '64500', '74500', '300', 'Management Produk', '2016-02-29 10:52:43', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175420', '', 'Biru', '', '259500', '269500', '200', 'Management Produk', '2016-02-29 10:54:20', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175559', '', 'Merah', '', '259500', '269500', '200', 'Management Produk', '2016-02-29 10:55:59', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175725', '', 'Grey', 'Kemko', '239500', '249500', '200', 'Management Produk', '2016-02-29 10:57:25', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175732', '', 'Ungu', 'Alat Shalat', '349500', '359500', '300', 'Management Produk', '2016-02-29 10:57:32', 'insert', 'Muslimah Gallery', 10, ''),
('229022016175828', '', 'Ungu', 'Kemko', '239500', '249500', '200', 'Management Produk', '2016-02-29 10:58:28', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180000', '', 'Biru', 'Kemko', '239500', '249500', '200', 'Management Produk', '2016-02-29 11:00:00', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180103', '', 'Kuning', 'Kemko', '259500', '269500', '200', 'Management Produk', '2016-02-29 11:01:03', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180147', '', 'Biru', 'Baju', '64500', '65500', '300', 'Management Produk', '2016-02-29 11:01:47', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180259', '', 'Cokelat Kopi', 'Kemko', '259500', '269500', '200', 'Management Produk', '2016-02-29 11:02:59', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180422', '', 'Biru', 'Kemko', '249500', '259500', '200', 'Management Produk', '2016-02-29 11:04:22', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180431', '', 'Coklat', 'Baju', '64500', '65500', '300', 'Management Produk', '2016-02-29 11:04:31', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180515', '', 'Merah Ati', 'Kemko', '219500', '229500', '300', 'Management Produk', '2016-02-29 11:05:15', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180538', '', 'Ungu', 'Baju', '64500', '65500', '300', 'Management Produk', '2016-02-29 11:05:38', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180626', '', 'Merah Ati', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 11:06:26', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180746', '', 'Grey', 'Kemko', '176500', '186500', '300', 'Management Produk', '2016-02-29 11:07:46', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180849', '', 'Grey', 'Kemko', '214500', '224500', '300', 'Management Produk', '2016-02-29 11:08:49', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180945', '', 'Spearmint', 'Kerudung', '69500', '70500', '300', 'Management Produk', '2016-02-29 11:09:45', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181049', '', 'Biru', 'Kemko', '209500', '219500', '300', 'Management Produk', '2016-02-29 11:10:49', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181305', '', 'Biru', 'Kemko', '169500', '179500', '300', 'Management Produk', '2016-02-29 11:13:05', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181310', '', 'Hitam', 'Kerudung', '79500', '80500', '300', 'Management Produk', '2016-02-29 11:13:10', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181439', '', 'Hitam', 'Kemko', '299500', '309500', '300', 'Management Produk', '2016-02-29 11:14:39', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181602', '', 'Algres Blue', 'Kerudung', '73500', '74500', '300', 'Management Produk', '2016-02-29 11:16:02', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181645', '', 'Pink', 'Kemko', '469500', '479500', '300', 'Management Produk', '2016-02-29 11:16:45', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181806', '', 'Grey', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 11:18:06', 'insert', 'Muslimah Gallery', 10, ''),
('229022016181926', '', 'Pink Dharma Wanita', 'Kerudung', '82500', '83500', '300', 'Management Produk', '2016-02-29 11:19:26', 'insert', 'Muslimah Gallery', 10, ''),
('229022016182114', '', 'Salmon Rose', 'Kerudung', '54500', '55500', '300', 'Management Produk', '2016-02-29 11:21:14', 'insert', 'Muslimah Gallery', 10, ''),
('229022016182217', '', 'Merah Ati', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 11:22:17', 'insert', 'Muslimah Gallery', 10, ''),
('229022016182337', '', 'Abu Muda', 'Baju', '194500', '195500', '300', 'Management Produk', '2016-02-29 11:23:37', 'insert', 'Muslimah Gallery', 10, ''),
('229022016182400', '', 'Cokelat', 'Kemko', '174500', '184500', '300', 'Management Produk', '2016-02-29 11:24:00', 'insert', 'Muslimah Gallery', 10, ''),
('229022016194138', '', 'Biru', 'Kemko', '200000', '200000', '300', 'Management Produk', '2016-02-29 12:41:38', 'insert', 'Muslimah Gallery', 10, ''),
('229022016174200', '', 'Hijau alpukat', '', '205', '210', '300', 'Management Produk', '2016-02-29 12:43:24', 'update', 'Muslimah Gallery', 10, ''),
('229022016175243', '', 'Hijau', 'Baju', '64500', '74500', '300', 'Management Produk', '2016-02-29 12:44:23', 'update', 'Muslimah Gallery', 10, ''),
('229022016175732', '', 'Ungu', 'Alat Shalat', '349500', '359500', '300', 'Management Produk', '2016-02-29 12:45:08', 'update', 'Muslimah Gallery', 10, ''),
('229022016175420', '', 'Biru', '', '259500', '269500', '200', 'Management Produk', '2016-02-29 12:46:09', 'update', 'Muslimah Gallery', 10, ''),
('229022016180147', '', 'Biru', 'Baju', '64500', '65500', '300', 'Management Produk', '2016-02-29 12:46:27', 'update', 'Muslimah Gallery', 10, ''),
('229022016180431', '', 'Coklat', 'Baju', '64500', '65500', '300', 'Management Produk', '2016-02-29 12:46:53', 'update', 'Muslimah Gallery', 10, ''),
('229022016180538', '', 'Ungu', 'Baju', '64500', '65500', '300', 'Management Produk', '2016-02-29 12:47:19', 'update', 'Muslimah Gallery', 10, ''),
('229022016180945', '', 'Spearmint', 'Kerudung', '69500', '70500', '300', 'Management Produk', '2016-02-29 12:47:51', 'update', 'Muslimah Gallery', 10, ''),
('229022016181310', '', 'Hitam', 'Kerudung', '79500', '80500', '300', 'Management Produk', '2016-02-29 12:48:05', 'update', 'Muslimah Gallery', 10, ''),
('229022016181310', '', 'Hitam', 'Kerudung', '79500', '80500', '300', 'Management Produk', '2016-02-29 12:48:27', 'update', 'Muslimah Gallery', 10, ''),
('229022016181602', '', 'Algres Blue', 'Kerudung', '73500', '74500', '300', 'Management Produk', '2016-02-29 12:49:42', 'update', 'Muslimah Gallery', 10, ''),
('229022016181602', '', 'Algres Blue', 'Kerudung', '73500', '74500', '300', 'Management Produk', '2016-02-29 12:49:55', 'update', 'Muslimah Gallery', 10, ''),
('229022016181926', '', 'Pink Dharma Wanita', 'Kerudung', '82500', '83500', '300', 'Management Produk', '2016-02-29 12:50:24', 'update', 'Muslimah Gallery', 10, ''),
('229022016175559', '', 'Merah', '', '259500', '269500', '200', 'Management Produk', '2016-02-29 12:50:47', 'update', 'Muslimah Gallery', 10, ''),
('229022016182114', '', 'Salmon Rose', 'Kerudung', '54500', '55500', '300', 'Management Produk', '2016-02-29 12:51:03', 'update', 'Muslimah Gallery', 10, ''),
('229022016182337', '', 'Abu Muda', 'Baju', '194500', '195500', '300', 'Management Produk', '2016-02-29 12:51:24', 'update', 'Muslimah Gallery', 10, ''),
('229022016175725', '', 'Grey', 'Kemko', '239500', '249500', '200', 'Management Produk', '2016-02-29 12:52:29', 'update', 'Muslimah Gallery', 10, ''),
('229022016175828', '', 'Ungu', 'Kemko', '239500', '249500', '200', 'Management Produk', '2016-02-29 12:53:11', 'update', 'Muslimah Gallery', 10, ''),
('229022016195341', '', 'Merah', 'Baju', '129500', '130500', '300', 'Management Produk', '2016-02-29 12:53:41', 'insert', 'Muslimah Gallery', 10, ''),
('229022016195341', '', 'Merah', 'Baju', '129500', '130500', '300', 'Management Produk', '2016-02-29 12:54:02', 'update', 'Muslimah Gallery', 10, ''),
('229022016180000', '', '', '', NULL, NULL, '', 'Management Produk', '2016-02-29 12:54:30', 'delete', 'Muslimah Gallery', 0, ''),
('229022016195505', '', 'Hitam', 'Baju', '319500', '320500', '300', 'Management Produk', '2016-02-29 12:55:05', 'insert', 'Muslimah Gallery', 10, ''),
('229022016195505', '', 'Hitam', 'Baju', '319500', '320500', '300', 'Management Produk', '2016-02-29 12:55:44', 'update', 'Muslimah Gallery', 10, ''),
('229022016195713', '', 'Fushia Pink', 'Baju', '129500', '130500', '300', 'Management Produk', '2016-02-29 12:57:13', 'insert', 'Muslimah Gallery', 10, ''),
('229022016195713', '', 'Fushia Pink', 'Baju', '129500', '130500', '300', 'Management Produk', '2016-02-29 12:59:27', 'update', 'Muslimah Gallery', 10, ''),
('229022016180103', '', 'Kuning', 'Kemko', '259500', '269500', '200', 'Management Produk', '2016-02-29 13:00:28', 'update', 'Muslimah Gallery', 10, ''),
('229022016200131', '', 'Tomato Puree', 'Baju', '244500', '245500', '300', 'Management Produk', '2016-02-29 13:01:31', 'insert', 'Muslimah Gallery', 10, ''),
('229022016180259', '', 'Cokelat Kopi', 'Kemko', '259500', '269500', '200', 'Management Produk', '2016-02-29 13:03:09', 'update', 'Muslimah Gallery', 10, ''),
('229022016180422', '', 'Biru', 'Kemko', '249500', '259500', '200', 'Management Produk', '2016-02-29 13:03:39', 'update', 'Muslimah Gallery', 10, ''),
('229022016180422', '', 'Biru', 'Kemko', '249500', '259500', '200', 'Management Produk', '2016-02-29 13:03:59', 'update', 'Muslimah Gallery', 10, ''),
('229022016180515', '', 'Merah Ati', 'Kemko', '219500', '229500', '300', 'Management Produk', '2016-02-29 13:04:30', 'update', 'Muslimah Gallery', 10, ''),
('229022016180626', '', 'Merah Ati', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 13:04:56', 'update', 'Muslimah Gallery', 10, ''),
('229022016180746', '', 'Grey', 'Kemko', '176500', '186500', '300', 'Management Produk', '2016-02-29 13:05:34', 'update', 'Muslimah Gallery', 10, ''),
('229022016180849', '', 'Grey', 'Kemko', '214500', '224500', '300', 'Management Produk', '2016-02-29 13:06:26', 'update', 'Muslimah Gallery', 10, ''),
('229022016181049', '', 'Biru', 'Kemko', '209500', '219500', '300', 'Management Produk', '2016-02-29 13:07:31', 'update', 'Muslimah Gallery', 10, ''),
('229022016181305', '', 'Biru', 'Kemko', '169500', '179500', '300', 'Management Produk', '2016-02-29 13:08:02', 'update', 'Muslimah Gallery', 10, ''),
('229022016181439', '', 'Hitam', 'Kemko', '299500', '309500', '300', 'Management Produk', '2016-02-29 13:08:57', 'update', 'Muslimah Gallery', 10, ''),
('229022016181645', '', 'Pink', 'Kemko', '469500', '479500', '300', 'Management Produk', '2016-02-29 13:10:37', 'update', 'Muslimah Gallery', 10, ''),
('229022016181806', '', 'Grey', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 13:10:59', 'update', 'Muslimah Gallery', 10, ''),
('229022016182217', '', 'Merah Ati', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 13:11:46', 'update', 'Muslimah Gallery', 10, ''),
('229022016200131', '', 'Tomato Puree', 'Baju', '244500', '245500', '300', 'Management Produk', '2016-02-29 13:12:49', 'update', 'Muslimah Gallery', 10, ''),
('229022016182400', '', 'Cokelat', 'Kemko', '174500', '184500', '300', 'Management Produk', '2016-02-29 13:13:21', 'update', 'Muslimah Gallery', 10, ''),
('229022016194138', '', 'Biru', 'Kemko', '200000', '200000', '300', 'Management Produk', '2016-02-29 13:13:45', 'update', 'Muslimah Gallery', 10, ''),
('229022016201403', '', 'Krem', 'Baju', '339500', '340500', '300', 'Management Produk', '2016-02-29 13:14:03', 'insert', 'Muslimah Gallery', 10, ''),
('229022016201403', '', 'Krem', 'Baju', '339500', '340500', '300', 'Management Produk', '2016-02-29 13:14:22', 'update', 'Muslimah Gallery', 10, ''),
('229022016201505', '', 'Grey', 'Kemko', '194500', '204500', '300', 'Management Produk', '2016-02-29 13:15:05', 'insert', 'Muslimah Gallery', 10, ''),
('229022016201505', '', 'Grey', 'Kemko', '194500', '204500', '300', 'Management Produk', '2016-02-29 13:15:20', 'update', 'Muslimah Gallery', 10, ''),
('229022016201505', '', 'Grey', 'Kemko', '194500', '204500', '300', 'Management Produk', '2016-02-29 13:15:58', 'update', 'Muslimah Gallery', 10, ''),
('229022016201505', '', 'Grey', 'Kemko', '194500', '204500', '300', 'Management Produk', '2016-02-29 13:16:16', 'update', 'Muslimah Gallery', 10, ''),
('229022016201701', '', 'Ungu', 'Kemko', '25500', '266500', '300', 'Management Produk', '2016-02-29 13:17:01', 'insert', 'Muslimah Gallery', 10, ''),
('229022016201701', '', 'Ungu', 'Kemko', '25500', '266500', '300', 'Management Produk', '2016-02-29 13:17:29', 'update', 'Muslimah Gallery', 10, ''),
('229022016201901', '', 'Coklat Kopi', 'Baju', '199500', '200500', '300', 'Management Produk', '2016-02-29 13:19:01', 'insert', 'Muslimah Gallery', 10, ''),
('229022016201945', '', 'Toska', 'Kemko', '234500', '244500', '300', 'Management Produk', '2016-02-29 13:19:45', 'insert', 'Muslimah Gallery', 10, ''),
('229022016201945', '', 'Toska', 'Kemko', '234500', '244500', '300', 'Management Produk', '2016-02-29 13:20:08', 'update', 'Muslimah Gallery', 10, ''),
('229022016201901', '', 'Coklat Kopi', 'Baju', '199500', '200500', '300', 'Management Produk', '2016-02-29 13:20:09', 'update', 'Muslimah Gallery', 10, ''),
('229022016201945', '', 'Toska', 'Kemko', '234500', '244500', '300', 'Management Produk', '2016-02-29 13:20:47', 'update', 'Muslimah Gallery', 10, ''),
('229022016202150', '', 'Grey', 'Kemko', '189500', '199500', '300', 'Management Produk', '2016-02-29 13:21:50', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202150', '', 'Grey', 'Kemko', '189500', '199500', '300', 'Management Produk', '2016-02-29 13:22:11', 'update', 'Muslimah Gallery', 10, ''),
('229022016202218', '', 'Regal Red', 'Baju', '309500', '310500', '300', 'Management Produk', '2016-02-29 13:22:18', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202218', '', 'Regal Red', 'Baju', '309500', '310500', '300', 'Management Produk', '2016-02-29 13:22:48', 'update', 'Muslimah Gallery', 10, ''),
('229022016202313', '', 'Cokelat Susu', 'Kemko', '189500', '199500', '300', 'Management Produk', '2016-02-29 13:23:13', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202313', '', 'Cokelat Susu', 'Kemko', '189500', '199500', '300', 'Management Produk', '2016-02-29 13:24:03', 'update', 'Muslimah Gallery', 10, ''),
('229022016202420', '', 'Fushia Pink', 'Baju', '199500', '200500', '300', 'Management Produk', '2016-02-29 13:24:20', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202420', '', 'Fushia Pink', 'Baju', '199500', '200500', '300', 'Management Produk', '2016-02-29 13:24:42', 'update', 'Muslimah Gallery', 10, ''),
('229022016202455', '', 'Navy', 'Kemko', '184500', '194500', '300', 'Management Produk', '2016-02-29 13:24:55', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202455', '', 'Navy', 'Kemko', '184500', '194500', '300', 'Management Produk', '2016-02-29 13:25:20', 'update', 'Muslimah Gallery', 10, ''),
('229022016202455', '', 'Navy', 'Kemko', '184500', '194500', '300', 'Management Produk', '2016-02-29 13:25:37', 'update', 'Muslimah Gallery', 10, ''),
('229022016202551', '', 'Coklat Kopi', 'Baju', '309500', '310500', '300', 'Management Produk', '2016-02-29 13:25:51', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202551', '', 'Coklat Kopi', 'Baju', '309500', '310500', '300', 'Management Produk', '2016-02-29 13:26:18', 'update', 'Muslimah Gallery', 10, ''),
('229022016202551', '', 'Coklat Kopi', 'Baju', '309500', '310500', '300', 'Management Produk', '2016-02-29 13:27:13', 'update', 'Muslimah Gallery', 10, ''),
('229022016202729', '', 'Putih', 'Kolo', '170000', '180000', '300', 'Management Produk', '2016-02-29 13:27:29', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202729', '', 'Putih', 'Kolo', '170000', '180000', '300', 'Management Produk', '2016-02-29 13:28:37', 'update', 'Muslimah Gallery', 10, ''),
('229022016202919', '', 'Coklat Susu', 'Baju', '161500', '162500', '300', 'Management Produk', '2016-02-29 13:29:19', 'insert', 'Muslimah Gallery', 10, ''),
('229022016202919', '', 'Coklat Susu', 'Baju', '161500', '162500', '300', 'Management Produk', '2016-02-29 13:30:27', 'update', 'Muslimah Gallery', 10, ''),
('229022016203127', '', 'Krem', 'Baju', '249500', '250500', '300', 'Management Produk', '2016-02-29 13:31:27', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203127', '', 'Krem', 'Baju', '249500', '250500', '300', 'Management Produk', '2016-02-29 13:31:55', 'update', 'Muslimah Gallery', 10, ''),
('229022016203224', '', 'Ungu', 'Kemko', '200000', '190000', '300', 'Management Produk', '2016-02-29 13:32:24', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203224', '', 'Ungu', 'Kemko', '200000', '190000', '300', 'Management Produk', '2016-02-29 13:32:50', 'update', 'Muslimah Gallery', 10, ''),
('229022016203224', '', 'Ungu', 'Kemko', '200000', '190000', '300', 'Management Produk', '2016-02-29 13:32:55', 'update', 'Muslimah Gallery', 10, ''),
('229022016203300', '', 'Classic Blue', 'Baju', '134500', '135500', '300', 'Management Produk', '2016-02-29 13:33:00', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203358', '', 'Grey', 'Kemko', '14500', '224500', '300', 'Management Produk', '2016-02-29 13:33:58', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203358', '', 'Grey', 'Kemko', '14500', '224500', '300', 'Management Produk', '2016-02-29 13:34:34', 'update', 'Muslimah Gallery', 10, ''),
('229022016203520', '', 'Putih', 'Kemko', '197500', '207500', '300', 'Management Produk', '2016-02-29 13:35:20', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203520', '', 'Putih', 'Kemko', '197500', '207500', '300', 'Management Produk', '2016-02-29 13:36:31', 'update', 'Muslimah Gallery', 10, ''),
('229022016203719', '', 'Biru', 'Kemko', '190000', '200000', '300', 'Management Produk', '2016-02-29 13:37:19', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203300', '', 'Classic Blue', 'Baju', '134500', '135500', '300', 'Management Produk', '2016-02-29 13:38:04', 'update', 'Muslimah Gallery', 10, ''),
('229022016203805', '', 'Burgundy', 'Kemko', '184500', '194500', '300', 'Management Produk', '2016-02-29 13:38:05', 'insert', 'Muslimah Gallery', 10, ''),
('229022016203719', '', 'Biru', 'Kemko', '190000', '200000', '300', 'Management Produk', '2016-02-29 13:39:04', 'update', 'Muslimah Gallery', 10, ''),
('229022016203805', '', 'Burgundy', 'Kemko', '184500', '194500', '300', 'Management Produk', '2016-02-29 13:39:23', 'update', 'Muslimah Gallery', 10, ''),
('229022016203927', '', 'Lichen', 'Baju', '299500', '300500', '300', 'Management Produk', '2016-02-29 13:39:27', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204020', '', 'Putih', 'Kemko', '204500', '214500', '300', 'Management Produk', '2016-02-29 13:40:20', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204020', '', 'Putih', 'Kemko', '204500', '214500', '300', 'Management Produk', '2016-02-29 13:41:02', 'update', 'Muslimah Gallery', 10, ''),
('229022016203927', '', 'Lichen', 'Baju', '299500', '300500', '300', 'Management Produk', '2016-02-29 13:41:12', 'update', 'Muslimah Gallery', 10, ''),
('229022016204145', '', 'Biru', 'Kemko', '189500', '199500', '300', 'Management Produk', '2016-02-29 13:41:45', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204145', '', 'Biru', 'Kemko', '189500', '199500', '300', 'Management Produk', '2016-02-29 13:42:13', 'update', 'Muslimah Gallery', 10, ''),
('229022016204257', '', 'Grey', 'Baju', '134500', '135500', '300', 'Management Produk', '2016-02-29 13:42:57', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204258', '', 'Dark blue', 'Kemko', '199500', '209500', '300', 'Management Produk', '2016-02-29 13:42:58', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204257', '', 'Grey', 'Baju', '134500', '135500', '300', 'Management Produk', '2016-02-29 13:43:15', 'update', 'Muslimah Gallery', 10, ''),
('229022016204258', '', 'Dark blue', 'Kemko', '199500', '209500', '300', 'Management Produk', '2016-02-29 13:43:31', 'update', 'Muslimah Gallery', 10, ''),
('229022016204258', '', 'Dark blue', 'Kemko', '199500', '209500', '300', 'Management Produk', '2016-02-29 13:43:53', 'update', 'Muslimah Gallery', 10, ''),
('229022016204524', '', 'Light blue', 'Kemko', '194500', '204500', '300', 'Management Produk', '2016-02-29 13:45:24', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204524', '', 'Light blue', 'Kemko', '194500', '204500', '300', 'Management Produk', '2016-02-29 13:45:44', 'update', 'Muslimah Gallery', 10, ''),
('229022016204630', '', 'Medium blue', 'Kemko', '174500', '184500', '300', 'Management Produk', '2016-02-29 13:46:30', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204630', '', 'Medium blue', 'Kemko', '174500', '184500', '300', 'Management Produk', '2016-02-29 13:47:03', 'update', 'Muslimah Gallery', 10, ''),
('229022016204744', '', 'Putih', 'Kerudung', '45500', '46500', '300', 'Management Produk', '2016-02-29 13:47:44', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204745', '', 'Light blue', 'Kemko', '169500', '179500', '300', 'Management Produk', '2016-02-29 13:47:45', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204745', '', 'Light blue', 'Kemko', '169500', '179500', '300', 'Management Produk', '2016-02-29 13:48:08', 'update', 'Muslimah Gallery', 10, ''),
('229022016204744', '', 'Putih', 'Kerudung', '45500', '46500', '300', 'Management Produk', '2016-02-29 13:48:51', 'update', 'Muslimah Gallery', 10, ''),
('229022016204916', '', 'Biru', 'Kolo', '193500', '203500', '300', 'Management Produk', '2016-02-29 13:49:16', 'insert', 'Muslimah Gallery', 10, ''),
('229022016204916', '', 'Biru', 'Kolo', '193500', '203500', '300', 'Management Produk', '2016-02-29 13:49:47', 'update', 'Muslimah Gallery', 10, ''),
('229022016205034', '', 'Cokelat Kopi', 'Kemko', '187500', '197500', '300', 'Management Produk', '2016-02-29 13:50:34', 'insert', 'Muslimah Gallery', 10, ''),
('229022016205034', '', 'Cokelat Kopi', 'Kemko', '187500', '197500', '300', 'Management Produk', '2016-02-29 13:50:57', 'update', 'Muslimah Gallery', 10, ''),
('229022016205034', '', 'Cokelat Kopi', 'Kemko', '187500', '197500', '300', 'Management Produk', '2016-02-29 13:51:06', 'update', 'Muslimah Gallery', 10, ''),
('229022016205144', '', 'Hijau Olive', 'Kemko', '249500', '259500', '300', 'Management Produk', '2016-02-29 13:51:44', 'insert', 'Muslimah Gallery', 10, ''),
('229022016205154', '', 'Peach Fuzz', 'Kerudung', '59500', '60500', '300', 'Management Produk', '2016-02-29 13:51:54', 'insert', 'Muslimah Gallery', 10, ''),
('229022016205144', '', 'Hijau Olive', 'Kemko', '249500', '259500', '300', 'Management Produk', '2016-02-29 13:52:04', 'update', 'Muslimah Gallery', 10, ''),
('229022016205154', '', 'Peach Fuzz', 'Kerudung', '59500', '60500', '300', 'Management Produk', '2016-02-29 13:52:38', 'update', 'Muslimah Gallery', 10, ''),
('229022016205425', '', 'Violet', 'Selendang', '94500', '95500', '300', 'Management Produk', '2016-02-29 13:54:25', 'insert', 'Muslimah Gallery', 10, ''),
('229022016205425', '', 'Violet', 'Selendang', '94500', '95500', '300', 'Management Produk', '2016-02-29 13:55:54', 'update', 'Muslimah Gallery', 10, ''),
('229022016205722', '', 'Arabesque', 'Selendang', '29500', '30500', '300', 'Management Produk', '2016-02-29 13:57:22', 'insert', 'Muslimah Gallery', 10, ''),
('229022016205722', '', 'Arabesque', 'Selendang', '29500', '30500', '300', 'Management Produk', '2016-02-29 13:58:05', 'update', 'Muslimah Gallery', 10, ''),
('229022016205956', '', 'Dark Toska', 'Kerudung', '76500', '77500', '300', 'Management Produk', '2016-02-29 13:59:56', 'insert', 'Muslimah Gallery', 10, ''),
('229022016205956', '', 'Dark Toska', 'Kerudung', '76500', '77500', '300', 'Management Produk', '2016-02-29 14:00:18', 'update', 'Muslimah Gallery', 10, ''),
('2222809', '', '', '', NULL, NULL, '', 'Management Produk', '2016-02-29 15:04:58', 'delete', 'Bobby Chahya', 0, ''),
('2222829', '', '', '', NULL, NULL, '', 'Management Produk', '2016-02-29 15:05:00', 'delete', 'Bobby Chahya', 0, ''),
('2147483647', '', '', '', NULL, NULL, '', 'Management Produk', '2016-02-29 15:05:15', 'delete', 'Bobby Chahya', 0, ''),
('2222710', '', '', '', NULL, NULL, '', 'Management Produk', '2016-02-29 15:05:21', 'delete', 'Bobby Chahya', 0, ''),
('229022016180515', '', 'Merah Ati', 'Kemko', '219500', '229500', '300', 'Management Produk', '2016-02-29 15:30:57', 'update', 'Muslimah Gallery', 10, ''),
('229022016180626', '', 'Merah Ati', 'Kemko', '229500', '239500', '300', 'Management Produk', '2016-02-29 15:31:47', 'update', 'Muslimah Gallery', 10, ''),
('201032016234642', '', 'Silver', '', '14950000', '15000000', '1', 'Management Produk', '2016-03-01 16:46:42', 'insert', 'Rizky Tahir', 2, ''),
('201032016234642', '', 'Silver', '', '15950000', '16000000', '1', 'Management Produk', '2016-03-01 18:17:03', 'update', 'Rizky Tahir', 14, ''),
('202032016011832', '', 'White, Black', '', '', '2300000', '1', 'Management Produk', '2016-03-01 18:18:32', 'insert', 'Cimahi Creative Assocation', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id_kategori` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL DEFAULT '',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id_kategori`, `nama`, `service_time`, `service_action`, `service_user`) VALUES
(1, 'Muslim', '2016-02-26 15:11:37', 'insert', '91456331075'),
(5, 'Bahan Baku Pangan', '2016-02-26 15:16:06', 'insert', '91456331075'),
(6, 'Liquid', '2016-02-26 15:16:15', 'insert', '91456331075');

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori_relation`
--

CREATE TABLE `produk_kategori_relation` (
  `id_produk` varchar(50) NOT NULL,
  `id_kategori` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kategori_relation`
--

INSERT INTO `produk_kategori_relation` (`id_produk`, `id_kategori`) VALUES
('2147483647', 1),
('2222620', 1),
('2222710', 1),
('2222809', 1),
('2222829', 1),
('229022016174200', 1),
('229022016174655', 1),
('229022016174939', 1),
('229022016175129', 1),
('229022016175240', 1),
('229022016175243', 1),
('229022016175420', 1),
('229022016175559', 1),
('229022016175725', 1),
('229022016175732', 1),
('229022016175828', 1),
('229022016180000', 1),
('229022016180103', 1),
('229022016180147', 1),
('229022016180259', 1),
('229022016180422', 1),
('229022016180431', 1),
('229022016180515', 1),
('229022016180538', 1),
('229022016180626', 1),
('229022016180746', 1),
('229022016180849', 1),
('229022016180945', 1),
('229022016181049', 1),
('229022016181305', 1),
('229022016181310', 1),
('229022016181439', 1),
('229022016181602', 1),
('229022016181645', 1),
('229022016181806', 1),
('229022016181926', 1),
('229022016182114', 1),
('229022016182217', 1),
('229022016182337', 1),
('229022016182400', 1),
('229022016194138', 1),
('229022016195341', 1),
('229022016195505', 1),
('229022016195713', 1),
('229022016200131', 1),
('229022016201403', 1),
('229022016201505', 1),
('229022016201701', 1),
('229022016201901', 1),
('229022016201945', 1),
('229022016202150', 1),
('229022016202218', 1),
('229022016202313', 1),
('229022016202420', 1),
('229022016202455', 1),
('229022016202551', 1),
('229022016202729', 1),
('229022016202919', 1),
('229022016203127', 1),
('229022016203224', 1),
('229022016203300', 1),
('229022016203358', 1),
('229022016203520', 1),
('229022016203719', 1),
('229022016203805', 1),
('229022016203927', 1),
('229022016204020', 1),
('229022016204145', 1),
('229022016204257', 1),
('229022016204258', 1),
('229022016204524', 1),
('229022016204630', 1),
('229022016204744', 1),
('229022016204745', 1),
('229022016204916', 1),
('229022016205034', 1),
('229022016205144', 1),
('229022016205154', 1),
('229022016205425', 1),
('229022016205722', 1),
('229022016205956', 1),
('201032016234642', 5),
('202032016011832', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_answer_question`
--

CREATE TABLE `user_answer_question` (
  `id_user` varchar(25) NOT NULL,
  `id_pertanyaan` int(10) NOT NULL,
  `jawaban` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer_question`
--

INSERT INTO `user_answer_question` (`id_user`, `id_pertanyaan`, `jawaban`) VALUES
('91456516586', 1, 'Ya'),
('91456516586', 2, 'Tidak'),
('91456516668', 1, 'Ya'),
('91456516668', 2, 'Ya'),
('91456734724', 1, 'Tidak'),
('91456734724', 2, 'Ya'),
('91456763136', 1, 'Ya'),
('91456763136', 2, 'Tidak'),
('91456822446', 1, 'Ya'),
('91456822446', 2, 'Ya'),
('91456836560', 1, 'Ya'),
('91456836560', 2, 'Ya'),
('91456971968', 1, 'Ya'),
('91456971968', 2, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id_user` varchar(25) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `pekerjaan` int(10) NOT NULL,
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id_user`, `nama_lengkap`, `nama_depan`, `nama_belakang`, `alamat`, `email`, `telp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pekerjaan`, `service_time`, `service_action`, `service_user`) VALUES
('91456331037', 'Rizky&nbsp;Tahir', 'Rizky', 'Tahir', 'Cimahi', 'tahier.gazerock@gmail.com', '08579389375', NULL, NULL, 'l', 0, '2016-03-03 18:15:26', 'insert', '91456331037'),
('91457028614', 'Admin&nbsp;Koperasi', 'Admin', 'Koperasi', 'Jl. HMS Mintaredja, Gd. BITC lt. 4, Baros, Cimahi, Indonesia', 'admin@andes9.com', '08579389375', NULL, NULL, 'l', 0, '2016-03-03 18:10:14', 'insert', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id_user` varchar(50) NOT NULL,
  `koperasi` varchar(50) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status_active` int(10) DEFAULT NULL,
  `session_token` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `level` int(10) NOT NULL,
  `foto` text NOT NULL,
  `service_time` datetime DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL,
  `komunitas` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id_user`, `koperasi`, `username`, `password`, `status_active`, `session_token`, `last_login`, `level`, `foto`, `service_time`, `service_action`, `service_user`, `komunitas`) VALUES
('91456331037', '0', 'rftahir', '55232d77a80e247b1d88a092785d05e455301037', 1, '51457036249', '2016-03-04 03:17:29', 1, '8c167f849f7577bb360a0cf302075041.jpg', '2016-03-04 01:15:26', 'insert', '91456331037', NULL),
('91456822763', '81456822763', 'aksara', 'F+UoYNLqTogpzKmV2CSPXaq87WH8Rmxlyfa+8g3l9xp71+c3xX9ZdfM9dKEEZgKk/bDVm0hZ2pV/3gUdRaErhw==', 1, '51456894408', '2016-03-02 11:53:28', 2, '', '2016-03-01 19:40:10', 'update', '91456822763', NULL),
('91456524588', '81456524588', 'grupictures', 'he+C4l5LKG2wvt/zJYulruU4eODiTUk1H8kGq313U8u+06Mtxy7emC2qTyBZjxAN24rWNDhLAvNbfGT7EzmmBQ==', 1, NULL, NULL, 2, '', '2016-02-27 05:09:58', 'insert', '91456331037', NULL),
('91456507703', '81456507703', 'cca', 'M78KhMMdA/aaJyf+afSiBiIQiJ0VIk0JUQAToqOsAhJka1nY6ooLLqHGRqwANepFWjwTSINaywwuLX0Rvcq7MQ==', 1, '51456973504', '2016-03-03 09:51:44', 2, '32e8485397651a6d723bc4a2e7fd3425.png', '2016-03-02 03:19:37', 'update', '91456507703', NULL),
('91456741937', '81456741937', 'geraimuslim', 'AjzPQn3u1Q5w2PMfWAQFfmXt3FOeZrNqMQLaPgDFMOpm4foF9f9JI5iEN/UU4LT0eyanzZ/weWZOGrhHgUwMWQ==', 1, '51456763264', '2016-02-29 23:27:44', 2, '', '2016-02-29 17:32:17', 'insert', '91456331075', NULL),
('91456847241', '81456847241', 'karen', 'DqMTb+n/T5hlLuQJ6WKeiIEPmasnyQuwekxgad/9KQH2UHp8KRsSJA/QTj+Gkzwv4zxdDiWwqMCoy9Rs3Ybo4A==', 1, NULL, NULL, 2, '', '2016-03-01 22:47:21', 'insert', '91456331037', NULL),
('91457028614', '', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, '51457028857', '2016-03-04 01:14:17', 1, '', '2016-03-04 01:10:14', 'insert', '91456331037', NULL),
('91456848348', '81456848348', 'bara', '9EmhGkhkaRDbnCF6blPIx6ZpglQireist1jVZxHoEjs0ILwYlVIKQyEfixRj11cXRmDl9Q7HhZKqlANdcHOoRw==', 1, '51456848975', '2016-03-01 23:16:15', 2, '', '2016-03-01 23:05:48', 'insert', '91456507703', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_level` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_level`, `nama`, `service_time`, `service_action`, `service_user`) VALUES
(3, 'Anggota', '2016-02-23 11:34:20', 'insert', ''),
(1, 'Admin', '2016-02-23 11:34:31', 'insert', ''),
(2, 'Koperasi', '2016-02-24 19:51:48', 'insert', '91456331037'),
(4, 'Komunitas', NULL, '', ''),
(5, 'Anggota Komunitas', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_question`
--

CREATE TABLE `user_question` (
  `id_pertanyaan` int(10) NOT NULL,
  `pertanyaan` text,
  `service_time` datetime DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_question`
--

INSERT INTO `user_question` (`id_pertanyaan`, `pertanyaan`, `service_time`, `service_user`, `service_action`) VALUES
(1, 'Apakah memiliki kendaraan bermotor?', NULL, NULL, NULL),
(2, 'Apakah anda memiliki barang elektronik?', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komunitas`
--
ALTER TABLE `komunitas`
  ADD PRIMARY KEY (`id_komunitas`);

--
-- Indexes for table `konten_agenda`
--
ALTER TABLE `konten_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `konten_berita`
--
ALTER TABLE `konten_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `konten_compro`
--
ALTER TABLE `konten_compro`
  ADD PRIMARY KEY (`id_compro`);

--
-- Indexes for table `konten_event`
--
ALTER TABLE `konten_event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `koperasi`
--
ALTER TABLE `koperasi`
  ADD PRIMARY KEY (`id_koperasi`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `fk_foto_produk` (`id_produk`);

--
-- Indexes for table `produk_history`
--
ALTER TABLE `produk_history`
  ADD KEY `fk_history_produk` (`id_produk`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk_kategori_relation`
--
ALTER TABLE `produk_kategori_relation`
  ADD KEY `fk_relation_produk` (`id_produk`),
  ADD KEY `fk_relation_kategori` (`id_kategori`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD KEY `fk_detail_user` (`id_user`),
  ADD KEY `fk_detail_pekerajaan` (`pekerjaan`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_user_koperasi` (`koperasi`),
  ADD KEY `fk_user_level` (`level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `user_question`
--
ALTER TABLE `user_question`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konten_agenda`
--
ALTER TABLE `konten_agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konten_berita`
--
ALTER TABLE `konten_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konten_compro`
--
ALTER TABLE `konten_compro`
  MODIFY `id_compro` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konten_event`
--
ALTER TABLE `konten_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produk_foto`
--
ALTER TABLE `produk_foto`
AUTO_INCREMENT=2147483648;
--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_question`
--
ALTER TABLE `user_question`
  MODIFY `id_pertanyaan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk_history`
--
ALTER TABLE `produk_history`
  ADD CONSTRAINT `fk_history_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `produk_kategori_relation`
--
ALTER TABLE `produk_kategori_relation`
  ADD CONSTRAINT `fk_relation_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `produk_kategori` (`id_kategori`),
  ADD CONSTRAINT `fk_relation_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
