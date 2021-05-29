-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 02:51 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javazigm1`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `productId` int(222) NOT NULL,
  `productName` varchar(222) NOT NULL,
  `productBrand` varchar(222) NOT NULL,
  `productPrice` int(222) NOT NULL,
  `productDescription` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `totalPrice` int(222) DEFAULT 0,
  `status` varchar(2222) NOT NULL DEFAULT 'pending',
  `Customer` varchar(255) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `productId`, `productName`, `productBrand`, `productPrice`, `productDescription`, `quantity`, `totalPrice`, `status`, `Customer`) VALUES
(21, 24, 'shoes', 'habagat', 1000, 'habagat ni', 50, 50000, 'Canceled', 'justin'),
(22, 17, 'shoes', 'adidas', 5000, 'adidas ni', 2, 10000, 'approved', 'jamessssssss'),
(23, 19, 'shoes', 'nike', 1000, 'nike ni', 5, 5000, 'approved', 'bunso'),
(24, 17, 'shoes', 'adidas', 5000, 'adidas ni', 2, 10000, 'approved', 'jamessssssss'),
(25, 18, 'shoes', 'sandugo', 2000, 'sandugo ni', 2, 4000, 'approved', 'ian');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productPrice` int(255) NOT NULL,
  `productStocks` int(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unarchive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `productBrand`, `productPrice`, `productStocks`, `productDescription`, `status`) VALUES
(17, 'shoes', 'adidas', 5000, 98, 'adidas ni', 'unarchive'),
(18, 'shoes', 'sandugo', 2000, 48, 'sandugo ni', 'unarchive'),
(20, 'shoes', 'nike', 3000, 100, 'nike ni', 'archive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'able',
  `type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `email`, `password`, `status`, `type`) VALUES
(29, 'miguel', 'miguel@gmail.com', 'miguel', 'able', 'user'),
(30, 'ian', 'ian@gmail.com', 'miguel', 'able', 'admin'),
(31, 'jmiguel', 'jmiguel@gmail.com', 'jmiguel', 'able', 'admin'),
(32, 'juan', 'juan@gmail.com', 'juan', 'disable', 'user'),
(33, 'guian', 'guian@gmail.com', 'guian', 'disable', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
