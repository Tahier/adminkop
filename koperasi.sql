-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2016 at 05:20 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `koperasi`
--

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
  `service_users` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koperasi`
--

INSERT INTO `koperasi` (`id_koperasi`, `nama`, `status_active`, `service_time`, `service_action`, `service_users`) VALUES
('81456252551', 'Pijar International', 1, '2016-02-23 18:36:08', 'update', ''),
('81456252557', 'Nirleka Studios', 0, '2016-02-25 03:00:16', 'delete', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` varchar(25) NOT NULL,
  `nama` varchar(250) NOT NULL DEFAULT '',
  `status_active` int(10) NOT NULL DEFAULT '1',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT '',
  `service_users` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama`, `status_active`, `service_time`, `service_action`, `service_users`) VALUES
('61456252528', 'Programmer', 1, '2016-02-23 18:35:37', 'update', ''),
('61456369508', 'DBA', 0, '2016-02-25 03:05:42', 'delete', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `desk` text,
  `warna` varchar(100) NOT NULL DEFAULT '',
  `tipe` varchar(100) NOT NULL DEFAULT '',
  `berat` varchar(11) NOT NULL DEFAULT '',
  `price_n` int(10) NOT NULL DEFAULT '0',
  `price_s` int(10) NOT NULL DEFAULT '0',
  `qty` int(10) NOT NULL DEFAULT '0',
  `terjual` int(10) NOT NULL DEFAULT '0',
  `status_active` varchar(1) NOT NULL DEFAULT '1',
  `user` varchar(100) NOT NULL DEFAULT '',
  `service_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `desk`, `warna`, `tipe`, `berat`, `price_n`, `price_s`, `qty`, `terjual`, `status_active`, `user`, `service_time`, `service_action`, `service_user`) VALUES
('1', 'Polo shirt', 'baju polo cowok', 'hitam', 'Baju', '1', 80000, 60000, 50, 15, '0', '91456331037', '2016-02-25 09:55:11', 'delete', '91456331037'),
('21456391223', 'iPhone', 'iPhone', 'Putih, Hitam', '4s 64 GB', '1', 2500000, 230000, 5, 47, '1', '91456331037', '2016-02-25 09:52:56', 'update', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_foto` varchar(25) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `foto_path` varchar(255) NOT NULL DEFAULT '',
  `status_active` int(10) NOT NULL DEFAULT '1',
  `service_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `service_action` varchar(100) DEFAULT '0',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_foto`
--

INSERT INTO `produk_foto` (`id_foto`, `id_produk`, `foto_path`, `status_active`, `service_time`, `service_action`, `service_user`) VALUES
('1', '1', 'http://localhost/adminkop/assets/images/produk/787bf8f618a0d4884d5b4e16d1a9cc05.png', 1, '2016-02-25 05:14:59', 'insert', '91456331037'),
('31456387894', '1', 'http://localhost/adminkop/assets/images/produk/ba129553b333e1a645ddbfd30188b54f.png', 0, '2016-02-25 08:25:08', 'delete', NULL),
('31456388266', '1', 'http://localhost/adminkop/assets/images/produk/4b9d968a72c6273153f4a03ca1efc8e1.png', 0, '2016-02-25 08:24:52', 'delete', NULL),
('31456388704', '1', 'http://localhost/adminkop/assets/images/produk/999cfb28754f5151daafc99774d13501.png', 0, '2016-02-25 08:26:11', 'delete', NULL),
('31456388768', '1', 'http://localhost/adminkop/assets/images/produk/b1bcd63d4383b1797623535db14bc50e.png', 1, '2016-02-25 08:26:08', 'insert', NULL),
('31456392086', '21456391223', 'http://localhost/adminkop/assets/images/produk/7bde88bc4ca458ff0b46660bbdcf26e4.png', 1, '2016-02-25 09:21:26', 'insert', '91456331037'),
('31456392099', '21456391223', 'http://localhost/adminkop/assets/images/produk/f032b709a53a3ad21976a4335e7ecf27.jpg', 1, '2016-02-25 09:21:39', 'insert', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `produk_history`
--

CREATE TABLE `produk_history` (
  `id_produk` varchar(100) NOT NULL,
  `price_n` varchar(100) NOT NULL DEFAULT '',
  `price_s` varchar(100) NOT NULL,
  `warna` varchar(100) DEFAULT '',
  `tipe` varchar(100) DEFAULT '',
  `berat` varchar(100) DEFAULT '',
  `ket` text,
  `service_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `service_action` varchar(100) NOT NULL DEFAULT '',
  `service_user` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_history`
--

INSERT INTO `produk_history` (`id_produk`, `price_n`, `price_s`, `warna`, `tipe`, `berat`, `ket`, `service_time`, `service_action`, `service_user`) VALUES
('21456391223', '2400000', '2250000', 'Putih, Hitam', '4s', '1', NULL, '2016-02-25 09:07:03', 'insert', '91456331037'),
('21456391223', '2500000', '230000', 'Putih, Hitam', '4s', '1', NULL, '2016-02-25 09:42:15', 'update', '91456331037'),
('21456391223', '2500000', '230000', 'Putih, Hitam', '4s 64 GB', '1', NULL, '2016-02-25 09:45:18', 'update', '91456331037'),
('21456391223', '2500000', '230000', 'Putih, Hitam', '4s 64 GB', '1', NULL, '2016-02-25 09:45:26', 'update', '91456331037'),
('1', '', '', '', '', '', NULL, '2016-02-25 09:55:11', 'delete', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id_kategori` varchar(25) NOT NULL,
  `nama` varchar(30) NOT NULL DEFAULT '',
  `status_active` int(10) NOT NULL DEFAULT '1',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id_kategori`, `nama`, `status_active`, `service_time`, `service_action`, `service_user`) VALUES
('1', 'Fashion Pria', 1, '2016-02-25 10:17:10', 'update', '91456331037'),
('2', 'Elektronik', 0, '2016-02-25 10:19:43', 'update', '91456331037'),
('41456394975', 'Furniture', 1, '2016-02-25 10:09:35', 'insert', '91456331037');

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori_relation`
--

CREATE TABLE `produk_kategori_relation` (
  `id_produk` varchar(25) NOT NULL,
  `id_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kategori_relation`
--

INSERT INTO `produk_kategori_relation` (`id_produk`, `id_kategori`) VALUES
('1', '1'),
('21456391223', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id_user` varchar(25) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id_user`, `nama_lengkap`, `alamat`, `email`, `telp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pekerjaan`, `foto`, `service_time`, `service_action`, `service_user`) VALUES
('91456331037', 'Rizky Tahir', 'Sukabumi', 'tahier.gazerock@gmail.com', '08579389375', NULL, NULL, 'l', '61456252528', '', '2016-02-24 16:23:57', 'insert', 'rftahir'),
('91456331075', 'Bobby Chahya', 'Sukabumi', 'rizkytahir96@gmail.com', '12345555', NULL, NULL, 'l', '61456252528', '', '2016-02-24 16:24:35', 'insert', 'bobyboby');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id_user` varchar(25) NOT NULL,
  `koperasi` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status_active` int(10) DEFAULT NULL,
  `session_token` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `level` varchar(25) NOT NULL,
  `service_time` datetime DEFAULT NULL,
  `service_action` varchar(100) DEFAULT NULL,
  `service_user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id_user`, `koperasi`, `username`, `password`, `status_active`, `session_token`, `last_login`, `level`, `service_time`, `service_action`, `service_user`) VALUES
('91456331037', '81456252551', 'rftahir', 'amNwa4vaykUSP4e4c2oGQAVx+A+Gg83qhwn5ZMGzDyhj2fuIUu183EGQDp9ol/yxXDgU/joGrJvpsjZnrHMJeA==', 1, '51456392211', '2016-02-25 16:23:31', '11456252460', '2016-02-24 23:23:57', 'insert', 'rftahir'),
('91456331075', '81456252551', 'bobyboby', 'XobCkT0I3hrjM4OUaInmE5iBsd0csmW4jqZ3if54r/Yihf4Q1Y6H3PY0B63Bx+NFuyT+fyiOZWw+rtnj9KjlYA==', 1, NULL, '0000-00-00 00:00:00', '11456252471', '2016-02-24 23:24:35', 'insert', 'bobyboby');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_level` varchar(25) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `status_active` int(10) NOT NULL DEFAULT '1',
  `service_time` timestamp NULL DEFAULT NULL,
  `service_action` varchar(100) DEFAULT '',
  `service_user` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_level`, `nama`, `status_active`, `service_time`, `service_action`, `service_user`) VALUES
('11456252460', 'Member', 1, '2016-02-23 18:34:20', 'insert', ''),
('11456252471', 'Admin', 1, '2016-02-23 18:34:31', 'insert', ''),
('11456368708', 'Koperasi', 1, '2016-02-25 02:51:48', 'insert', '91456331037'),
('11456368714', 'Database Administrator', 0, '2016-02-25 02:52:05', 'delete', '91456331037');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
AUTO_INCREMENT=2147483648;