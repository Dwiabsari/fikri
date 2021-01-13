-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2020 pada 13.00
-- Versi Server: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kreditmotor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'akun', '3d342d6e0c524dd57f1728a053eedff3'),
(3, 'sukiman', '6a45c0297ea1b2ae0e7e2259db48c05b'),
(4, 'testing', 'ae2b1fca515949e5d54fb22b8ed95575'),
(5, 'contoh', '4553eb3ff328b4868a7a1e6e53cd28b4'),
(6, 'bayututor', '38cd5b016b54bdd51b9b6619e9687052'),
(7, 'bayututor', '38cd5b016b54bdd51b9b6619e9687052');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(25) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `stok` int(10) NOT NULL,
  `kode_barang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_produk`, `harga`, `kategori`, `stok`, `kode_barang`) VALUES
(1, 'Revo Fit X56', '14500200', 'Supra', 4, 'RT56'),
(2, 'CBR 1000', '80000000', 'Honda', 3, 'rf01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`) VALUES
(17, 'Honda'),
(18, 'Vario'),
(19, 'Supra'),
(20, 'Kawasaki'),
(21, 'Suzuki'),
(22, 'Cina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `name`, `email`, `message`) VALUES
(2, 'M F Fikri', 'fikrifafhilah123.com', 'KREDIT MOTOR TANPA RIBET');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id_upload` int(3) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_upload` date NOT NULL,
  `hits` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id_upload`, `nama_file`, `deskripsi`, `tgl_upload`, `hits`) VALUES
(12, 'IMG-20180725-WA0000.jpg', 'Lunas', '2019-04-13', '50000'),
(14, 'IMG-20181122-WA0048.jpg', 'Lunas', '2019-04-13', '50000'),
(15, 'IMG-20181122-WA0045.jpg', 'Lunas', '2019-04-14', '25000'),
(16, 'IMG-20181122-WA0049.jpg', 'Lunas', '2019-04-15', '300000'),
(17, 'IMG-20181122-WA0048.jpg', 'Lunas', '2019-04-15', '300000'),
(18, 'IMG-20181122-WA0048.jpg', 'Lunas', '2019-04-15', '300000'),
(19, 'IMG-20181122-WA0049.jpg', 'Lunas', '2019-04-15', '500000'),
(20, 'IMG-20181122-WA0048.jpg', 'Lunas', '2019-04-15', '500000'),
(26, 'IMG-20181122-WA0045.jpg', 'Lunas', '2019-04-15', '750000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `phone`) VALUES
(1, 'iman', 'iman@gmail.com', '5be9a68073f66a56554e25614e9f1c9a', 123),
(2, 'iman1', 'iman@gmail.com', '5be9a68073f66a56554e25614e9f1c9a', 2147483647),
(3, 'bayu', 'bayu@gmail.com', 'a430e06de5ce438d499c2e4063d60fd6', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id` int(25) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `metode` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_barang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `verifikasi`
--

INSERT INTO `verifikasi` (`id`, `nama`, `nama_produk`, `status`, `metode`, `waktu`, `jenis`, `qty`, `kode_barang`) VALUES
(1, 'iman', 'Revo Fit X56', 'Diterima', 'Cash', '2 Hari', 'Cash', 1, 'RT56');

--
-- Trigger `verifikasi`
--
DELIMITER $$
CREATE TRIGGER `tg_verif` AFTER INSERT ON `verifikasi` FOR EACH ROW BEGIN
UPDATE barang SET stok=stok-NEW.qty WHERE kode_barang=NEW.kode_barang;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_produk` (`nama_produk`),
  ADD KEY `kategori` (`kategori`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `harga` (`harga`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_upload`),
  ADD KEY `hits` (`hits`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_produk` (`nama_produk`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `nama` (`nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id_upload` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD CONSTRAINT `verifikasi_ibfk_1` FOREIGN KEY (`nama`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `verifikasi_ibfk_2` FOREIGN KEY (`nama_produk`) REFERENCES `barang` (`nama_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `verifikasi_ibfk_3` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
