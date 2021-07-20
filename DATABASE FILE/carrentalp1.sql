-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 08:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'GJ05RL8877', 'assets/img/cars/audi-a4.jpg', 36, 26, 5200, 2600, 'yes'),
(2, 'Hyundai Creta', 'GJ01JC8933', 'assets/img/cars/creta.jpg', 22, 12, 2900, 1400, 'yes'),
(3, 'BMW 6-Series', 'GJ05CV9963', 'assets/img/cars/bmw6.jpg', 39, 30, 6950, 5999, 'yes'),
(4, 'Mercedes-Benz E-Class', 'GJ05AD0510', 'assets/img/cars/mcec.jpg', 45, 30, 7200, 5200, 'no'),
(5, 'Ford EcoSport', 'GJ05SA1452', 'assets/img/cars/ecosport.png', 21, 13, 3890, 2600, 'yes'),
(6, 'Honda Amaze', 'GJ06TY8564', 'assets/img/cars/hyundai0.png', 14, 12, 2800, 2400, 'yes'),
(7, 'Land Rover Range Rover Sport', 'GJ06WX6598', 'assets/img/cars/rangero.jpg', 36, 26, 6000, 4600, 'yes'),
(8, 'MG Hector', 'GJ16UV2315', 'assets/img/cars/mghector.jpg', 20, 12, 2900, 1400, 'yes'),
(9, 'Honda CR-V', 'GJ16WD5544', 'assets/img/cars/hondacr.jpg', 22, 15, 2850, 1400, 'yes'),
(10, 'Mahindra XUV 500', 'GJ21RV6548', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 3000, 2600, 'yes'),
(11, 'Toyota Fortuner', 'GJ21CX2233', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(12, 'Hyundai Veloster', 'GJ15GF6548', 'assets/img/cars/Hyundai Veloster.jpg', 23, 15, 4500, 3500, 'yes'),
(13, 'Jaguar XF', 'GJ15KL2456', 'assets/img/cars/jaguarxf.jpg', 39, 29, 6100, 4380, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(12, 'bhakti'),
(13, 'bhakti'),
(6, 'drashti'),
(7, 'drashti'),
(10, 'jainsy'),
(11, 'jainsy'),
(8, 'kavya'),
(9, 'kavya'),
(1, 'ramesh'),
(2, 'ramesh'),
(3, 'ramesh'),
(4, 'shivani'),
(5, 'shivani');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('bhakti', 'Bhakti Dilkhush', '7265092296', 'bhakti@gmail.com', '401,R M Park, Halar Road,Valsad', 'bhakti'),
('drashti', 'Drashti Thummar', '96240 93317', 'DrashtiThummar@gmail.com', '301,Shyamdham Aprtment,Vadodara', 'drashti'),
('jainsy', 'Jainsy Anjirwala', '7698454838', 'jainsy@gmail.com', 'A/405,Shantivan Society,Navsari', 'janisy'),
('kavya', 'Kavya Shah', '6354187958', 'kavya@yahoo.com', 'C/101,Shreeji Sadan Bunglows,Bharuch', 'kavya'),
('ramesh', 'Ramesh', '8877994455', 'ramesh@gmail.com', 'adajan,surat', 'ramesh'),
('shivani', 'Shivani Varu', '9033210979', 'shivani@gmail.com', '21,Shilpi Society,Near Sona Hotel,Surat', 'shivani');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE  IF NOT EXISTS `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('misha', 'misha jha', '8564123659', 'misha@gmail.com', 'Vesu,Surat', 'misha'),
('vidhi', 'Vidhi Prajapati', '8874523695', 'vidhi@gmail.com', '501,Icon Heights,Canal Road,Surat', 'vidhi');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Raju Shinde', '889966552233', '7412365892', '212,Silverpark Apt, Bapunagar,Ahemdabad', 'male', 'ramesh', 'yes'),
(2, 'Jagdish Pandey', '965238845216', '9966552345', '201,Rangila Society,Dindoli,Surat', 'Male', 'ramesh', 'yes'),
(3, 'Manish Patel', '556699845212', '7458669823', '102,Mahalaxmi Flats,Amroli,Surat', 'Male', 'ramesh', 'yes'),
(4, 'Anil Yadav', '987456885691', '9965322186', '401,Kharvarnagar,Sosiyo Circle,Surat', 'Male', 'shivani', 'no'),
(5, 'Disha Ghetiya', '687455236512', '9987451236', 'A/15,Shrenik Park Society,Ananad Mahal Road,Surat', 'Female', 'shivani', 'yes'),
(6, 'Kishan Kumar', '635849887512', '6632551242', 'B/213,Shubham Flats,Alka Puri,Vadodara', 'Male', 'drashti', 'yes'),
(7, 'Rekha Rabari', '754129986523', '7745668922', '11,Gajanand Heights,Gotri Road,Vadodara', 'Female', 'drashti', 'yes'),
(8, 'Himmat lad', '874599665544', '9956832654', 'ANAND APARTMENT TOWER B,Bharuch', 'Male', 'kavya', 'yes'),
(9, 'Asha Nayak', '875544126354', '9788451695', 'E201,Abhilasha Tower Apartment,Bharuch', 'Female', 'kavya', 'yes'),
(10, 'Bhavan Rathod', '556622334856', '7488559962', '5,Ashirvad Society,near bus stop,Navsari road', 'Male', 'jainsy', 'yes'),
(11, 'Ramila Dhaduk', '336521458923', '9923654102', 'C101,Ridhidhi Sidhdhi Apartment, Near Bhaktashram ', 'Female', 'jainsy', 'yes'),
(12, 'Chandresh Rampal', '441256398562', '8845216302', 'B34,Abhishek Apt,Tithal Road,Valsad', 'Male', 'bhakti', 'yes'),
(13, 'Rupa Agrawal', '852365987412', '6032889745', '201,Surya Kiran Apt,Halar,Valsad', 'Female', 'bhakti', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Shivani', 'varushivani10@gmail.com', 'Have a Great Ride');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(1, 'vidhi', 3, 1, '2021-06-27', '2021-07-01', '2021-07-10', '2021-06-27', 6950, 'days', NULL, 9, 62550, 'R'),
(3, 'misha', 3, 1, '2021-06-28', '2021-07-01', '2021-07-03', '2021-06-28', 6950, 'days', NULL, 2, 13900, 'R'),
(4, 'misha', 1, 3, '2021-06-28', '2021-06-28', '2021-06-28', '2021-06-28', 36, 'km', 250, 0, 9000, 'R'),
(5, 'vidhi', 4, 4, '2021-06-28', '2021-06-30', '2021-07-01', NULL, 7200, 'days', NULL, NULL, NULL, 'NR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681260;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
