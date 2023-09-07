-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 06:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `about` longtext DEFAULT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `about`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(2, 'One Piece', 'one-piece', '                                                        One Piece menceritakan tentang petualangan seorang anak bernama Monkey D. Luffy yang bercita-cita menjadi raja bajak laut dan menemukan \"One Piece\" setelah terinspirasi oleh Shanks.                                                                 ', 'Eichiro Oda', 'Gramedia', '1638637252_7a102fd12b0b7e0fc6c6.jpeg', NULL, '2021-12-04 11:00:52'),
(12, 'eye shields', 'eye-shields', 'Awal dari Eyeshield 21 menceritakan seputar seorang remaja laki-laki lemah bernama Sena Kobayakawa yang memasuki sekolah pilihannya, SMA Deimon, di mana juga merupakan sekolah teman masa kecilnya, Mamori Anezaki yang diterima tahun lalu. Kemampuan fisik Sena yang berada di atas rata-rata hanyalah berlari, dikarenakan saat kecil ia sering disuruh dan dikerjai teman sebayanya yang nakal untuk dibelikan ini-itu dalam waktu singkat. Bakatnya itu ditemukan oleh quarterback tim American football sekolah itu, Youichi Hiruma. Ia menipu dan memaksa Sena yang polos itu hingga akhirnya bergabung dengan timnya yang saat itu hanya terdiri dari dua orang, Deimon Devil Bats, dan ditempatkan pada posisi running back.', 'Riichiro Inagaki', 'Viz Media', '1638509555_df37e44a537b2f5a411d.jpg', '2021-03-03 22:38:25', '2021-12-02 23:34:39'),
(13, 'Nanatsu no Taizai', 'nanatsu-no-taizai', 'Dikisahkan terdapat 7 dosa besar yang menjadi buronan kerajaan britania, salah satu diantaranya adalah Meliodas yang juga menjadi ketua dari kelompok tersebut. Pada saat itu, pandangan masyarakat britania terhadap kelompok nanatsu no taizai tidak lebih dari kebencian.', 'Nakaba Suzuki', '	Kodansha', '1638511203_21c472b0f27c872f8601.jpg', '2021-12-02 22:06:44', '2021-12-03 00:00:03'),
(14, 'Shokugeki no Shouma', 'shokugeki-no-shouma', 'Shokugeki no Soma bercerita tentang Yukihira Soma, remaja 15 tahun yang jago masak dan punya usaha kedai makanan bareng ayahnya. Suatu hari, ayahnya memasukkan Soma ke Akademi Totsuki, sekolah kuliner elite di Jepang. Awalnya Soma ogah-ogahan, tapi akhirnya dia manut juga dan masuk ke sekolah tersebut.', 'wibu', 'au ah', '1638505172_b99600483ebc5b8aef02.jpg', '2021-12-02 22:19:32', '2021-12-02 23:30:59'),
(15, 'Haikyuu', 'haikyuu', '                                                        Haikyu!! berkisah tentang Shouyou Hinata yang menghidupkan kembali klub voli sekolahnya. Tapi, mereka kalah telak dari tim yang difavoritkan untuk memenangkan turnamen, termasuk Tobio Kageyama yang dijuluki \'Raja Pengadilan\'. Hinata bersumpah untuk mengalahkannya.                                                ', 'Haruichi Furudate', 'M&C!', '1638510825_71bbb253cb002e2f763c.jpg', '2021-12-02 23:37:36', '2021-12-02 23:53:45'),
(16, 'Hunter X Hunter', 'hunter-x-hunter', 'Anime ini bercerita tentang Gon, bocah 12 tahun yang ingin mengikuti jejak ayahnya, Ging. Gon terobsesi pada ayahnya, yang ia kira sudah meninggal. Namun, ternyata sang ayah “hanya” meninggalkannya saat masih bayi untuk menjalani profesi sebagai hunter.\r\n\r\nWalau dititipkan ke bibinya, Gon tidak merasa ditelantarkan. Ia malah menghormati keputusan ayahnya untuk mencapai impian menemukan tempat-tempat bersejarah di seluruh dunia.', 'Yoshihiro Togashi', 'Shueisha', '1638513646_6e26ad4846ed8573a175.jpg', '2021-12-03 00:40:46', '2021-12-03 00:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
