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
(1, 'Nightmare', 'Heavy metal, genre of rock music that includes a group of related styles that are intense, virtuosic, and powerful. '),
(2, 'Edsheeran plus', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE `Artists` (
  `ArtistId` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `ArtistDescription` mediumtext NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artists`
--

INSERT INTO `Artists` (`ArtistId`, `userName`, `firstName`, `lastName`, `ArtistDescription`, `email`, `password`, `image`, `telephone`, `address`) VALUES
(1, 'Avenged SevenFold', 'Avenged', 'SevenFold', '', 'Avenged@gmail.com', 'null', NULL, '0125896325', '9316, Queensway, EDINBURGH, EH68, 9IU'),
(2, 'DewmalPerera', 'Dewmal', 'Perera', '', 'dewmalperera@gmail.com', '1234', NULL, '0770415266', '181/f,minuwangoda rd,Udugamopola'),
(3, 'Devinda', 'Devinda', 'Srinath', '', 'dev@gmail.com', '1234', 'ewagragrdg', '0711294033', '26 Sir Marcus Fernando Mawatha, Colombo 07');

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `itemId` varchar(30) NOT NULL,
  `itemName` varchar(80) NOT NULL,
  `itemType` varchar(25) NOT NULL,
  `Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`itemId`, `itemName`, `itemType`, `Price`) VALUES
('1128', 'NewDevide', 'HeavyMetal', '120.00');

-- --------------------------------------------------------

--
-- Table structure for table `Genres`
--

CREATE TABLE `Genres` (
  `GenreId` int(255) NOT NULL,
  `GenreName` varchar(255) NOT NULL,
  `GenreDescription` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genres`
--

INSERT INTO `Genres` (`GenreId`, `GenreName`, `GenreDescription`) VALUES
(1, 'Rock', 'a form of popular music that evolved from rock and roll and pop music during the mid and late 1960s. Harsher and often self-consciously more serious than its predecessors, it was initially characterized by musical experimentation and drug-related or anti-establishment lyrics.'),
(2, 'Jazz', 'a type of music of black American origin which emerged at the beginning of the 20th century, characterized by improvisation, syncopation, and usually a regular or forceful rhythm. Brass and woodwind instruments and piano are particularly associated with jazz, although guitar and occasionally violin are also used; styles include Dixieland, swing, bebop, and free jazz.'),
(3, 'Electronic', 'Electronic music is music that employs electronic musical instruments, digital instruments and circuitry-based music technology. In general, a distinction can be made between sound produced using electromechanical means electroacoustic music, and that produced using electronics only.'),
(4, 'Dubstep', 'Dubstep is a genre of electronic dance music that originated in South London in the late 1990s. It is generally characterized by sparse, syncopated rhythmic patterns with prominent (and often wobbly) sub-bass frequencies and epic breakdowns.'),
(5, 'Rhythm', 'Rhythm. The beat of music; the regular pattern of long and short notes. Certain kinds of music, such as blues or marches, have a very characteristic rhythm. Rhythm, harmony, and melody are elements of music.'),
(6, 'Techno', 'Techno is a form of electronic dance music that emerged in Detroit, Michigan, in the United States during the mid-to-late 1980s. The first recorded use of the word techno in reference to a specific genre of music was in 1988.'),
(7, 'HipHop', 'Hip hop music, also called hip-hop or rap music, is a music genre developed in the United States by inner-city African Americans in the Bronx borough of New York City in the 1970s. It consists of a stylized rhythmic music that commonly accompanies rapping, a rhythmic and rhyming speech that is chanted.'),
(8, 'Pop', 'Pop music is a genre of popular music that originated in its modern form in the United States and United Kingdom during the mid-1950s. ... Pop music is eclectic, and often borrows elements from other styles such as urban, dance, rock, Latin, and country; nonetheless, there are core elements that define pop music.'),
(9, 'Country', 'Country music, also known as country and western (or simply country), and hillbilly music, is a genre of popular music that originated in the southern United States in the early 1920s. It takes its roots from genres such as American folk music (especially Appalachian folk and Western music) and blues.'),
(10, 'Classical', 'Classical music is art music produced or rooted in the traditions of Western culture, including ..... is classified as Romantic, also used counterpoint and fugue, but the romantic and sometimes yearning qualities of their music define their era.');

-- --------------------------------------------------------

--
-- Table structure for table `Payments`
--

CREATE TABLE `Payments` (
  `uId` int(11) NOT NULL,
  `cardNo` int(16) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `postalCode` int(6) NOT NULL,
  `telephone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Payments`
--

INSERT INTO `Payments` (`uId`, `cardNo`, `firstName`, `lastName`, `address`, `postalCode`, `telephone`) VALUES
(11, 7582383, 'Shamin', 'Andrado', 'weliveriya', 8080, 67764343);

-- --------------------------------------------------------

--
-- Table structure for table `Tracks`
--

CREATE TABLE `Tracks` (
  `TrackId` int(11) NOT NULL,
  `TrackName` varchar(255) DEFAULT NULL,
  `AlbumId` int(11) DEFAULT NULL,
  `ArtistId` int(11) DEFAULT NULL,
  `GenreId` int(11) DEFAULT NULL,
  `Published` date DEFAULT NULL,
  `Composer` varchar(255) DEFAULT NULL,
  `Milliseconds` int(11) DEFAULT NULL,
  `UnitPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tracks`
--

INSERT INTO `Tracks` (`TrackId`, `TrackName`, `AlbumId`, `ArtistId`, `GenreId`, `Published`, `Composer`, `Milliseconds`, `UnitPrice`) VALUES
(1, 'Track1', 1, 1, 1, '2019-11-18', 'Avenged SevenFold', 190, 200),
(2, 'Track2', 1, 2, 3, '2019-05-01', 'DewmalPerera', 150, 300),
(3, 'Track3', 2, 3, 6, '2019-05-12', 'Devinda', 140, 200);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `userType` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uId`, `userName`, `firstName`, `lastName`, `email`, `password`, `image`, `telephone`, `postalCode`, `address`, `userType`) VALUES
(1, 'Nipun', 'Nipun', 'Amarasekara', 'namarasekara71@gmail.com', '4212', 'ico1.jpg', '0711294033', '8080', 'Malabe', 1),
(2, 'Nashitha', 'Nashitha', 'Lakmal', 'nashithaLakmal@gmail.com', '1234', 'ico2.jpg', '0712659956', '8080', 'Colombo', 1),
(3, 'Shamin', 'Shamin', 'Andrado', 'shamin@gmail.com', '1234', 'ico3.jpg', '0724649596', '8060', 'Malabe', 0),
(11, 'IT18042184', 'Shamin', 'Andrado', 'shamin@gmail.com', '1234', '', '0713352330', '8080', 'weliveriya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserType`
--

CREATE TABLE `UserType` (
  `typeId` tinyint(4) NOT NULL,
  `typeName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserType`
--

INSERT INTO `UserType` (`typeId`, `typeName`) VALUES
(0, 'customer'),
(1, 'Admin');

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
  ADD PRIMARY KEY (`ArtistId`),
  ADD UNIQUE KEY `ArtistId` (`ArtistId`);

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`GenreId`);

--
-- Indexes for table `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`uId`);

--
-- Indexes for table `Tracks`
--
ALTER TABLE `Tracks`
  ADD PRIMARY KEY (`TrackId`),
  ADD KEY `AlbumId_fk` (`AlbumId`),
  ADD KEY `GenreId_fk` (`GenreId`),
  ADD KEY `ArtistId_fk` (`ArtistId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uId`),
  ADD KEY `Users_fk` (`userType`);

--
-- Indexes for table `UserType`
--
ALTER TABLE `UserType`
  ADD PRIMARY KEY (`typeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Albums`
--
ALTER TABLE `Albums`
  MODIFY `AlbumId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Genres`
--
ALTER TABLE `Genres`
  MODIFY `GenreId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Tracks`
--
ALTER TABLE `Tracks`
  ADD CONSTRAINT `AlbumId_fk` FOREIGN KEY (`AlbumId`) REFERENCES `Albums` (`AlbumId`),
  ADD CONSTRAINT `ArtistId_fk` FOREIGN KEY (`ArtistId`) REFERENCES `Artists` (`ArtistId`),
  ADD CONSTRAINT `GenreId_fk` FOREIGN KEY (`GenreId`) REFERENCES `Genres` (`GenreId`);

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_fk` FOREIGN KEY (`userType`) REFERENCES `UserType` (`typeId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
