-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 09:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
('1', 'HUKUM'),
('2', 'EKONOMI'),
('3', 'SOSIAL BUDAYA'),
('4', 'OLAHRAGA');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `komentar` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `id_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `nama`, `email`, `komentar`, `aktif`, `id_berita`) VALUES
('K-01', 'Andri', 'andri@gmail.com', 'Terkait Pemaparan CMS', 'Y', 'B-01');

-- --------------------------------------------------------

--
-- Table structure for table `tambah_post`
--

CREATE TABLE `tambah_post` (
  `id` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tgl_post` date NOT NULL,
  `isi` varchar(1000) NOT NULL,
  `penulis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tambah_post`
--

INSERT INTO `tambah_post` (`id`, `judul`, `tgl_post`, `isi`, `penulis`) VALUES
('B-010', 'Kucing tidur', '2022-09-28', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non&amp;&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diamLorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non&amp;&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diamLorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non&amp;&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diamLorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non&amp;&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat con', 'adi'),
('B-03', 'ABCD', '2022-09-18', 'UBAH TES', 'admin'),
('B-04', 'bcdef', '2022-09-18', 'test', 'admin'),
('B-05', 'TESTING', '2022-09-19', 'YYYYYYYY', 'admin'),
('B-06', 'GAMBAR', '2022-09-20', 'COBA', 'admin'),
('B-07', 'Pemaparan CMS', '2022-09-21', 'CMS Merupakan Singkatan dari Content Management System yang berguna untuk mengatur konten secara realtime berdasarkan database menggunakan beberapa ekstensi seperti CKEditor, KCEDITOR, CSS, Bootstrap, dan PHP', 'jeki'),
('B-08', 'Berita', '2022-09-21', 'Isi Tes sidang', 'alman'),
('B-09', 'XYZ', '2022-09-26', '<p><img alt=\"\" src=\"/ckfinder/userfiles/files/KUCING.jpg\" style=\"height:50px; width:52px\" />TES AJA</p>\r\n', 'adi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `username`, `password`, `level`) VALUES
('P-01', 'Stefanus Adi Nugroho', 'Soreang', 'stefanus@yahoo.com', 'adi', 'admin', 'admin'),
('P-02', 'Ahmad Kasim Fang', 'TKI', 'ahmadkasim@yahoo.com', 'ahmad12', 'kasim15', 'admin'),
('P-03', 'Ah Meng', 'Kopo Permai', 'fang@gmail.com', 'Fang', 'pengurus', 'pengurus'),
('P-04', 'Asep AA', 'Bojongsoang', 'asepyahud@yahoo.com', 'SHANK', '123456', 'pegawai'),
('P-05', 'Asep Herman', 'Cikapundung', 'asepyahud@yahoo.com', 'jeki', '123456', 'pegawai'),
('P-06', 'Alman ', 'Bandung', 'alman@gmail.com', 'alman', 'admin', 'pengurus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tambah_post`
--
ALTER TABLE `tambah_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
