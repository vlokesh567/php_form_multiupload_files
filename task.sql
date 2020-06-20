-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 04:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `salary` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_table`
--

INSERT INTO `test_table` (`id`, `name`, `salary`) VALUES
(1, 'a', 3000),
(2, 'b', 4000),
(3, 'b', 6000),
(4, 'a', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`) VALUES
(1, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596'),
(2, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596'),
(3, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596'),
(4, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596'),
(5, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596'),
(6, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596'),
(7, 'V LOKESH', 'uv.lokesh7@gmail.com', '07207409596');

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `userid`, `file_name`, `uploaded_on`) VALUES
(1, 1, 'AYESHA - RESUME.pdf', '2020-06-20 19:08:35'),
(2, 2, 'AYESHA - RESUME.docx', '2020-06-20 19:10:08'),
(3, 3, 'AYESHA - RESUME.pdf', '2020-06-20 19:10:08'),
(4, 4, 'AYESHA - RESUME.docx', '2020-06-20 19:11:17'),
(5, 4, 'AYESHA - RESUME.pdf', '2020-06-20 19:11:17'),
(6, 5, 'AYESHA - RESUME.pdf', '2020-06-20 19:12:46'),
(7, 5, 'beach-foam-landscape-nature-533923.jpg', '2020-06-20 19:12:46'),
(8, 6, 'instagram-sketched.png', '2020-06-20 19:33:17'),
(9, 7, 'silhouette-of-trees-at-sunset-257092.jpg', '2020-06-20 19:35:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
