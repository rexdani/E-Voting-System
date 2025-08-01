-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2025 at 12:22 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `5facevotedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cantb`
--

CREATE TABLE `cantb` (
  `id` bigint(250) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `PartName` varchar(250) NOT NULL,
  `PartCode` varchar(250) NOT NULL,
  `Image` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cantb`
--

INSERT INTO `cantb` (`id`, `Name`, `PartName`, `PartCode`, `Image`) VALUES
(2, 'san', 'ADMK', 'ADMK', 'atmk.jpeg'),
(3, 'san', 'DMK', 'DMK', 'Dmk.jpg'),
(4, 'sarveshwari', 'MNM', 'maka', 'istockphoto-182188504-612x612.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `regtb`
--

CREATE TABLE `regtb` (
  `UserName` varchar(250) NOT NULL,
  `FatherName` varchar(250) NOT NULL,
  `Gender` varchar(250) NOT NULL,
  `Age` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `VoterId` varchar(250) NOT NULL,
  `AadharId` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regtb`
--

INSERT INTO `regtb` (`UserName`, `FatherName`, `Gender`, `Age`, `Email`, `Phone`, `Address`, `VoterId`, `AadharId`) VALUES
('sangeeth', 'sangeeth', 'male', '20', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', '94863655359', '94863655359'),
('sangeeth Kumar', 'san', 'Male', '23', 'sangeeth5535@gmail.com', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', '9486365525', '948636553555'),
('daniyal', 'daniyal', 'Male', '23', 'rexdaniyal@gmail.com', '7812829037', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', '7812829037', '781282903711'),
('daniyal', 'daniyal', 'Male', '23', 'rexdaniyal@gmail.com', '7812829037', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', '7812829038', '781282903733'),
('daniyal', 'daniyal', 'Male', '23', 'rexdaniyal@gmail.com', '7812829037', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', '7812829039', '781282903722');

-- --------------------------------------------------------

--
-- Table structure for table `temptb`
--

CREATE TABLE `temptb` (
  `id` bigint(50) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temptb`
--

INSERT INTO `temptb` (`id`, `UserName`, `Status`) VALUES
(0, '7812829039', '2221');

-- --------------------------------------------------------

--
-- Table structure for table `votedtb`
--

CREATE TABLE `votedtb` (
  `id` bigint(50) NOT NULL auto_increment,
  `VoterId` varchar(250) NOT NULL,
  `PartCode` varchar(250) NOT NULL,
  `Image` varchar(250) NOT NULL,
  `count` int(20) NOT NULL,
  `Hash1` varchar(250) NOT NULL,
  `Hash2` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `votedtb`
--

INSERT INTO `votedtb` (`id`, `VoterId`, `PartCode`, `Image`, `count`, `Hash1`, `Hash2`) VALUES
(2, '94863655350', 'maka', 'istockphoto-182188504-612x612.jpg', 1, '0', '3F416F390FDA935F489723B6CB10319515A077890EFA7DFB9E73B89CC06642B7'),
(7, '9486365525', 'ADMK', 'atmk.jpeg', 1, '3F416F390FDA935F489723B6CB10319515A077890EFA7DFB9E73B89CC06642B7', '6ED14BA1E6173DCE967AB781DD086FD8D534EC7048313FB289CB96EEC7D96C47'),
(8, '7812829039', 'ADMK', 'atmk.jpeg', 1, '6ED14BA1E6173DCE967AB781DD086FD8D534EC7048313FB289CB96EEC7D96C47', '79B01B37C56CB8B1BD819D8BB0D6A126B058144A9F15EE67BF9E2F599236A2F5');

-- --------------------------------------------------------

--
-- Table structure for table `vreguesttb`
--

CREATE TABLE `vreguesttb` (
  `id` bigint(10) NOT NULL auto_increment,
  `VoterId` varchar(250) NOT NULL,
  `Reason` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Status` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vreguesttb`
--

INSERT INTO `vreguesttb` (`id`, `VoterId`, `Reason`, `Address`, `Status`) VALUES
(1, '9486365525', 'fever', 'no 6 trichy', 'Accept'),
(2, '7812829039', 'fever', 'no 6 trichy', 'Accept');
