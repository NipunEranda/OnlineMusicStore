-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2019 at 09:20 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `album_tmp`
--

CREATE TABLE `album_tmp` (
  `albumId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_tmp`
--

INSERT INTO `album_tmp` (`albumId`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `artist_tmp`
--

CREATE TABLE `artist_tmp` (
  `artistId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist_tmp`
--

INSERT INTO `artist_tmp` (`artistId`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `genre_tmp`
--

CREATE TABLE `genre_tmp` (
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre_tmp`
--

INSERT INTO `genre_tmp` (`genreId`) VALUES
(16),
(15),
(14),
(13),
(12),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `track_tmp`
--

CREATE TABLE `track_tmp` (
  `trackId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_tmp`
--

INSERT INTO `track_tmp` (`trackId`) VALUES
(3),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tmp`
--

CREATE TABLE `user_tmp` (
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
