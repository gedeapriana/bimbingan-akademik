-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2023 at 02:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bimbingan_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` char(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `golongan` varchar(30) DEFAULT NULL,
  `jabatan` varchar(40) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama`, `golongan`, `jabatan`, `prodi`, `jurusan`, `foto`, `password`, `created_at`, `updated_at`) VALUES
('1', 'Ikhsan Rajata', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$ivSNSqtUzYJ9RcxRDpCiKuAIn4T79BsT8HGNhpwQruNh1avcbjSGi', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('10', 'Vanesa Hassanah S.E.I', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$oVRpBNtk2/ZpltzVtuAL3eS1I4pwkK1Atmo0PMmWyOqAzuFNxLi0S', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('11', 'Hesti Novitasari', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$uvl9.P8YJKLyyBqG02QQxei/JnOD/xkhjJGKF76g28UfDqav6YR76', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('12', 'Janet Hasanah', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$RkoVdGWiNUgXqnaNm3OrpuuFeYuHfU865bEQgcD6I6REn9geaqHbu', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('13', 'Zizi Purwanti', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$Y53IAQSUmc0WfWlnHVe1x.zCQEEcKGsRSzoPmT2L/7NNjiYFl6NVy', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('14', 'Puput Aryani', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$NUrD4s2mrFu66CPAJHr3wO4vHy.LnNHpVjVkhLOpHFpmjaBrvfHiu', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('15', 'Nyoman Samosir', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$v/nFqEGkOx9ArG3BuyS/m.7P22cmJV2x1Sjfy37E/f77PZSS87J52', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('16', 'Rudi Simbolon', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$i.7.5IUaKxWzhyNPM4pWgunM35FNUD7PSDi/av/rfQBCk44kAHjLK', '2023-06-12 17:20:58', '2023-06-12 17:20:58'),
('17', 'Genta Wahyuni', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$bXKhIpxS0HurdzlYNJ01xOda7a/0.mKe8RoxrJ7OCi130i2DVZ4pO', '2023-06-12 17:20:58', '2023-06-12 17:20:58'),
('18', 'Karja Nababan', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$lZIdxsx9tHpHE2Fl9RoJzeMt43wQBWDxAwxiOPEBQ4MbMJKZT3JTS', '2023-06-12 17:20:58', '2023-06-12 17:20:58'),
('19', 'Emin Prakasa S.T.', 'DOSEN', 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$Rgd.2UclZ6nlsIzDtRegvOcmc3yfs7EykWamVm945Bhro4i/aFLvC', '2023-06-12 17:20:58', '2023-07-12 05:05:24'),
('2', 'Winda Pertiwi', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$k1vf9PkzDRoPsaSOP4LUb.JTPAfZR7jIpo1tqT43a3Pxzj7CuAxNC', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('20', 'Viktor Cakrajiya Hutagalung', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$8Q.a5F5DQoDEJAbTtE.e1.DUqpJswrWbJK/n5n.HuUNJE9WFy5Xqe', '2023-06-12 17:20:58', '2023-06-12 17:20:58'),
('21', 'Gangsa Mustofa', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$jH3kjvxMCak7F.Nd53u01u6MrkcoSfHeZO8g9eSIOQDASbBEeEOB2', '2023-06-12 17:20:58', '2023-06-12 17:20:58'),
('22', 'Wawan Tampubolon', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$8UOa9OE4mhX8MKfYr5H9luX7/u5xHWXZUNrZSJku.205HLKS10UU2', '2023-06-12 17:20:58', '2023-06-12 17:20:58'),
('23', 'Cahyanto Arta Nainggolan', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$V641rPyf4/7B3isYcT/mJuzRzddJwse./Or9YNeSG3zfAm3Bj4vfC', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('24', 'Tirtayasa Iswahyudi S.Psi', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$9qdiHKGdmP7ge3YTgbTUoebeoEqrw7Em.pSNDt00qAL4vHhiIh1HS', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('25', 'Sakura Uyainah', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$/Mw720bg/QlN.DLj3VwkwO4whFMTrXiwD7oOWS9ERKS7KmkizYQB6', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('26', 'Qori Handayani', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$3JOBA1uZYVZ2/uEu1fH6eOupDKJAslN3GooPX4m5GRCEneavggNh6', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('27', 'Gilda Wahyuni', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$sZXfnkb2ZK2DOr2po36bRug40tC8wHosiDgougXcV0RNJ.bsqo86u', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('28', 'Latif Nashiruddin', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$E8XoOTlDnK0rZ71D0fsvo.wDQEeiOuxYnhFQyGVNNcSh5GtvDTcd2', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('29', 'Indah Sudiati M.Farm', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$gPKLUBzPS0dGe6rqMEdtEu78fXRIwHCXbhM0FW1W1kiTAQAySrkPy', '2023-06-12 17:20:59', '2023-06-12 17:20:59'),
('3', 'Lanang Simbolon', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$3WqVcO6DHdXEjrUfCx.M9.Sxir8nMbJV0AnQI.hyf7B5K6NUvqUTW', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('30', 'Padma Rahimah', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$r3wXtmb10iMXLyxKx6qdAevNDltBXwY84ovIwjiySxfl6wNo/xldK', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('31', 'Gatra Johan Suryono', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$svVetSFyhee8ccs5Kx0pmOgpjx.GK5CG3mF6GHRb3QV0VIyvajH22', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('32', 'Zalindra Devi Suartini S.Gz', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$mONtfTz5PEBkNtibU7AJy.9UQR6px3hv5SQlKFO7KIJoI0vyXCddK', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('33', 'Jarwi Maheswara', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$FKDc5zGgLyWR1JJKHqU5zeGY9RGhWBIr.r1ikbGupLh6o3pS2Fxou', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('34', 'Langgeng Marsito Salahudin S.IP', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$3Fl0FZnNxrEnyUIXFAeGuOW3B5BboTgG5O8T8/w7i3l0.KmOWez.i', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('35', 'Victoria Tiara Riyanti M.TI.', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$Fp4PY2LCQAGfQapkdIv3eOB0qrYWjR46UI1ETug/XigLDUhn3mCni', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('36', 'Ade Kurniawan S.Kom', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$D3e1fej.EVZsVv0uLwmIVuVmaqujAqslegVDN5dwz6aMT8G3fIaXi', '2023-06-12 17:21:00', '2023-06-12 17:21:00'),
('37', 'Prasetya Waluyo S.Kom', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$4W4D6Q21hLoxZvQazMbouOucqJVcGgWigUZVaMFX3dfd/zHrVxAG2', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('38', 'Ajeng Ajeng Nurdiyanti', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$6wA9lfWBbfgKxrIFfdznU.O4u8pZlFid9rh3EXUVLpeixbTt5GYaO', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('39', 'Vivi Purwanti', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$XTlcR/8EFBXy3c0wkhLjY.YgYyERYNuomIvNBkna2Pu05sfo9L96W', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('4', 'Yani Julia Agustina S.Psi', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$9abbAAgHtFK2K7RxFhii9eu8Cvf8H18vxlgtwb/T5HVMqgefCPWpi', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('40', 'Lintang Namaga', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$/diSCWfVKBDuGqS9I6eFh.NNjgL2plgFE88toD4ahibhGZVcClzcy', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('41', 'Panji Kala Tamba S.Sos', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$sg6ecujzYaTE3Oj7sSgvIO64nwTlLIxcHS4JpaC2k9w.AeA5MXUG6', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('42', 'Lembah Wacana', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$7ch1BZU4hQ9s2rvBVYC9t.10SoOAenpLMQhzOA9pR.iuym0DDbjd2', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('43', 'Paiman Nainggolan', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$pKzfw6FBW6v4z3t5XJbJ1eRnMXnAeqhREiA1YPm/UQ7Ju4NSeIzdu', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('44', 'Jasmin Puspita M.Ak', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$FUAQVLqM5NxYXCScgLbifei51HEoxXljLR5zvycntxapKnEJcJZBm', '2023-06-12 17:21:01', '2023-06-12 17:21:01'),
('45', 'Jaga Rajata S.I.Kom', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$g3QrdZwn962NLmyb7mNmx.Z.JRMEu.SKSfjdhtv8yhfEOcpxIytwu', '2023-06-12 17:21:02', '2023-06-12 17:21:02'),
('46', 'Bajragin Soleh Saputra', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$Wb8FDHaR0rkbsk/l06Hc8uMw5oDmVtG/VsWumMkPSq3GbVOHT8byW', '2023-06-12 17:21:02', '2023-06-12 17:21:02'),
('47', 'Alambana Hidayat', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$RxIipNhP19O/GGGdamOHJ.aMAuD3/lbKND9eW.Dt9ZZM0q78.pQUa', '2023-06-12 17:21:02', '2023-06-12 17:21:02'),
('48', 'Artawan Simanjuntak', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$L5s16CNYjaJVHC/BzXBaFOIwyPj2DZC0pAmGXt/BDHtydCORIXQ16', '2023-06-12 17:21:02', '2023-06-12 17:21:02'),
('49', 'Salman Mansur', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$TyufAy5W43mH6k8rPsv/jOoJu1OFNosCQQiTwcNq98Lsc8EJx5LU.', '2023-06-12 17:21:02', '2023-06-12 17:21:02'),
('5', 'Laras Hassanah', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$UgPJV/igUyKfiIT4kJH03u3SPCeYJtGNGjTIPDO7CMRD0bJxqcMRm', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('50', 'Nrima Damanik S.H.', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$EsGevRuRy2l39HmMaRY0t.7XuVcxAEKTo4v6OeeUjF6.KwKBADO8C', '2023-06-12 17:21:02', '2023-06-12 17:21:02'),
('6', 'Gina Clara Puspita S.Kom', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$o4tQm7fa7YiDNs4XN3ig5.DBdDciSdRn8Ijizrz/TA5yqqM70eEpK', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('7', 'Emong Putra', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$ENEncN.fs5jUwV/DmeoCz...5WcSHk4jRjXaT0K2NH5H5x4cOqvjC', '2023-06-12 17:20:56', '2023-06-12 17:20:56'),
('8', 'Victoria Suartini', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$TyIzMqSQFXf85ZMaUCN0wevnDMAEgOOBq2.BI1zoT3fyY85J9HveS', '2023-06-12 17:20:57', '2023-06-12 17:20:57'),
('9', 'Zahra Wahyuni S.Psi', NULL, 'dosen', 'RPL', 'Elektro', '/path', '$2y$10$gAUShiaCKka9TDUfsJYLG.gxLIzCXAdkbXIya3w/hKwJ4ldAHL.5y', '2023-06-12 17:20:57', '2023-06-12 17:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `form_bimbingan`
--

CREATE TABLE `form_bimbingan` (
  `id` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `tahun_akademik` year(4) DEFAULT NULL,
  `status` enum('Aktif','Cuti','Drop Out') DEFAULT NULL,
  `ipk` float DEFAULT NULL,
  `ips` float DEFAULT NULL,
  `peringkat` int(11) DEFAULT NULL,
  `beasiswa` varchar(100) DEFAULT NULL,
  `surat_peringatan` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mahasiswa_id` char(10) DEFAULT NULL COMMENT 'foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_bimbingan`
--

INSERT INTO `form_bimbingan` (`id`, `semester`, `tahun_akademik`, `status`, `ipk`, `ips`, `peringkat`, `beasiswa`, `surat_peringatan`, `created_at`, `updated_at`, `mahasiswa_id`) VALUES
(1, 1, '2023', 'Aktif', 3.8, 3.9, 1, '-', '-', '2023-06-12 02:58:14', '2023-06-12 02:58:14', '123'),
(2, 2, '2023', 'Aktif', 3.9, 4, 2, 'Nihil', 'Nihil', '2023-06-12 03:21:17', '2023-06-12 03:21:17', '123'),
(3, 5, '2023', 'Aktif', 4, 4, 1, '-', '-', '2023-06-13 18:40:57', '2023-06-13 18:40:57', '123'),
(4, 1, '2023', 'Aktif', 3, 3, 1, 'Djarum', 'Djarum', '2023-06-21 15:56:35', '2023-06-21 15:56:35', '123'),
(5, 3, '2023', 'Aktif', 4, 3, 1, 'Kemendikbud', 'Kemendikbud', '2023-06-21 15:59:10', '2023-06-21 15:59:10', '2115354018'),
(6, 5, '2023', 'Aktif', 3, 3, 1, 'Kemendikbud', 'Kemendikbud', '2023-06-21 16:08:47', '2023-06-21 16:08:47', '2115354018'),
(7, 1, '2023', 'Aktif', 2, 2, 1, '-', '-', '2023-06-21 16:09:42', '2023-06-21 16:09:42', '2115354018'),
(8, 1, '2023', 'Aktif', 4, 4, 1, 'Beasiswa', 'Beasiswa', '2023-06-21 16:10:07', '2023-06-21 16:10:07', '2115354018'),
(9, 7, '2023', 'Aktif', 4, 4, 1, 'Beasiswa', 'Nihil', '2023-06-21 16:11:25', '2023-06-21 16:11:25', '2115354018'),
(10, 1, '2023', 'Aktif', 3, 3, 1, '-', '-', '2023-06-21 16:13:15', '2023-06-21 16:13:15', '2115354126'),
(11, 1, '2023', 'Aktif', 4, 4, 1, '-', '-', '2023-06-23 13:09:35', '2023-06-23 13:09:35', '2115354992'),
(12, 1, '2023', 'Aktif', 3, 3, 1, '1', '1', '2023-07-12 04:54:00', '2023-07-12 04:54:00', '2115354420'),
(13, 1, '2023', 'Aktif', 3, 3, 3, '1', '1', '2023-07-12 05:03:08', '2023-07-12 05:03:08', '2115354561');

-- --------------------------------------------------------

--
-- Table structure for table `form_evaluasi`
--

CREATE TABLE `form_evaluasi` (
  `id` int(11) NOT NULL,
  `tgl_evaluasi` date DEFAULT NULL,
  `masalah` text DEFAULT NULL,
  `solusi` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `form_bimbingan_id` int(11) DEFAULT NULL COMMENT 'primary key',
  `selesai` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_evaluasi`
--

INSERT INTO `form_evaluasi` (`id`, `tgl_evaluasi`, `masalah`, `solusi`, `created_at`, `updated_at`, `form_bimbingan_id`, `selesai`) VALUES
(1, '2023-07-12', 'LU PUNYA DUIT LU PUNYA KUASA', 'BAGI GUA NGGA NYET', '2023-07-12 02:15:46', '2023-07-12 02:15:46', 1, 'true'),
(2, '2023-07-12', 'LU LAWAN ORANG YANG BERMATERI', 'LAWAN GUA YANG GA BERMATERI', '2023-07-12 02:21:24', '2023-07-12 02:21:24', 1, 'true'),
(3, '2023-07-12', 'AH MASA', 'YANG BENER', '2023-07-12 02:56:43', '2023-07-12 02:56:43', 6, 'true'),
(4, '2023-07-12', 'GATAU', 'HEHE', '2023-07-12 04:54:08', '2023-07-12 04:54:08', 12, 'true'),
(5, '2023-07-12', 'HEHE', 'NAH TO BE YE', '2023-07-12 05:03:18', '2023-07-12 05:03:18', 13, 'true'),
(6, '2023-07-12', 'NTAHLAH', 'w', '2023-07-12 06:32:55', '2023-07-12 06:32:55', 3, 'false'),
(7, '2023-07-12', 'HEHE LAST', 'Ah masa', '2023-07-12 06:58:28', '2023-07-12 06:58:28', 2, 'true'),
(8, '2023-07-15', 'BARU', 'BARU', '2023-07-15 10:11:20', '2023-07-15 10:11:20', 1, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `kaprodi`
--

CREATE TABLE `kaprodi` (
  `id` char(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kaprodi`
--

INSERT INTO `kaprodi` (`id`, `nama`, `prodi`, `jurusan`, `foto`, `password`, `created_at`, `updated_at`) VALUES
('1', 'Apriana', 'RPL', 'Elektro', '/path', '$2y$10$QUcqnO.9vOtpaE0OWkNkHO39NuFAedFxU94D4dODCYT3VojYvRQUS', '2023-06-12 17:05:43', '2023-06-12 17:05:43'),
('10', 'Ophelia Endah Mandasari S.IP', 'RPL', 'Elektro', '/path', '$2y$10$sRPiQISiY00khTGGVgqEt.mBt6T6yhqaV/H1KbYfXPt56.pCtmY0y', '2023-06-12 17:05:44', '2023-06-12 17:05:44'),
('2', 'Okta Galih Santoso', 'RPL', 'Elektro', '/path', '$2y$10$S8NtNE9zNk4L9JiO0i.OpurdZJCF.kkbY/b8mX65czfnICXHbZtzq', '2023-06-12 17:05:43', '2023-06-12 17:05:43'),
('3', 'Dina Hasanah', 'RPL', 'Elektro', '/path', '$2y$10$vu5jmNsXcfdC94wfyPaT6ukeLu2ThwxSYZr4y7WWahmMxX670b96G', '2023-06-12 17:05:43', '2023-06-12 17:05:43'),
('4', 'Gina Zelaya Novitasari S.H.', 'RPL', 'Elektro', '/path', '$2y$10$MsioZgaVn5zuixkLNw1Bc.9WMgLPwoXHRMPQD6t4pPCydHLMrms9m', '2023-06-12 17:05:43', '2023-06-12 17:05:43'),
('5', 'Elvin Santoso', 'RPL', 'Elektro', '/path', '$2y$10$crbNbhv4g9ZgPbdBXbSu8uRncBmmB5Fbwe0XncchLn43hIUW6sQBC', '2023-06-12 17:05:44', '2023-06-12 17:05:44'),
('6', 'Genta Yuniar', 'RPL', 'Elektro', '/path', '$2y$10$YQrzCqh9TQeTbaaNGXaXvuQ4FV2Ivf/FGN/ja8oj0QmvIJBiHBNry', '2023-06-12 17:05:44', '2023-06-12 17:05:44'),
('7', 'Ella Andriani', 'RPL', 'Elektro', '/path', '$2y$10$0yYGBaKeZYaxgaD7h79CSeYjyuylB8SWotJVcvCZkoj6PdW5qnjOO', '2023-06-12 17:05:44', '2023-06-12 17:05:44'),
('8', 'Candra Luhung Maryadi M.M.', 'RPL', 'Elektro', '/path', '$2y$10$ShyHzIbI5Bpoolq57qdWX.VArISS8VHV/qWhfxbECQ5VczEwOlrDm', '2023-06-12 17:05:44', '2023-06-12 17:05:44'),
('9', 'Langgeng Abyasa Thamrin S.Pd', 'RPL', 'Elektro', '/path', '$2y$10$YE5w/Vg638CiI0uX/mKc2OW3rFOa9ThzCD8HOXfYo0t3cWlSH/bgO', '2023-06-12 17:05:44', '2023-06-12 17:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_orangtua` varchar(50) DEFAULT NULL,
  `alamat_orangtua` text DEFAULT NULL,
  `no_hp_orangtua` varchar(20) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `dosen_id` char(20) DEFAULT NULL COMMENT 'foreign key',
  `kaprodi_id` char(20) DEFAULT NULL COMMENT 'foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `alamat`, `no_hp`, `jurusan`, `prodi`, `foto`, `nama_orangtua`, `alamat_orangtua`, `no_hp_orangtua`, `password`, `created_at`, `updated_at`, `dosen_id`, `kaprodi_id`) VALUES
('123', 'I Komang Gede Apriana', '9496 Sauer Brooks Suite 237Port Leone, RI 43606', '086208426881', 'Elektro', 'D2 AJK', 'foto/ZEQC1Cf2Bk3VP9kMkj5UQKSVMhCikBSGJDKbRWUJ.png', 'Mrs. Reuben Wolff', '762 Bashirian Extension Suite 154Monahanborough, SC 63679-4818', '083891295976', '$2y$10$WeC8aWo7.E4.zPLttHo7y.xSaptnoqxdREeaBC0Py78vyrrlJJJXq', '2023-06-12 17:22:42', '2023-07-15 10:37:18', '19', '6'),
('2115354018', 'Domenick Feil', '802 Eric Loaf Suite 063Port Paulview, WY 90231-6476', '086984965065', 'Elektro', 'D2 AJK', 'foto/oYcZ8SryGyjDh9BGyp2ju3ZeY2Vi6iDiicK0JCFx.jpg', 'Mrs. Fabian Cronin', '198 Bergnaum RadialEast Selenamouth, MD 43255', '087051522044', '$2y$10$GjOYZQOq8qpbWcbTFqpxEeJGNEw3kUlooXy0AUIkDzqEN9sm5KUL.', '2023-06-12 17:22:36', '2023-07-12 08:51:00', '19', '4'),
('2115354035', 'Walter Lakin', '355 Bergstrom Mall Apt. 449\nNew Lola, CT 70896', '085086864472', 'Elektro', 'D2 IPKBR', '/path', 'Prof. Geo Tremblay I', '5986 Okuneva Rue\nHalvorsonbury, NJ 51588-5277', '083772048495', '$2y$10$fO9Pbe0saEtZgZ0a06BMOOaikWBjlOnZPSUdyvn2Lx3cGXrEW.w46', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '37', '9'),
('2115354046', 'Sigrid Kunze', '521 Schaefer Centers\nJettieshire, ND 29433', '087560274281', 'Elektro', 'D2 IPKBR', '/path', 'Prof. Estelle Smith', '35606 Muhammad Landing Apt. 646\nBoganport, WA 04735-9981', '082091303169', '$2y$10$aasF28TlQx4zqDCGRkn.BehlisZ8L9WmurMEaOObqfytx/lBLpZAO', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '8', '10'),
('2115354058', 'Okey Hayes', '474 Pagac Common Apt. 802\nNorth Jeremie, CT 32632', '085463545278', 'Elektro', 'D2 IPKBR', '/path', 'Prof. Ms. Golda Gislason', '328 Koch Extensions Apt. 663\nCloydport, LA 90906', '085324884235', '$2y$10$tSRk/hYWcv9P3KoDCLG6Z.W9MPylDTpCFdo5.NQiLbS5GgfKWu6uy', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '31', '3'),
('2115354065', 'Oran Von DDS', '160 Dayne Expressway Apt. 732\nWolffbury, NY 01280-1069', '085297125143', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Charley Lindgren I', '227 Brown Lane Apt. 826\nDaphnestad, AL 98167-6291', '080484637348', '$2y$10$fNPoh960h0UgBx8vShTaAOPYDuHKSJBAHC4917RJ6mEjWOeQu11Ae', '2023-06-12 17:22:33', '2023-06-12 17:22:33', '6', '6'),
('2115354072', 'Marilou Lubowitz', '630 Rowe Station Suite 874\nElmoland, SD 06294-3960', '086892394915', 'Elektro', 'D2 AJK', '/path', 'Prof. Damion Champlin', '7536 Lowe Corners\nMarkstown, NH 61682-3931', '084283898159', '$2y$10$SNTWeicxI00Bx4PiEhZR.OlXHIiVrOby.zeeRA9HjThb7PJXeuskm', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '17', '9'),
('2115354077', 'Kale Walter', '104 Wilkinson Oval Suite 146\nLake Natashastad, AK 87129-5874', '086967231610', 'Elektro', 'D2 IPKBR', '/path', 'Prof. Neil Quigley', '687 Allan Views Apt. 719\nNorth Gabebury, VA 95816', '080681720474', '$2y$10$eRYNCh7x54disU7pFrs0Beh.B96cxM2M7oaXG.5OyO/Io2nEU0w8e', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '24', '10'),
('2115354080', 'Keara Homenick', '39220 Trent Fort Apt. 647\nRobyntown, NE 23878', '085550802402', 'Elektro', 'D4 TO', '/path', 'Dr. Vesta Schowalter', '964 Bahringer Flats\nEast Rhoda, NC 97489-0558', '080455608606', '$2y$10$7or.N8QoxMG63gTs/ms/0O8APOfHGqJmICN0sBGmlGE6RF1BRPf/e', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '41', '10'),
('2115354082', 'Elmo Schmeler Sr.', '5831 Hammes Freeway Apt. 305\nDeliatown, LA 53663', '087055884854', 'Elektro', 'D2 IPKBR', '/path', 'Prof. Dave Ernser', '2015 Pollich Loaf\nDevonteberg, AR 47787', '086569810328', '$2y$10$6fYMIxBGOAvDjx.70dI05OJHdgLli9ipQ.JKm3H5MHZU7dluzbBr6', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '14', '8'),
('2115354084', 'Mrs. Kathlyn Rempel', '6640 Gorczany Views Apt. 212\nNorth Neil, AL 26422-8343', '089714872875', 'Elektro', 'D4 TRPL', '/path', 'Mrs. Ms. Rossie Swaniawski MD', '20298 Rodriguez Knoll Suite 258\nVolkmanfort, AR 60993', '089972419867', '$2y$10$5WikU5XOmpQGycRIHEumSe7E/E5pp/VkZtQG8ZSfvRtgxyWW2sKbe', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '37', '1'),
('2115354091', 'Deven Purdy I', '5919 Tristian Bypass Suite 083\nDeliahaven, FL 95755', '088821604497', 'Elektro', 'D2 AJK', '/path', 'Prof. Maximilian Cassin', '810 Mraz Ways\nLake Nayeli, UT 77068', '084547810861', '$2y$10$9XoP73V6fkL0fCdAokuQEeYU3dwkTbVvfUME8pxuOmxQODWKMMqq2', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '47', '9'),
('2115354096', 'Dr. Solon Berge IV', '439 Larson Springs\nPort Skyemouth, MA 14768-8814', '087056695828', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Loraine Veum', '516 Hettinger Ports\nBoyerland, OH 21086-7299', '086412027417', '$2y$10$dLMOVsAYsbm2WKGSh4aJlOu12jnYmGcVfMXaKXasEx82utfEYFAc2', '2023-06-12 17:22:33', '2023-06-12 17:22:33', '7', '1'),
('2115354097', 'Keagan Murphy', '51666 Gayle Pike\nBettyfurt, OH 50608-6925', '084623025321', 'Elektro', 'D4 TRPL', '/path', 'Mr. Hilario Robel', '722 Tanya Canyon Suite 821\nSophiechester, HI 69656', '089333384002', '$2y$10$F.429PFUnGda93qbxFostOb3gynbKHu0lewErmse0ui0BlcOok6qO', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '38', '10'),
('2115354099', 'Jeremy Pollich II', '794 Jay Forges Suite 323\nUniquemouth, WI 60074-9155', '081471284915', 'Elektro', 'D2 AJK', '/path', 'Mr. Aurelia Jenkins', '952 Dahlia Ranch Apt. 347\nEast Norberto, MD 03642', '086701245727', '$2y$10$X7EvHXGzBO5anZQnB3yRCugyxW3og3rK3Y0aCGrf9j1UKfnlqLtFe', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '23', '3'),
('2115354113', 'Brennon Yundt', '79230 Lowe Turnpike Apt. 380\nNew Marciachester, WY 41169-2513', '083946520338', 'Elektro', 'D4 TO', '/path', 'Dr. Tiffany Turner', '69130 Towne Valleys\nMaximefort, GA 84687', '083643909930', '$2y$10$Mhp3vKN4zs3LlKTITIDFxe0hXA8cDrvi4k8uR9Go6OkXKCHUmZ1cW', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '31', '8'),
('2115354126', 'Blaze Becker', '21015 Rice Viaduct\nPort Kurtis, WA 23699-8509', '085373020653', 'Elektro', 'D2 AJK', '/path', 'Dr. Dave Schroeder', '455 Aubree Dam\nBetteburgh, IA 05223-2962', '081398025535', '$2y$10$WapUKYE.tlAKcqeAZtAMwu819DIndq5wM3AhF9kCpXvUrA5UOxk6m', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '48', '9'),
('2115354128', 'Mrs. Dovie Muller Jr.', '3926 Jody Valleys Suite 749\nNew Agnes, ND 50236-9283', '086809930045', 'Elektro', 'D2 AJK', '/path', 'Mr. Alberta Weimann', '177 Reta Coves Suite 662\nWest Christophaven, NV 11132-6403', '083578750661', '$2y$10$3RRFuVwRSbgfuGu1sKJIiu8rL6V5WYLagYt92i8.CwSYBJw/hCqpC', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '2', '5'),
('2115354140', 'Kaci Prosacco', '8235 Jane Junctions Suite 462\nCummingsland, KS 70059-7937', '087710642882', 'Elektro', 'D4 TO', '/path', 'Ms. Prof. Adonis Marvin', '2751 Jamie Roads Suite 252\nTraceland, MA 61073', '081339754689', '$2y$10$Wn.YIBI7.qDRdM5Xt3rbs.vT0kgMhT/6F2bFiV.S2Uqpu7xYyOlhW', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '50', '7'),
('2115354177', 'Rubye Schmeler', '74212 Jazmyne Ways Apt. 824\nNorth Olinfort, CT 86796', '084361317263', 'Elektro', 'D4 TO', '/path', 'Prof. Kellen Prosacco', '33258 Thompson Forks\nNew Annettaton, NH 86020-7086', '088594207676', '$2y$10$egb504jWRS79PkdPztOHvuZ39IEYdEJ/thF.fBHUgP9f5M4t4z7Ge', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '37', '9'),
('2115354181', 'Ms. Lera Fahey', '6611 Greta Mill Suite 376\nEasterstad, SC 20282', '084983487141', 'Elektro', 'D4 TRPL', '/path', 'Dr. Bianka Fay', '3932 Grant Cliffs Suite 282\nMcLaughlinmouth, IL 52097-2546', '084122237189', '$2y$10$t9rsGV9Xlx5pVSdRaDBVferdqmfyfjMgQSrFJs96QiJxKzbp62vMa', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '27', '3'),
('2115354183', 'Dr. Lowell Mohr PhD', '647 Sammie Common\nNew Buddyland, NJ 46028-3487', '081963122460', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Deja Runte', '21207 King Forest Suite 103\nDelphaberg, SC 19963', '080236353457', '$2y$10$NsgxyuClzTz8K2XNLaCM2u8TK1IfR6w6zPTlvyZF.5hqcMCF3eBlS', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '21', '10'),
('2115354192', 'Maud Stoltenberg', '8938 Hyatt Hill\nRippinland, NE 57977', '083642067873', 'Elektro', 'D4 TRPL', '/path', 'Mr. Jennifer Zulauf', '391 Douglas Islands Suite 853\nLindgrenland, RI 94565-6224', '089468061891', '$2y$10$KkrDPhqW75B0aPIiZuuOZeXQAHLZiR2ktRa7oQVOM8GPwW62iXzO2', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '11', '9'),
('2115354200', 'Dr. Davion Turner MD', '689 Julian Flats\nNorth Lura, NJ 02034', '082482483645', 'Elektro', 'D4 TRPL', '/path', 'Mrs. Roderick Bernier', '160 Bailey Light Suite 960\nJosefaport, AR 04722', '083492828501', '$2y$10$6/14yfFxnexBPhEXBR5uqOrhdvfR9DXEgYSJuAf1CkSFR3HgnRCoy', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '44', '3'),
('2115354204', 'Zella Brakus', '643 Jacobi Bridge Suite 905\nWindlerberg, AK 48188', '087284590090', 'Elektro', 'D4 TO', '/path', 'Prof. Prof. Gonzalo Schneider', '298 Demarcus Spring Suite 562\nEmmieport, WV 35470', '086207418498', '$2y$10$gPIBfmY5H6VY/jC/Vy/k0uU2NUjr2tytgts/1AOXG8G6KE1LqNBf2', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '32', '8'),
('2115354225', 'Alysha Renner', '67611 Metz Points Apt. 008\nAleenchester, AL 44975', '085840929244', 'Elektro', 'D4 TRPL', '/path', 'Mr. Eliseo Roberts', '1713 Taryn Station Apt. 491\nPaulamouth, NY 87573', '085311141776', '$2y$10$.SvPjD7xWnWAMBoj802wNeeZp16picXHZPmyBm9tSwalG0qcJRTSW', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '5', '7'),
('2115354228', 'Juanita Schimmel', '734 Kunde Cove Suite 968\nKiehnburgh, ID 69329-7487', '085204958713', 'Elektro', 'D4 TRPL', '/path', 'Prof. Miss Makayla Tremblay II', '41296 Thad Place\nLake Connie, ID 49179-9330', '081777260408', '$2y$10$z9/1c1ENQ7LNQpx8qFa/Ruq8m8UXFXJ8ZTAHIwRItVuWVZYYQbvq6', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '1', '9'),
('2115354233', 'Mr. Liam Johnston Sr.', '543 Major Brook Suite 370\nCasperbury, IN 49022-9853', '088240484256', 'Elektro', 'D4 TO', '/path', 'Dr. Dr. Ona Reynolds DDS', '35167 Bailee Parkway Suite 180\nNew Borisview, RI 39969-2845', '086807446411', '$2y$10$GOCSCbjfV2C.niRySAT7vORzeV4Nvz.9mZDu2SLWUK6aHHiG5CV6y', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '11', '6'),
('2115354250', 'Margarett Kreiger', '84852 Lydia Square Suite 550\nLake Vincenzoberg, WI 13790-7821', '088021234374', 'Elektro', 'D2 AJK', '/path', 'Dr. Marina Marks DDS', '926 Claudia Port\nSouth Tristianfurt, NE 49900', '089963859630', '$2y$10$0jGUMHNNbDpKWfNPHVBgb.1.jbA9kEFlopawzvRbLneCCbEsaF0V6', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '33', '3'),
('2115354270', 'Dannie Jast', '758 Bahringer Run Apt. 603\nSouth Durward, AK 55282', '081678468268', 'Elektro', 'D2 AJK', '/path', 'Mrs. Colton Ernser', '4919 Eichmann Cape Suite 506\nGerlachtown, WY 80933-8769', '082613913753', '$2y$10$kRb.RSfXYn8QMmMMymek6ebfLftlZ4kjS8A78UImfZlRdfj0kO6Fq', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '3', '8'),
('2115354280', 'Marques Kautzer', '677 Green Summit Suite 089\nEddiemouth, NV 95445-9243', '084816634396', 'Elektro', 'D4 TO', '/path', 'Ms. Dr. Zula Robel MD', '784 Stroman Freeway Apt. 120\nHoracioburgh, NH 56535', '087386216650', '$2y$10$89n7LlI3FNJV2Bf/PciPNeNRJg8uVz0R4zGmn2QAve8R0EWIQ6DAW', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '8', '7'),
('2115354287', 'Sabrina Jones', '565 Treutel Union\nNorth Wiley, MN 07457', '087131009559', 'Elektro', 'D4 TO', '/path', 'Prof. Dr. Heaven Heidenreich', '948 Brown Spring\nWilliamsonhaven, IA 41827', '084475969320', '$2y$10$m6zi8MAgssXQNMgpnT3.Ouwlj1CK5S53z2Id2/TD4zVnwfDM1Xvlu', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '6', '6'),
('2115354292', 'Timmothy Brekke', '396 Considine Grove\nWest Ransom, WY 74969', '083635633222', 'Elektro', 'D2 AJK', '/path', 'Ms. Mona Schaden DDS', '73774 Kenya Unions\nNorth Roberta, DE 22763', '080644931081', '$2y$10$tNxLXg00Q0i3PpSIadvMCeO.m9nowQmfkwBBSdoL5C5SyX1kTrDQq', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '43', '4'),
('2115354306', 'Prof. Shirley Shanahan', '55995 Reilly Parks\nEast Yadiraview, MI 25373-0163', '084371839847', 'Elektro', 'D2 IPKBR', '/path', 'Ms. Dr. Carmine Hoppe', '3789 Dooley Junction\nJanellefurt, NV 98176', '085484401058', '$2y$10$1Zygje6NBHGFYou.2WC80O6cV/4dZT6VM/bWCJxyqfFYFz1WbGyzy', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '16', '7'),
('2115354324', 'Prof. Antonetta Huels III', '182 Rachelle Unions\nNew Kevintown, VT 62957', '083057269875', 'Elektro', 'D2 IPKBR', '/path', 'Ms. Edyth Kiehn PhD', '422 Garret Spring\nKristianmouth, WI 05877', '081156739833', '$2y$10$tOEvcHWapYOO/3f6N8E45unaEwzMLdmZ0lLBXbJAdl5re.2377qPG', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '49', '7'),
('2115354344', 'Roy Dickens', '714 Koelpin Meadows\nMohrville, NH 27406', '084542431498', 'Elektro', 'D4 TO', '/path', 'Mrs. Mallie Tillman', '80069 Schiller Summit Suite 545\nLolaville, NH 84395-3424', '085944507456', '$2y$10$JiPME10bXk7.Gg38QnWEq.il/vdQMZLwff2aHUbIJL/dNVZXUotjq', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '1', '5'),
('2115354349', 'Dr. Armando Lang', '2576 Kyra Springs Apt. 031\nHammeshaven, CT 42909', '087703728353', 'Elektro', 'D2 AJK', '/path', 'Prof. Ms. Nia O\'Reilly DVM', '477 Cordelia Ford Suite 493\nEdisonburgh, OR 47425', '083298516122', '$2y$10$RJUP4vBDr5h84I5BQsNnPestUOZnwod4s/5L3vJsLyEsdcD3Nce3C', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '20', '8'),
('2115354359', 'Reid Schiller', '1258 Kilback Brook\nNorth Erikaside, KY 74540-9185', '081207132806', 'Elektro', 'D4 TO', '/path', 'Mr. Chauncey Hills', '6758 Stefanie Village Apt. 458\nNorth Jasper, VA 53407-9045', '080786538716', '$2y$10$kdpvup7Ke5/gLe8dWZd.NeNiwYOlvLzgspOyeYysyFX6UXNxqCwL2', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '33', '5'),
('2115354362', 'Prof. Maybelle Pollich', '1026 Victoria Tunnel\nJoanieburgh, CO 31665', '085452333990', 'Elektro', 'D2 IPKBR', '/path', 'Miss Jacinthe Cronin', '6716 Erna Fall Suite 511\nNorth Myraview, OR 70575-0302', '080850345032', '$2y$10$b4/ZdSCySISJnacdwOft8O9MerAK3L1QhmI0YlIYlvIsKFQirvdG2', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '37', '8'),
('2115354381', 'Dr. Litzy Swift', '6966 Volkman Hollow Apt. 640\nMurphyside, MN 18606-3203', '086609238535', 'Elektro', 'D4 TRPL', '/path', 'Prof. Clotilde Mertz', '305 Arvel Overpass Suite 716\nPort Sigmund, MD 38665', '086376007545', '$2y$10$1JRsvgn/ox5xGLzquLUtWelbhihaEw.0qTBLgPFdIn/CIl2gghzmq', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '40', '7'),
('2115354398', 'Mrs. Rosamond Herman', '63671 Tressa Place Suite 891\nAnkundingshire, AR 73686', '089168186574', 'Elektro', 'D2 AJK', '/path', 'Mr. Jettie Koch PhD', '709 Lucile Key\nNew Issacburgh, NE 99555-3935', '088602408613', '$2y$10$wIf4EFpSoRLKu35UycerMejSJRPZuyzXDkOsQ3do1Aylt42vtjg.G', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '12', '4'),
('2115354403', 'Harmony Fritsch', '9771 Padberg Passage\nSarahhaven, NC 32995-5221', '089954906629', 'Elektro', 'D4 TO', '/path', 'Dr. Bennie Hayes', '4962 Santa Cape Suite 576\nLake Linnieport, AK 22258', '088659485788', '$2y$10$i6EJEGT2u4sXy/bYCm14Ue5Io0YuYqOF3zEGDvI.33v4QDC1/Q5Fi', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '50', '9'),
('2115354410', 'Bart Marks III', '6060 Gusikowski Street\nEast Evangelinetown, HI 83858', '087933068354', 'Elektro', 'D2 IPKBR', '/path', 'Mrs. Nolan Lind', '467 Botsford Valleys Apt. 371\nEast Ozellaburgh, AZ 79502-4096', '087559173336', '$2y$10$dU7aYOKh7cLPRtPW9J2OeeESC3oGESuLqcssxdjLMAD2jEYspmv2q', '2023-06-12 17:22:33', '2023-06-12 17:22:33', '14', '3'),
('2115354419', 'Dr. Hudson Kshlerin PhD', '101 DuBuque Ridge Suite 005\nHoegerfort, NH 44960-5827', '084021476535', 'Elektro', 'D4 TO', '/path', 'Mrs. Creola Waelchi Sr.', '85272 Tillman Stravenue\nNorth Niko, MN 00181-8503', '085904608577', '$2y$10$uv66UrR6M3C4pdlglUROvuZoyxOVqfBvmaFcL6lML.romuDOtd3Ke', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '2', '3'),
('2115354420', 'Melvina Gusikowski', '59242 Emmerich Forge Apt. 791\nTarynshire, CT 84907-5263', '084696991743', 'Elektro', 'D2 AJK', '/path', 'Mrs. Mr. Dangelo Waelchi', '48535 Hoppe Springs Apt. 516\nFelixchester, OK 83429-2056', '081469407869', '$2y$10$ppMlAwlFUg6XfXBSj3VsNuDAXoqii7AqC6oyuIeN82sj7AjHUhJx.', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '19', '5'),
('2115354463', 'Gus Cruickshank', '482 Brown Stravenue\nGarrisonton, IN 13780-5151', '083400927610', 'Elektro', 'D2 AJK', '/path', 'Mr. Marlene Herzog', '38037 Cydney Mills\nHellerberg, MA 59062', '081260972522', '$2y$10$/AHEs4d1ovbWNodY.gdZtup1iqe2tJF6ulMdDIVLJa4NxfnZ6NQiq', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '21', '7'),
('2115354470', 'Dr. Imelda Willms DVM', '85778 Nikolaus Terrace\nNorth Isaias, FL 76648', '082128507568', 'Elektro', 'D2 AJK', '/path', 'Mr. Rickey Feeney', '582 Elinor Parks\nPort Melvinshire, DC 20103-8291', '081282319170', '$2y$10$qz62yJjUyaI.pLqR1cDvSuv7aBQgrW5oM9EVzP3NrDs8WbwaNIaaS', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '23', '4'),
('2115354473', 'Pansy Osinski IV', '172 Andrew Haven Suite 627\nLake Ansley, WI 23273', '085554110112', 'Elektro', 'D4 TRPL', '/path', 'Ms. Jaqueline Haley', '55273 Schultz Row\nBreannabury, VT 79471', '083772442450', '$2y$10$U3v9TbQFVU6/Y0.15aymv.KhYu0XbSquZdv0HC9Ahv6intzyuz2Dm', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '4', '9'),
('2115354478', 'Arvel Prosacco', '5319 Veum Junctions Suite 342\nKuvalisfort, ID 49520-2252', '082384210166', 'Elektro', 'D2 IPKBR', '/path', 'Mr. Mossie Bergstrom', '56201 Rahsaan Road Apt. 375\nAbigaylefurt, WI 55382-4620', '084921169204', '$2y$10$YK/8LBNtn6FCXpFgFmo5RejVb0Y1D/MdL7MMIW2C5dWjc081oL/kG', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '27', '7'),
('2115354481', 'Bret Gleason', '76466 Hilpert Squares\nAugustineberg, PA 90390-9573', '089204435405', 'Elektro', 'D4 TRPL', '/path', 'Mrs. Rosetta Kovacek II', '6448 Lebsack Dam Apt. 102\nBradenside, KS 13544-5208', '084447058112', '$2y$10$TGsveIO7uTdtJQO.ix2IeOW.vbqNzMVExRfK07r0NijHty7O1xPSy', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '28', '8'),
('2115354482', 'Blanche Swift', '377 Albina Corner\nSouth Deonte, TX 94447', '086116208524', 'Elektro', 'D2 AJK', '/path', 'Prof. Kianna Durgan', '30591 Watsica Island\nCordiaborough, UT 64088', '084008346351', '$2y$10$8wy97rdM7fAGp1g1ULl9T.qw8oFUULD.jliIaUhvJQy2/cVX4Mq76', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '30', '2'),
('2115354495', 'Walton Batz', '4272 Bergstrom Plaza\nPort Ruby, OH 00659', '082236939905', 'Elektro', 'D4 TO', '/path', 'Prof. Mrs. Giovanna Reynolds', '4225 Hagenes Course Apt. 239\nRoobchester, IL 00102', '080170585375', '$2y$10$JwHyMuC57w1kHgucIw5V0eKDKP/oCnpM0IbwB/QMUO4lNTMtqBWFq', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '25', '8'),
('2115354502', 'Verna Bailey', '858 Monahan Courts\nWest Cassandreberg, AK 40346-4552', '084250045315', 'Elektro', 'D2 AJK', '/path', 'Dr. Jennyfer Dach', '71043 Hickle Shoals Suite 056\nWisokytown, WY 47382-7624', '082603146969', '$2y$10$O4RdZhZ1Ieyi8dpOuVsDq.dIEGyHweecHXaCqB53xnb9EguObOLmu', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '44', '9'),
('2115354503', 'Camron Wiza', '188 Tiana Brook Suite 494\nRessiehaven, RI 12520-2003', '084599050683', 'Elektro', 'D4 TO', '/path', 'Ms. Evan Hodkiewicz', '6425 Alison Ports Apt. 831\nPort Louisa, PA 86123-4960', '081531627368', '$2y$10$rxTC6L4LcZ/9qSUxNQxhNukjFGSOqNionBowMlqrmBCqTSNSTyYBu', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '45', '9'),
('2115354519', 'Alene Bosco', '835 Amanda Pass Suite 140\nEast Orionview, WA 43830', '086186608442', 'Elektro', 'D4 TO', '/path', 'Dr. Cloyd Rohan', '79395 Iliana Mountains\nNew Keeleybury, MO 42934', '082157895609', '$2y$10$QNkc.47JbsaQ/cLLy2XqXuO0dgDr81yLZmVqlj/FKwrPiroTijmQC', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '16', '2'),
('2115354532', 'Ervin McKenzie', '500 Yasmin Row Suite 669\nEffertzport, WA 06440-0580', '083517105320', 'Elektro', 'D4 TRPL', '/path', 'Miss Candida Feeney DVM', '3505 O\'Conner Wells Suite 474\nEast Eliseo, AK 84355', '085779394038', '$2y$10$.jRrfHRwTDxVEz3bnYF86OexX0GwJTlAyEOiYEFdSDO7D/08B2Vn.', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '10', '10'),
('2115354537', 'Yessenia Sipes', '1257 Brown Islands Apt. 941\nMohrborough, VT 68182-1179', '088890183631', 'Elektro', 'D4 TO', '/path', 'Prof. Faye Hand', '43633 Simonis Island\nNorth Nils, MS 82834-6373', '086825052726', '$2y$10$DagQfj475i2pYcFKsaMNm.eY9l0XEpOM390b09SEQG78z6zd/2TAS', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '37', '4'),
('2115354541', 'Dr. Alexanne Block', '34104 Faye Cliffs\nNew Robertoberg, IA 76583', '082343717067', 'Elektro', 'D4 TRPL', '/path', 'Prof. Ephraim Murphy', '4951 Kelly Isle\nSouth Meredithmouth, ND 28804-2875', '081950615937', '$2y$10$/WWpQN2qLCkWCKtS98fo.OIMGjvLogZWj/mekOixdQBiQgNm5VpM6', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '26', '9'),
('2115354545', 'Elmo McClure MD', '98153 Lakin Terrace Suite 894\nNorth Effiemouth, KS 32388-4233', '085224830135', 'Elektro', 'D2 AJK', '/path', 'Prof. Casandra Sawayn IV', '102 Runolfsson Vista\nLake Yasmineborough, CT 44171-1832', '088184633296', '$2y$10$jvzz7ro9qY5sQVmNvcEtfOM6GYnUoIOeKaAhRShvPQh3CsirwGsRW', '2023-06-12 17:22:34', '2023-06-12 17:22:34', '31', '7'),
('2115354554', 'Fabiola Cronin', '35985 Reece Course\nNorth Jenniemouth, RI 78733-6141', '084671622153', 'Elektro', 'D2 AJK', '/path', 'Ms. Concepcion Hessel', '25266 Marks Ridge\nPort Hollie, CT 30081', '089268806049', '$2y$10$MoxJHOTFyJSOG1BVIiO1oufEfvK44GBK0..8Eon21Hrh9zIIKnuGm', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '20', '4'),
('2115354561', 'Ms. Meaghan Hirthe DDS', '387 Waelchi Roads\nPort Guillermoside, LA 96546', '085288705562', 'Elektro', 'D4 TO', '/path', 'Prof. Lyla Bogisich', '174 Cooper Rest\nEichmannside, ME 72555-1712', '083662446217', '$2y$10$R31uiggfuVMnChPoH6awkOSeXmXcwaifJJ7cQSjrEB4/mcu5eXR7q', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '19', '2'),
('2115354567', 'Christy Brakus II', '2659 O\'Reilly Isle Apt. 102\nEast Geovannystad, SC 63657-8838', '083742215995', 'Elektro', 'D4 TO', '/path', 'Mrs. Dr. Adriana Rath', '65228 Kaylin Corners Suite 266\nJackland, HI 96693', '080752211312', '$2y$10$gghsckTs8FqmtgLaE3leBO0rHacWaJlTTiFl7E869F5fMJvLkTP8.', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '33', '9'),
('2115354579', 'Prof. Ferne Willms DDS', '152 Oral Mews\nSouth Everardoville, NC 71206-3647', '088626610400', 'Elektro', 'D4 TRPL', '/path', 'Miss Zackery Wisozk', '2372 Wanda Hills Apt. 867\nLake Minervafurt, NJ 94202', '082170881900', '$2y$10$0yYomCu6COivz96OgGQmSuedyAbgLudstAvJGOKE.ykJwiCzQGRxe', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '36', '7'),
('2115354581', 'Dr. Stanton Haley I', '9250 Hessel Shoals\nHoracioport, LA 36938', '086102484936', 'Elektro', 'D4 TRPL', '/path', 'Dr. London Kerluke', '68489 Tillman Inlet\nZulaufborough, NJ 28090', '081536962306', '$2y$10$UD8I3fZcQvws.ad5EKIIYOgRbD7Md9c92zaHIqtSiwzFm6nWmu4LW', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '37', '9'),
('2115354593', 'Demetrius Predovic', '7056 Daron Causeway\nMayerport, MA 83609-6958', '081507040077', 'Elektro', 'D2 AJK', '/path', 'Dr. Caroline Muller', '66916 Roberts Point Apt. 485\nJacobsland, CA 32687', '085874517720', '$2y$10$TfGZAKVOWooU9vWrFviQdu082XZ61rcd./B/3OgVP4QDepkDQ27ry', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '44', '10'),
('2115354595', 'Dr. Lexie Lockman II', '58833 Emile Stream\nZulaufport, IA 85549-4584', '084458864203', 'Elektro', 'D2 AJK', '/path', 'Prof. Paula Batz', '435 Monte Brooks\nKeanuport, MO 93154', '080363846645', '$2y$10$rupIaVj6KHeZOqugc32AkeFxheb/4NwgA24XjnUQv/4C2ywWRhW6e', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '23', '3'),
('2115354596', 'Gregoria Becker', '624 Price Prairie Suite 773\nNorth Hadleyborough, IA 51713-0920', '088236410216', 'Elektro', 'D2 AJK', '/path', 'Dr. Koby Spencer', '18795 Odessa Vista Suite 156\nPeggiefurt, FL 16697', '082813189540', '$2y$10$418kj4.W8hmkS/ICuLwrjenU1pR3mW8fbPieU.vuOqMxC6RjgjOa6', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '50', '8'),
('2115354606', 'Sanford Gerlach', '9249 Chelsea Mill\nCristopherburgh, RI 26820', '081093897970', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Francisca Rempel', '7057 Glover Key Suite 828\nShayleeberg, WY 61979-0484', '081689577374', '$2y$10$/x6tjpMe27i1VRd6s5LyUOGtLxIddWhoLK3VaClu.WCQySSnDDvt6', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '26', '9'),
('2115354620', 'Brian O\'Reilly', '900 Genesis Inlet\nWaltershire, AL 12933', '082175391056', 'Elektro', 'D4 TO', '/path', 'Prof. Damion Green', '554 Odie Lodge\nKacieville, RI 15578', '081451461041', '$2y$10$1iOLCJrRaTQECXjQKpO3v.Z1TvBZyPqIUpw/R8zdQrl65N8Xr6tjK', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '27', '3'),
('2115354626', 'Matilde Botsford V', '94009 Lula Fork\nLake Terrill, OR 85938', '086067408633', 'Elektro', 'D4 TRPL', '/path', 'Dr. Prof. Jermey Hodkiewicz', '4827 Estefania Lane\nMallieshire, FL 00803-1179', '086434794723', '$2y$10$6zqzRzYuUGzu19kyQ4zd/.Ygb5Ouh/XJ4J3TyFR7o5MVFHszpNtL2', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '45', '1'),
('2115354630', 'Marie Brown', '3602 Hegmann Mission Suite 735\nWest Jasper, CT 40381', '080676762061', 'Elektro', 'D2 AJK', '/path', 'Dr. Felton Morissette', '385 Price Junctions\nLake Pascale, NH 17364-0180', '087429269632', '$2y$10$QqR3PAsMN31efmnjLKVRfOZLrQ29E/ruNNqWKedcb5Ibf8dMICjQS', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '28', '3'),
('2115354653', 'Johanna Will', '594 Gerry Center Suite 488\nAlysonport, IN 89128', '086085009157', 'Elektro', 'D4 TRPL', '/path', 'Mr. Mrs. Kaylee Casper', '813 Margarete Oval Apt. 494\nSouth Wilfridport, NH 11100', '081732061208', '$2y$10$4RM8Tuhm/20vQaZH9.HdwOP6Ov/9ZSBNbR/M9P/xXsqA85/p6iH1m', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '32', '9'),
('2115354656', 'Mr. Lucious Olson', '277 Berge Groves\nPort Humbertostad, NC 01661', '082310378122', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Miss Destiny Kuhn I', '72516 Tiffany Forge\nPort Dorothy, KS 21709-9342', '081485141113', '$2y$10$5WlZcvuXwAq2fHst9SGVi.09rAQY7OB3dL/9repTXQWfDVeZwRY3S', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '8', '1'),
('2115354675', 'Keagan Heathcote', '528 Turner Alley Apt. 709\nNew Dakota, AR 05411', '089264826815', 'Elektro', 'D2 IPKBR', '/path', 'Miss Sienna Bailey Sr.', '39575 Bartoletti Plains\nWintheiserville, ID 10557-8708', '089510411498', '$2y$10$pjUIBlw24HO60juxSzT0TeMfJKn9Mo6mOiNA4kkz1oPCXCgaXURKa', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '4', '9'),
('2115354684', 'Patricia Quigley V', '7225 Zboncak Lodge Apt. 562\nMikehaven, IL 30998-2183', '089843451782', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Margarette Erdman', '6991 Spinka Knolls\nOletatown, GA 85277-3857', '085412585764', '$2y$10$DbqOKrqWwmxVb17yXnopieIiIRmEluCq.XHdnTltgzWo.jNlzL4UG', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '4', '5'),
('2115354692', 'Alysa Kuphal', '7906 Alta Vista Suite 308\nWest Eulachester, NY 91363-9422', '085222568507', 'Elektro', 'D4 TRPL', '/path', 'Prof. Nasir Weimann', '92083 Maida Lights\nLake Leonora, LA 34564', '082540588971', '$2y$10$XET.5dZws//mpcmqm9sIJefyE82Dlso17S7Pty6lu/U2VIxWtYlbG', '2023-06-12 17:22:44', '2023-06-12 17:22:44', '36', '7'),
('2115354705', 'Trycia Mayer', '34710 Price Curve Apt. 578\nGorczanybury, IN 06807-7124', '088374579189', 'Elektro', 'D4 TRPL', '/path', 'Miss Myrna Bergstrom MD', '1559 Armstrong Divide\nVirginiemouth, OK 82302', '089423239717', '$2y$10$kF6jS.NGqOKVkLoVjwx9meaJGXbz1UKJ68CgSjV6XrPwD.GB7Rzke', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '37', '5'),
('2115354732', 'Felicia McCullough', '3366 Kara Mews Apt. 092\nGraysonland, FL 77078', '083668015428', 'Elektro', 'D4 TRPL', '/path', 'Prof. Alexandro Cummings', '572 Schroeder Dale Apt. 180\nSouth Amariburgh, SD 04979-2831', '087406587607', '$2y$10$0Mk4TugRsXe0YyUroh7R3O6EJBil8sPWvgG4/0vEh/rK7cmgvlzTS', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '42', '4'),
('2115354735', 'Giovanni Gutkowski', '52531 Kohler Mountains Apt. 375\nPort Nathanielton, ME 83413-9446', '084000005262', 'Elektro', 'D4 TO', '/path', 'Prof. Trace Legros', '340 Raoul Pine\nLarkinview, HI 16297', '088365146787', '$2y$10$bZpYIX0QqDVyLZFu.2Ri1.4WxZq9NjZZX58Qp23jS5p8ykwX.w.U6', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '15', '7'),
('2115354760', 'Dr. Santina Rohan', '38423 Schamberger Prairie Suite 952\nLake Kathrynmouth, AL 56565', '087769544791', 'Elektro', 'D4 TRPL', '/path', 'Mr. Elyssa Schmeler PhD', '873 Howe Ports Apt. 741\nSouth Litzystad, UT 53963', '082075015831', '$2y$10$RROhvuQyt3WeXqvfcEyqqOmOl6vPi2xlgjUBBFzQgIbeV0VR.U0RK', '2023-06-12 17:22:38', '2023-06-12 17:22:38', '17', '1'),
('2115354761', 'Erick Weber', '662 Madison Port\nWest Dashawnstad, NC 35748-5931', '086899567730', 'Elektro', 'D2 AJK', '/path', 'Prof. Twila Hodkiewicz', '306 Denesik Plain Apt. 960\nJoeyside, UT 75838', '082708558092', '$2y$10$EMyHdp83Ifus6lSng8Jb6eE/J5209rNMnY4sjAuIsb5eq5U.xDPCa', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '27', '3'),
('2115354783', 'Prof. Zakary Anderson III', '998 Friesen Club Suite 869\nPort Kaiaburgh, VA 12620', '080967622602', 'Elektro', 'D2 AJK', '/path', 'Mr. Mr. Owen Weissnat', '6409 Walton Manor Apt. 104\nStehrborough, NM 37734-2481', '082408661413', '$2y$10$VC8lH03AHkYCaYBSUOoU8eHARMwem4IEb.RKoCqb/MEYSOTJuTNza', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '9', '4'),
('2115354801', 'Brisa Ernser', '28691 Clovis Plaza\nRueckerton, IN 31153-2758', '086996439980', 'Elektro', 'D4 TO', '/path', 'Dr. Adell Hamill I', '347 Mercedes Key Apt. 586\nPort Francisco, OK 55446', '080375440282', '$2y$10$JS2o7oViB8iNSkOc4z2enOJaZtHzTLDIlAEfcGKusoP7f60Aie02C', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '21', '10'),
('2115354814', 'Annalise Huel', '4211 Roselyn Pine\nLake Columbusburgh, AK 62118', '085549254929', 'Elektro', 'D2 AJK', '/path', 'Prof. Prof. Kenna Kuhic', '56289 Thurman Center Apt. 339\nNorth Anikashire, GA 19207-3646', '081557533759', '$2y$10$O.Bw8ZW8s2adOuopfYqyQOKViXGatLrADhML2zB2/XxwQA/p0/Pf2', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '4', '2'),
('2115354817', 'Dalton Pagac MD', '85162 Retha Hill Suite 513\nSchmidtside, CA 82129', '080363963653', 'Elektro', 'D2 AJK', '/path', 'Prof. Mr. Eliezer Littel PhD', '6061 Arvid Isle Suite 742\nWest Joeview, NV 27006-2742', '084082188665', '$2y$10$DDQnvWVrn6HCWP1d.O..xuuI0upZfovA6Azrxp2uGkF1wAus9a0Xe', '2023-06-12 17:22:39', '2023-06-12 17:22:39', '6', '6'),
('2115354825', 'Chanelle Grady', '9683 Donnelly Manor\nWest Irma, CO 63852-2402', '086270386065', 'Elektro', 'D4 TRPL', '/path', 'Miss Lillie Ryan', '58326 Jaydon Dam\nNew Coltonbury, NY 12642-5359', '088455234464', '$2y$10$1N2uu6pnRpYLXVLfErRr0O2bvI.Dbc8QzQtUB8iSBxu1Oe7HLRYSy', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '27', '5'),
('2115354826', 'Destinee Beahan', '99130 Kihn Island\nPort Madonnahaven, WV 11711', '080065155186', 'Elektro', 'D2 IPKBR', '/path', 'Mr. Noel Brakus', '9392 Greenfelder Roads\nLake Elissaberg, AK 09419-6061', '089743753437', '$2y$10$KgusHHW/6Inj3eC7V9kBQ.ffVxNIMKbxAaqFJ1eVYiUhELWU0pVQy', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '49', '5'),
('2115354837', 'Jack Wilderman', '6582 Salvador Forges\nPort Francescafort, NE 98070-2911', '089475905193', 'Elektro', 'D4 TRPL', '/path', 'Miss Jesus Kertzmann', '17958 Cormier Camp\nPort Jovany, RI 13494', '088108879942', '$2y$10$qzVhHWbKFPYs5ChkatRg7OvvmgYS731uAVD/8dO8/rkZEJLhK0d7e', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '24', '6'),
('2115354838', 'Gretchen Russel', '57463 Jacobs Radial\nPort Vilma, DE 76326-3964', '084142299782', 'Elektro', 'D4 TO', '/path', 'Prof. Minerva Bahringer', '540 Filomena Trafficway Suite 535\nPort Lois, AK 93931-9955', '089555988814', '$2y$10$5fQby9XXBd/goDosbrZlGubfrB4fIg/z54xgQiQFeC7WlTL4Kk2uq', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '1', '8'),
('2115354856', 'Loyal Wolff PhD', '76770 Mosciski Fort Suite 641\nLake Margaretland, IL 97237-2748', '086912255843', 'Elektro', 'D4 TRPL', '/path', 'Mrs. Mrs. Lou Toy', '52181 Rupert Stravenue\nJosephport, CA 41159', '089859411523', '$2y$10$wNR3lU5vyBPFlcz2NItFD.CVil7a1RFMRRob25k3Wi3hQFWhkLQde', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '8', '1'),
('2115354895', 'Mr. Andrew Mosciski', '17317 Kassulke Landing Apt. 926\nNew Jovanny, LA 44555-6389', '088048482848', 'Elektro', 'D4 TO', '/path', 'Mrs. Mckenna Hoppe', '614 Filiberto Glens Suite 980\nWest Olliefurt, CT 43892-8267', '081461753814', '$2y$10$n2EdXHtCmQnltDRvx19hFOkfHUMBkHFI.G3Ty8gzaLXQDYldKeAuW', '2023-06-12 17:22:43', '2023-06-12 17:22:43', '16', '4'),
('2115354907', 'Marcelo Lubowitz Jr.', '41230 Stark Alley\nAntwanchester, LA 80348', '082134340648', 'Elektro', 'D2 IPKBR', '/path', 'Dr. Mara Yost', '84259 Kiana Estate\nSouth Zachariah, MO 88481', '080234294879', '$2y$10$K2BHEWEkCLEb3WVrnJv/KeJYxH8WE1.KIbIZSPfjF2kCT.vZ.uTgm', '2023-06-12 17:22:36', '2023-06-12 17:22:36', '42', '7'),
('2115354912', 'Dr. Rowan Nolan II', '87607 Trantow Centers\nNew Edmundtown, OR 82834-9052', '080477591085', 'Elektro', 'D4 TO', '/path', 'Dr. Raoul Stokes', '2683 Nikko Trail\nSouth Brielle, OK 98376', '083135866164', '$2y$10$e5THEertBzzaiM0xTtlAP.Vwm2Bq3eIqLi3ZuTiW6tSQhzjd.sai.', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '25', '8'),
('2115354924', 'Mohammed Bailey', '11179 Jaylan Fords\nWest Maybelle, IN 95479', '086733155091', 'Elektro', 'D4 TO', '/path', 'Dr. Miss Abigayle Little DDS', '744 Runolfsson Squares Suite 121\nWest Tamara, OK 36449-7031', '086979636186', '$2y$10$ox023Ynlf7ioIupN6yME8.jC/YVyF.pGXVzUHSm/6PTrSQLtfBWZO', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '34', '6'),
('2115354928', 'Prof. Kira Friesen PhD', '11332 Cristina Points Suite 641\nNew Paulinefurt, NJ 44394', '080500541865', 'Elektro', 'D2 AJK', '/path', 'Ms. Prof. Joan Bauch', '81509 Kallie Mount\nNorth Patiencehaven, AL 20691-9152', '082127656962', '$2y$10$1XWDs6unFJEsM50TxE8M9uMv9MSLiSq4R.OMBCIEg5b8CLtlHl7OK', '2023-06-12 17:22:35', '2023-06-12 17:22:35', '44', '8'),
('2115354931', 'Kirstin Hartmann MD', '648 Frances Fort\nNew Bradenfurt, IA 40843-9611', '081785028911', 'Elektro', 'D2 AJK', '/path', 'Dr. Loy Flatley', '513 Reilly Drive Suite 224\nEdgarfurt, RI 87760-2318', '080299073250', '$2y$10$N43Hd4KUvn1oVDMNkNHS.uYAtjLu2Gyny7U1HNqtoY6GdoORCQMd.', '2023-06-12 17:22:41', '2023-06-12 17:22:41', '37', '6'),
('2115354946', 'Lavonne Shields', '8182 Jakubowski Land\nGuadalupeton, RI 33956-1990', '087075732187', 'Elektro', 'D2 AJK', '/path', 'Prof. Prof. Isaiah Robel MD', '31097 Brekke Roads Suite 262\nJaskolskiview, NH 02429', '084636075419', '$2y$10$cO4yqr885iGtw8iLUOxnmOHBJ6HaphMJlaVVMBE2WQSFCljV8RdDu', '2023-06-12 17:22:40', '2023-06-12 17:22:40', '20', '3'),
('2115354947', 'Jack Bernhard DVM', '632 Rogahn Glen\nLake Oscar, NJ 75759-7289', '081693541400', 'Elektro', 'D2 IPKBR', '/path', 'Miss Jany Bednar I', '7128 Ellis Islands Suite 313\nPort Yvette, VT 30844', '088034971913', '$2y$10$p4Aw0bp3OiTSyU2Rrg37Yub87jBUzQps/M9t1FAcYxpK37bKnzbiS', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '17', '8'),
('2115354951', 'Delaney Schinner', '1554 Elwin Viaduct Suite 088\nNew Catalinamouth, ND 01393-6260', '088161583301', 'Elektro', 'D2 AJK', '/path', 'Mr. Ivory Metz', '783 Donnelly Alley\nHaagton, NE 37368', '084889084823', '$2y$10$m9pvwgbtYGG0zn471VAc..l.dElb6hnr0d8g3Ps949WA2cM9k.Jfm', '2023-06-12 17:22:37', '2023-06-12 17:22:37', '44', '6'),
('2115354992', 'Prof. Abbie Williamson', '90281 Marietta Mountains Apt. 783\nWest Janelleview, WA 49440-6205', '088312035034', 'Elektro', 'D4 TRPL', '/path', 'Mr. Tania Kerluke', '5850 Schmidt Hills\nWest Monroe, FL 44908-8314', '081757253399', '$2y$10$VY7.6WZcytUethd/d9INKOG4OYk36Mqn5oKBT6vRk8mreg3MwaxG6', '2023-06-12 17:22:42', '2023-06-12 17:22:42', '23', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_bimbingan`
--
ALTER TABLE `form_bimbingan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_form_bimbingan_mahasiswa` (`mahasiswa_id`);

--
-- Indexes for table `form_evaluasi`
--
ALTER TABLE `form_evaluasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_form_evaluasi_form_bimbingan` (`form_bimbingan_id`);

--
-- Indexes for table `kaprodi`
--
ALTER TABLE `kaprodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mahasiswa_dosen` (`dosen_id`),
  ADD KEY `fk_mahasiswa_kaprodi` (`kaprodi_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `form_bimbingan`
--
ALTER TABLE `form_bimbingan`
  ADD CONSTRAINT `fk_form_bimbingan_mahasiswa` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `form_evaluasi`
--
ALTER TABLE `form_evaluasi`
  ADD CONSTRAINT `fk_form_evaluasi_form_bimbingan` FOREIGN KEY (`form_bimbingan_id`) REFERENCES `form_bimbingan` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_dosen` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_mahasiswa_kaprodi` FOREIGN KEY (`kaprodi_id`) REFERENCES `kaprodi` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
