-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2025 at 09:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalmotor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2022-03-18 06:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(5, 'test@gmail.com', 8, '2022-03-12 01:26:27', '2022-03-19 01:26:27', 'I am interested in obtaining a single bike and Minimum Tools for accessories', 1, '2022-03-11 17:26:27'),
(6, 'test@gmail.com', 1, '2022-03-14 12:38:02', '2022-04-14 12:38:02', 'I would like two bikes with helmets', 1, '2022-03-14 04:38:02'),
(10, 'test@gmail.com', 39, '2022-05-01 19:25:11', '2022-05-02 19:25:11', 'I only rent one bike', 2, '2022-05-01 11:25:11'),
(14, 'awaludinharbelubun98@gmail.com', 8, '2025-01-11 22:29:00', '2025-01-17 22:29:00', 'aa', 1, '2025-01-10 13:29:55'),
(15, 'awaludinharbelubun98@gmail.com', 8, '2025-01-14 22:32:00', '2025-01-30 22:32:00', 'nnnnnn', 1, '2025-01-10 13:32:49'),
(16, 'test@gmail.com', 59, '2025-01-11 15:53:00', '2025-01-12 15:53:00', '.', 0, '2025-01-11 06:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(26, 'YAMAHA', '2025-01-10 21:04:03', '2025-01-10 21:13:42'),
(27, 'HONDA', '2025-01-10 21:04:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(4, 'Tommy Vercetti', 'test@gmail.com', '09123456789', 'I would like my entire account to be deleted.', '2022-03-11 17:46:43', 1),
(10, 'Awaludin harbelubun', 'awaludinharbelubun98@gmail.com', '08223832156', 'fuck', '2025-01-10 13:28:34', NULL),
(11, 'abas', 'user1@gmail.com', 'assxa121133', 'hh', '2025-01-25 08:17:23', NULL),
(12, 'abas', 'user1@gmail.com', 'assxa121133', 'hh', '2025-01-25 08:18:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																												<p><strong>Ketentuan Sewa Motor di Sorong</strong></p><p><strong>(1) DEFINISI PERALATAN</strong><br>\r\nDimana pun digunakan dalam dokumen ini, istilah \"peralatan\" mencakup semua motor yang disewakan oleh <strong>Rental Motor Sorong</strong>. <strong>Rental Motor Sorong</strong>, agen, karyawan, dan pegawainya tidak bertanggung jawab atas cedera pribadi atau kerusakan properti, kehilangan, atau keterlambatan yang dialami oleh siapa pun yang disebabkan oleh kelalaian operator transportasi atau penyedia jasa lainnya dalam layanan atau produk yang ditawarkan dalam penyewaan ini. <strong>Rental Motor Sorong</strong> juga tidak bertanggung jawab atas cedera, kematian, kerusakan, kehilangan, atau keterlambatan akibat transportasi atau kejadian di luar kendali langsung perusahaan, agen, atau pemasok, maupun karena force majeure.</p><p>Penyewa yang mengikuti rencana perjalanan yang disarankan melakukannya atas risiko sendiri dan setuju untuk tidak menuntut <strong>Rental Motor Sorong</strong> atas cedera atau kematian akibat kecelakaan. Kami sangat menyarankan penggunaan helm standar yang telah disetujui selama mengendarai motor. Helm dapat disediakan tanpa biaya tambahan. Motor yang disediakan dalam kondisi operasional yang memuaskan, dan penyewa setuju untuk menggunakan motor tersebut dengan risiko sendiri atau melaporkan kekurangan kepada perwakilan perusahaan. Spesifikasi individu motor dapat berubah berdasarkan ketersediaan komponen pengganti. Panduan penggunaan, perakitan, dan perawatan motor tidak akan diberikan, dan penyewa memastikan bahwa mereka kompeten serta familiar dengan penggunaan motor multi-kecepatan.</p><p><strong>(2) PERAWATAN, PENYESUAIAN, DAN TANGGUNG JAWAB</strong><br>\r\nMeskipun semua motor kami telah diservis secara profesional sebelum dikirim, motor mungkin memerlukan penyetelan atau perawatan selama masa sewa; biaya perawatan tersebut menjadi tanggung jawab penyewa. <strong>Rental Motor Sorong</strong> akan menanggung biaya kerusakan yang diakibatkan oleh kegagalan peralatan di luar kendali penyewa, seperti kerusakan saat pengiriman atau bagian yang aus. Setiap kekurangan harus dilaporkan ke <strong>Rental Motor Sorong</strong> dalam waktu 48 jam setelah menerima motor. Untuk penggantian biaya perbaikan atau penggantian bagian, penyewa harus memberikan foto bagian yang rusak atau aus serta faktur untuk penggantian atau layanan tersebut.</p><p><strong>Rental Motor Sorong</strong> bertanggung jawab atas kerusakan struktural seperti rangka yang rusak, bantalan roda yang aus, suspensi, dan hub roda. Namun, perusahaan tidak bertanggung jawab atas:</p><ul>\r\n<li>Penyetelan gigi</li>\r\n<li>Kebocoran ban</li>\r\n<li>Jari-jari roda patah</li>\r\n<li>Rantai patah</li>\r\n<li>Derailleur rusak</li>\r\n<li>Drop-out patah</li>\r\n<li>Kerusakan pelek roda</li>\r\n<li>Jok robek</li>\r\n<li>Ulir pedal crank aus</li>\r\n<li>Kerusakan yang terjadi di luar kendali perusahaan akibat penggunaan atau penyalahgunaan motor oleh penyewa.</li>\r\n</ul><p>Jika Anda melakukan tur motor tanpa bantuan, kami sangat menyarankan Anda memiliki pengetahuan dasar tentang perawatan motor. Daftar bengkel motor terdekat dapat disediakan atas permintaan.</p><p align=\"justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p><strong>(3) TANGGUNG JAWAB ATAS KERUSAKAN ATAU KEHILANGAN</strong><br>\r\nPenyewa setuju untuk mengembalikan motor dalam kondisi baik seperti saat diterima, dengan pengecualian untuk keausan normal, dan menyetujui untuk memperbaiki atau mengganti motor yang hilang, dicuri, rusak, atau bagian yang hilang, atau mengganti biaya kerusakan kepada <strong>Rental Motor Sorong</strong>. Dengan demikian, tanpa memandang pihak yang bersalah, penyewa memahami dan setuju untuk bertanggung jawab atas pencurian atau kerusakan pada motor tersebut.</p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p>Kami tidak akan menjual, mendistribusikan, atau menyewakan informasi pribadi Anda kepada pihak ketiga kecuali jika kami memiliki izin Anda atau diwajibkan oleh hukum untuk melakukannya. Kami dapat menggunakan informasi pribadi Anda untuk mengirimkan informasi promosi tentang pihak ketiga yang menurut kami mungkin menarik bagi Anda, jika Anda memberi tahu kami bahwa Anda menginginkan hal ini.</p>\r\n<p>Jika Anda merasa bahwa informasi yang kami miliki tentang Anda tidak benar atau tidak lengkap, harap kirim email kepada kami sesegera mungkin. Kami akan segera memperbarui informasi yang ditemukan tidak akurat.</p>'),
(3, 'About Us ', 'aboutus', '										<p style=\"font-size: 14px; text-align: justify;\"><strong>Sistem Rental Motor Sorong</strong>&nbsp;adalah cara menyenangkan, gratis, dan terpercaya untuk menyewa motor secara instan secara online. Kami adalah situs web terkemuka dan platform marketplace pertama di Kota Sorong. Bergabunglah dengan ribuan pengguna lain di Sistem Rental Motor Sorong untuk menyewa motor yang selalu Anda inginkan. Melakukan penyewaan secara online aman dan nyaman.</p><p style=\"font-size: 14px; text-align: justify;\">Kami menyediakan situs web yang ramah pengguna di mana Anda dapat menemukan dan memesan berbagai jenis motor secara online. Perusahaan kami menjamin harga terbaik yang terjangkau, dengan ulasan terpercaya dari penyewa sebelumnya dan tanpa biaya pemesanan!</p><p style=\"font-size: 14px; text-align: justify;\">Kami bertujuan mendukung lingkungan bersih dan hijau dengan mendorong penggunaan sepeda motor sebagai alternatif perjalanan yang hemat bahan bakar dan ramah lingkungan. Dengan motor, Anda dapat merasakan pengalaman perjalanan yang lebih kaya dibandingkan kendaraan lain. Anda dapat mengunjungi tempat-tempat indah dan tersembunyi tanpa merusak lingkungan.</p><p style=\"font-size: 14px; text-align: justify;\"><strong>Rental Motor Sorong</strong>&nbsp;berdedikasi memberikan pengalaman terbaik dalam menyewa motor secara online untuk semua orang. Kami ingin membuat proses penyewaan menjadi pengalaman yang menyenangkan dan berkesan bagi semua. Bergabunglah dengan komunitas kami dan sewa motor Anda hari ini!</p>										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																																						<div><p><strong>FAQ: Cara Reservasi dan Kebijakan Rental Motor di Sorong</strong></p>\r\n<p><strong>Bagaimana cara membuat reservasi untuk rental motor?</strong><br>\r\nReservasi motor dilakukan secara online melalui situs web perusahaan. Buat akun dan cari motor yang Anda inginkan. Klik foto motor, dan Anda akan diarahkan ke halaman baru. Di bawah bagian \"Pesan Sekarang\", masukkan tanggal penggunaan motor tersebut, lalu klik \"Pesan\". Pembayaran dilakukan di toko saat Anda mengambil motor.</p>\r\n<p><strong>Apa kebijakan pembatalan Anda?</strong><br>\r\nPerusahaan memiliki kebijakan pembatalan 5 hari. Jika pembatalan dilakukan 5 hari atau kurang sebelum tanggal rental, Anda akan dikenakan biaya sebesar <strong>Rp100.000</strong>. Namun, jika pembatalan dilakukan 6 hari atau lebih sebelumnya, tidak ada biaya yang dikenakan.</p>\r\n<p><strong>Apakah ada biaya jika saya tidak datang pada tanggal rental?</strong><br>\r\nYa, jika Anda tidak hadir pada tanggal rental yang sudah dipesan, Anda akan dikenakan biaya sebesar <strong>Rp200.000</strong>.</p>\r\n<p><strong>Jika saya mengembalikan motor lebih awal, apakah saya mendapatkan pengembalian uang?</strong><br>\r\nTidak, setelah Anda memesan rental, sistem inventaris kami secara ketat memesan model dan ukuran motor tersebut untuk durasi yang Anda pilih. Artinya, orang lain tidak dapat menyewa motor tersebut selama periode tersebut. Jika Anda tidak yakin dengan rencana perjalanan atau durasi rental, kami menyarankan untuk memilih durasi yang sesuai dengan kebutuhan Anda. Jika ingin memperpanjang masa rental, silakan hubungi kami untuk konfirmasi tarif dan ketersediaan. Ketersediaan dan tarif hanya dijamin jika Anda telah memesan dan membayar penuh rental Anda.</p>\r\n<p><strong>Kapan motor multi-hari harus dikembalikan?</strong></p>\r\n<ul>\r\n<li><strong>Rental 24 Jam</strong>: Motor harus dikembalikan dalam waktu 24 jam dari waktu pengambilan. Contohnya, jika Anda mengambil motor pada pukul 12:00 siang, motor harus dikembalikan sebelum pukul 12:00 siang hari berikutnya.</li>\r\n<li><strong>Rental 3 Hari</strong>: Motor harus dikembalikan pada hari ketiga sebelum toko tutup. Misalnya, jika Anda mengambil motor pada Senin pukul 10:00, motor harus dikembalikan pada Rabu sebelum pukul 18:00.</li>\r\n<li><strong>Rental Mingguan</strong>: Motor harus dikembalikan pada hari ketujuh sebelum toko tutup. Contohnya, jika Anda mengambil motor pada Senin, motor harus dikembalikan pada Minggu sebelum pukul 18:00.</li>\r\n</ul>\r\n<p>Jika Anda tidak dapat mengembalikan motor pada tanggal dan waktu yang telah disepakati, segera beri tahu kami. Keterlambatan pengembalian akan dikenakan denda <strong>Rp100.000</strong> per hari.</p>\r\n<p><strong>Siapa yang harus mengisi surat pernyataan?</strong><br>\r\nSurat pernyataan wajib diisi oleh setiap individu. Untuk penyewa di bawah usia 18 tahun (anak di bawah umur), surat harus diisi dengan pendampingan wali.</p>\r\n<p><strong>Apakah deposit diperlukan?</strong><br>\r\nYa, deposit minimal 50% diperlukan untuk mengamankan reservasi motor melalui <strong>Gopay atau transfer bank</strong>. Sisa pembayaran (jika ada) dilakukan saat mengambil motor yang dipesan. Anda juga harus membawa <strong>identitas resmi</strong> (contoh: SIM, Paspor, atau KTP) saat pengambilan motor.</p></div>										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'test@gmail.com', '2022-02-03 11:44:51'),
(5, 'email@gmail.com', '2022-02-09 13:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'It is much easier to pick your favorite bike.', '2022-02-10 07:44:31', 1),
(2, 'test@gmail.com', 'When I needed it most, it was more convenient.', '2022-05-01 07:46:05', 1),
(3, 'email@gmail.com', 'The website saves me a lot of time.', '2022-02-03 11:27:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(4, 'maciiiiiii', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0123456789', '24 04 204', '24 april 2020', 'waikabubak', 'Indonesia', '2022-04-19 20:03:36', '2025-01-11 06:29:01'),
(5, 'Carl Johnson', 'email@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09090909099', '04/11/1968', 'Matina', 'Davao City', 'Philippines', '2022-02-03 11:21:11', '2022-11-02 14:41:17'),
(24, 'ermin', 'erminbuton@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '08219963377', NULL, NULL, NULL, NULL, '2025-01-11 06:37:50', NULL),
(25, 'abas', 'user1@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '12345678912', NULL, NULL, NULL, NULL, '2025-01-25 08:01:05', NULL),
(26, 'abu', 'user2@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '12345678912', NULL, NULL, NULL, NULL, '2025-01-25 08:04:15', NULL),
(27, 'abu', 'user2@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '12345678912', NULL, NULL, NULL, NULL, '2025-01-25 08:05:37', NULL),
(28, 'user3', 'user3@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '08124885708', NULL, NULL, NULL, NULL, '2025-01-25 08:06:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `HelmetEquip` int(11) DEFAULT NULL,
  `BikebagEquip` int(11) DEFAULT NULL,
  `PatchkitEquip` int(11) DEFAULT NULL,
  `SparetubeEquip` int(11) DEFAULT NULL,
  `MinimumtoolsEquip` int(11) DEFAULT NULL,
  `PumpEquip` int(11) DEFAULT NULL,
  `TirepressuregaugeEquip` int(11) DEFAULT NULL,
  `WaterbottleEquip` int(11) DEFAULT NULL,
  `LockEquip` int(11) DEFAULT NULL,
  `MirrorEquip` int(11) DEFAULT NULL,
  `FannyEquip` int(11) DEFAULT NULL,
  `CompassEquip` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `Position`, `ModelYear`, `Quantity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `HelmetEquip`, `BikebagEquip`, `PatchkitEquip`, `SparetubeEquip`, `MinimumtoolsEquip`, `PumpEquip`, `TirepressuregaugeEquip`, `WaterbottleEquip`, `LockEquip`, `MirrorEquip`, `FannyEquip`, `CompassEquip`, `RegDate`, `UpdationDate`) VALUES
(1, 'Exploro RACE GRX 1X', 8, 'Ready for speed with simple, clean & aero Shimano GRX 1x. Top speed was never this affordable.', 2344, 'Available', 2022, 1, 'th.jpeg', 'th.jpeg', 'th.jpeg', 'th.jpeg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2025-01-10 20:56:20'),
(8, 'aaaa', 9, 'Do you want a lightweight track bike that won’t break the bank? Then the 6KU Urban Track is the bike for you. Our Urban Track features a lightweight aluminum frame and fork. This is one purchase you won’t regret.\r\n', 156, 'Tersedia', 2022, 0, 'th.jpeg', 'URBAN TRACK BIKE (2).jpg', 'URBAN TRACK BIKE (3).jpg', 'URBAN TRACK BIKE (4).jpg', 'URBAN TRACK BIKE (5).jpg', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-11 00:34:34', '2025-01-10 20:59:04'),
(39, 'Arktos 120', 13, 'You have as much (more?) fun powering uphill as you do ripping down.  Our alchemists have blended the best of both for your ideal bike: the Arktos 120. Sure, full-on XC race bikes are super fast and nimble, but hit any legit descent and you’re hanging on like an amateur cowboy on an especially angry bull! Alchemy’s modern geometry combined with our signature Sine Suspension virtually eliminates ‘pedal bob’, providing instant, efficient, forward power to attack climbs, rollers and sprints. And when it’s time to head back down, the 130mm/120mm of FOX Factory, Kashima-coated front/rear suspension punches well above its weight, so you can retake the reins and tame all but the most obstacle-ridden descents (save those for our 135 or 150 models). Wherever flat-out speed, confident descending, and all-day comfort are required, the Arktos 120 lets you earn your reward and then shred it!', 3138, 'Available', 2022, 3, 'Yamaha-Fazzio-125-2-1160x907.jpeg', 'Arktos 120 (2).jpg', 'Arktos 120 (3).jpg', 'Arktos 120 (4).jpg', '', NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-23 09:49:21', '2025-01-10 20:46:15'),
(56, 'Beat X-Ride', 13, 'Baik', 150000, 'Available', 2015, 1, 'th.jpeg', 'th.jpeg', 'th.jpeg', 'th.jpeg', 'th.jpeg', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 21:06:37', NULL),
(57, 'Scoopy', 27, 'Baik', 150000, 'Available', 2015, 1, '3aa0552addbc9394b07f5f050daf3afe.jpg', '3aa0552addbc9394b07f5f050daf3afe.jpg', '3aa0552addbc9394b07f5f050daf3afe.jpg', '3aa0552addbc9394b07f5f050daf3afe.jpg', '3aa0552addbc9394b07f5f050daf3afe.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 21:12:43', NULL),
(58, 'Beat X-Ride', 26, 'Baik', 150000, 'Available', 2015, 1, 'th.jpeg', 'th.jpeg', 'th.jpeg', 'th.jpeg', 'th.jpeg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 21:14:44', NULL),
(59, 'Beat Street', 26, 'Baik', 150000, 'Available', 2023, 1, '1.webp', '1.webp', '1.webp', '1.webp', '1.webp', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 21:16:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
