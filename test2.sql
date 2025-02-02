-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 02:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `auctionId` int(11) NOT NULL,
  `auctionName` varchar(100) DEFAULT 'DefaultAuctionName',
  `endDate` varchar(255) DEFAULT NULL,
  `endTime` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `startTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`auctionId`, `auctionName`, `endDate`, `endTime`, `productId`, `startDate`, `startTime`) VALUES
(1, 'DefaultAuctionName', '06/25', 10, 1, '05/25', 10),
(2, 'DefaultAuctionName', '12345', 4, 2, '123456', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bidId` int(11) NOT NULL,
  `bidAmount` int(11) DEFAULT 0,
  `auctionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`bidId`, `bidAmount`, `auctionId`, `userId`, `price`) VALUES
(1, 0, 1, 1, 123456),
(2, 0, 1, 1, 456789),
(3, 0, 1, 1, 89879879),
(4, 0, 1, 2, 456789),
(5, 0, 2, 2, 6777889),
(6, 0, 1, 2, 5667778);

-- --------------------------------------------------------

--
-- Table structure for table `insertvalues`
--

CREATE TABLE `insertvalues` (
  `ROLLNO` int(11) NOT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(100) DEFAULT 'DefaultProductName',
  `userId` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `prodname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `userId`, `category`, `description`, `imagepath`, `price`, `prodname`) VALUES
(1, 'DefaultProductName', 1, 'mouse', 'jkjsdbfskdfdf', 'images\\kid-skateboard-16165297.jpg', 123456, 'test'),
(2, 'DefaultProductName', 2, 'mouse', 'kjkgghg', 'images\\', 776678, 'jgjghjg'),
(3, 'DefaultProductName', 2, 'mouse', 'eqwew', 'images\\Screenshot 2024-05-05 170505.png', 234, 'Senuri Liyanaara');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `password`, `firstname`, `lastname`, `address`, `city`, `state`, `pincode`, `telephone`, `mobile`, `email`) VALUES
(1, 'se@gmail.com', '12345', 'Se', 'li', 'BD', 'mobile', 'uva', '23342', '4234', '123456789', 'ssha@gmail.com'),
(2, 'd@gmail.com', 'd@gmail.com', 'sbbs', 'jans', 'BD', 'BD', 'BD', '3234234', '2323434', '23432432', 'd@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auctionId`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bidId`),
  ADD KEY `auctionId` (`auctionId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `insertvalues`
--
ALTER TABLE `insertvalues`
  ADD PRIMARY KEY (`ROLLNO`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auction`
--
ALTER TABLE `auction`
  MODIFY `auctionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bidId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`auctionId`) REFERENCES `auction` (`auctionId`),
  ADD CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
