-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 07:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_awanvape`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `nm_admin` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nm_admin`, `username`, `email`, `password`) VALUES
(1, 'administrator', 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_detail_order` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `jml_order` int(3) NOT NULL,
  `berat` int(10) NOT NULL,
  `subberat` int(10) NOT NULL,
  `subharga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_detail_order`, `id_order`, `id_produk`, `nm_produk`, `harga`, `jml_order`, `berat`, `subberat`, `subharga`) VALUES
(62, 97, 41, 'The One Donuts', 200000, 1, 3, 3, 200000),
(63, 98, 42, ' Tool Kit ON V1', 60000, 1, 5, 5, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kat_pos`
--

CREATE TABLE `tbl_kat_pos` (
  `id_kategori` int(10) NOT NULL,
  `nm_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kat_produk`
--

CREATE TABLE `tbl_kat_produk` (
  `id_kategori` int(10) NOT NULL,
  `nm_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kat_produk`
--

INSERT INTO `tbl_kat_produk` (`id_kategori`, `nm_kategori`) VALUES
(1, 'Mod'),
(2, 'Io'),
(3, 'Rda'),
(11, 'Liquid'),
(12, 'kapas'),
(13, 'Toolkit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `nm_penerima` varchar(30) NOT NULL DEFAULT '',
  `telp` varchar(13) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `alamat_pengiriman` varchar(50) NOT NULL,
  `tgl_order` date NOT NULL,
  `ongkir` int(10) NOT NULL,
  `total_order` int(10) NOT NULL,
  `status` varchar(30) DEFAULT 'Belum Dibayar',
  `no_resi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_pelanggan`, `nm_penerima`, `telp`, `provinsi`, `kota`, `kode_pos`, `alamat_pengiriman`, `tgl_order`, `ongkir`, `total_order`, `status`, `no_resi`) VALUES
(97, 1, 'arif', '0858', '6', '151', 12345, 'jl cikole km 2', '2024-05-13', 750000, 950000, 'Produk Dikirim', '123'),
(98, 1, 'arif', '0858', '6', '151', 32113, 'sasda', '2024-05-13', 750000, 810000, 'Sudah Dibayar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nm_pelanggan` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nm_pelanggan`, `username`, `email`, `password`) VALUES
(1, 'Arif Nur R', 'arifnur', 'arif@gmail.com', '123'),
(2, 'Arief Gilang', 'ariefgilan', 'arief@gmail.com', '123'),
(4, ' Bintang Reny', 'Bintang', 'Bintangre10@gmail.com', 'Kepo56789_'),
(5, ' Rizal Wijoyo', 'Rizal', 'Wijal16@gmail.com', 'Kambing123'),
(6, ' aris Juliyanto', 'aris', 'aris@gmail.com', '12345'),
(7, ' Wisnu', 'Ajik', 'wisnu@gmail.com', '123456'),
(8, ' user', 'user', 'user@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `nm_pembayar` varchar(30) NOT NULL,
  `nm_bank` varchar(20) NOT NULL,
  `jml_pembayaran` int(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_order`, `nm_pembayar`, `nm_bank`, `jml_pembayaran`, `tgl_bayar`, `bukti_transfer`) VALUES
(17, 97, 'arif', 'bca', 950000, '2024-05-13', 'activ-checkout.drawio.png'),
(18, 98, 'arif', 'bca', 810000, '2024-05-13', 'Activity pesanan masuk admin.drawio.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `id_pos` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `berat` int(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nm_produk`, `berat`, `harga`, `stok`, `gambar`, `deskripsi`) VALUES
(36, 1, 'Mod Hexome V1', 4, 1499000, 11, '1.jpg', '<ul>\r\n<li style=\"text-align: left;\">Desain bermacam-macam</li>\r\n<li style=\"text-align: left;\">Kualitas dapat di jamin</li>\r\n<li style=\"text-align: left;\">Dus Book</li>\r\n<li style=\"text-align: left;\">Bergaransi 3 Bulan</li>\r\n<li style=\"text-align: left;\">Finishing : fabric</li>\r\n<li style=\"text-align: left;\">Dimensi produk : 8 x 6 x 5 cm</li>\r\n</ul>\r\n<p>Kelebihan dari HexOhm Anodized yang membuat banyak vapers tertarik ada pada kemampuan firing-nya yang ganas. Kamu bisa merasakan sensasi yang berbeda karena sensasinya powerful tetapi tetap terasa smooth. Kamu bisa beli jika sudah memenuhi min. usia.</p>'),
(37, 1, 'Ursa Pocket', 1, 626676, 20, '2.jpg', '<ul>\r\n<li>Merek: Lost Vape</li>\r\n<li>Dimensi: 95.2 * 46.2 * 19mm.</li>\r\n<li>Kapasitas cairan:2.5ml.</li>\r\n<li>Baterai: 1200mAh.</li>\r\n<li>Jangkauan daya: 5-30 watt.</li>\r\n<li>Bahan: Paduan aluminium dan ABS.</li>\r\n</ul>\r\n<p>Satu-satunya perangkat Pod gaming yang tersedia yang memiliki fitur puff play dan memberikan pengalaman vaping yang unik!Produk ini memiliki baterai 1200mAh, layar OLED 1,7 inci, dan antarmuka gamepad retro yang mudah digunakan,URSA Pocket memiliki kartrid URSA yang sama dengan perangkat pod vape Lost sebelumnya dan dirancang untuk mendukung output maksimal 30W. Bagian belakang perangkat adalah panel desain Retro x Cyber untuk menawarkan keunikan dan gaya jalanan.</p>'),
(39, 1, 'Ursa Baby', 2, 200000, 25, '4.jpg', '<ul>\r\n<li>Body Material: Transparent PC</li>\r\n<li>Charging: Type-C</li>\r\n<li>Dimensi: 47 * 16 * 68.5 mm</li>\r\n<li>Kapasitas Baterai: 800mAh</li>\r\n<li>Voltage: 3.0V-4.2V</li>\r\n<li>Kapasitas Baterai: 800mAh</li>\r\n<li>Kapasitas Cartridge: 3 ml</li>\r\n</ul>\r\n<p>Ursa Baby Pod Kit memiliki desain ramping dengan dimensi 47 x 16 x 68.5 mm. Pod kit ini tersedia dalam 6 warna, tersedia juga led untuk indikator baterai. Pod kit ini didukung oleh baterai internal yang dapat diisi ulang melalui port USB-C bagian bawah.</p>'),
(40, 1, 'SMOK RPM80 Kit', 3, 384000, 17, '5.jpg', '<ul>\r\n<li>Size: 109 x 31.55 x 26 mm.</li>\r\n<li>Battery Capacity: 3000mAh built-in.</li>\r\n<li>E-Juice Capacity: 5ml.</li>\r\n</ul>\r\n<p>RPM80 Kit, kit mod pod yang ramping dan mudah digenggam, ditenagai oleh baterai internal 3000 mAh dengan output maksimum 80W. Dilengkapi dengan layar 0,96 inci untuk menghadirkan antarmuka pengguna yang ringkas dan informatif. Dan digerakkan oleh chipset IQ-80, ia menawarkan berbagai fitur cerdas dan perlindungan fungsional. Sedangkan untuk kartrid pod-nya, ada dua jenis pod: Pod RPM80 RPM Dengan RPM Mesh Coil 0.4ohm dan Pod RGC RPM80 Dengan Conical Mesh Coil 0.17ohm, yang akan memenuhi kebutuhan Anda dengan lebih baik. Selain itu, keduanya dapat menampung e-jus 5ml dengan desain pengisian atas untuk pengoperasian yang mudah. Tersedia dalam 7 warna.</p>'),
(41, 11, 'The One Donuts', 3, 200000, 17, '6.jpg', '<ul>\r\n<li>Volume : 60ml</li>\r\n<li>Nicotine : 3mg / 6mg</li>\r\n<li>PG/VG : 30/70</li>\r\n</ul>\r\n<p>100% Original Brewed By : Beard USA</p>'),
(42, 13, ' Tool Kit ON V1', 5, 60000, 18, '7.jpg', '<ul>\r\n<li>Alat coiling minimalis dan lengkap</li>\r\n<li>Tang potong</li>\r\n<li>Coil:jig</li>\r\n<li>Gunting</li>\r\n<li>Tweezer</li>\r\n<li>Pinset</li>\r\n<li>Obeng type: T</li>\r\n</ul>'),
(43, 2, 'Manto AIO Plus', 2, 310000, 17, '8.jpg', '<ul>\r\n<li>Output : 1-80W</li>\r\n<li>Input Voltage : 3.5-4.2V</li>\r\n<li>Dimension : 82x27x48mm</li>\r\n<li>Material : ABS+PC+PCTG</li>\r\n</ul>\r\n<p>Manto AIO Plus yang merupakan sebuah device all in one dari Rincoe yang merupakan versi tingkat lanjut dari Manto AIO kit. Untuk memaksimalkan daya tahannya, Manto AIO Plus mendukung satu baterai 18650. Dibekali oleh chip Manto 2.0, Manto AIO Plus mampu menciptakan output power sebesar 80W.</p>'),
(44, 11, 'Upods Cheesetart Taro 60ml by Upods Id', 5, 125000, 15, '9.jpg', '<ul>\r\n<li>Upods Creamy Cheesetart Taro *100% Authentic by Upods</li>\r\n<li>Flavour : Cheesetart with Taro Cream</li>\r\n<li>Volume : 60ML</li>\r\n</ul>\r\n<p>Notes : - Please note that the pictures are for reference only, there might be minor changes without notice - Warranty only available to BRAND Company - The model or types of packing may be subject to change without notice</p>'),
(45, 13, 'Vamoce Tool Kit DIY By VAMOCE', 5, 107865, 24, '10.jpg', '<ul>\r\n<li>Plier</li>\r\n<li>Muji Organic Cotton</li>\r\n<li>A Roll of For KA1 Wire</li>\r\n<li>in 1 Ceramic Twezzer</li>\r\n<li>Stainless Steel Cutter</li>\r\n<li>Coil Brusher</li>\r\n<li>Vape Bands</li>\r\n<li>Screwdrive</li>\r\n<li>Coil Jig</li>\r\n</ul>'),
(55, 3, 'Authentic Reload X RDA from Reload Vapor USA', 1, 107865, 20, '11.jpg', '<ul>\r\n<li>Authentic Reload X RDA from Reload Vapor USA</li>\r\n<li>Berat: 0.2 kg</li>\r\n</ul>'),
(56, 3, 'NITROUS RDA 22MM DUAL CAP ONLY', 1, 380000, 18, '12.jpg', '<ul>\r\n<li>Material : Stainless Steel</li>\r\n<li>Size : 22 x 26mm (Beauty Ring)</li>\r\n<li>Double coil</li>\r\n<li>Capacity : 1,5ml</li>\r\n</ul>'),
(57, 12, 'Kendo Vape Cotton Organic', 1, 55000, 26, '13.jpg', '<ul>\r\n<li>100% Japanese Organic Cotton</li>\r\n<li>Tidak pakai pemutih</li>\r\n<li>Bebas pestisida</li>\r\n<li>Tidak berasa kapas waktu di vaping</li>\r\n<li>Lebih tahan panas dibanding kapas jepang biasa (tidak mudah gosong)</li>\r\n<li>Daya serap liquid lebih tinggi</li><li>Daya tahan menyimpan liquid lebih lama</li>\r\n</ul>\r\n<p>dengan Berat: 0.08 kg, langsung dapat digunakan, tdk perlu direbus lagi. Cocok digunakan untuk RDA & RDTA, baik utk flavor chaser maupun cloud chaser.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_detail_order`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tbl_kat_pos`
--
ALTER TABLE `tbl_kat_pos`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kat_produk`
--
ALTER TABLE `tbl_kat_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_order2` (`id_order`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`id_pos`),
  ADD KEY `id_kat_pos` (`id_kategori`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id_detail_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_kat_pos`
--
ALTER TABLE `tbl_kat_pos`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kat_produk`
--
ALTER TABLE `tbl_kat_produk`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `id_pos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `id_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_produk` FOREIGN KEY (`id_produk`) REFERENCES `tbl_produk` (`id_produk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD CONSTRAINT `id_order2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD CONSTRAINT `id_kat_pos` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kat_pos` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kat_produk` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
