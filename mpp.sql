-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 10:03 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpp`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` char(1) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `headline`, `status`) VALUES
(426, 'Web Mal Pelayanan Publik Kab. Batang yang Baru', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br />\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', '1.png', 3, 'Y', '1'),
(427, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020', 'Senin', '2018-08-20', '03:58:47', '1x.jpg', 3, 'Y', '1'),
(429, 'Web Mal Pelayanan Publik 2', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br /> 3\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', '2.png', 3, 'Y', '1'),
(430, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020 3', 'Senin', '2018-08-20', '03:58:47', '4.jpg', 3, 'Y', '1'),
(1, 'Web Mal Pelayanan Publik Kab. Batang yang Baru', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br /> 3\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', 'mpp1.jpg', 3, 'Y', '1'),
(431, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020 4', 'Senin', '2018-08-20', '03:58:47', 'mpp2.jpg', 3, 'Y', '1'),
(432, 'Web Mal Pelayanan Publik 5', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br />5\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', 'mpp5.jpg', 3, 'Y', '1'),
(433, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020 6', 'Senin', '2018-08-20', '03:58:47', 'mpp6.jpg', 3, 'Y', '1'),
(2, 'Web Mal Pelayanan Publik Kab. Batang yang Baru', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br />7\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', 'mpp8.jpg', 3, 'Y', '1'),
(3, 'Web Mal Pelayanan Publik 2', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br /> 8\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', 'mpp8.jpg', 3, 'Y', '1'),
(434, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020 9', 'Senin', '2018-08-20', '03:58:47', 'mpp9.jpg', 3, 'Y', '1'),
(4, 'Web Mal Pelayanan Publik Kab. Batang yang Baru', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br /> 10\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', 'mpp11.jpg', 3, 'Y', '1'),
(5, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020 12', 'Senin', '2018-08-20', '03:58:47', 'mpp13.jpg', 3, 'Y', '1'),
(6, 'Web Mal Pelayanan Publik 5', '<div align=\"center\">\r\nSelamat Datang Di Website MPP Kab. Batang yang Baru<br />16\r\n</div>\r\n', 'Senin', '2018-08-20', '03:55:54', 'mpp6.jpg', 3, 'Y', '1'),
(7, 'Berita peresmian ', 'test\r\nMal Pelayanan Publik Kab. Batang pada 23 Januari 2020 17', 'Senin', '2018-08-20', '03:58:47', 'mpp7.jpg', 3, 'Y', '1');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(1, 'percobaan', 'Chrysanthemum.jpg', '2018-02-07', 2),
(32, 'Kurnia', 'Asset.pdf', '2020-03-19', 1),
(33, 'coba ', 'wordtojpeg.zip', '2020-03-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id_file` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `file` varchar(50) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(11) NOT NULL,
  `kd_dinas` varchar(10) NOT NULL,
  `nm_dinas` varchar(50) NOT NULL,
  `profil` text NOT NULL,
  `website` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `kd_dinas`, `nm_dinas`, `profil`, `website`, `logo`) VALUES
(5, '001', 'BANK JATENG', 'bank jateng adalah bank indonesia di jawa tengah yang tergabung dengan mal pelayanan publik di MPP Kab. batang\r\n', 'http://bankjateng.co.id/', '651bankjateng1.png'),
(6, '002', 'BPJS KETENAGAKERJAAN', 'BPJS Ketenagakerjaan adalah BPJS yang bergerak dibidang jaminan ketenagakerjaan\r\n', 'https://bpjs-ketenagakerjaan-batang.business.site/', '77bpjsketenagakerjaan3.png'),
(7, 'P002', 'BPJS KETENAGAKERJAAN PEMROV', 'BPJS Ketenagakerjaan PEMROV adalah BPJS yang bergerak dibidang jaminan ketenagakerjaan\r\n', 'https://bpjs-ketenagakerjaan-batang.business.site/', '77bpjsketenagakerjaan3.png'),
(8, '003', 'POLRES BATANG', ' ', 'https://www.polresbatang.com/', '99polres1.png'),
(9, '004', 'KANTOR IMIGRASI KELAS II PEMALANG ', '  ', 'https://pemalang.imigrasi.go.id/', '39imigrasi2.png'),
(10, '005', 'BP2TKI Jateng ', '\r\n<font face=\"times new roman, times\" size=\"3\">Visi</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\">Terwujudnya TKI  yang Profesional, Bermartabat dan Sejahtera</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\"><br>\r\n</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\">Misi</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\">1.      Meningkatkan pemanfaatan peluang kerja luar negeri;</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\">2.      Meningkatkan pelayanan penempatan TKI yang mudah, murah, cepat, dan aman;</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\">3.      Meningkatkan perlindungan dan pemberdayaan TKI;</font>\r\n\r\n<font face=\"times new roman, times\" size=\"3\">4.      Melaksanakan tata kelola pemerintahan yang baik dan bersih.</font> ', 'https://bp2mi.go.id/', '48bnp2tki3.png'),
(11, '006', 'KANTOR PERTANAHAN (BPN)', 'Badan Pertanahan Nasional (BPN) adalah Lembaga Pemerintah Non Kementrian yang berada di bawah dan bertanggung jawab kepada Presiden dan dipimpin oleh Kepala. (Sesuai dengan Perpres No. 63 Tahun 2013)</font>\r\n\r\n\r\n<font face=\"times new roman, times\" size=\"3\">Badan Pertanahan Nasional mempunyai tugas melaksanakan tugas pemerintahan di bidang pertanahan secara nasional, regional dan sektoral sesuai dengan ketentuan peraturan perundang-undangan.</font>\r\n\r\n   ', 'http://kab-batang.atrbpn.go.id/', '55bpn1.png'),
(12, '007', 'KPP PRATAMA BATANG', '', '', '23kpppratama1.png'),
(13, '008', 'PLN BATANG ', ' ', '', '4pln2.png'),
(14, '009', 'PDAM', '', 'https://pdambatang.co.id/web/', '66pdam1.png'),
(15, '010', 'TASPEN', '<span><font face=\"times new roman, times\" size=\"3\">PT TASPEN (Persero) atau Dana Tabungan dan Asuransi Pegawai Negeri adalah Badan Usaha Milik Negara Indonesia yang bergerak di bidang asuransi tabungan hari tua dan dana pensiun bagi ASN dan Pejabat Negara.</font></span>\r\n', 'https://www.taspen.co.id/#/?_k=klrl4x', '45taspen2.png'),
(16, '011', 'BPJS KESEHATAN', '<p>\r\n<font face=\"times new roman,times\" size=\"4\">Visi :</font>\r\n</p>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"4\">TERWUJUDNYA JAMINAN KESEHATAN YANG BERKUALITAS TANPA DISKRIMINASI</font>\r\n</p>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"4\">Misi : </font>\r\n</p>\r\n<ol>\r\n <li><font face=\"times new roman,times\" size=\"4\">Memberikan layanan terbaik kepada peserta dan masyarakat;</font></li>\r\n <li><font face=\"times new roman,times\" size=\"4\">Memperluas kepesertaan program jaminan kesehatan mencangkup seluruh penduduk indonesia;</font></li>\r\n <li><font face=\"times new roman,times\" size=\"4\">Bersama menjaga kesinambungan program jaminan kesehatan. </font><br>\r\n </li>\r\n</ol>\r\n', 'https://bpjs-kesehatan.go.id/bpjs/home', '4bpjskesehatan3.png'),
(17, '012', 'PT. POS INDONESIA ', '<p xss=removed>\r\n<font face=\"times new roman,times\" size=\"3\">Mempunyai jaringan yang sangat luas hingga 4.800 kantor pos online. Jumlah titik layanan (Point of Sales) mencapai 58.700 titik dalam bentuk kantor pos, Agenpos, Mobile Postal Service, dan lain lain. Pos Indonesia memiliki jaringan yang dedicated, sistem distribusi yang handal, Track and Trace, layanan yang prima, kecepatan, ketepatan, serta harga yang kompetitif. Kantor pos merupakan tempat strategis untuk transaksi penjualan, dan atau distribusi barang dan jasa.</font>\r\n</p>\r\n<p xss=removed>\r\n<font face=\"times new roman,times\" size=\"3\">Inovasi terus dilakukan oleh Pos Indonesia antara lain pembangunan Post Shop yang merupakan pengembangan bisnis ritel yang diimplementasikan untuk merubah image Kantor pos konvensional menjadi Kantor pos modern dengan pola layanan one stop shopping, yaitu Postal Services (jasa ritel) berupa layanan pengiriman surat, paket, jasa keuangan, penjualan Postal items (meterai, prangko, produk filateli dan lain lain), layanan Online Shopping.</font>\r\n</p>\r\n', 'https://www.posindonesia.co.id/id', '1posindo1.png'),
(18, '013', 'BRI', '<font face=\"times new roman,times\" size=\"3\"><span class=\"blue\"><strong>Bank Rakyat Indonesia (BRI)</strong></span><span><span> </span>adalah salah satu bank milik pemerintah yang terbesar di Indonesia. Bank Rakyat Indonesia (BRI) didirikan di Purwokerto, Jawa Tengah oleh Raden Bei Aria Wirjaatmadja tanggal 16 Desember 1895</span></font>\r\n', 'https://bri.co.id/', '80bri1.png'),
(19, '014', 'DPMPTSP Kab. Batang', '<font face=\"times new roman,times\" size=\"3\">DPMPTSP adalah Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu. \r\nSebagai penghubung utama antara dunia usaha dan pemerintah, DPMPTSP \r\ndiberi mandat untuk mendorong investasi langsung, baik dari dalam negeri\r\nmaupun luar negeri, melalui penciptaan iklim investasi yan kondusif</font>\r\n', 'https://ptsp.batangkab.go.id/', '69dpmptsp1.png'),
(20, '015', 'DISDUKCAPIL ', '<p>\r\n<font face=\"times new roman,times\" size=\"3\"><span>Disdukcapil merupakan Organisasi Perangkat Daerah pelaksana urusan pemerintahan di bidang Kependudukan dan Pencatatan Sipil </span></font>\r\n</p>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"3\"><span>Tugas Pokok :Membantu Bupati melaksanakan urusan pemerintahan di bidang administrasi kependudukan dan pencatatan sipil dan tugas pembantuan yang diberikan.</span></font>\r\n</p>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"3\">Fungsi :</font>\r\n</p>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"3\"><span>Perumusan kebijakan teknis di bidang administrasi kependudukan dan pencatatan sipil</span></font>\r\n</p>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">2. Pelaksanaan upaya peningkatan pelayanan publik di bidang administrasi kependudukan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">3. Pelaksanaan kebijakan di bidang administrasi kependududkan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">4. Penyelenggaraan urusan pemerintahan dan pelayanan umum di bidang administrasi kependudukan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">5. Pembinaan dan pelaksaan tugas di bidang administrasi kependudukan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">6. Pengelolaan rekomendasi teknis di bidang administrasi kependudukan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">7. Penyelenggaraan sosisalisasi tentang pendaftaran penduduk, pencatatan sipil, dan pengelolaan sistem informasi administrasi kependudukan</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">8. Penyelenggaraan pendaftaran penduduk, pencatatan sipil, pengelolaan sistem informasi administrasi kependudukan, perkembangan kependudukan, dan perencanaan kependudukan</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">9. Pemantauan dan evaluasi pendaftaran penduduk, pencatatan sipil, pengelolaan sistem informasi administrasi kependudukan, perkembangan kependudukan, dan perencanaan kependudukan</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">10. Pembinaan dan pengembangan sumber daya manusia pengelola pendaftaran penduduk, pencatatan sipil, pengelolaan sistem informasi administrasi kependudukan, perkembangan kependudukan, dan perencanaan kependudukan</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">11. Pengawasan atas penyelenggaraan pendaftaran penduduk, pencatatan sipil, pengelolaan sistem informasi administrasi kependudukan, perkembangan kependudukan, dan perencanaan kependudukan</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">12. Pelaksanaan administrasi Disdukcapil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">13. Pelaksanaan monitoring, evaluasi dan  pelaporan pelaksanaan tugas di bidang administrasi kependudukan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">14. Pengelolaan rekomendasi teknis di bidang administrasi kependudukan dan pencatatan sipil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">15. Pembinaan terhadap UPTD dalam lingkup Disdukcapil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">16. Penyelenggaraan kesekretariatan Disdukcapil</font>\r\n</div>\r\n<div>\r\n<font face=\"times new roman,times\" size=\"3\">17. Pelaksanaan tugas lain yang diberikan oleh Bupati sesuia dengan tugas dan fungsinya.</font>\r\n</div>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"3\"> </font>\r\n</p>\r\n<p>\r\n<font face=\"times new roman,times\" size=\"3\"><br>\r\n</font>\r\n</p>\r\n', 'https://disdukcapil.batangkab.go.id/', '66disdukcapil2.png'),
(21, '016', 'BPKPAD', '<h4 xss=removed class=\"mb-sm heading-primary\"><font face=\"times new roman,times\" size=\"3\"><strong xss=removed>Tugas Pokok</strong></font></h4>\r\n<blockquote xss=removed>\r\n <font face=\"times new roman,times\" size=\"3\"><span xss=removed>BPKPAD mempunyai tugas membantu Bupati melaksanakan fungsi penunjang urusan pemerintahan di bidang pengelolaan keuangan, pendapatan dan aset daerah.</span></font>\r\n</blockquote>\r\n<hr class=\"short invisible\">\r\n<h4 xss=removed class=\"mb-sm heading-primary\"><font face=\"times new roman,times\" size=\"3\"><strong xss=removed>Fungsi</strong></font></h4>\r\n<blockquote xss=removed>\r\n <div xss=removed>\r\n <font face=\"times new roman,times\" size=\"3\">BPKPAD mempunyai fungsi:</font>\r\n </div>\r\n <ol xss=removed>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Perumusan dan penyusunan kebijakan teknis bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pembinaan dan pelaksanaan tugas di bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pembinaan teknis penyelenggaraan fungsi penunjang urusan pemerintah daerah bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Perumusan kebijakan teknis di bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyelenggaraan urusan pemerintahan dan pelayanan umum di bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyelenggaraan upaya peningkatan pelayanan publik di bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyusunan kebijakan dan pedoman pelaksanaan anggaran pendapatan dan belanja daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pengoordinasian pengelolaan pendapatan, investasi daerah, dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pelayanan penunjang penyelenggaraan pemerintahan daerah di bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pelayanan teknis dan administratif di bidang pengelolaan keuangan, pendapatan dan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyusunan rancangan anggaran belanja dan pendapatan daerah, perubahan anggaran belanja dan pendapatan daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyelenggaraan pemungutan pendapatan daerah yang telah ditetapkan.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyelenggaraan fungsi bendahara umum daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyusunan laporan keuangan yang merupakan pertanggungjawaban pelaksanaan anggaran pendapatan dan belanja daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyelenggaraan pembinaan, pengendalian, dan evaluasi pengelolaan keuangan dan aset daerah, kerugian daerah serta pengelolaan keuangan Badan Layanan Umum Daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Penyelenggaraan kesekretariatan BPKPAD.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pelaksanaan pengelolaan, inventarisasi dan pemberdayaan aset daerah.</font></li>\r\n  <li xss=removed><font face=\"times new roman,times\" size=\"3\">Pelaksanaan tugas kedinasan lain yang diberikan oleh Bupati sesuai dengan tugas dan fungsinya.</font></li>\r\n </ol>\r\n</blockquote>\r\n', 'https://bpkpad.batangkab.go.id/', '43bpkpad2.png'),
(22, '017', 'DINAS LINGKUNGAN HIDUP', '<font face=\"times new roman,times\" size=\"3\"><span xss=removed>DLH</span><span xss=removed><span> </span></span><span xss=removed>merupakan unsur<span> </span></span><span xss=removed>pelaksana</span><span xss=removed><span> </span>urusan pemerintahan yang melaksanakan fungsi<span> </span></span><span xss=removed>di</span><span xss=removed><span> </span></span><span xss=removed>bidang lingkungan hidup dan kehutanan</span><span xss=removed>. </span><span xss=removed>DLH</span><span xss=removed><span> </span></span><span xss=removed>dipimpin oleh Kepala<span> </span></span><span xss=removed>Dinas</span><span xss=removed><span> </span>yang<span> </span></span><span xss=removed>berkedudukan<span> </span></span><span xss=removed>di bawah dan bertanggung jawab kepada Bupati melalui Sekretaris Daerah</span><span xss=removed>.</span></font>\r\n', 'https://dlh.batangkab.go.id/', '43dlh2.png'),
(23, '018', 'DINAS PERHUBUNGAN', '<font face=\"times new roman,times\" size=\"3\"><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\">Dishub</span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\"><span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\">merupakan unsur<span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\">pelaksana</span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\"><span>&nbsp;</span>urusan pemerintahan<span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\">di</span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\"><span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; font-size: 12pt\">bidang perhubungan</span></font>\r\n<div style=\"box-sizing: border-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial\">\r\n<font face=\"times new roman,times\" size=\"3\"><span style=\"box-sizing: border-box; font-size: 12pt\"><span style=\"box-sizing: border-box; font-size: 12pt\">Dishub</span><span style=\"box-sizing: border-box; font-size: 12pt\"><span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-size: 12pt\">dipimpin oleh Kepala<span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-size: 12pt\">Dinas</span><span style=\"box-sizing: border-box; font-size: 12pt\"><span>&nbsp;</span>yang<span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-size: 12pt\">berkedudukan<span>&nbsp;</span></span><span style=\"box-sizing: border-box; font-size: 12pt\">di bawah dan bertanggung jawab kepada Bupati melalui Sekretaris Daerah</span></span></font>\r\n</div>\r\n', 'https://dishub.batangkab.go.id/', '9dishub1.png'),
(24, '019', 'DPUPR', '<font size=\"3\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none\">(DPUPR) Kabupaten Batang, yang merupakan unsur pelaksana urusan pemerintahan di bidang Infrastruktur Jalan, Jembatan, Sumber Daya Air, Tata Ruang dan Tata Bangunan Lingkungan di Kabupaten Batang.</span></font>\r\n', 'https://dpupr.batangkab.go.id/', '29dpupr1.png'),
(25, '020', 'DPRKP', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Kab. Batang merupakan unsur pelaksana urusan pemerintahan di bidang perumahan rakyat dan kawasan permukiman serta pertanahan di Kab. Batang\r\n', 'https://dprkp.batangkab.go.id/', '29dprkp1.png'),
(26, '021', 'Dinas Kesehatan ', '<p xss=removed>\r\n<font face=\"times new roman,times\" size=\"3\">Dinas Kesehatan merupakan Organisasi Perangkat Daerah (OPD) di Kabupaten Batang  yang memiliki tanggung jawab menjalankan kebijakan Pemerintah Kabupaten Batang  dalam bidang kesehatan</font>\r\n</p>\r\n<p xss=removed>\r\n<font face=\"times new roman,times\" size=\"3\">KEDUDUKAN</font>\r\n</p>\r\n<ol xss=removed>\r\n <li xss=removed><font face=\"times new roman,times\" size=\"3\">Dinas Kesehatan dipimpin oleh seorang kepala dinas yang berkedudukan dibawah dan bertanggung jawab kepada Bupati Kepala Daerah melalui Sekretaris Daerah</font></li>\r\n <li xss=removed><font face=\"times new roman,times\" size=\"3\">Kepala Dinas Kesehatan diangkat dan diberhentikan oleh Bupati dengan peraturan dan perundang-undangan yang berlaku.</font></li>\r\n</ol>\r\n', 'https://dinkes.batangkab.go.id/', '77dinkes2.png'),
(27, '022', 'DINAS KETENAGAKERJAAN', 'Dinas Ketenagakerjaan memiliki tugas membantu bupati untuk melakanakan urusan pemerintah di bidang ketenagakerjaan dan transmigrasi di Lingkungan Kabupaten Batang.\r\n', 'https://disnaker.batangkab.go.id/', '96disnaker2.png'),
(28, '023', 'DPMPTSP PROV. JATENG ', 'Visi penanaman modal Jawa Tengah sampai tahun 2025 adalah:<br>\r\n<br>\r\n“Menjadikan Jawa Tengah Ladang Investasi 2025”<br>\r\n <br>\r\n<br>\r\nUntuk mencapai visi tersebut ditetapkan 6 (enam) misi, yaitu sebagai berikut:<br>\r\n<br>\r\n <br>\r\n<br>\r\nMenciptakan iklim investasi kondusif yang ditandai dengan terciptanya rasa aman dan nyaman dalam kegiatan investasi yang tercermin dari rendahnya angka gangguan keamanan berinvestasi, harmonisnya hubungan pengusaha dengan pegawai/buruh dan lingkungan sekitar, terselesaikannya masalah-masalah yang terkait dengan hubungan industrial secara baik dan nihilnya pungutan liar oleh oknum pemerintah, penegak hukum, dan masyarakat;<br>\r\nMewujudkan infrastruktur penanaman modal yang memadai baik secara kualitas maupun kuantitas yang ditandai dengan meningkatnya infrastruktur pendukung investasi yang layak dan memadai seperti jalan, pelabuhan, bandara, hotel, rumah sakit, dan fasilitas-fasilitas lain yang berstandar internasional;<br>\r\nMenjamin kepastian hukum dan kepastian berusaha yang ditandai dengan adanya peraturan-peraturan di bidang penanaman modal yang pro terhadap investasi sekaligus menjamin hak-hak pekerja, penegakan hukum yang konsisten dan tidak tebang pilih serta perlakuan yang sama terhadap investor asing maupun domestik;<br>\r\nMewujudkan kemitraan yang seimbang antara usaha besar, menengah, kecil dan mikro yang ditandai dengan adanya kemitraan/kerjasama yang saling menguntungkan antara pelaku usaha besar, menengah, kecil dan mikro baik melalui fasilitasi yang dilakukan oleh pemerintah maupun swasta;<br>\r\nMewujudkan pemanfaatan potensi sumber daya lokal yang ditandai dengan pemanfaatan bahan baku lokal, pemanfaatan tenaga kerja lokal maupun sumberdaya lokal lainnya melalui peningkatan daya saing sumber daya lokal yang bertaraf internasional; dan<br>\r\nMendorong tumbuhnya kewirausahaan masyarakat yang ditandai dengan munculnya wirausahawan baru yang kreatif, inovatif, dan produktif dengan memaksimalkan potensi sumber daya manusia yang ada.\r\n', 'https://dpmptsp.jatengprov.go.id/', '90ptsp2.png');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_izin`
--

CREATE TABLE `jenis_izin` (
  `id_izin` int(11) UNSIGNED NOT NULL,
  `kode_izin` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_izin` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `tipe` enum('Perusahaan','Perorangan','Perusahaan dan Perorangan') COLLATE utf8_unicode_ci DEFAULT NULL,
  `bidang_usaha` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_singkat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `durasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `masa_berlaku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biaya` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lampiran` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Tidak Aktif','Aktif') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jenis_izin`
--

INSERT INTO `jenis_izin` (`id_izin`, `kode_izin`, `nama_izin`, `tipe`, `bidang_usaha`, `nama_singkat`, `durasi`, `masa_berlaku`, `biaya`, `lampiran`, `status`) VALUES
(1, '1', 'Nomor Induk Berusaha (NIB)', 'Perusahaan', 'Izin Usaha', 'NIB', '30 Menit', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(5, '5', 'Izin Usaha', 'Perusahaan', 'Izin Usaha', 'IU', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(9, '9', 'Izin  Lokasi', 'Perusahaan', 'Izin Usaha', 'IL', 'Maksimal 20 (dua puluh) hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(10, '640', 'Izin  Mendirikan Bangunan (IMB)', 'Perusahaan dan Perorangan', 'Izin Usaha', 'IMB', 'Maksimal 7 (tujuh) hari', '-', 'Luas Bangunan (LB) X Koefisien X  Tarif Retribusi', '', 'Aktif'),
(12, '536', 'Izin Usaha Industri ( IUI)', 'Perusahaan', 'Izin Usaha', 'IUI', 'Maksimal 7 Hari Kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(13, '519', 'Surat Izin Usaha Perdagangan (SIUP)', 'Perusahaan', 'Izin Usaha', 'SIUP', 'Maksimal 7 Hari Kerja', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(14, '14', 'Izin Perluasan Industri (IPI)', 'Perusahaan', 'Izin Usaha', 'IPI', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(15, '112', 'Tanda Daftar Perusahaan (TDP)', 'Perusahaan', 'Izin Usaha', 'TDP', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(16, '535', 'Tanda Daftar Industri (TDI)', 'Perusahaan', 'Izin Usaha', 'TDI', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(17, '17', 'Tanda Daftar Gudang (TDG)', 'Perusahaan', 'Izin Usaha', 'TDG', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(18, '039', 'Izin  Reklame', 'Perusahaan', 'Izin Usaha', 'REKLAME', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(19, '19', 'Izin  Usaha Jasa Konstruksi (IUJK)', 'Perusahaan', 'Izin Usaha', 'IUJK', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(20, '20', 'Izin  Usaha Angkutan', 'Perusahaan', 'Izin Usaha', 'IUA', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(21, '551.21', 'Izin Trayek (Surat Keputusan)', 'Perusahaan', 'Izin Usaha', 'SKIT', '7 Hari', '-', 'Sesuai Perda', '', 'Aktif'),
(22, '22', 'Surat Persetujuan Izin Trayek (SPIT)', 'Perusahaan', 'Izin Usaha', 'SPIT', '7 Hari', '-', 'dikenakan biaya', '', 'Tidak Aktif'),
(25, '25', 'Tanda Daftar Usaha Pariwisata', 'Perusahaan', 'Izin Usaha', 'TDUP', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(26, '519', 'Izin Perubahan Penggunaan Tanah ( IPPT )', 'Perorangan', 'Izin Usaha', 'IPPT', '7 hari', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(27, '27', 'Izin Perpanjangan IMTA', 'Perorangan', 'Izin Usaha', 'IMTA', '7 Hari', '-', 'dikenakan biaya (100 USD perbulan perorang )', '', 'Tidak Aktif'),
(28, '28', 'Izin  Lembaga Pelatihan Kerja Swasta (LPKS)', 'Perusahaan', 'Izin Usaha', 'LPKS', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(29, '29', 'Izin  Mempergunakan Ketel Uap', 'Perusahaan', 'Izin Usaha', 'KETEL', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(30, '30', 'Izin  Mempergunakan Tangki Timbul', 'Perusahaan', 'Izin Usaha', 'TANGKI', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(31, '31', 'Izin  Penyelenggaraan Undian Gratis Berhadiah', 'Perusahaan', 'Izin Sosial', 'UNDIAN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(32, '32', 'Izin  Pengumpulan Uang dan Barang', 'Perusahaan', 'Izin Sosial', 'SUMBANGAN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(33, '33', 'Izin  Mengadopsi Anak', 'Perorangan', 'Izin Sosial', 'ADOPSI', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(34, '34', 'Izin  Operasional Panti', 'Perusahaan', 'Izin Sosial', 'PANTI', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(35, '35', 'Izin Mendirikan Rumah Sakit', 'Perusahaan', 'Izin Usaha', 'RSC', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(36, '36', 'Izin Operasional Rumah Sakit', 'Perusahaan', 'Izin Usaha', 'RSD', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(37, '37', 'Izin Operasional Klinik Pratama', 'Perusahaan', 'Izin Kesehatan', 'IKP', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(38, '38', 'Izin Operasional Klinik Utama', 'Perusahaan', 'Izin Kesehatan', 'IKU', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(39, '39', 'Izin  Apotek', 'Perusahaan', 'Izin Kesehatan', 'APOTEK', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(40, '40', 'Izin Toko Obat', 'Perusahaan', 'Izin Kesehatan', 'TO', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(41, '41', 'Izin  Optik', 'Perusahaan', 'Izin Kesehatan', 'OPTIK', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(42, '42', 'Izin  Pengobat Tradisional', 'Perorangan', 'Izin Kesehatan', 'TRADISIONAL', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(43, '43', 'Izin Pangan Industri Rumah Tangga', 'Perorangan', 'Izin Kesehatan', 'PIRT', '7 hari', '5 tahun', 'Tidak dikenakan biaya', '', 'Aktif'),
(44, '449.11', 'Izin  Praktik Dokter', 'Perorangan', 'Izin Kesehatan', 'PRD', '7 hari', '3 tahun', 'Tidak dikenakan biaya', '', 'Aktif'),
(45, '449.12', 'Izin  Praktik Bidan', 'Perorangan', 'Izin Kesehatan', 'PRB', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(46, '449.21', 'Izin  Kerja Bidan', 'Perorangan', 'Izin Kesehatan', 'KBID', '7 hari', '-', 'Tidak dipungut biaya', '', 'Aktif'),
(47, '449.13', 'Izin  Praktik Perawat', 'Perorangan', 'Izin Kesehatan', 'PRP', '7 hari', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(48, '449.22', 'Izin  Kerja Perawat', 'Perorangan', 'Izin Kesehatan', 'KPER', '7 hari', '-', 'tanpa dipungut biaya', '', 'Aktif'),
(49, '449.14', 'Izin  Praktik Apoteker', 'Perorangan', 'Izin Kesehatan', 'PPER', '7 hari', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(50, '449.23', 'Izin  Kerja Tenaga Teknis Kefarmasian', 'Perorangan', 'Izin Kesehatan', 'FARMASI', '7 hari', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(51, '449.15', 'Izin  Praktek Ahli Teknologi Laboratorium Medik', 'Perorangan', 'Izin Kesehatan', 'ANALISKES', '7 hari', '1 tahun', 'Tidak dipungut biaya', '', 'Aktif'),
(52, '52', 'Izin  Kerja Refraksionist Optisien', 'Perorangan', 'Izin Kesehatan', 'REKFRAKSIONIS', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(53, '53', 'Izin  Kerja Tenaga Gizi', 'Perorangan', 'Izin Kesehatan', 'GIZIN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(54, '54', 'Izin  Pendirian TK Negeri', 'Perusahaan', 'Izin Pendidikan', 'TKN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(55, '55', 'Izin  Pendirian TK yang diselenggarakan masyarakat', 'Perusahaan', 'Izin Pendidikan', 'TKM', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(56, '56', 'Izin  Pendirian SD Negeri', 'Perusahaan', 'Izin Pendidikan', 'SDN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(57, '57', 'Izin  Pendirian SD yang diselenggarakan masyarakat', 'Perusahaan', 'Izin Pendidikan', 'SDM', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(58, '58', 'Izin  Pendirian SMP Negeri', 'Perusahaan', 'Izin Pendidikan', 'SMPN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(59, '59', 'Izin  Pendirian SMP yang diselenggarakan masyarakat', 'Perusahaan', 'Izin Pendidikan', 'SMPM', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(60, '60', 'Izin  PKBM (Pusat Kegiatan Belajar Masyarakat)', 'Perorangan', 'Izin Pendidikan', 'PKBM', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(61, '61', 'Izin  LKP (Lembaga Kursus dan Pelatihan)', 'Perusahaan', 'Izin Pendidikan', 'LKP', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(62, '62', 'Izin  TBM (Taman Belajar Masyarakat)', 'Perusahaan', 'Izin Pendidikan', 'TBM', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(63, '63', 'Izin  KBU (Kelompok Belajar Usaha)', 'Perusahaan', 'Izin Pendidikan', 'KBU', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(64, '64', 'Izin  KB (Kelompok Bermain)', 'Perusahaan', 'Izin Pendidikan', 'KB', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(65, '65', 'Izin  TPA (Tempat Penitipan Anak)', 'Perusahaan dan Perorangan', 'Izin Pendidikan', 'TPA', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(66, '66', 'Izin  Pos PAUD', 'Perusahaan', 'Izin Pendidikan', 'PAUD', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(67, '67', 'Izin  Badan Hukum Koperasi', 'Perusahaan', 'Izin Usaha', 'KOPERASI', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(68, '68', 'Izin  Usaha Operasional Simpan Pinjam', 'Perusahaan dan Perorangan', 'Izin Usaha', 'SIMPAN', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(69, '69', 'IUTM (Izin  Usaha Toko Modern)', 'Perusahaan', 'Izin Usaha', 'IUTM', '7 Hari', '-', 'Tidak dipungut biaya', '', 'Tidak Aktif'),
(70, '70', 'IUP2T (Izin  Usaha Pengelolaan Pasar Rakyat)', 'Perusahaan dan Perorangan', 'Izin Usaha', 'IUP2T', '7 Hari', '-', 'Tidak dipungut biaya', '', 'Tidak Aktif'),
(71, '71', 'Izin  Pembuangan Limbah Cair', 'Perusahaan dan Perorangan', 'Izin Usaha', 'LIMBAHCAIR', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(72, '72', 'Izin  Tempat Penyimpanan Sementara Limbah Berbahaya dan Beracun', 'Perusahaan dan Perorangan', 'Izin Usaha', 'LIMBAHB3', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(73, '73', 'Izin Penyelenggaraan Unit Pelayanan Hemodialisis', 'Perusahaan', 'Izin Kesehatan', 'HEMODIALISIS', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(74, '74', 'Izin Penyelenggaraan Pusat Kesehatan Masyarakat', 'Perusahaan', 'Izin Kesehatan', 'PUSKESMAS', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(75, '75', 'Izin Penyelenggaraan Laboratorium Klinik Umum Pratama', 'Perusahaan', 'Izin Kesehatan', 'KPRATAMA', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(76, '551.22', 'Izin Trayek (Kartu Pengawas)', 'Perusahaan', '-', 'KPIT', '1 hari', '1 Tahun', 'Sesuai Perda', '', 'Aktif'),
(77, '551.23', 'Izin Trayek (Insidentil)', 'Perusahaan', 'bidang usaha', 'INIT', '1 hari', '14 hari', 'Sesuai Perda', '', 'Aktif'),
(78, '78', 'Izin Unit Transfusi Darah', 'Perusahaan', 'usaha', 'Izin darah', '7 Hari', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(79, '79', 'Izin Praktek Elektromedis', 'Perorangan', 'Kesehatan', 'Izin Praktek Elektro', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(80, '80', 'Izin Kerja Fisioterapis', 'Perorangan', 'Kesehatan', 'Izin Kerja Fisiotera', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(81, '81', 'Izin Praktek Okupasi Terapis', 'Perorangan', 'Kesehatan', 'Izin Praktek Okupasi', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(82, '82', 'Izin Kerja Okupasi Terapis', 'Perorangan', 'Kesehatan', 'Izin Kerja Okupasi T', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(83, '83', 'Izin Optikal', 'Perorangan', 'Kesehatan', 'Izin Optikal', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(84, '84', 'Izin Praktek Penata Anestesi', 'Perusahaan', 'Kesehatan', 'Izin Praktek Penata ', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(85, '85', 'Izin Kerja Penata Anestesi', 'Perorangan', 'Kesehatan', 'Izin Kerja Penata An', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(86, '86', 'Izin Kerja Perekam Medis', 'Perorangan', 'Kesehatan', 'Izin Kerja Perekam M', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(87, '87', 'Izin Kerja Radiografer', 'Perorangan', 'Kesehatan', 'Izin Kerja Radiograf', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(88, '88', 'Izin Kerja Tenaga Sanitarian', 'Perorangan', 'Kesehatan', 'Izin Kerja Tenaga Sa', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(89, '89', 'Izin Kerja Terapis Gigi dan Mulut', 'Perorangan', 'Kesehatan', 'Izin Kerja Terapis G', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Aktif'),
(90, '90', 'Izin Kerja Terapis Wicara', 'Perorangan', 'Kesehatan', 'Izin Kerja Terapis W', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(91, '91', 'Tanda Pendaftaran Waralaba', 'Perusahaan', 'PERDAGANGAN', 'Tanda Pendaftaran Wa', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif'),
(92, '92', 'Izin Lingkungan', 'Perusahaan', 'LINGKUNGAN', 'Izin Lingkungan', '7 hari kerja', '-', 'Tidak dikenakan biaya', '', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `info_layanan` text NOT NULL,
  `penjelasan` text NOT NULL,
  `prosedur` text NOT NULL,
  `syarat` text NOT NULL,
  `dasar_hukum` varchar(250) NOT NULL,
  `jangka_waktu` varchar(25) NOT NULL,
  `biaya` varchar(30) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `id_instansi`, `info_layanan`, `penjelasan`, `prosedur`, `syarat`, `dasar_hukum`, `jangka_waktu`, `biaya`, `link`) VALUES
(0, 19, 'Pelayanan Informasi dan Pengaduan Perijinan', 'Dasar Pembentukan Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu (Dinas PMPTSP) Provinsi Jawa Barat adalah Peraturan Daerah Provinsi Jawa Barat Nomor 6 Tahun 2016 tentang Pembentukan dan Susunan Perangkat Daerah Provinsi Jawa Barat. Pembentukan Dinas PMPTSP Jawa Barat merupakan tindak lanjut implementasi Peraturan Pemerintah Republik Indonesia Nomor 18 Tahun 2016 tentang Perangkat Daerah. Selanjutnya disusun susunan organisasi dan tata kerja Dinas PMPTSP Provinsi Jawa Barat yang diatur dalam Peraturan Gubernur Jawa Barat No. 45 Tahun 2016 tentang Kedudukan dan Susunan Organisasi Perangkat Daerah untuk Pejabat Struktural.<br>\r\n<br>\r\nDinas PMPTSP Provinsi Jawa Barat dalam menjalankan tugas pokok dan fungsinya diatur dalam Peraturan Gubernur Jawa Barat Nomor 62 Tahun 2016 tentang Tugas Pokok, Fungsi, Rincian Tugas Unit dan Tata Kerja Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu.  Tugas pokok adalah melaksanakan urusan pemerintahan bidang penanaman modal dan pelayanan terpadu satu pintu, meliputi pengembangan iklim penanaman modal, promosi penanaman modal, pelayanan penanaman modal, pengendalian pelaksanaan penanaman modal, data dan sistem informasi penanaman modal, serta pelayanan terpadu satu pintu yang menjadi kewenangan Provinsi, melaksanakan tugas dekonsentrasi sampai dengan dibentuk Sekretariat Gubernur sebagai Wakil Pemerintah Pusat dan melaksanakan tugas pembantuan sesuai bidang tugasnya. Fungsi  Dinas PMPTSP Provinsi Jawa Barat sebagai berikut:<br>\r\n<br>\r\n1. penyelenggaraan perumusan kebijakan teknis di bidang penanaman modal dan pelayanan terpadu satu pintu, yang menjadi kewenangan Provinsi;<br>\r\n2. penyelenggaraan pengelolaan penanaman modal dan pelayanan terpadu satu pintu yang menjadi kewenangan Provinsi;<br>\r\n3. penyelenggaraan administrasi Dinas;<br>\r\n4. penyelenggaraan evaluasi dan pelaporan Dinas; dan<br>\r\n5. penyelenggaraan fungsi lain sesuai dengan tugas pokok dan fungsinya.\r\n', '<p>\r\n Perizinan berusaha yang diterbikan OSS<br>\r\n2. Perizinan berusaha yang tidak diterbitkan melalui OSS<br>\r\n3. Belum berproduksi komersia<br>\r\n4. Sudah berproduksi komersial<br>\r\n5. Pelaku usaha wajib menyampaikan LKPM setiap 3 bulan sekali secara online melalui SPIPISE<br>\r\nMekanisme layanan perizinan di Outlet Dinas Penanaman Modal dan Perijinan Terpadu Satu Pintu Provinsi Jawa Barat, dilaksanakan sesuai ketentuan Peraturan Gubernur Jawa Barat Nomor 92 Tahun 2014 tentang Petunjuk Pelaksanaan Peraturan Daerah No 7 tahun 2010 tentang Penyelenggaraan Pelayanan Perizinan Terpadu; \r\n</p>\r\n<p>\r\n \r\n</p>\r\n<p>\r\n&lt;object type=\"application/x-shockwave-flash\" style=\"width: 425px; height:350px;\" data=\"http://www.youtube.com/v/https://www.youtube.com/watch?v=04N8-RCaLrM\"&gt;\r\n <param name=\"movie\" value=\"http://www.youtube.com/v/https://www.youtube.com/watch?v=04N8-RCaLrM\">\r\n <param name=\"wmode\" value=\"transparent\">\r\n&lt;/object&gt;\r\n \r\n</p>\r\n', 'Jenis layanan perizinan yang dilaksanakan oleh Outlet Dinas Penanaman Modal dan Perijinan Terpadu Satu Pintu Provinsi Jawa Barat, berdasarkan potensi wilayah kerjanya masing-masing. Fungsi layanan perizinan yang dilaksanakan oleh Outlet Dinas Penanaman Modal dan Perijinan Terpadu Satu Pintu Provinsi Jawa Barat sebagai berikut :<br>\r\nPemberian informasi perizinan;<br>\r\nPendaftaran permohonan;<br>\r\n<br>\r\nPemeriksanaan kelengkapan persyaratan;<br>\r\n<br>\r\nPengambilan izin;<br>\r\n<br>\r\nPenerimaan pengaduan;<br>\r\n<br>\r\nPelaksanaan tugas lainnya dari pimpinan Dinas<br>\r\n<br>\r\nNO  Jenis Layanan Perizinan<br>\r\n<br>\r\n1 Izin Usaha Industri Primer Hasil Hutan Kayu (IUIPHHK) dengan Kapasitas Produksi<br>\r\n<br>\r\n2 Izin Perluasan Industri Primer Hasil Hutan Kayu dengan Total Kapasitas Produksi<br>\r\n<br>\r\n3 Izin Perubahan Komposisi Jenis Produksi dan/atau Kapasitas Produksi IPHHK dengan Kapasitas Produksi<br>\r\n<br>\r\n4 Pendaftaran Ulang Izin Usaha Industri Primer Hasil Hutan Kayu;<br>\r\n<br>\r\n5 Izin Penurunan Kapasitas Produksi pada IPHHK dengan Kapasitas Produksi<br>\r\n<br>\r\n6 Izin Peremajaan Mesin (Reengineering) IPHHK dengan Kapasitas Produksi sampai dengan 6.000 m3 per tahun;<br>\r\n<br>\r\n7 Izin Perubahan (addendum) Izin Usaha Industri Primer Hasil Hutan Kayu dengan Kapasitas Produksi<br>\r\n<br>\r\n8 Izin Trayek Angkutan Kota Dalam Provinsi (AKDP);<br>\r\n<br>\r\n9 Izin Pengeboran, Penggalian, Pemakaian dan Izin Pengusahaan Air Tanah dalam Daerah Provinsi;<br>\r\n<br>\r\n10 Izin Usaha Pertambangan (IUP) Mineral dan Batubara dalam Rangka Penanaman Modal Dalam Negeri pada Wilayah Izin Usaha Pertambangan Daerah yang berada dalam 1 (satu) Daerah Provinsi termasuk Wilayah Laut sampai debngan 12 mil Laut (Bersifat Strategis)<br>\r\n<br>\r\n11 Izin Usaha Pertambangan (IUP) Eksplorasi ;<br>\r\n<br>\r\n12 Izin Usaha Pertambangan (IUP) Operasi Produksi;<br>\r\n<br>\r\n13 Izin Usaha Pertambangan (IUP) Operasi Produksi Khusus Pengolahan dan Pemurnian;<br>\r\n<br>\r\n14 Izin Usaha Pertambangan (IUP) Operasi Produksi Khusus Pengangkutan dan Penjualan;<br>\r\n<br>\r\n15 Penerbitan Izin Usaha Jasa Pertambangan dan Surat Keterangan Terdaftar dalam rangka penanaman modal Dalam Negeri yang kegiatan usahanya dalam 1 (satu) daerah Provinsi;<br>\r\n<br>\r\n16 Penetapan Wilayah dan Izin Usaha Pertambangan Mineral Bukan Logam dan Batuan dalam Rangka Penanaman Modal Dalam Negeri pada Wilayah Izin Usaha Pertambangan Daerah yang berada dalam 1 (satu) Daerah Provinsi termasuk Wilayah Laut sampai dengan 12 mil Laut;<br>\r\n<br>\r\n17 Izin Pertambangan Rakyat untuk Komoditas Mineral Logam, Batubara, Mineral Bukan Logam dan Batuan Dalam Wilayah Pertambangan Rakyat;<br>\r\n<br>\r\n18 Izin Serah Pakai Tanah (ISPT) Ruang Milik Jalan (Rumija);<br>\r\n<br>\r\n19 Izin Serah Pakai Tanah (ISPT) Tanah Jalan Diluar Ruang Milik Jalan (Rumija);<br>\r\n<br>\r\n20 Surat Izin Pemanfaatan Tanah Pemerintah Provinsi (SIPTPP-Sempadan Sungai);<br>\r\n<br>\r\n21 Surat Izin Pengambilan dan Pemanfaatan Air (SIPPA) Permukaan;<br>\r\n<br>\r\n22 Izin Prinsip Penanaman Modal; <br>\r\n<br>\r\n23 Izin Prinsip Perluasan;<br>\r\n<br>\r\n24 Izin Prinsip Perubahan;<br>\r\n<br>\r\n25 Izin Prinsip Penggabungan;\r\n', '1. Undang-Undang Nomor 25 Tahun 2007 Tentang Penanaman Modal;<br>\r\n2. Undang-Undang Nomor 23 Tahun 2014 Tentang Pemerintahan Daerah;<br>\r\n3. Peraturan Presiden Nomor 44 Tahun 2016 Tentang Daftar Bidang Usaha Yang Tertutup dan Bidang Usaha Yang Te \r\n', '5 - 10 Menit', 'Tidak dipungut biaya', 'https://ptsp.batangkab.go.id/pengaduan'),
(1, 6, 'Pendaftaran Peserta Penerima Upah', '', 'Pendaftaran Peserta Penerima Upah ghdfhtyty', 'Pendaftaran Peserta Penerima Upah tytrytrytr', '', '', '', 'https://www.bpjsketenagakerjaan.com/pendaftaranupa'),
(2, 6, 'Pendaftaran Peserta Jasa Konstruksi', '', 'Pendaftaran Peserta Jasa Konstruksi tytrytry', 'Pendaftaran Peserta Jasa Konstruksi hghgfhhgfh', '', '', '', ''),
(3, 6, 'Pelayanan Klaim Jaminan Kecelakaan Kerja, Jamiinan Hari Tua dan Jaminan Pensiun', '', 'Pelayanan Klaim Jaminan Kecelakaan Kerja, Jamiinan Hari Tua dan Jaminan Pensiun hgffgfgfhghg', 'Pelayanan Klaim Jaminan Kecelakaan Kerja, Jamiinan Hari Tua dan Jaminan Pensiun hgfhdgfhghghfg', '', '', '', ''),
(4, 6, 'Informasi Kepesertaan dan Cek Saldo JHT', '', 'Informasi Kepesertaan dan Cek Saldo JHT ghgfhfgdhfhfg', 'Informasi Kepesertaan dan Cek Saldo JHT gfhgfhgfhgfhgfh', '', '', '', ''),
(5, 6, 'jhgjhjhgj', '', 'mnmbnmbnmbnmnmbbbbbbbbbbbbbbbbbbbbbbbbbbbbvvhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjffffffffffffffffffff\r\n', 'mbbbbbbbbbbbbbbbbbbbbbbbbbbbbvvhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjffffffffffffffffffff\r\n', '', '', '', ''),
(6, 5, 'pembyatab akun bank', '<ol>\r\n	<li>gyer6e64346464464atdghj</li>\r\n	<li>gfgfchghchvhcfhcfhhchvhv h hfhfhf hfhxft hjfutfutfu ghfytftdty gdrttr</li>\r\n	<li>jutfuftu&nbsp; yuutuygiyg yuutr7y tuft yfygiuy yir8587<br />\r\n	</li>\r\n</ol>\r\n', '<ul>\r\n	<li>gyer6e64346464464atdghj</li>\r\n	<li>gfgfchghchvhcfhcfhhchvhv h hfhfhf hfhxft hjfutfutfu ghfytftdty gdrttr</li>\r\n	<li>jutfuftu&nbsp; yuutuygiyg yuutr7y tuft yfygiuy yir8587<br />\r\n	</li>\r\n</ul>\r\n', '<ol>\r\n	<li>gyer6e64346464464atdghj</li>\r\n	<li>gfgfchghchvhcfhcfhhchvhv h hfhfhf hfhxft hjfutfutfu ghfytftdty gdrttr</li>\r\n	<li>jutfuftu&nbsp; yuutuygiyg yuutr7y tuft yfygiuy yir8587</li>\r\n</ol>\r\n', '<ul>\r\n	<li>gyer6e64346464464atdghj</li>\r\n	<li>gfgfchghchvhcfhcfhhchvhv h hfhfhf hfhxft hjfutfutfu ghfytftdty gdrttr</li>\r\n	<li>jutfuftu&nbsp; yuutuygiyg yuutr7y tuft yfygiuy yir8587<br />\r\n	</li>\r\n</ul>\r\n', '5 hari', '20000', '');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(3) NOT NULL,
  `latarblg` text NOT NULL,
  `video` varchar(30) NOT NULL,
  `status` enum('publish','tidak') NOT NULL DEFAULT 'tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `latarblg`, `video`, `status`) VALUES
(1, '<h5>Mal Pelayanan Publik (MPP Kab. Batang)</h5> Merupakan tempat terpadu  pengurusan dokumen, yang berlokasi di kantor DPMPTSP Kab. Batang, Jl. Urip Sumoharjo No. 13 Batang yang telah diresmikan oleh MENPAN RB, Tjahjo Kumolo pada Kamis 23 januari 2020. Telah ada 23 instansi yang telah bergabung dan lebih dari 300 pelayanan dokumen.', 'mpp.mp4', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `prosedure`
--

CREATE TABLE `prosedure` (
  `id` int(11) NOT NULL,
  `id_izin` int(11) UNSIGNED DEFAULT NULL,
  `mekanisme_pelayanan` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prosedure`
--

INSERT INTO `prosedure` (`id`, `id_izin`, `mekanisme_pelayanan`, `created_at`) VALUES
(1, 1, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href= \"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2017-12-13 04:39:11'),
(2, 1, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2017-12-13 04:39:34'),
(7, 51, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2017-12-29 07:50:46'),
(8, 51, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2017-12-29 07:51:01'),
(9, 51, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2017-12-29 07:51:38'),
(10, 51, 'Menerima bukti penyerahan berkas dari petugas front office', '2017-12-29 07:51:55'),
(11, 44, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-01-08 12:10:13'),
(12, 44, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-01-08 12:10:29'),
(13, 44, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-01-08 12:10:45'),
(14, 44, 'Penyerahan Ijin kepada pemohon', '2018-01-08 12:10:59'),
(15, 12, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-09-19 06:40:40'),
(16, 12, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-09-19 06:40:53'),
(17, 12, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-09-19 06:41:01'),
(18, 30, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 03:38:30'),
(28, 32, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 03:49:09'),
(29, 32, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 03:49:17'),
(30, 32, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 03:49:24'),
(31, 32, 'Penyerahan Ijin kepada pemohon', '2018-11-12 03:49:31'),
(38, 33, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 03:53:56'),
(41, 34, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 04:02:01'),
(54, 35, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 04:06:34'),
(59, 5, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu  Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 04:17:13'),
(60, 5, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 04:17:53'),
(61, 5, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 04:18:05'),
(62, 5, 'Penyerahan Ijin kepada pemohon', '2018-11-12 04:18:16'),
(67, 36, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 04:21:20'),
(68, 36, 'Penyerahan Ijin kepada pemohon', '2018-11-12 04:21:28'),
(78, 37, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 04:29:07'),
(101, 9, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 04:46:16'),
(102, 9, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 04:46:32'),
(104, 9, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 04:46:40'),
(107, 9, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 04:46:53'),
(109, 10, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 04:51:32'),
(110, 10, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 04:51:43'),
(111, 10, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2018-11-12 04:51:54'),
(112, 10, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 04:52:03'),
(113, 10, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon dan SKRD', '2018-11-12 04:52:15'),
(118, 43, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 05:12:29'),
(119, 43, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 05:12:38'),
(120, 43, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 05:12:44'),
(121, 43, 'Penyerahan Ijin kepada pemohon', '2018-11-12 05:12:54'),
(126, 46, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 05:34:29'),
(127, 46, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 05:34:37'),
(128, 46, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 05:34:44'),
(129, 46, 'Penyerahan Ijin kepada pemohon', '2018-11-12 05:34:53'),
(134, 48, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 05:36:36'),
(135, 48, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 05:36:48'),
(136, 48, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 05:36:57'),
(137, 48, 'Penyerahan Ijin kepada pemohon', '2018-11-12 05:37:08'),
(146, 51, 'Penyerahan Ijin kepada pemohon', '2018-11-12 05:44:32'),
(151, 54, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 05:54:54'),
(152, 54, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 05:55:04'),
(153, 54, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 05:55:13'),
(154, 54, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2018-11-12 05:55:23'),
(166, 56, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 06:29:39'),
(167, 56, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 06:29:47'),
(168, 56, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2018-11-12 06:29:54'),
(169, 56, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 06:30:01'),
(170, 12, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:31:05'),
(171, 13, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 06:33:13'),
(172, 13, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 06:33:23'),
(173, 13, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 06:33:31'),
(174, 13, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:33:42'),
(175, 57, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 06:35:13'),
(176, 57, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 06:35:20'),
(177, 57, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 06:35:28'),
(178, 57, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:35:37'),
(179, 58, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 06:39:20'),
(180, 58, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 06:39:29'),
(181, 58, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2018-11-12 06:39:35'),
(182, 58, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 06:39:44'),
(183, 14, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 06:42:50'),
(184, 14, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 06:43:03'),
(185, 14, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 06:43:10'),
(186, 14, 'Penyerahan Ijin kepada pemohon', '2018-11-12 06:43:22'),
(191, 15, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 06:44:57'),
(192, 15, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 06:45:07'),
(193, 15, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 06:45:14'),
(194, 15, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:45:25'),
(195, 16, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-12 06:47:32'),
(196, 16, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-12 06:47:43'),
(197, 16, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-12 06:47:50'),
(198, 16, 'Penyerahan Ijin kepada pemohon', '2018-11-12 06:48:01'),
(199, 17, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 06:50:58'),
(200, 17, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 06:51:08'),
(201, 17, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 06:51:17'),
(202, 17, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:51:31'),
(203, 18, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 06:53:52'),
(204, 18, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 06:54:33'),
(205, 18, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2018-11-12 06:54:41'),
(206, 18, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 06:54:50'),
(207, 18, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2018-11-12 06:54:57'),
(208, 18, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2018-11-12 06:55:09'),
(213, 19, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 06:57:03'),
(214, 62, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 06:57:25'),
(215, 19, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 06:57:33'),
(216, 62, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 06:57:33'),
(217, 62, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 06:57:39'),
(218, 19, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 06:57:44'),
(219, 62, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:57:47'),
(220, 19, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 06:57:50'),
(221, 19, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2018-11-12 06:57:57'),
(222, 19, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2018-11-12 06:58:19'),
(229, 20, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 07:03:21'),
(232, 20, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 07:03:34'),
(233, 20, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 07:03:42'),
(234, 20, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 07:03:52'),
(235, 21, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 07:32:31'),
(236, 21, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 07:32:43'),
(237, 21, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2018-11-12 07:32:55'),
(238, 21, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 07:33:08'),
(239, 21, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon dan SKRD', '2018-11-12 07:33:20'),
(244, 22, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 07:42:25'),
(245, 22, 'Berkas permohonan di verifikasi dan divalidasi', '2018-11-12 07:42:36'),
(246, 22, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2018-11-12 07:42:48'),
(247, 22, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2018-11-12 07:43:04'),
(248, 22, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon dan SKRD', '2018-11-12 07:43:15'),
(253, 25, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2018-11-12 07:49:24'),
(254, 25, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2018-11-12 07:49:38'),
(255, 25, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2018-11-12 07:49:47'),
(256, 25, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2018-11-12 07:49:55'),
(257, 25, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2018-11-12 07:50:04'),
(258, 25, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2018-11-12 07:50:16'),
(264, 27, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 08:06:39'),
(269, 28, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2018-11-12 08:13:53'),
(295, 69, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-13 00:25:03'),
(296, 69, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-13 00:25:10'),
(297, 69, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-13 00:25:16'),
(298, 69, 'Penyerahan Ijin kepada pemohon', '2018-11-13 00:25:25'),
(299, 70, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-13 00:28:05'),
(300, 70, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-13 00:28:12'),
(301, 70, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses,  namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-13 00:28:19'),
(302, 70, 'Penyerahan Ijin kepada pemohon', '2018-11-13 00:28:27'),
(315, 76, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-13 00:42:49'),
(316, 76, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-13 00:42:58'),
(317, 76, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses dan dibuatkan Surat Ketetapan Retribusi (SKRD) sebagai dasar pembayaran retribusi, namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-13 00:43:07'),
(318, 76, 'Pembayaran Retribusi di loket Kasir sesuai dengan Surat Ketetapan Retribusi Daerah (SKRD), dan pemohon akan mendapatkan bukti pembayaran berupa Surat Setoran Retribusi Daerah (SSRD)', '2018-11-13 00:43:14'),
(319, 76, 'Penyerahan Ijin kepada pemohon', '2018-11-13 00:43:22'),
(320, 77, 'Pemohon datang langsung ke Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu dan Tenaga Kerja Kabupaten Batang dengan membawa surat permohonan atau mengisi blanko permohonan yang telah disediakan', '2018-11-13 00:44:29'),
(321, 77, 'Surat permohonan/ formulir permohonan yang sudah diisi dengan benar beserta  persyaratannya diserahkan di loket pelayanan', '2018-11-13 00:44:37'),
(322, 77, 'Berkas permohonan diteliti, bila dinyatakan lengkap dan benar, maka ijin diproses dan dibuatkan Surat Ketetapan Retribusi (SKRD) sebagai dasar pembayaran retribusi, namun bila berkas belum lengkap dikembalikan kepada pemohon untuk dilengkapi', '2018-11-13 00:44:46'),
(323, 77, 'Pembayaran Retribusi di loket Kasir sesuai dengan Surat Ketetapan Retribusi Daerah (SKRD), dan pemohon akan mendapatkan bukti pembayaran berupa Surat Setoran Retribusi Daerah (SSRD)', '2018-11-13 00:44:53'),
(324, 77, 'Penyerahan Ijin kepada pemohon', '2018-11-13 00:45:02'),
(325, 9, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-06 00:59:06'),
(326, 9, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-06 00:59:16'),
(327, 9, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 00:59:27'),
(328, 10, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon dan SKRD', '2019-12-06 01:07:24'),
(329, 10, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 01:07:33'),
(330, 10, 'Pemohon membayar retribusi dan mengambil Keputusan tentang izin yang dimohon beserta  SSRD', '2019-12-06 01:07:42'),
(331, 12, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-06 01:22:13'),
(332, 12, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-06 01:22:23'),
(333, 12, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 01:22:32'),
(334, 13, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-06 01:31:02'),
(335, 13, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-06 01:31:11'),
(336, 13, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 01:31:20'),
(337, 15, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-06 01:38:59'),
(338, 15, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-06 01:39:07'),
(339, 17, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-06 01:40:39'),
(340, 17, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-06 01:40:49'),
(341, 17, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 01:40:56'),
(342, 18, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 01:48:06'),
(343, 18, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-06 01:48:25'),
(344, 19, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 01:55:49'),
(345, 20, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-06 02:08:12'),
(346, 20, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-06 02:08:20'),
(347, 20, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 02:08:29'),
(348, 21, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon dan SKRD', '2019-12-06 02:20:00'),
(349, 21, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 02:20:09'),
(350, 21, 'Pemohon membayar retribusi dan mengambil Keputusan tentang izin yang dimohon beserta  SSRD', '2019-12-06 02:20:19'),
(351, 22, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon dan SKRD', '2019-12-06 02:24:54'),
(352, 22, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 02:25:03'),
(353, 22, 'Pemohon membayar retribusi dan mengambil Keputusan tentang izin yang dimohon beserta  SSRD', '2019-12-06 02:25:42'),
(354, 25, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-06 02:32:36'),
(355, 26, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-06 02:36:26'),
(356, 26, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-06 02:36:34'),
(357, 26, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-06 02:36:42'),
(358, 26, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-06 02:36:51'),
(359, 26, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-06 02:36:59'),
(360, 26, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-06 02:37:07'),
(361, 26, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 02:37:15'),
(362, 26, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-06 02:37:25'),
(363, 27, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-06 02:42:07'),
(364, 27, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-06 02:42:14'),
(365, 27, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-06 02:42:29'),
(366, 27, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon dan SKRD', '2019-12-06 02:42:36'),
(367, 27, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon dan SKRD', '2019-12-06 02:42:46'),
(368, 27, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 02:42:53'),
(369, 27, 'Pemohon membayar retribusi dan mengambil Keputusan tentang izin yang dimohon beserta  SSRD', '2019-12-06 02:43:01'),
(370, 28, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-06 02:47:49'),
(371, 28, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-06 02:47:54'),
(372, 28, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-06 02:48:03'),
(373, 28, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-06 02:48:10'),
(374, 28, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-06 02:48:19'),
(375, 28, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambi', '2019-12-06 02:48:27'),
(376, 28, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-06 02:48:35'),
(377, 29, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-06 02:54:09'),
(382, 29, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-06 02:55:26'),
(383, 29, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-06 02:55:34'),
(384, 29, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-06 02:55:46'),
(385, 29, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-06 02:55:54'),
(386, 29, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-06 02:56:02'),
(387, 29, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 02:56:09'),
(388, 29, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-06 02:56:18'),
(389, 30, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-06 02:58:38'),
(390, 30, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-06 02:58:48'),
(391, 30, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-06 02:58:59'),
(392, 30, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-06 02:59:07'),
(393, 30, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-06 02:59:15'),
(394, 30, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 02:59:33'),
(395, 30, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-06 02:59:42'),
(396, 31, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-06 03:05:51'),
(397, 31, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-06 03:05:59'),
(398, 31, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-06 03:06:07'),
(399, 31, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-06 03:06:15'),
(400, 31, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-06 03:06:22'),
(401, 31, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-06 03:06:30'),
(402, 31, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-06 03:06:38'),
(403, 31, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-06 03:06:47'),
(404, 33, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 10:35:18'),
(405, 33, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 10:35:27'),
(406, 33, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 10:35:36'),
(407, 33, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 10:35:43'),
(408, 33, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 10:35:52'),
(409, 33, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 10:36:00'),
(410, 33, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 10:36:10'),
(411, 34, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 10:39:04'),
(412, 34, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 10:39:12'),
(413, 34, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 10:39:20'),
(414, 34, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 10:39:28'),
(415, 34, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 10:39:46'),
(416, 34, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 10:39:55'),
(417, 35, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 10:45:50'),
(418, 35, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 10:45:58'),
(419, 35, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 10:46:07'),
(420, 35, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 10:46:15'),
(421, 35, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 10:46:23'),
(422, 35, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 10:46:32'),
(423, 36, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 10:50:13'),
(424, 36, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 10:50:21'),
(425, 36, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 10:50:29'),
(426, 36, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 10:50:38'),
(427, 36, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 10:50:46'),
(428, 36, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 10:50:54'),
(429, 37, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 10:55:07'),
(430, 37, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 10:55:16'),
(431, 37, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 10:55:23'),
(432, 37, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 10:55:31'),
(433, 37, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 10:55:39'),
(434, 37, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif', '2019-12-08 10:55:51'),
(435, 38, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 11:31:22'),
(436, 38, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 11:31:31'),
(437, 38, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 11:32:10'),
(438, 38, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 11:32:18'),
(439, 38, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 11:32:26'),
(440, 38, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 11:32:34'),
(441, 38, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 11:32:42'),
(442, 39, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 11:36:36'),
(443, 39, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 11:36:44'),
(444, 39, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 11:36:53'),
(445, 39, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 11:37:02'),
(446, 39, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 11:37:10'),
(447, 39, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 11:37:19'),
(448, 39, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif', '2019-12-08 11:37:28'),
(449, 40, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 11:40:54'),
(450, 40, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 11:41:03'),
(451, 40, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 11:41:12'),
(452, 40, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 11:41:20'),
(453, 40, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 11:41:28'),
(454, 40, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 11:41:36'),
(455, 40, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 11:41:44'),
(456, 41, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 11:45:25'),
(457, 41, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 11:45:33'),
(458, 41, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 11:45:41'),
(459, 41, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 11:45:50'),
(460, 41, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 11:46:02'),
(461, 41, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 11:46:11'),
(462, 41, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 11:46:20'),
(463, 41, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 11:46:29'),
(464, 42, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 11:55:57'),
(465, 42, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 11:56:09'),
(466, 42, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 11:56:18'),
(467, 42, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 11:56:28'),
(468, 42, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 11:56:36'),
(469, 42, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 11:56:44'),
(470, 42, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 11:56:52'),
(471, 42, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 11:57:01'),
(472, 45, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 12:08:40'),
(473, 45, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 12:08:50'),
(474, 45, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 12:08:57'),
(475, 45, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 12:09:08'),
(476, 45, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 12:09:17'),
(477, 45, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 12:09:28'),
(478, 45, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 12:09:36'),
(479, 45, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 12:09:44'),
(480, 47, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 12:13:17'),
(481, 47, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 12:13:26'),
(482, 47, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 12:13:35'),
(483, 47, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 12:13:44'),
(484, 47, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 12:16:56'),
(485, 47, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 12:17:04'),
(486, 47, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 12:17:13'),
(487, 47, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 12:17:22'),
(488, 49, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 12:20:20'),
(489, 49, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 12:20:30'),
(490, 49, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 12:20:38'),
(491, 49, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 12:20:48'),
(492, 49, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 12:20:55'),
(493, 49, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 12:21:03'),
(494, 49, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 12:21:11'),
(495, 49, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 12:21:20'),
(496, 50, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 12:24:26'),
(497, 50, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 12:24:39'),
(498, 50, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 12:24:48'),
(499, 50, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 12:24:57'),
(500, 50, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 12:25:07'),
(501, 50, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 12:25:15'),
(502, 50, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 12:25:23'),
(503, 50, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 12:25:32'),
(504, 53, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 12:30:53'),
(505, 53, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 12:31:01'),
(506, 53, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 12:31:11'),
(507, 53, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 12:31:20'),
(508, 53, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 12:31:30'),
(509, 53, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 12:31:39'),
(510, 53, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 12:31:48'),
(511, 53, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 12:31:56'),
(512, 52, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 12:56:47'),
(513, 52, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 12:56:56'),
(514, 52, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 12:57:04'),
(515, 52, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 12:57:13'),
(516, 52, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 12:57:21'),
(517, 52, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 12:57:28'),
(518, 52, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 12:57:44'),
(519, 52, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 12:57:55'),
(520, 54, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 19:41:11'),
(521, 54, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 19:41:19'),
(522, 54, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 19:41:29'),
(523, 55, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 19:47:16'),
(524, 55, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 19:47:26'),
(525, 55, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 19:47:36'),
(526, 55, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 19:47:45'),
(527, 55, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 19:47:54'),
(528, 55, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 19:48:03'),
(529, 55, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 19:48:12'),
(530, 56, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 19:52:32'),
(531, 56, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 19:52:40'),
(532, 56, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 19:52:48'),
(533, 56, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 19:52:58'),
(534, 57, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 19:58:24'),
(535, 57, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 19:58:31'),
(536, 57, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 19:58:40'),
(537, 58, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 20:03:24'),
(538, 58, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 20:03:34'),
(539, 58, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 20:03:43'),
(540, 58, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 20:03:55'),
(541, 59, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:08:03'),
(542, 59, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:08:10'),
(543, 59, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:08:19'),
(544, 59, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:08:27'),
(545, 59, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:08:36'),
(546, 59, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:08:45'),
(547, 59, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:08:53'),
(548, 60, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:13:25'),
(549, 60, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:13:34'),
(550, 60, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:13:43'),
(551, 60, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:13:51'),
(552, 60, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:13:59'),
(553, 60, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:14:06'),
(554, 60, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:14:14'),
(555, 61, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:17:55'),
(556, 61, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:18:03'),
(557, 61, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:18:11'),
(558, 61, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:18:19'),
(559, 61, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:18:28'),
(560, 61, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:18:36'),
(561, 61, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:18:43'),
(562, 62, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:23:45'),
(563, 62, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:24:37');
INSERT INTO `prosedure` (`id`, `id_izin`, `mekanisme_pelayanan`, `created_at`) VALUES
(564, 62, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif', '2019-12-08 20:24:45'),
(565, 63, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:28:40'),
(566, 63, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:28:49'),
(567, 63, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:28:58'),
(568, 63, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:29:05'),
(569, 63, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:29:14'),
(570, 63, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:29:22'),
(571, 63, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:29:30'),
(572, 65, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:33:13'),
(573, 65, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:33:22'),
(574, 65, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:33:29'),
(575, 65, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:33:37'),
(576, 65, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:33:45'),
(577, 65, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:33:53'),
(578, 65, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:34:01'),
(579, 64, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:38:16'),
(580, 64, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:38:25'),
(581, 64, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:38:33'),
(582, 64, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:38:40'),
(583, 64, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:38:48'),
(584, 64, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:38:56'),
(585, 64, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:39:06'),
(586, 66, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:46:47'),
(587, 66, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:46:55'),
(588, 66, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:47:04'),
(589, 66, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:47:12'),
(590, 66, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:47:19'),
(591, 66, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:47:27'),
(592, 66, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:47:35'),
(593, 67, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 20:49:41'),
(594, 67, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 20:49:50'),
(595, 67, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 20:49:58'),
(596, 67, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 20:50:07'),
(597, 67, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 20:50:15'),
(598, 67, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 20:50:23'),
(599, 67, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 20:50:31'),
(600, 67, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 20:50:39'),
(601, 68, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-08 20:55:39'),
(602, 68, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-08 20:55:56'),
(603, 68, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-08 20:56:06'),
(604, 68, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-08 20:56:14'),
(605, 68, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-08 20:56:23'),
(606, 68, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-08 20:56:31'),
(607, 68, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-08 20:56:39'),
(608, 71, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:02:06'),
(609, 71, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:02:16'),
(610, 71, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:02:23'),
(611, 71, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:02:31'),
(612, 71, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:02:41'),
(613, 71, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:02:49'),
(614, 71, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:02:58'),
(615, 71, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:03:08'),
(616, 72, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:19:46'),
(617, 72, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:19:54'),
(618, 72, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:20:01'),
(619, 72, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:20:10'),
(620, 72, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:20:20'),
(621, 72, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:20:29'),
(622, 72, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:20:38'),
(623, 72, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:20:47'),
(624, 73, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:25:17'),
(625, 73, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:25:25'),
(626, 73, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:25:32'),
(627, 73, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:25:41'),
(628, 73, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:25:49'),
(629, 73, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:25:57'),
(630, 73, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:26:04'),
(631, 73, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:26:13'),
(632, 74, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:29:22'),
(633, 74, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:29:36'),
(634, 74, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:29:44'),
(635, 74, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:29:53'),
(636, 74, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:30:02'),
(637, 74, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:30:10'),
(638, 74, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:30:18'),
(639, 74, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:30:28'),
(640, 75, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:33:24'),
(641, 75, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:33:31'),
(642, 75, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:33:38'),
(643, 75, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:33:46'),
(644, 75, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:33:55'),
(645, 75, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:34:06'),
(646, 75, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:34:14'),
(647, 75, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:34:22'),
(648, 78, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(649, 78, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(650, 78, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(651, 78, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(652, 78, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(653, 78, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(654, 78, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(655, 78, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(656, 79, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(657, 79, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(658, 79, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(659, 79, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(660, 79, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(661, 79, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(662, 79, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(663, 79, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(664, 80, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(665, 80, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(666, 80, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(667, 80, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(668, 80, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(669, 80, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(670, 80, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(671, 80, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(672, 81, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(673, 81, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(674, 81, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(675, 81, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(676, 81, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(677, 81, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(678, 81, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(679, 81, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(680, 82, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(681, 82, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(682, 82, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(683, 82, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(684, 82, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(685, 82, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(686, 82, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(687, 82, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(688, 83, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(689, 83, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(690, 83, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(691, 83, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(692, 83, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(693, 83, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(694, 83, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(695, 83, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(696, 84, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(697, 84, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(698, 84, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(699, 84, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(700, 84, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(701, 84, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(702, 84, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(703, 84, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(704, 85, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(705, 85, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(706, 85, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(707, 85, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(708, 85, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(709, 85, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(710, 85, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(711, 85, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(712, 86, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(713, 86, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(714, 86, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(715, 86, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(716, 86, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(717, 86, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(718, 86, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(719, 86, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(720, 87, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(721, 87, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(722, 87, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(723, 87, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(724, 87, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(725, 87, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(726, 87, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(727, 87, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(728, 88, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(729, 88, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(730, 88, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(731, 88, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(732, 88, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(733, 88, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(734, 88, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(735, 88, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(736, 89, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(737, 89, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(738, 89, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(739, 89, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(740, 89, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(741, 89, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(742, 89, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(743, 89, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(744, 90, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-08 21:38:44'),
(745, 90, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-08 21:38:55'),
(746, 90, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-08 21:39:04'),
(747, 90, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-08 21:39:12'),
(748, 90, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:23'),
(749, 90, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-08 21:39:32'),
(750, 90, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-08 21:39:40'),
(751, 90, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-08 21:39:49'),
(752, 91, 'Pemohon melakukan pendaftaran dan pemrosesan izin melalui sistem OSS <a href=\"https://www.oss.go.id/oss/\">https://www.oss.go.id/oss/</a>', '2019-12-09 02:34:21'),
(753, 91, 'Pemohon mendapatkan Nomor Induk Berusaha (NIB) an Izin Usaha yang belum efektif', '2019-12-09 02:34:28'),
(754, 91, 'Pemohon datang ke DPMPTSP untuk melakukan pemenuhan komitmen', '2019-12-09 02:34:35'),
(755, 91, 'DPMPTSP mengajukan rekoemdasi pemenuhan komitmen ke Perangkat Daerah Teknis', '2019-12-09 02:34:51'),
(756, 91, 'Perangkat Daerah teknis mengeluarkan surat rekomendasi pemenuhan komitmen', '2019-12-09 02:34:59'),
(757, 91, 'DPMPTSP melakukan notifikasi webform terhadap pemenuhan komitmen', '2019-12-09 02:35:06'),
(758, 91, 'DPMPTSP memberikan informasi kepada pemohon izin sudah berlaku efektif.', '2019-12-09 02:35:15'),
(759, 92, 'Pemohon datang langsung ke DPMPTSP dengan membawa persyaratan dan surat permohonan/ mengisi blangko permohonan yang telah disediakan', '2019-12-09 02:38:53'),
(760, 92, 'Berkas permohonan di verifikasi dan divalidasi', '2019-12-09 02:39:06'),
(761, 92, 'DPMPTSP mengajukan rekomendasi teknis ke Perangkat Daerah Teknis/ meninjau ke lokasi usaha bersama dengan Tim Teknis Perizinan', '2019-12-09 02:39:15'),
(762, 92, 'Perangkat Daerah Teknis mengeluarkan surat rekomendasi teknis dan dikirim ke DPMPTSP/ Tim Membuat BA hasil tinjauan lapangan', '2019-12-09 02:39:31'),
(763, 92, 'Berdasarkan rekomendasi teknis/ BA Hasil tinjauan lapangan, permohonan izin di proses dengan membuat Konsep Keputusan tentang Izin yang dimohon', '2019-12-09 02:40:36'),
(764, 92, 'Kepala DPMPTSP menandatangani keputusan tentang izin yang dimohon', '2019-12-09 02:40:45'),
(765, 92, 'DPMPTSP menginformasikan kepada pemohon izin telah selesai diproses dan dapat diambil', '2019-12-09 02:40:55'),
(766, 92, 'Pemohon mengambil Keputusan tentang Izin yang dimohon', '2019-12-09 02:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu_access`
--

CREATE TABLE `tb_menu_access` (
  `id_menu` int(11) NOT NULL,
  `gid` int(20) UNSIGNED NOT NULL,
  `nama_menu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `allow` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_menu_access`
--

INSERT INTO `tb_menu_access` (`id_menu`, `gid`, `nama_menu`, `icon`, `link`, `parent`, `child`, `allow`) VALUES
(1, 1, 'Home', 'fa fa-home', 'dashboard', '0', '1', 1),
(4, 1, 'Administrator', 'fa fa-gear', '#', '0', '03.10', 1),
(5, 1, 'User Pengguna', 'fa fa-circle-o', 'user', '03.10', '03.10', 1),
(6, 1, 'Group User', 'fa fa-circle-o', 'group', '03.10', '03.10', 1),
(7, 1, 'Koneten Web', 'fa fa-globe', '#', '0', '1.01', 1),
(9, 1, 'Visi-Misi & Tupoksi', 'fa fa-circle-o', 'visi_misi', '1.01', '1.01', 1),
(12, 1, 'Pengaduan Online', 'fa fa-circle-o', 'pengaduan', '1.01', '1.01', 1),
(13, 1, 'Berita', 'fa fa-circle-o', 'post', '1.01', '1.01', 1),
(16, 1, 'Master', 'fa  fa-archive', '#', '0', '1.02', 1),
(32, 1, 'Pengaduan', 'fa fa-bullhorn', '#', '0', '1.05', 1),
(33, 1, 'Pengaduan', 'fa fa-circle-o', 'pengaduan', '1.05', '1.05', 1),
(34, 1, 'Saran & Masukan', 'fa fa-circle-o', 'saran_masukan', '1.05', '1.05', 0),
(40, 2, 'Home', 'fa fa-home', 'dashboard', '02.00', '02.00', 1),
(41, 2, 'Koneten Web', 'fa fa-globe', '#', '0', '02.01', 1),
(42, 2, 'Berita', 'fa fa-circle-o', 'web/berita', '02.01', '02.01', 1),
(43, 2, 'Visi & Misi', 'fa fa-circle-o', 'web/visi_misi', '02.01', '02.01', 1),
(44, 2, 'Tupoksi', 'fa fa-circle-o', 'web/tupoksi', '02.01', '02.01', 1),
(49, 2, 'Pengumuman', 'fa fa-circle-o', 'Pengumuman', '02.01', '02.01', 1),
(60, 2, 'Back Office', 'fa  fa-building', '#', '0', '02.04', 1),
(67, 2, 'Pengaduan', 'fa fa-circle-o', 'pengaduan', '02.05', '02.05', 1),
(68, 2, 'Saran & Masukan', 'fa fa-circle-o', 'saran_masukan', '02.05', '02.05', 1),
(69, 2, 'Laporan', 'fa fa-file-text', '#', '0', '02.06', 1),
(103, 1, 'Koefisien IMB', 'fa fa fa-circle-o', 'koefisien_imb', '1.02', '1.02', 1),
(104, 1, 'Data Kendaraan', 'fa fa-circle-o', 'data_kendaraan', '1.03', '1.03', 1),
(105, 1, 'download', 'fa fa-circle-o', 'download', '1.01', '1.01', 1),
(106, 2, 'Data Kendaraan', 'fa fa-circle-o', 'data_kendaraan', '02.03', '02.03', 1),
(107, 1, 'Struktur PPID', 'fa fa-circle-o', 'ppid/struktur', '1.07', '1.07', 1),
(108, 1, 'Info Publik', 'fa fa-circle-o', 'ppid/ip', '1.07', '1.07', 1),
(109, 1, 'Info Berkala', 'fa fa-circle-o', 'ppid/ib', '1.07', '1.07', 1),
(110, 1, 'Info Sertamerta', 'fa fa-circle-o', 'ppid/ism', '1.07', '1.07', 1),
(111, 1, 'Info Setiap Saat', 'fa fa-circle-o', 'ppid/iss', '1.07', '1.07', 1),
(113, 1, 'Info Dikecuali', 'fa fa-circle-o', 'ppid/iyd', '1.07', '1.07', 1),
(114, 1, 'PPID', 'fa fa-university', '#', '0', '1.07', 1),
(115, 1, 'Pelayanan Informasi', 'fa fa-circle-o', 'ppid/pi', '1.07', '1.07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`) VALUES
('admin', '95386a9d44e7e514564821d9f4ba21b2', 'suwanda', 'suwandaoutsider@gmail.com', '089678779084', '1', 'N', '95386a9d44e7e514564821d9f4ba21b2'),
('cbuser1', '4d119f7dce285786697e155455fa6786', 'nia', 'nia@gmail.com', '089478395764', '3', 'Y', '4d119f7dce285786697e155455fa6786'),
('puji', '0dd7a1c13df066dae71d4b8a520c52fc', 'puji', 'puji@gmail.com', '089635475897', '2-mpp.prov', 'Y', '0dd7a1c13df066dae71d4b8a520c52fc'),
('cbuser4', '572e1e11bddd4e8316aa188519f9b697', 'somad abdul1', '', '', '3- Bidang', 'Y', '572e1e11bddd4e8316aa188519f9b697');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`),
  ADD UNIQUE KEY `kd_dinas` (`kd_dinas`);

--
-- Indexes for table `jenis_izin`
--
ALTER TABLE `jenis_izin`
  ADD PRIMARY KEY (`id_izin`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `prosedure`
--
ALTER TABLE `prosedure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_izin` (`id_izin`);

--
-- Indexes for table `tb_menu_access`
--
ALTER TABLE `tb_menu_access`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `gid` (`gid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_session`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
