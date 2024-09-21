-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 04:44 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(4) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_body` text NOT NULL,
  `comment_date` date NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_name`, `comment_email`, `comment_body`, `comment_date`, `ID`) VALUES
(1, 'asda', 'assd@gmail.com', 'asdas', '2019-04-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ctgry`
--

CREATE TABLE `tbl_ctgry` (
  `ID` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ctgry`
--

INSERT INTO `tbl_ctgry` (`ID`, `category`) VALUES
(1, 'CodeIgniter'),
(6, 'Mikrotik'),
(7, 'HTML'),
(8, 'PHP'),
(9, 'Network');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(75) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `featured_image` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `visit` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`ID`, `title`, `author`, `date`, `content`, `featured_image`, `slug`, `category`, `visit`) VALUES
(2, 'Hello World', 'Bahyu Sanciko', '2019-04-27 10:59:56', '<p><img src=\"http://localhost/blog/assets/images/39814264_1793390944044052_3159837899575263232_o1.jpg\" style=\"width: 542.422px;\"></p><p><br></p><p>Hai, my name is Bahyu Sanciko&nbsp;</p><p><br></p><p><br></p>', '/assets/images/artikel/aa6.jpg', 'hello-world', 'CodeIgniter Mikrotik HTML PHP Network', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `kd_user` int(100) NOT NULL,
  `username_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `img_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `telpon_user` int(20) NOT NULL,
  `level_user` int(1) NOT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `active_user` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`kd_user`, `username_user`, `password_user`, `nama_user`, `img_user`, `email_user`, `telpon_user`, `level_user`, `alamat_user`, `active_user`) VALUES
(1, 'admin', '$2y$10$/QU9h5JnAxk/KqHkXg6Q0u5LsPLu1pHHdHGnD/WtlKyGRak5amLjm', 'Bahyu Sanciko', 'assets/admin/dist/img/default.png', 'cbahyu@gmail.com', 2147483647, 1, 'jl cc', '2019-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `kd_tent` int(2) NOT NULL,
  `img_tent` varchar(100) NOT NULL,
  `nama_tent` varchar(50) NOT NULL,
  `desc_tent` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`kd_tent`, `img_tent`, `nama_tent`, `desc_tent`) VALUES
(1, 'assets/images/tentang/bahyu.jpeg', 'Bahyu Sanciko', '<h3><strong>Software Engginer</strong></h3>\r\n\r\n<hr />\r\n<p><em>Para Pencuri Function</em></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `testi`
--

CREATE TABLE `testi` (
  `testi_id` int(11) NOT NULL,
  `name_testi` varchar(100) NOT NULL,
  `email_testi` varchar(150) NOT NULL,
  `testi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testi`
--

INSERT INTO `testi` (`testi_id`, `name_testi`, `email_testi`, `testi`) VALUES
(1, 'asdasd', 'cbahyu@gmail.com', 'jashdkjash'),
(2, 'dsfsd;fls', 'cbahyu@gmail.com', 'asldkas;ldkasldasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_ctgry`
--
ALTER TABLE `tbl_ctgry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`kd_tent`);

--
-- Indexes for table `testi`
--
ALTER TABLE `testi`
  ADD PRIMARY KEY (`testi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ctgry`
--
ALTER TABLE `tbl_ctgry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `kd_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `kd_tent` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testi`
--
ALTER TABLE `testi`
  MODIFY `testi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
