-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2016 at 09:33 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rabsab`
--

-- --------------------------------------------------------

--
-- Table structure for table `BookMaster`
--

CREATE TABLE IF NOT EXISTS `BookMaster` (
  `bookId` int(8) NOT NULL AUTO_INCREMENT,
  `userId` int(8) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `imgUrl` varchar(200) DEFAULT NULL,
  `rent` int(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `BookMaster`
--

INSERT INTO `BookMaster` (`bookId`, `userId`, `title`, `category`, `imgUrl`, `rent`, `status`) VALUES
(1, 2, 'Eat That Frog', 'Business', 'images/uploads/eatThatFrog.jpg_2_1001100101111', 100, 1),
(2, 2, 'Ice Candy Men', 'Best Sellers', 'images/uploads/icecandymen.jpg_2_10101101011', 60, 1),
(3, 1, 'Tipping Point', 'Business', 'images/uploads/tippingpoint_1_10000100100.jpg', 200, 1),
(4, 3, 'The Da Vinci Code', 'Best Sellers', 'images/uploads/davincicode.jpg_3_10001101001000', 200, 1),
(5, 3, 'Good to great', 'Business', 'images/uploads/goodtogreat.jpg_3_1101010011101', 200, 1),
(6, 3, 'How to win friends and influence people', 'Self Help', 'images/uploads/howtowinfriends.jpg_3_1101111101010', 100, 1),
(7, 4, 'The Art of Doing', 'Self Help', 'images/uploads/theartofdoing.jpg_4_10010100101101', 200, 1),
(8, 5, 'The Catching Fire', 'Fiction', 'images/uploads/catchingfire.jpg_5_1111010000', 125, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserMaster`
--

CREATE TABLE IF NOT EXISTS `UserMaster` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mailId` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `UserMaster`
--

INSERT INTO `UserMaster` (`id`, `name`, `mailId`, `password`, `role`) VALUES
(1, 'Neeraj', 'a@b.com', '1234', 2),
(2, 'Sara', 'sara@gmail.com', '1234', 1),
(3, 'Swarnim', 'swarnim@gmail.com', '1234', 1),
(4, 'Raman', 'raman@gmail.com', '1234', 1),
(5, 'Rahul', 'rahul@gmail.com', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserProfile`
--

CREATE TABLE IF NOT EXISTS `UserProfile` (
  `profileId` int(8) NOT NULL,
  `mobileNo` varchar(12) NOT NULL,
  `secretQuestion` varchar(100) NOT NULL,
  `secretAnswer` varchar(100) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` varchar(6) NOT NULL,
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserProfile`
--

INSERT INTO `UserProfile` (`profileId`, `mobileNo`, `secretQuestion`, `secretAnswer`, `street`, `city`, `state`, `pin`) VALUES
(1, '9876543210', 'What is your place of birth?', 'Meerut', 'Sector 2', 'Noida', 'UP', '201301'),
(2, '9876543210', 'What is your place of birth?', 'meerut', 'C-43, Sector 2', 'Noida', 'U.P.', '201301'),
(3, '8765432190', 'What is your place of birth?', 'Noida', 'C-41, Sector 15', 'Noida', 'U.P.', '201301'),
(4, '8976543210', 'Which was your first smart phone?', 'iphone', 'A-234, Shastri Nagar', 'Meerut', 'U.P.', '250110'),
(5, '9876543219', 'What is your place of birth?', 'Bulandshar', 'A-56, Ghanta Ghar', 'BulandShar', 'U.P.', '240110');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
