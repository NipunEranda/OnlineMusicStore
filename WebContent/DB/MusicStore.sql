-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2019 at 11:48 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MusicStore`
--

-- --------------------------------------------------------

--
-- Table structure for table `Albums`
--

CREATE TABLE `Albums` (
  `AlbumId` int(10) NOT NULL,
  `AlbumName` varchar(255) NOT NULL,
  `AlbumDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Albums`
--

INSERT INTO `Albums` (`AlbumId`, `AlbumName`, `AlbumDescription`) VALUES
(1, 'lol', '3r23rewf');

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE `Artists` (
  `ArtistId` int(10) NOT NULL,
  `ArtistName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Genres`
--

CREATE TABLE `Genres` (
  `GenreId` int(255) NOT NULL,
  `GenreName` varchar(255) NOT NULL,
  `GenreDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genres`
--

INSERT INTO `Genres` (`GenreId`, `GenreName`, `GenreDescription`) VALUES
(1, 'Rock', 'hrtdhtyjr'),
(2, 'jazz', ''),
(3, 'Electronic', ''),
(4, 'Dubstep', 'gwgwergrw'),
(5, 'Rhythm', ''),
(6, 'Techno', ''),
(7, 'HipHop', ''),
(8, 'Pop', ''),
(9, 'Country', ''),
(10, 'Classical', ''),
(11, 'Heavy Metal', ''),
(12, 'Dance', ''),
(13, 'Rap', '');

-- --------------------------------------------------------

--
-- Table structure for table `Tracks`
--

CREATE TABLE `Tracks` (
  `TrackId` int(11) NOT NULL,
  `TrackName` varchar(255) DEFAULT NULL,
  `AlbumId` int(11) DEFAULT NULL,
  `GenreId` int(11) DEFAULT NULL,
  `Published` date NOT NULL,
  `Composer` varchar(255) DEFAULT NULL,
  `Milliseconds` int(11) DEFAULT NULL,
  `UnitPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uId` int(11) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `postalCode` int(6) NOT NULL,
  `address` varchar(255) NOT NULL,
  `isAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uId`, `userName`, `firstName`, `lastName`, `email`, `password`, `image`, `telephone`, `postalCode`, `address`, `isAdmin`) VALUES
(1, 'Nipun', 'Nipun', 'Amarasekara', 'root', '4212', 'eafeafegegar', '0770415266', 5555, 'r4qt4t4bt', 1),
(2, 'Nadee', 'Nadeera', 'Amarasekara', 'nadeera94@gmail.com', '4212', 'fefwgwrg', '0770415266', 8080, 'ewwefefwegweg', 0),
(4, 'Neo_71', 'Nipun', 'Amarasekara', 'root', '4212', 'images/userProfiles/Nipun.jpg', '0770415266', 1000, 'r4qt4t4bt', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Albums`
--
ALTER TABLE `Albums`
  ADD PRIMARY KEY (`AlbumId`);

--
-- Indexes for table `Artists`
--
ALTER TABLE `Artists`
  ADD PRIMARY KEY (`ArtistId`);

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`GenreId`);

--
-- Indexes for table `Tracks`
--
ALTER TABLE `Tracks`
  ADD PRIMARY KEY (`TrackId`),
  ADD KEY `AlbumId_fk` (`AlbumId`),
  ADD KEY `GenreId_fk` (`GenreId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Albums`
--
ALTER TABLE `Albums`
  MODIFY `AlbumId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Artists`
--
ALTER TABLE `Artists`
  MODIFY `ArtistId` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Genres`
--
ALTER TABLE `Genres`
  MODIFY `GenreId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Tracks`
--
ALTER TABLE `Tracks`
  ADD CONSTRAINT `AlbumId_fk` FOREIGN KEY (`AlbumId`) REFERENCES `Albums` (`AlbumId`),
  ADD CONSTRAINT `GenreId_fk` FOREIGN KEY (`GenreId`) REFERENCES `Genres` (`GenreId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
