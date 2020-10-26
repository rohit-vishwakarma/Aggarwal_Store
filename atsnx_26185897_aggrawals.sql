-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql100.atsnx.com
-- Generation Time: Sep 13, 2020 at 12:36 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atsnx_26185897_aggrawals`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutinfo`
--

CREATE TABLE `aboutinfo` (
  `ID` int(11) NOT NULL,
  `VISITERS` varchar(10) NOT NULL,
  `PRODUCTS` varchar(100) NOT NULL,
  `BRANDS` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutinfo`
--

INSERT INTO `aboutinfo` (`ID`, `VISITERS`, `PRODUCTS`, `BRANDS`) VALUES
(2, '200', '1000', '100');

-- --------------------------------------------------------

--
-- Table structure for table `aboutlist`
--

CREATE TABLE `aboutlist` (
  `ID` int(11) NOT NULL,
  `LIST` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutlist`
--

INSERT INTO `aboutlist` (`ID`, `LIST`) VALUES
(1, 'We are here since 2000.'),
(2, 'We deal\'s in all kind of general products.'),
(3, '100% Assured Products'),
(6, 'Trust of 200+ Customers.');

-- --------------------------------------------------------

--
-- Table structure for table `aboutpic`
--

CREATE TABLE `aboutpic` (
  `ID` int(11) NOT NULL,
  `IMAGE` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutpic`
--

INSERT INTO `aboutpic` (`ID`, `IMAGE`) VALUES
(3, 'first.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`ID`, `USERNAME`, `EMAIL`, `PASSWORD`) VALUES
(1, 'Anmol kumar', 'anmolshrivastav.08@gmail.com', 'anmol@123'),
(2, 'Umang Aggrawal', 'umangaggrwal631@gmail.com', 'umang@123');

-- --------------------------------------------------------

--
-- Table structure for table `allcategory`
--

CREATE TABLE `allcategory` (
  `ID` int(11) NOT NULL,
  `CATEGORYNAME` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allcategory`
--

INSERT INTO `allcategory` (`ID`, `CATEGORYNAME`) VALUES
(32, 'instant_food'),
(33, 'cooking_oil_and_ghee'),
(34, 'biscuits');

-- --------------------------------------------------------

--
-- Table structure for table `biscuits`
--

CREATE TABLE `biscuits` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `PRICE` varchar(20) NOT NULL,
  `DISCOUNT` varchar(20) DEFAULT NULL,
  `COLOR` varchar(15) NOT NULL,
  `QUANTITY` varchar(15) NOT NULL,
  `BRAND` varchar(50) NOT NULL,
  `DELIVERY` varchar(10) NOT NULL,
  `RETURNABLE` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biscuits`
--

INSERT INTO `biscuits` (`ID`, `IMAGE`, `TITLE`, `PRICE`, `DISCOUNT`, `COLOR`, `QUANTITY`, `BRAND`, `DELIVERY`, `RETURNABLE`) VALUES
(1, 'gooday.jpg', 'gooday', '10', '', 'blue', '60grm', 'britania', '0', 'Yes'),
(2, 'gooday.jpg', 'gooday', '5', '', 'blue', '30 grm', 'britania', '0', 'Yes'),
(3, 'parle.jpg', 'parle-g', '5', '', 'yellow', '55grm', 'parle', '0', 'Yes'),
(4, 'parle.jpg', 'parle-g', '10', '0', 'yellow', '110grms', 'parle', '0', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `ID` int(11) NOT NULL,
  `IMAGE` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`ID`, `IMAGE`) VALUES
(5, 'first.jpg'),
(6, 'aboutpic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `PRICE` varchar(10) NOT NULL,
  `DISCOUNT` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cooking_oil_and_ghee`
--

CREATE TABLE `cooking_oil_and_ghee` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `PRICE` varchar(20) NOT NULL,
  `DISCOUNT` varchar(20) DEFAULT NULL,
  `COLOR` varchar(15) NOT NULL,
  `QUANTITY` varchar(15) NOT NULL,
  `BRAND` varchar(50) NOT NULL,
  `DELIVERY` varchar(10) NOT NULL,
  `RETURNABLE` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cooking_oil_and_ghee`
--

INSERT INTO `cooking_oil_and_ghee` (`ID`, `IMAGE`, `TITLE`, `PRICE`, `DISCOUNT`, `COLOR`, `QUANTITY`, `BRAND`, `DELIVERY`, `RETURNABLE`) VALUES
(1, 'mahakosh.jpg', 'mahakosh_refined', '100', '110', 'yellow', '1ltr', 'mahakosh', '0', 'Yes'),
(2, 'fortune.jpg', 'fortune_refined', '110', '125', 'white', '1ltr', 'fortune', '0', 'Yes'),
(3, 'scooter 1.jpg', 'scooter_oil', '120', '130', 'yellow', '1ltr', 'scooter', '0', 'Yes'),
(4, 'scooter.jpg', 'scooter_oil', '240', '250', 'yellow', '2ltr', 'scooter', '0', 'Yes'),
(5, 'kolhu.jpg', 'bail_kolhu', '270', '280', 'yellow', '2ltr', 'kolhu', '0', 'Yes'),
(6, 'rath.jpg', 'rath_ghee', '95', '100', 'blue', '1ltr', 'rath', '0', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE` varchar(10) NOT NULL,
  `MESSAGE` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `NAME`, `EMAIL`, `PHONE`, `MESSAGE`) VALUES
(2, 'Anmol kumar', 'anmolshrivastav.08@gmail.com', '9643538308', 'Awesome e-commerce website\r\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `instant_food`
--

CREATE TABLE `instant_food` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `PRICE` varchar(20) NOT NULL,
  `DISCOUNT` varchar(20) DEFAULT NULL,
  `COLOR` varchar(15) NOT NULL,
  `QUANTITY` varchar(15) NOT NULL,
  `BRAND` varchar(50) NOT NULL,
  `DELIVERY` varchar(10) NOT NULL,
  `RETURNABLE` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instant_food`
--

INSERT INTO `instant_food` (`ID`, `IMAGE`, `TITLE`, `PRICE`, `DISCOUNT`, `COLOR`, `QUANTITY`, `BRAND`, `DELIVERY`, `RETURNABLE`) VALUES
(1, 'maggie pic.jpg', 'maggie', '12', '', 'yellow', '12', 'nestle', '0', 'No'),
(2, 'SUNFEAST-YIPPEE-NOODLES-60G.jpg', 'yippee', '10', '', 'red', '60 grm', 'sunfeast', '0', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `normaluser`
--

CREATE TABLE `normaluser` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE` varchar(10) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `normaluser`
--

INSERT INTO `normaluser` (`ID`, `NAME`, `EMAIL`, `PHONE`, `PASSWORD`) VALUES
(4, 'Anmol kumar', 'anmolshrivastav.08@gmail.com', '9643538308', 'ANMOL@123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `PRICE` varchar(20) NOT NULL,
  `DISCOUNT` varchar(20) DEFAULT NULL,
  `COLOR` varchar(15) NOT NULL,
  `QUANTITY` varchar(15) NOT NULL,
  `BRAND` varchar(50) NOT NULL,
  `DELIVERY` varchar(10) NOT NULL,
  `RETURNABLE` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `IMAGE`, `TITLE`, `PRICE`, `DISCOUNT`, `COLOR`, `QUANTITY`, `BRAND`, `DELIVERY`, `RETURNABLE`) VALUES
(1, 'card1.jpeg', 'Name of Product', '200', '300', 'orange', '15 kg', 'Coca cola', '20', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `ID` int(11) NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`ID`, `IMAGE`, `TITLE`, `DESCRIPTION`) VALUES
(1, 'anmol.jpg', 'Anmol shrivastav', 'Website Design and Development.'),
(2, 'umang.jpg', 'Umang aggrawal', 'Media manager and Owner of site.'),
(3, 'rohit.jpg', 'Rohit Vishwakarma', 'Logo Designer and Database Manager.'),
(4, 'vikas.jpg', 'Vikas Chandra', 'Payment Integration System Designer.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutinfo`
--
ALTER TABLE `aboutinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `aboutlist`
--
ALTER TABLE `aboutlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `aboutpic`
--
ALTER TABLE `aboutpic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `allcategory`
--
ALTER TABLE `allcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `biscuits`
--
ALTER TABLE `biscuits`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cooking_oil_and_ghee`
--
ALTER TABLE `cooking_oil_and_ghee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `instant_food`
--
ALTER TABLE `instant_food`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `normaluser`
--
ALTER TABLE `normaluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutinfo`
--
ALTER TABLE `aboutinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aboutlist`
--
ALTER TABLE `aboutlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `aboutpic`
--
ALTER TABLE `aboutpic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `allcategory`
--
ALTER TABLE `allcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `biscuits`
--
ALTER TABLE `biscuits`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cooking_oil_and_ghee`
--
ALTER TABLE `cooking_oil_and_ghee`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instant_food`
--
ALTER TABLE `instant_food`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `normaluser`
--
ALTER TABLE `normaluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
