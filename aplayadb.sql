-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2015 at 06:36 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `magbanuadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE IF NOT EXISTS `amenities` (
  `amen_id` int(100) NOT NULL AUTO_INCREMENT,
  `amen_name` varchar(100) NOT NULL,
  `amen_desp` varchar(100) NOT NULL,
  `amen_image` varchar(100) NOT NULL,
  PRIMARY KEY (`amen_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`amen_id`, `amen_name`, `amen_desp`, `amen_image`) VALUES
(9, 'The bathrooms', 'with hot water showers', 'pics/bathroom.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Gina', 'Bulgado', 'gina@yahoo.com', '    gina comment            '),
(2, 'Gina', 'Bulgado', 'gina@yahoo.com', '    gina comment            '),
(3, 'Gina', 'Bulgado', 'gina@yahoo.com', '      fbgfbgbgfbfgbgb          '),
(4, 'Allan', 'Cayateno', 'allan@yahoo.com', '   from allan             '),
(5, 'Allan', 'Cayateno', 'allan@yahoo.com', '   from allan             '),
(6, 'Allan', 'Cayateno', 'allan@yahoo.com', '   from allan             '),
(7, 'Allan', 'Cayateno', 'allan@yahoo.com', '                '),
(8, 'Allan', 'Cayateno', 'allan@yahoo.com', '                '),
(9, 'vel', 'gauma', 'vel@yahoo.com', '                ATEH OKE AHH'),
(10, 'Erick Jason', 'Batuto', 'ejbatuto@hotmail.com', 'Extra bed for 2'),
(11, 'Joken', 'Villanueva', 'joken000189561@gmail.com', '                '),
(12, 'HATCH', 'VILLANUEVA', 'hatchvillanueva16@gmail.com', '                '),
(13, 'Joken', 'Villanueva', 'joken000189561@gmail.com', '                '),
(14, 'Erick Jason', 'Batuto', 'ejbatuto@hotmail.com', '                '),
(15, 'sdfsdfsd', 'dsfds', 'sddf', '                '),
(16, 'Kevi', 'Gargar', 'fg', '                '),
(17, 'Joken', 'Villanueva', 'joken000189561@gmail.com', '                '),
(18, 'Jesyl', 'Gozon', 'jhasyl@yahoo.com', '                '),
(19, 'Joken', 'Villanueva', 'joken000189561@gmail.com', '                '),
(20, 'steve', 'flores', 'kevinflores_23@yahoo.com', '                '),
(21, 'Janno', 'Palacios', 'jano@yahoo.com', '                '),
(22, 'Janno', 'Palaciosa', 'jeanniebenillos@gmail.com', '                '),
(23, 'jo', 'jk', 'jeanniebenillos@gmail.com', '                '),
(24, 'jo', 'jk', 'jeanniebenillos@gmail.com', '                '),
(25, 'jo', 'jk', 'jeanniebenillos@gmail.com', '                '),
(26, 'jo', 'jk', 'jeanniebenillos@gmail.com', '                '),
(27, 'sad', 'sad', 'j@yahoo.com', '                asdasdas');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `guest_id` int(30) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `lastname`, `country`, `city`, `address`, `zip`, `phone`, `email`, `password`) VALUES
(3, 'Jacob', 'Njega', 'Kenya', 'Nairobi', '', '00100', '0714812234', 'njega@gmail.com', 'redeem'),
(4, 'Simon', 'mwaura', 'kenya', 'Nairobi', '', '00100', '0714812921', 'smjoshua09@gmail.com', '52672367'),
(5, 'Juma', 'Felix', 'kenya', 'Sega', '', '40614', '0720108418', 'juma@gmail.com', ''),
(6, 'Peterson', 'Kimani', 'kenya', 'Nyandarua', '', '3456', '0729475691', 'peterkimani89@yahoo.com', '6666'),
(22, 'HATCH', 'VILLANUEVA', 'Philippines', '.Himmamaylan', 'MGB CAGAY BRGY SUAY', '6108', '63234234', 'hatchvillanueva16@gmail.com', 'ghvhgv'),
(23, 'merry grace ', '', '', '', '', '', '', '', ''),
(24, 'dfsdf', 'sdfsdf', 'dsfsdf', 'dsf', '', '234', '434234', 'sdfdsf', 'dsfsdf'),
(25, 'Gina', 'Bulgado', 'Phillppines', 'Kabankalan city', 'Guanzon Street', '6111', '0987654321', 'gina@yahoo.com', '12314234234'),
(26, 'dsfdsf', 'df', 'dfdf', 'dfdf', '', 'df', '234', 'sdfdf', 'dsfsdf'),
(27, 'merry grace ', 'principe', 'Philippines', 'himamaylan', '', '6108', '4712-462', 'merrygraceprincipe@yahoo.com', 'lyricajoy23'),
(28, 'Erick jason ', 'Batuto', 'Philippines', 'Cebu City', '', '1000', '90199090', 'ejb@yahoo.com', '123345'),
(29, 'janno', 'palacios', 'Phillppines', 'Kabankalan city', '', '6111', '73263274687432', 'jannopalacios@yahoo.com', '12345'),
(30, 'sdsad', 'dsfds', 'dsf', 'sdfdf', '', 'df', 'df', 'dfdf', 'sdf'),
(31, 'dsfsdfdsfsd', 'fsdf', 'sdfsdf', 'sdfsdfsd', '', 'sdfsd', 'fsdfsdf', 'sdfsdfsdf', 'sdfdsfdsf'),
(33, 'Allan', 'Cayateno', 'Phillppines', 'Manila', 'Fairvew', '12321', '987842', 'allan@yahoo.com', '324234dsfsdf'),
(34, 'vel', 'gauma', 'Phillppines', 'Kabankalan city', 'Kabanakalan City', '6111', '82374836583', 'vel@yahoo.com', '12345'),
(35, 'Jesyl', 'Gozon', 'Philippines', 'Cebu City', 'Mabolo Cebu City', '6000', '09179348731', 'jhasyl@yahoo.com', 'j'),
(36, 'Joken', 'Villanueva', 'Philippines', '.Himmamaylan', 'MGB CAGAY BRGY SUAY', '6108', '09983344318', 'joken000189561@gmail.com', '123456'),
(37, 'sdfsdfsd', 'dsfds', 'dsfsdf', 'dsfds', 'dsfd', 'ds', 'dsf', 'sddf', 'df'),
(38, 'Kevi', 'Gargar', 'fgfg', 'fgf', 'fgf', 'fgf', 'ffg', 'fg', ''),
(39, 'steve', 'flores', 'philippines', 'kabankalan', 'Camugao', '6111', '09077659710', 'kevinflores_23@yahoo.com', '12345'),
(40, 'Janno', 'Palacios', 'Philippines', 'kabankalan City', 'Kabankalan City', '6111', '091949656225', 'jano@yahoo.com', 'as'),
(41, 'jo', 'jk', 'jk', 'jk', 'jkl', '911', '0975765', 'jeanniebenillos@gmail.com', 'a'),
(42, 'sad', 'sad', 'sda', 'sda', 'dsa', '611', '213123123', 'j@yahoo.com', 'jjj');

-- --------------------------------------------------------

--
-- Table structure for table `ozekimessagein`
--

CREATE TABLE IF NOT EXISTS `ozekimessagein` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(30) DEFAULT NULL,
  `receiver` varchar(30) DEFAULT '+254714812921',
  `msg` varchar(160) DEFAULT NULL,
  `senttime` varchar(100) DEFAULT NULL,
  `receivedtime` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `msgtype` varchar(160) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ozekimessagein`
--

INSERT INTO `ozekimessagein` (`id`, `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `operator`, `msgtype`, `reference`) VALUES
(1, '3D0B93C2F4F8FDD6', '+254714812921', 'ozeki message server trial - www.ozeki.hu', '2012-03-29 09:54:40', '2012-03-29 09:54:36', 'Safaricom', 'SMS:TEXT', '7394143'),
(2, '3D0B93C2F4F8FDD6', '+254714812921', 'Sorry,your account balance is not sufficient to complete this request.Please top up and try again.', '2012-03-29 09:54:58', '2012-03-29 09:54:54', 'Safaricom', 'SMS:TEXT', '7916704'),
(3, '3D0B93C2F4F8FDD6', '+254714812921', 'Sorry,your account balance is not sufficient to complete this request.Please top up and try again.', '2012-03-29 09:54:45', '2012-03-29 09:54:57', 'Safaricom', 'SMS:TEXT', '4474671'),
(4, '3D0B93C2F4F8FDD6', '+254714812921', 'ozeki message server trial - www.ozeki.hu', '2012-03-29 09:55:12', '2012-03-29 09:55:10', 'Safaricom', 'SMS:TEXT', '8415351');

-- --------------------------------------------------------

--
-- Table structure for table `ozekimessageout`
--

CREATE TABLE IF NOT EXISTS `ozekimessageout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(30) DEFAULT '+254714812921',
  `receiver` varchar(30) DEFAULT NULL,
  `msg` varchar(160) DEFAULT NULL,
  `senttime` varchar(100) DEFAULT NULL,
  `receivedtime` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'send',
  `msgtype` varchar(160) DEFAULT 'SMS:TEXT',
  `operator` varchar(100) DEFAULT 'Safaricom',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `ozekimessageout`
--

INSERT INTO `ozekimessageout` (`id`, `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `reference`, `status`, `msgtype`, `operator`) VALUES
(1, '+254714812921', '+254726667000', 'Thank You Jacob for making your reservation\n You are expected to pay sum of KES 300 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(2, '+254714812921', '+254726667000', 'Thank You Jacob for making your reservation\n You are expected to pay sum of KES 200 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(3, '+254714812921', '+254726667000', 'Thank You Jacob for making your reservation\n You are expected to pay sum of KES 300 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(4, '+254714812921', '+254720108418', 'Thank You juma for making your reservation\n You are expected to pay sum of KES 100 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(5, '+254714812921', '+254726667000', 'Thank You peterson  for making your reservation\n You are expected to pay sum of KES 400 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(6, '+254714812921', '+254712345678', 'Thank You Juma for making your reservation\n You are expected to pay sum of KES 1200 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(7, '+254714812921', '+254712345678', 'Thank You Juma for making your reservation\n You are expected to pay sum of KES 200 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(8, '+254714812921', '+254724789345', 'Thank You Njagi for making your reservation\n You are expected to pay sum of KES 300 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(9, '+254714812921', '+254712345678', 'Thank You Njagi for making your reservation\n You are expected to pay sum of KES 2200 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(10, '+254714812921', '+254724789345', 'Thank You Njagi for making your reservation\n You are expected to pay sum of KES 1500 for confirmation of reservation}', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(11, '+254714812921', '+254714812921', 'Thank You Simon  for making your reservation\n You are expected to pay sum of KES 600 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(12, '+254714812921', '+25471567892', 'Thank You Simon  for making your reservation\n You are expected to pay sum of KES 300 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(13, '+254714812921', '+254729475691', 'Thank You Peter for making your reservation\n You are expected to pay sum of KES 400 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(14, '+254714812921', '+254729475691', 'Thank You Peter for making your reservation\n You are expected to pay sum of KES 200 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(15, '+254714812921', '+254720108481', 'Thank You Felix for making your reservation\n You are expected to pay sum of KES 2100 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(16, '+254714812921', '+254727389289', 'Thank You Thuo for making your reservation\n You are expected to pay sum of KES 2200 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(17, '+254714812921', '+254729475691', 'Thank You Peter for making your reservation\n You are expected to pay sum of KES 2100 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(18, '+254714812921', '+254729475691', 'Thank You Peter for making your reservation\n You are expected to pay sum of KES 600 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(19, '+254714812921', '+254723455489', 'Thank You Israel for making your reservation\n You are expected to pay sum of KES 1800 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(20, '+254714812921', '+254729475691', 'Thank You Peter for making your reservation\n You are expected to pay sum of KES 1200 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(21, '+254714812921', '+254734567890', 'Thank You Jerop for making your reservation\n You are expected to pay sum of KES 2100 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(22, '+254714812921', '+254721241288', 'Thank You obote for making your reservation\n You are expected to pay sum of KES 1400 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(23, '+254714812921', '+254734567892', 'Thank You victor for making your reservation\n You are expected to pay sum of KES 1200 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(24, '+254714812921', '+254720108481', 'Thank You Felix for making your reservation\n You are expected to pay sum of KES 600 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(25, '+254714812921', '+254932898932', 'Thank You ken7832 for making your reservation\n You are expected to pay sum of KES 200 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(26, '+254714812921', '+254932898932', 'Thank You ken7832 for making your reservation\n You are expected to pay sum of KES 300 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(27, '+254714812921', '+254789123432', 'Thank You Wengi for making your reservation\n You are expected to pay sum of KES 1800 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(28, '+254714812921', '+254726667000', 'Thank You Jacob for making your reservation\n You are expected to pay sum of KES 100 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(29, '+254714812921', '+254714812921', 'Thank You simon for making your reservation\n You are expected to pay sum of KES 8400 for confirmation of reservation', NULL, NULL, NULL, 'sent', 'SMS:TEXT', 'Safaricom'),
(30, '+254714812921', '+254714812921', 'Thank You Simon for making your reservation\n You are expected to pay sum of KES 8000 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom'),
(31, '+254714812921', '+254714812234', 'Thank You Jacob for making your reservation\n You are expected to pay sum of KES 8400 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom'),
(32, '+254714812921', '+254720108418', 'Thank You Juma for making your reservation\n You are expected to pay sum of KES 24500 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom'),
(33, '+254714812921', '+254729475691', 'Thank You Peterson for making your reservation\n You are expected to pay sum of KES 27300 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom'),
(34, '+254714812921', '+254324324324', 'Thank You HATCH for making your reservation\n You are expected to pay sum of KES 0 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom'),
(35, '+254714812921', '+2543234234', 'Thank You HATCH for making your reservation\n You are expected to pay sum of KES 1500 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom'),
(36, '+254714812921', '+254323234234', 'Thank You HATCH for making your reservation\n You are expected to pay sum of KES 1500 for confirmation of reservation', NULL, NULL, NULL, 'send', 'SMS:TEXT', 'Safaricom');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `roomNo` int(50) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `arrival` varchar(30) NOT NULL,
  `departure` varchar(30) NOT NULL,
  `adults` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `payable` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `booked` date NOT NULL,
  `confirmation` varchar(20) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `roomNo`, `guest_id`, `arrival`, `departure`, `adults`, `child`, `payable`, `status`, `booked`, `confirmation`) VALUES
(1, 2, 25, '2014-03-27', '2014-03-28', 1, 0, 0, 'Checkedout', '0000-00-00', 'aa7o45qb'),
(2, 2, 25, '2014-03-27', '2014-03-28', 1, 0, 1500, 'Checkedout', '0000-00-00', 'pokoozoh'),
(3, 2, 25, '2014-03-27', '2014-03-28', 1, 0, 1500, 'Checkedout', '0000-00-00', 'p47gcsir'),
(7, 3, 33, '2014-04-06', '2014-04-07', 1, 0, 1800, 'Checkedin', '0000-00-00', 'tf3mbva3'),
(8, 3, 33, '2014-04-06', '2014-04-07', 1, 0, 1800, 'Checkedin', '0000-00-00', 'j3t6o8my'),
(9, 2, 34, '2014-03-06', '2014-03-07', 1, 0, 1500, 'Checkedout', '0000-00-00', 'zn63hw63'),
(10, 3, 35, '2014-03-29', '2014-03-30', 1, 0, 1800, 'Checkedin', '0000-00-00', 'v7t0o6rp'),
(11, 8, 36, '2014-03-28', '2014-03-31', 1, 0, 3900, 'Checkedin', '0000-00-00', 't6urn8t3'),
(12, 2, 22, '2014-03-08', '2014-03-09', 1, 0, 1500, 'Checkedout', '0000-00-00', 'czt277mm'),
(13, 3, 36, '2014-03-08', '2014-03-09', 1, 0, 1800, 'Checkedin', '0000-00-00', 'hnq6tgs5'),
(14, 9, 35, '2014-03-22', '2014-03-23', 1, 0, 2300, 'Cancelled', '0000-00-00', 'ayupzknr'),
(15, 2, 37, '2014-03-13', '2014-03-14', 1, 0, 1500, 'Checkedin', '0000-00-00', 'chn8qjta'),
(16, 3, 38, '2014-03-13', '2014-03-14', 1, 0, 1800, 'Checkedout', '0000-00-00', 'krfitp0k'),
(17, 3, 36, '2014-03-24', '2014-03-28', 1, 0, 7200, 'Checkedin', '0000-00-00', 'um8a30sq'),
(18, 2, 35, '2014-03-18', '2014-03-19', 1, 0, 1500, 'Cancelled', '0000-00-00', '803rk3h0'),
(19, 2, 36, '2014-03-18', '2014-03-19', 1, 0, 1500, 'Checkedout', '0000-00-00', 'x4dfc70f'),
(20, 2, 39, '2014-03-13', '2014-03-22', 1, 0, 13500, 'Checkedout', '0000-00-00', '4yd2io0y'),
(21, 2, 40, '2014-09-13', '2014-09-21', 1, 0, 12000, 'Checkedin', '0000-00-00', '88tvf0yi'),
(22, 2, 41, '2014-11-19', '2014-11-20', 1, 0, 1500, 'Checkedout', '0000-00-00', 'tqn5vhre'),
(23, 3, 41, '2014-11-19', '2015-01-07', 1, 0, 88200, 'Checkedin', '0000-00-00', 'tzobxftd'),
(24, 5, 41, '2014-11-19', '2015-01-07', 1, 0, 85750, 'Checkedin', '0000-00-00', 'jejukczm'),
(25, 2, 41, '2015-01-08', '2015-01-15', 1, 0, 10500, 'Checkedout', '0000-00-00', 'zov00u22'),
(26, 3, 41, '2015-01-08', '2015-01-09', 1, 0, 1800, 'Checkedin', '0000-00-00', 'wiy2mmfu'),
(27, 2, 42, '2015-02-25', '2015-02-28', 1, 0, 4500, 'Checkedin', '0000-00-00', 'g3kae5j4'),
(28, 3, 42, '2015-02-25', '2015-02-28', 1, 0, 5400, 'Checkedin', '0000-00-00', 'g3kae5j4'),
(29, 5, 42, '2015-02-25', '2015-02-28', 1, 0, 5250, 'Checkedin', '0000-00-00', 'g3kae5j4'),
(30, 8, 42, '2015-02-25', '2015-02-28', 1, 0, 3900, 'Checkedin', '0000-00-00', 'g3kae5j4');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `roomNo` int(50) NOT NULL AUTO_INCREMENT,
  `typeID` int(50) NOT NULL,
  `roomName` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `Adults` int(50) NOT NULL,
  `Children` int(10) NOT NULL,
  `roomImage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roomNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `typeID`, `roomName`, `price`, `Adults`, `Children`, `roomImage`) VALUES
(2, 83, 'Lion', '1500', 4, 1, 'rooms/del1.jpg'),
(3, 82, 'apartment', '1800', 4, 2, 'rooms/Stan1.JPG'),
(5, 83, 'Zion', '1750', 2, 1, 'rooms/102_4648.jpg'),
(8, 83, 'jason roomss', '1300', 1, 1, 'rooms/dsc03102.jpg'),
(14, 93, 'Family size#1', '1800', 4, 0, 'rooms/1.jpg'),
(15, 94, 'Family size#2', '1500', 4, 0, 'rooms/2.jpg'),
(16, 95, 'Family size#3', '1500', 4, 0, 'rooms/3.jpg'),
(17, 96, 'Family size#4', '1500', 4, 0, 'rooms/4.jpg'),
(18, 97, 'Cabin#1', '500', 2, 0, 'rooms/5.jpg'),
(19, 97, 'Cabin#2', '500', 2, 0, 'rooms/6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE IF NOT EXISTS `roomtype` (
  `typeID` int(50) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL,
  `Desp` text NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`typeID`, `typename`, `Desp`) VALUES
(93, 'Family size aircondition', 'ddsdadas'),
(94, 'Family size regular #1', 'dasdasdasd'),
(95, 'Family size regular #2', 'daffafa'),
(96, 'Family size regular #3', 'dasaff'),
(97, 'Cabin', 'afafadfa');

-- --------------------------------------------------------

--
-- Table structure for table `tblsettings`
--

CREATE TABLE IF NOT EXISTS `tblsettings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `TYPE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblsettings`
--

INSERT INTO `tblsettings` (`ID`, `DESCRIPTION`, `TYPE`) VALUES
(1, '       On the year 2003, Elizabeth Gasataya and Family have started a business. It was Magbanua Beach Resort, located at # 3 Rojas Street, Kabankalan City Negros Occidental Philippines 6111. It was well renovated with 14 air conditioned rooms, Hot and Cold Shower, Cable Television and WIFI area. 									', 'About Us'),
(2, '      Provide our guests a unique experience, through which they connect with the best in our company,  												and to offer top quality service to our entire guest and provided comfort abundance.', 'Vision'),
(3, '   Magbanua Beach Resort  provides the best quality of services applying top quality guest house and conference facilities, in order to fulfill the best way in the relevant needs of every guest.', 'Mission');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE IF NOT EXISTS `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(5, 'Janno Palacios', 'janu@yahoo.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(6, 'jame yap', 'jame@yahoo.com', 'f144dcce05af4d40fa0aeba34b05f4472472a4de', 'Guest In-charge');
