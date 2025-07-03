-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2025 at 12:27 PM
-- Server version: 11.8.2-MariaDB-log
-- PHP Version: 8.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administrasi-barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `prioritas` enum('low','medium','high') DEFAULT 'medium',
  `status` enum('pending','done') DEFAULT 'pending',
  `deadline` datetime DEFAULT NULL,
  `selesai_pada` datetime DEFAULT NULL,
  `dibuat_oleh` int(11) DEFAULT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `judul`, `deskripsi`, `prioritas`, `status`, `deadline`, `selesai_pada`, `dibuat_oleh`, `dibuat_pada`, `updated_at`) VALUES
(22, 'Tes 112', 'desc', 'medium', 'done', '2025-05-06 03:49:00', NULL, 3, '2025-05-24 02:44:51', '2025-05-24 03:02:10'),
(24, 'Hijau', 'aku dan diriku 3000 tahun lalu', 'medium', 'done', '2025-05-30 09:52:00', NULL, 2, '2025-05-24 02:52:51', '2025-05-24 04:00:52'),
(28, 'Topup di shokatopup.infy.uk', 'Topup di shokatopup.infy.uk', 'low', 'done', '2025-06-07 10:28:00', NULL, 10, '2025-05-24 03:28:50', '2025-05-24 04:01:02'),
(36, 'Menyiram tanaman', 'Siram tanaman di depan rumah', 'low', 'pending', '2025-07-04 18:55:00', NULL, 2, '2025-07-03 11:55:10', '2025-07-03 11:55:10'),
(37, 'Season Depan Pasti Immortal !!', 'Mencapai Rank Immortal di Mobile Legends', 'high', 'pending', '2025-07-31 18:56:00', NULL, 2, '2025-07-03 11:56:08', '2025-07-03 11:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `role` enum('Admin','Member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$c0FcNqwHegylx7LeJn7m3Oxo6G1XaXKzBy.9FwSXADFVBaO46XjBu', 'Admin'),
(2, 'Farel', '$2y$10$3DX3ddsvMHuO007kxaUape3vjvqUAW6hK6WX8FR6M8ZUoKQwHht2O', 'Admin'),
(3, 'Virgi', '$2y$10$wwO4tRGEsAn9pn53B0NfUOk0N7MKmGi7EANkXIUos5lmLYJjeJsba', 'Admin'),
(4, 'Farel1', '$2y$10$ICC9ms0Fyli4usIs0d0gmuTNMHP9CfYnYNphEDqVcbhxqbl4nw/kq', 'Admin'),
(5, 'Farel2', '$2y$10$TdwC8oXkXUzH3DCw6wr44.F/p57o3gxnO6.j.FQU.l16AlCjfskUm', 'Admin'),
(6, 'member', '$2y$10$YNNnqwl6Wj.c1Sw4c43lCeN.IUP688J2YOxtenGoVP7tKwCEMZyjC', 'Member'),
(8, 'Aku Member', '$2y$10$97tufPza/kGGYsYB4NSqXuwIDbJdqCpdRIiG6U/2tXUZIuzBCo22y', 'Member'),
(9, 'baru', '$2y$10$/zpK1DRoWrsBvZFfC1teVOLwJC8zDVPiiJ1wKmkXdq.y9JvatU/r2', 'Admin'),
(10, 'Shokatopup.infy.uk', '$2y$10$jUHzDMZ2tQ7tPDIT/OApJu3yK68lEozUe9weua/nA3D4vU7bsO14e', 'Admin'),
(11, 'Denis', '$2y$10$4Rs4wxp2G4G/ef87YBrLl./NSgYPxsxwqp9H0TJd4gXc0rSv74/uO', 'Member'),
(12, 'Denis1', '$2y$10$LYKgpHOsf9Ny2f9LL8RtpOwqB2v5xGp4eZyLGMcLiqRIm.DQ4aXA.', 'Member'),
(13, 'broto', '$2y$10$0aCS4b2alU5IWW7bZLR44OjTdRI5YkobV1yf43zAuPVVDwwZylKvS', 'Admin'),
(14, 'Cakra', '$2y$10$8/9HsPzGi9qaPnzYHG16muweTAiBV1h.lCs7F/Zzjl1WDPNPS3Bde', 'Member'),
(15, 'Abang_Dik', '$2y$10$DcVZQZrw/BT3W39sUxz7n..v38WhYAlGY8mphRH0EDmVdCjHAS7zC', 'Member'),
(16, 'dika', '$2y$10$562DDbOUgAaQCbQtRvgllOGgAf8trco4Jh8/AdRKEESutSyalujSS', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dibuat_oleh` (`dibuat_oleh`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`dibuat_oleh`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
