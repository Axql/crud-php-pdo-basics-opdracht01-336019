-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 29, 2023 at 10:05 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-pdo-curd-2209A`
--

-- --------------------------------------------------------

--
-- Table structure for table `Persoon`
--

CREATE TABLE `Persoon` (
  `Id` smallint(5) UNSIGNED NOT NULL,
  `voornaam` varchar(60) NOT NULL,
  `tussenvoegsel` varchar(10) DEFAULT NULL,
  `achternaam` varchar(60) NOT NULL,
  `TelefoonNummer` varchar(21) DEFAULT NULL,
  `StraatNaam` varchar(60) NOT NULL,
  `huisnummer` varchar(6) NOT NULL,
  `Woonplaats` varchar(200) NOT NULL,
  `Postcode` varchar(60) NOT NULL,
  `Landnaam` varchar(170) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Persoon`
--

INSERT INTO `Persoon` (`Id`, `voornaam`, `tussenvoegsel`, `achternaam`, `TelefoonNummer`, `StraatNaam`, `huisnummer`, `Woonplaats`, `Postcode`, `Landnaam`) VALUES
(1, 'arjan', 'de', 'Ruijter', '', '', '', '', '', ''),
(8, 'julia', 'de', 'tester', '', '', '', '', '', ''),
(9, 'simon', 'de', 'wbben', '', '', '', '', '', ''),
(10, 'test', 'de', 'tester', '', '', '', '', '', ''),
(11, '233', '233', '23333', '', '', '', '', '', ''),
(12, 'arjan', 'de', 'Ruijter', '', '', '', '', '', ''),
(13, 'axelds', 'dedsd', 'dsdsdstester', '', '', '', '', '', ''),
(23, 'axel', 'van', 'beek', '2323233', 'does', '2a', 'de meern', '2323', 'nederland');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Persoon`
--
ALTER TABLE `Persoon`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Persoon`
--
ALTER TABLE `Persoon`
  MODIFY `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
