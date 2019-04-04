-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 03:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description` mediumtext COLLATE utf8_bin NOT NULL,
  `Runtime` int(11) NOT NULL,
  `Release_Date` int(11) NOT NULL,
  `Score` float NOT NULL,
  `Poster` varchar(200) COLLATE utf8_bin NOT NULL,
  `Trailer` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `movie_person`
--

CREATE TABLE `movie_person` (
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `movie_studios`
--

CREATE TABLE `movie_studios` (
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studios_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Decsription` mediumtext COLLATE utf8_bin NOT NULL,
  `Release_Date` date NOT NULL,
  `Score` float NOT NULL,
  `Poster` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `music_person`
--

CREATE TABLE `music_person` (
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `music_studios`
--

CREATE TABLE `music_studios` (
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studios_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `First_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `Last_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(6) COLLATE utf8_bin NOT NULL,
  `DOB` date NOT NULL,
  `DOD` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `person_role`
--

CREATE TABLE `person_role` (
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `Studio_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studio_name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tvshows`
--

CREATE TABLE `tvshows` (
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description` mediumtext COLLATE utf8_bin NOT NULL,
  `Release_Date` date NOT NULL,
  `Score` float NOT NULL,
  `Poster` varchar(200) COLLATE utf8_bin NOT NULL,
  `Trailer` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tvshow_person`
--

CREATE TABLE `tvshow_person` (
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tvshow_studios`
--

CREATE TABLE `tvshow_studios` (
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studios_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `Username` varchar(20) COLLATE utf8_bin NOT NULL,
  `First_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `Last_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `DOB` date NOT NULL,
  `Join_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Email` varchar(320) COLLATE utf8_bin NOT NULL,
  `Password` varchar(16) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(6) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Movie_Id`);

--
-- Indexes for table `movie_person`
--
ALTER TABLE `movie_person`
  ADD KEY `Movie_Id` (`Movie_Id`),
  ADD KEY `Person_Id` (`Person_Id`),
  ADD KEY `Role_Id` (`Role_Id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`Music_Id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_Id`);

--
-- Indexes for table `person_role`
--
ALTER TABLE `person_role`
  ADD PRIMARY KEY (`Role_Id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`Studio_Id`);

--
-- Indexes for table `tvshows`
--
ALTER TABLE `tvshows`
  ADD PRIMARY KEY (`TvShow_Id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
