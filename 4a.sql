-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2021 at 03:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dw_novel`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `id_user`, `id_category`) VALUES
(4, 'Mesmerizing Ghost Doctor', 'She, a modern hidden ghost leader of an organization which gathered insane prodigies proficient in the various differing skill-sets. Highly skilled in medicine and poison, executes covert...', 'https://img.mywuxiaworld.com/cover/6a/82/d8/6a82d87b058fb8fab33309db7db6ebf1.jpg', '2016-09-14 16:21:30', 0, 1),
(5, 'Mesmerizing Ghost Doctor', 'She, a modern hidden ghost leader of an organization which gathered insane prodigies proficient in the various differing skill-sets. Highly skilled in medicine and poison, executes covert...', 'https://img.mywuxiaworld.com/cover/6a/82/d8/6a82d87b058fb8fab33309db7db6ebf1.jpg', '2016-05-25 05:21:30', 0, 1),
(6, 'Mesmerizing Ghost Doctor', 'She, a modern hidden ghost leader of an organization which gathered insane prodigies proficient in the various differing skill-sets. Highly skilled in medicine and poison, executes covert...', 'https://img.mywuxiaworld.com/cover/6a/82/d8/6a82d87b058fb8fab33309db7db6ebf1.jpg', '2015-02-18 09:34:30', 0, 1),
(7, 'Mesmerizing Ghost Doctor', 'She, a modern hidden ghost leader of an organization which gathered insane prodigies proficient in the various differing skill-sets. Highly skilled in medicine and poison, executes covert...', 'https://img.mywuxiaworld.com/cover/6a/82/d8/6a82d87b058fb8fab33309db7db6ebf1.jpg', '0000-00-00 00:00:00', 0, 1),
(8, 'Mesmerizing Ghost Doctor', 'She, a modern hidden ghost leader of an organization which gathered insane prodigies proficient in the various differing skill-sets. Highly skilled in medicine and poison, executes covert...', 'https://img.mywuxiaworld.com/cover/6a/82/d8/6a82d87b058fb8fab33309db7db6ebf1.jpg', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `autho`
--

CREATE TABLE `autho` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autho`
--

INSERT INTO `autho` (`id`, `name`, `email`, `password`, `image`) VALUES
(1, 'Park Saenal', 'parksaenal@gmail.com', '123456', 'https://static.wikia.nocookie.net/overgeared/images/9/9c/3fc783ff58b3bc6344f87f9de21852b0-720x900.jpg/revision/latest/scale-to-width-down/310?cb=20190628174513'),
(2, 'Chu Gong', 'chugong@gmail.com', '123456', 'https://i0.wp.com/spoilerguy.com/wp-content/uploads/2020/01/Solo-Leveling-Chapter-101-Spoilers-scaled-1.jpg'),
(3, 'Feng Jiong', 'fengjiong@gmail.com', '123456', 'https://readmanhua.net/wp-content/uploads/2019/03/Annotation_2020-05-22_043104-193x278.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Web Novel (KR)'),
(2, 'Wuxia Novel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autho`
--
ALTER TABLE `autho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `autho`
--
ALTER TABLE `autho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
