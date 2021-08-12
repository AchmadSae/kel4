-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 08:11 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_barang`
--

CREATE TABLE `db_barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_barang`
--

INSERT INTO `db_barang` (`id_barang`, `nama_barang`, `stok`, `keterangan`) VALUES
('BR01', 'Konektor RJ45', '50 pcs', 'tersedia'),
('BR02', 'router merek A', '5 set', 'tersedia ');

-- --------------------------------------------------------

--
-- Table structure for table `db_instalasi`
--

CREATE TABLE `db_instalasi` (
  `id_pelanggan` varchar(10) NOT NULL,
  `tgl_pemasangan` date NOT NULL,
  `alamat` text NOT NULL,
  `nama` varchar(30) NOT NULL,
  `spare_part` text NOT NULL,
  `proses` text NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_instalasi`
--

INSERT INTO `db_instalasi` (`id_pelanggan`, `tgl_pemasangan`, `alamat`, `nama`, `spare_part`, `proses`, `status`) VALUES
('INS01', '2021-07-21', 'Jl. Pati Mura Nomer 30, Kecamatan Tanjung\nKabupaten Brebes , Jawa Tengah', 'Esih Sukaesih', '- Antena [ satu set ]\n- Kabel LAN [ 12 Meter]\n- Konektor RJ45 [5 pcs]\n- Router [ 1 set ]', 'TEKNISI [ Abdul , Riyan ]\n\" Survei Lokasi \"', 'Dalam Proses'),
('INS02', '2021-07-20', 'JL. Brawijaya XI Nomer 2 . Kelurahan Pulo , Jakarta Selatan', 'Novel Baswedan', '- Kabel LAN [ 2 meter ]\n- Konektor RJ45 [ 12 pcs]\n- Router [1 set]', 'Teknisi, [ Andi , Rudi ]\n\" Survei Lokasi\"', 'Dalam Proses'),
('INS03', '2021-07-20', 'JL. Kuncir No 30 , Kelurahan Cibadak\n kecamatan Prubalenyi Jawa Barat\n', 'Setya Novanto', '- Kabel LAN [ 2 meter ]\n- Konektor RJ45 [ 12 pcs]\n- Router [1 set]', 'Teknisi, [ Andi , Rudi ]\n\" Survei Lokasi\"', 'Dalam Proses');

-- --------------------------------------------------------

--
-- Table structure for table `db_invoice_maintenance`
--

CREATE TABLE `db_invoice_maintenance` (
  `invoice` varchar(10) NOT NULL,
  `tgl_tempo` date NOT NULL,
  `alamat` text NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pesan` text NOT NULL,
  `kunjungan` text NOT NULL,
  `biaya_kunjungan` int(50) NOT NULL,
  `spare_part` text NOT NULL,
  `biaya_sparePart` int(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `total_biaya` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_invoice_maintenance`
--

INSERT INTO `db_invoice_maintenance` (`invoice`, `tgl_tempo`, `alamat`, `nama`, `pesan`, `kunjungan`, `biaya_kunjungan`, `spare_part`, `biaya_sparePart`, `status`, `total_biaya`) VALUES
('VS02', '2021-07-07', 'JL. Brawijaya XI Nomer 22 . Kelurahan Pulo , Jakarta Selatan', 'Budi Doremi', 'Sertakan Bukti Pembayaran \r\n\nDiskon 30%', '- Pemasangan antena \r\n- Perbaikan kabel instalasi\r\n- penambahan jangkauan jaringan', 300000, '- 1 Set Antena\r\n- 3 set router\r\n- 3 meter kabel LAN', 830000, 'Dalam Proses', 960500),
('VS03', '2021-07-31', 'Jl.Diponogoro No.78 jakarta barat', 'Wahyu', 'Selamat anda mendapatkan diskon pembayaran sebesar 15%', 'pergantian router internet', 50000, 'Router sudah di ganti sebanyak 1', 300000, 'Dalam Proses', 297500);

-- --------------------------------------------------------

--
-- Table structure for table `db_karyawan`
--

CREATE TABLE `db_karyawan` (
  `id_karyawan` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_karyawan`
--

INSERT INTO `db_karyawan` (`id_karyawan`, `nama`, `alamat`, `jabatan`, `tgl_masuk`, `keterangan`) VALUES
('K1', 'Septi', 'Jl. Sunan Gunung Jati , Depok , Jawa Barat', 'Teknisi', '2021-08-12', ' Pegawai telah terferivikasi');

-- --------------------------------------------------------

--
-- Table structure for table `db_maintenance`
--

CREATE TABLE `db_maintenance` (
  `id_maintenance` varchar(10) NOT NULL,
  `tgl_komplain` date NOT NULL,
  `keluhan` text NOT NULL,
  `telp` varchar(30) NOT NULL,
  `troubleshooting` text NOT NULL,
  `kunjungan` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_maintenance`
--

INSERT INTO `db_maintenance` (`id_maintenance`, `tgl_komplain`, `keluhan`, `telp`, `troubleshooting`, `kunjungan`, `status`) VALUES
('18J001', '2021-07-18', 'Router Mati', '08141312821', 'Teknisi\r\n Aji\r Septi\n- Router Bermasalah', '', 'Dalam Proses'),
('24J002', '2021-07-24', 'Internet Tidak ada jaringan', '087888997789', 'Teknisi Hundoyo\n- Cek jaringan', 'pergantian router internet', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `db_pelanggan`
--

CREATE TABLE `db_pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_telpon` int(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_pelanggan`
--

INSERT INTO `db_pelanggan` (`id_pelanggan`, `nama`, `no_telpon`, `alamat`) VALUES
('INS01', 'Esih Sukaesih', 822882929, 'Jl. Pati Mura Nomer 30, Kecama');

-- --------------------------------------------------------

--
-- Table structure for table `db_pemutusan`
--

CREATE TABLE `db_pemutusan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `tgl_pemutusan` date NOT NULL,
  `alamat` text NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_pemutusan`
--

INSERT INTO `db_pemutusan` (`id_pelanggan`, `tgl_pemutusan`, `alamat`, `nama`, `keterangan`) VALUES
('INS01', '2021-08-01', 'Jl. Pati Mura Nomer 30, Kecamatan Tanjung Kabupate', 'Esih Sukaesih', 'Pemutusan Layanan Tidak Ada Tunggakan Tagihan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
('1', 'admin', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_barang`
--
ALTER TABLE `db_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `db_instalasi`
--
ALTER TABLE `db_instalasi`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `db_invoice_maintenance`
--
ALTER TABLE `db_invoice_maintenance`
  ADD PRIMARY KEY (`invoice`);

--
-- Indexes for table `db_karyawan`
--
ALTER TABLE `db_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `db_maintenance`
--
ALTER TABLE `db_maintenance`
  ADD PRIMARY KEY (`id_maintenance`);

--
-- Indexes for table `db_pelanggan`
--
ALTER TABLE `db_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `db_pemutusan`
--
ALTER TABLE `db_pemutusan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
