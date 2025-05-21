-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 08 Feb 2024 pada 03.25
-- Versi server: 8.0.31
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-perpustakaan-ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

DROP TABLE IF EXISTS `tbl_anggota`;
CREATE TABLE IF NOT EXISTS `tbl_anggota` (
  `id_anggota` int NOT NULL AUTO_INCREMENT,
  `nim` int DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `alamat` text,
  `no_hp` varchar(15) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_prodi` int DEFAULT NULL,
  `verifikasi` int DEFAULT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`, `foto`, `password`, `id_prodi`, `verifikasi`) VALUES
(1, 42422054, 'Muhamad Nur Ardiyansyah', 'Laki-laki', 'Dukuhturi, Bumiayu', '08193283628', '1706817142_886b0914c29db1c9f97b.jpg', '1234', 3, 1),
(2, 2001, 'Siti', 'Laki-laki', 'Jl.Anggrek No. 12', '081212345678', '1706817174_77da1c5c37765a40c372.jpg', '1234', 2, 1),
(3, 4242507, 'Sartini', 'Perempuan', 'Jl. P. Diponegoro No.08', '081312345678', '1706817197_657d2d7690573d383b53.jpeg', '1234', 3, 1),
(5, 42422061, 'Rudi', 'Laki-laki', 'Jl. P. Diponegoro No.08df', '081218637718', '1706817219_2eea7435b98dcb60adc2.jpg', '1234', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

DROP TABLE IF EXISTS `tbl_buku`;
CREATE TABLE IF NOT EXISTS `tbl_buku` (
  `id_buku` int NOT NULL AUTO_INCREMENT,
  `kode_buku` int DEFAULT NULL,
  `judul_buku` varchar(100) DEFAULT NULL,
  `id_kategori` int DEFAULT NULL,
  `id_penulis` int DEFAULT NULL,
  `id_penerbit` int DEFAULT NULL,
  `id_rak` int DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bahasa` varchar(20) DEFAULT NULL,
  `halaman` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `jml_tersedia` int DEFAULT NULL,
  `jml_dipinjam` int DEFAULT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `kode_buku`, `judul_buku`, `id_kategori`, `id_penulis`, `id_penerbit`, `id_rak`, `isbn`, `tahun`, `bahasa`, `halaman`, `jumlah`, `cover`, `deskripsi`, `jml_tersedia`, `jml_dipinjam`) VALUES
(17, 2147483647, 'Zend Framework 2.X', 13, 5, 5, 5, '978-979-29-3313-01', 2015, 'Indonesia', '123', 123, '1706816066_6125e7474b743d5b81a3.jpg', 'qq', 123, 0),
(18, 2147483647, 'Teknologi Komunikasi Data Modern', 13, 7, 7, 6, '978-979-29-5149-32', 2014, 'Indonesia', '132', 1312, '1706816111_7cd67d9af7f6ae7360f2.jpg', 'pp', 1312, 0),
(15, 2147483647, 'Semua ikan di langit', 6, 9, 5, 4, '978-979-29-5149-31', 2011, 'Indonesia', '120', 134, '1706815902_6e8a75bad7501c62012f.jpeg', 'Buku ini bercerita tentang perjalanan Bus yang di dalamnya terdapat anak kecil dengan panggilan Beliau, dan kecoak bule perempuan bernama Nadheza (Nad). Mereka melakukan perjalanan jauh yang bahkan tidak berada di trayeknya lagi. Lebih jauh dari sekadar perjalanan antar Dipatiukur - Leuwi panjang', 134, 0),
(11, 2147483647, 'Dilan: Dia Adalah Dilanku Tahun 1990', 6, 8, 3, 4, '978-979-29-5149-3', 1992, 'Indonesia', '50', 50, '1706815212_41c7671d5ebf1be68036.jpeg', 'test', 50, 0),
(16, 2147483647, 'Jakarta Sebelum Pagi', 6, 4, 3, 5, '978-979-29-5149-5', 2022, 'Indonesia', '120', 134, '1706816012_ae64e02fd2014da8c0b9.jpeg', 'Jakarta Sebelum Pagi adalah sebuah novel karya Ziggy zezsyazeoviennazabrizkie pemenang sayembara Dewan Kesenian Jakarta pada tahun 2014. Diterbitkan oleh Gramedia Pustaka Utama tahun 2016 dan dicetak ulang tahun 2022. ', 134, 0),
(14, 2147483647, 'Cantik Itu Luka', 6, 4, 4, 4, '978-979-29-3313-1', 2009, 'Indonesia', '120', 20, '1706815780_7eaec8f85667153c35e0.jpeg', 'Cantik itu Luka merupakan novel pertama karya penulis Indonesia, Eka Kurniawan. Pertama kali diterbitkan tahun 2002 atas kerjasama Akademi Kebudayaan Yogyakarta dan Penerbit Jendela. Edisi kedua dan seterusnya, diterbitkan oleh Gramedia Pustaka Utama sejak tahun 2004.', 20, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ebook`
--

DROP TABLE IF EXISTS `tbl_ebook`;
CREATE TABLE IF NOT EXISTS `tbl_ebook` (
  `id_ebook` int NOT NULL AUTO_INCREMENT,
  `judul_ebook` varchar(150) DEFAULT NULL,
  `id_kategori` int DEFAULT NULL,
  `id_penulis` int DEFAULT NULL,
  `id_penerbit` int DEFAULT NULL,
  `isbn` varchar(30) DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bahasa` varchar(20) DEFAULT NULL,
  `halaman` int DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `ebooks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`id_ebook`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_ebook`
--

INSERT INTO `tbl_ebook` (`id_ebook`, `judul_ebook`, `id_kategori`, `id_penulis`, `id_penerbit`, `isbn`, `tahun`, `bahasa`, `halaman`, `cover`, `ebooks`, `deskripsi`) VALUES
(4, 'Pemrogaman Python untuk Ilmu Komputer dan Teknik', 7, 10, 5, '978-979-29-3313-011', 2021, 'Indonesia', 132, '1706816246_32e76fc86edc95f55ef8.jpg', '1706816246_6d2cd8258a1a88208069.pdf', 'qq'),
(5, 'Solusi Cloud Computing dengan Microsoft Azure bagi UMKM', 7, 11, 6, '-', 2014, 'Indonesia', 113, '1706816318_d43f89b638c3492d173d.jpg', '1706816318_03c3f55e467da04ae614.pdf', 'tt'),
(6, 'Sejarah Perkembangan Teknologi Informasi dan Komunikasi', 7, 9, 6, '9789796903955', 2012, 'Indonesia', 112, '1706816478_24e702b0fe2daeab82d7.jpeg', '1706816478_f4111b92c1baa10c63a9.pdf', 'pp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Tutorial'),
(3, 'Matematika'),
(4, 'Sastra'),
(5, 'Sosial'),
(6, 'Novel'),
(7, 'Budaya'),
(8, 'Sejarah'),
(13, 'Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peminjaman`
--

DROP TABLE IF EXISTS `tbl_peminjaman`;
CREATE TABLE IF NOT EXISTS `tbl_peminjaman` (
  `id_pinjam` int NOT NULL AUTO_INCREMENT,
  `no_pinjam` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `id_anggota` int DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `id_buku` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `lama_pinjam` int DEFAULT NULL,
  `tgl_harus_kembali` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `keterlambatan` int DEFAULT NULL,
  `denda` int DEFAULT NULL,
  `status_pinjam` varchar(15) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`id_pinjam`, `no_pinjam`, `tgl_pengajuan`, `id_anggota`, `tgl_pinjam`, `id_buku`, `qty`, `lama_pinjam`, `tgl_harus_kembali`, `tgl_kembali`, `keterlambatan`, `denda`, `status_pinjam`, `ket`) VALUES
(6, '120231228230909', '2023-12-28', 1, '2023-12-31', 3, 1, 7, '2024-01-07', NULL, NULL, NULL, 'Ditolak', 'buku ini tidak boleh dipinjam'),
(5, '120231228230909', '2023-12-28', 1, '2023-12-31', 3, 1, 7, '2024-01-07', NULL, NULL, NULL, 'Diterima', NULL),
(4, '120231228230239', '2023-12-28', 1, '2023-12-29', 1, 1, 2, '2023-12-31', NULL, NULL, NULL, 'Ditolak', 'Lorem Ipsum'),
(8, '120240107070619', '2024-01-07', 1, '2024-01-07', 4, 1, 4, '2024-01-11', NULL, NULL, NULL, 'Diterima', NULL),
(9, '120240201195501', '2024-02-01', 1, '2024-02-02', 11, 1, 7, '2024-02-09', NULL, NULL, NULL, 'Diajukan', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penerbit`
--

DROP TABLE IF EXISTS `tbl_penerbit`;
CREATE TABLE IF NOT EXISTS `tbl_penerbit` (
  `id_penerbit` int NOT NULL AUTO_INCREMENT,
  `nama_penerbit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_penerbit`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_penerbit`
--

INSERT INTO `tbl_penerbit` (`id_penerbit`, `nama_penerbit`) VALUES
(1, 'Gramedia'),
(2, 'Gramedia Widiasarana Indonesia'),
(3, 'Bentang Belia'),
(4, 'Lokomedia'),
(5, 'Erlangga'),
(6, 'Diva Press'),
(7, 'Andi Publisher'),
(8, 'Gagas Media');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penulis`
--

DROP TABLE IF EXISTS `tbl_penulis`;
CREATE TABLE IF NOT EXISTS `tbl_penulis` (
  `id_penulis` int NOT NULL AUTO_INCREMENT,
  `nama_penulis` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_penulis`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_penulis`
--

INSERT INTO `tbl_penulis` (`id_penulis`, `nama_penulis`) VALUES
(1, 'Supardi'),
(2, 'Samsulhadi'),
(3, 'Komang Ayu Heni'),
(4, 'Zainul Anwar'),
(5, 'Nasruddin Anshoriy'),
(9, 'Slamet Muljana'),
(7, 'Takashi Shiraishi'),
(8, 'Husein Muhammad'),
(10, 'Slamet Muljana'),
(11, 'Eko Priyo Utomo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_prodi`
--

DROP TABLE IF EXISTS `tbl_prodi`;
CREATE TABLE IF NOT EXISTS `tbl_prodi` (
  `id_prodi` int NOT NULL AUTO_INCREMENT,
  `nama_prodi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_prodi`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`) VALUES
(1, 'Farmasi'),
(2, 'Sistem Informasi'),
(3, 'Informatika'),
(4, 'Agribisnis'),
(5, 'Teknik Elektro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rak`
--

DROP TABLE IF EXISTS `tbl_rak`;
CREATE TABLE IF NOT EXISTS `tbl_rak` (
  `id_rak` int NOT NULL AUTO_INCREMENT,
  `nama_rak` varchar(50) DEFAULT NULL,
  `lantai_rak` int DEFAULT NULL,
  PRIMARY KEY (`id_rak`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`, `lantai_rak`) VALUES
(1, 'Rak A', 1),
(2, 'Rak A', 2),
(3, 'Rak A', 3),
(4, 'Rak A', 4),
(5, 'Rak A', 3),
(6, 'Rak B', 1),
(7, 'Rak B', 2),
(8, 'Rak B', 3),
(9, 'Rak B', 4),
(16, 'Rak C', 4),
(15, 'Rak C', 3),
(12, 'Rak C', 1),
(13, 'Rak C', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id_slider` int NOT NULL AUTO_INCREMENT,
  `slider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `slider`) VALUES
(1, 'slider1.png'),
(2, 'slider2.png'),
(3, 'slider3.png'),
(6, 'slider4.png'),
(7, 'slider5.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` int DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `no_hp`, `password`, `foto`, `level`) VALUES
(3, 'ucup', 'ucup@email.com', '0812123456789', '1234', '1706817240_8cd77774095549b1120e.jpg', 0),
(4, 'Admin', 'admin@gmail.com', '0813123456789', '1234', '1706815329_1602f0e72541c679ff3a.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web`
--

DROP TABLE IF EXISTS `tbl_web`;
CREATE TABLE IF NOT EXISTS `tbl_web` (
  `id_web` int NOT NULL,
  `nama_universitas` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kab_kota` varchar(50) DEFAULT NULL,
  `pos` varchar(10) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `sejarah` text,
  `visi` text,
  `misi` text,
  PRIMARY KEY (`id_web`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_web`
--

INSERT INTO `tbl_web` (`id_web`, `nama_universitas`, `alamat`, `kecamatan`, `kab_kota`, `pos`, `no_telp`, `logo`, `sejarah`, `visi`, `misi`) VALUES
(1, 'Universitas Peradaban', 'Jl. Raya Pagojengan Km 3 Paguyangan', 'Paguyangan', 'Brebes', '7993', '0289432032', 'peradaban logo.JPEG', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
