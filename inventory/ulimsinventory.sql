-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2017 at 02:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ulimsinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `consumptions`
--

CREATE TABLE `consumptions` (
  `id` int(11) NOT NULL,
  `stockID` int(11) NOT NULL,
  `balance` double NOT NULL,
  `amountused` double NOT NULL,
  `dateconsumed` date NOT NULL,
  `withdrawnby` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reorderstocks`
--

CREATE TABLE `reorderstocks` (
  `id` int(11) NOT NULL,
  `supplyID` int(11) NOT NULL,
  `reorderdate` date NOT NULL,
  `daterequested` date NOT NULL,
  `datereceived` date NOT NULL,
  `supplierID` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `stockID` varchar(50) NOT NULL,
  `supplyID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `quantity` double NOT NULL,
  `daterecieved` date NOT NULL,
  `dateopened` datetime NOT NULL,
  `expiry_date` date NOT NULL,
  `recieved_by` int(11) NOT NULL,
  `threshold_limit` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `batch_number` varchar(255) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `stockID`, `supplyID`, `name`, `description`, `manufacturer`, `unit`, `quantity`, `daterecieved`, `dateopened`, `expiry_date`, `recieved_by`, `threshold_limit`, `location`, `batch_number`, `supplierID`, `amount`) VALUES
(1, '1', 1, 'cfgfg', 'fgfgf', 'fgfg', '2', 3, '2016-01-01', '2016-01-01 00:00:00', '2016-01-01', 1, 5, 'dtdgfdg', '434er4', 2, 56),
(11, 'aabbcc', 1, 'Hbw', 'ballpen for genius', 'abc incorporation', '3a', 100, '0000-00-00', '0000-00-00 00:00:00', '2043-10-05', 1, 0, '', '10', 1, 0),
(12, 'aabbcd', 1, 'Pen Pineapple pen', 'ballpen for noobs', 'yinzhang inc', '3b', 50, '0000-00-00', '0000-00-00 00:00:00', '2043-10-05', 1, 0, '', '5', 1, 0),
(13, 'aabbce', 2, 'Tissue paper', 'peper for mapapel', 'yun zhue inc', '5a', 30, '0000-00-00', '0000-00-00 00:00:00', '2043-10-05', 1, 0, '', '8', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `fax_number` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `description`, `address`, `contact_person`, `phone_number`, `fax_number`, `email_address`) VALUES
(1, 'printpapers', 'oers blah blah', 'dgdgfdgdd', 'fghfgh', '911-1024', '991-4024', 'fvghfh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lab` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `name`, `lab`, `description`) VALUES
(1, 'ballpen', 1, 'sdgdshgregre'),
(2, 'paper', 3, '32rwerwe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumptions`
--
ALTER TABLE `consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reorderstocks`
--
ALTER TABLE `reorderstocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumptions`
--
ALTER TABLE `consumptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reorderstocks`
--
ALTER TABLE `reorderstocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
