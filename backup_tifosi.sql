-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 11:33 PM
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
-- Database: `tifosi`
--
GRANT ALL PRIVILEGES ON *.* TO `tifosi`@`%` IDENTIFIED BY PASSWORD '*C15BA69C8917D768C4C0DC80D09E51EF53E4EDC5' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `tifosi`.* TO `tifosi`@`%`;
-- --------------------------------------------------------

--
-- Table structure for table `achete`
--

CREATE TABLE `achete` (
  `jour` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_focaccia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boisson`
--

CREATE TABLE `boisson` (
  `id_boisson` int(10) NOT NULL,
  `nom_boisson` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`) VALUES
(0, 'nom_boisson'),
(1, 'Coca-cola zéro'),
(2, 'Coca-cola original'),
(3, 'Fanta citron'),
(4, 'Fanta orange'),
(5, 'Capri-sun'),
(6, 'Pepsi'),
(7, 'Pepsi Max Zéro'),
(8, 'Lipton zéro citron'),
(9, 'Lipton Peach'),
(10, 'Monster energy ultra gold'),
(11, 'Monster energy ultra blue'),
(12, 'Eau de source ');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `cp_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comprend`
--

CREATE TABLE `comprend` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 5),
(1, 9),
(1, 13),
(1, 1),
(1, 3),
(1, 7),
(1, 18),
(1, 20),
(1, 16),
(1, 5),
(1, 9),
(1, 13),
(1, 1),
(1, 3),
(1, 7),
(1, 18),
(1, 20),
(1, 16),
(0, 5),
(0, 11),
(0, 9),
(0, 1),
(0, 7),
(0, 18),
(0, 20),
(0, 16),
(2, 5),
(2, 11),
(2, 9),
(2, 1),
(2, 7),
(2, 18),
(2, 20),
(2, 16),
(3, 5),
(3, 22),
(3, 9),
(3, 1),
(3, 7),
(3, 18),
(3, 20),
(3, 5),
(3, 22),
(3, 9),
(3, 1),
(3, 7),
(3, 18),
(3, 20),
(4, 6),
(4, 10),
(4, 9),
(4, 7),
(0, 18),
(0, 20),
(0, 15),
(4, 6),
(4, 10),
(4, 9),
(4, 7),
(4, 18),
(4, 20),
(4, 15),
(5, 5),
(5, 9),
(5, 12),
(5, 7),
(5, 18),
(5, 20),
(5, 16),
(5, 17),
(5, 5),
(5, 9),
(5, 12),
(5, 7),
(5, 18),
(5, 20),
(5, 16),
(5, 17),
(6, 5),
(6, 9),
(6, 4),
(6, 2),
(6, 19),
(6, 18),
(6, 16),
(6, 20),
(6, 5),
(6, 9),
(6, 4),
(6, 2),
(6, 19),
(6, 18),
(6, 16),
(6, 20),
(7, 5),
(7, 9),
(7, 4),
(7, 21),
(0, 18),
(0, 16),
(0, 20),
(7, 5),
(7, 9),
(7, 4),
(7, 21),
(7, 18),
(7, 16),
(7, 20),
(8, 6),
(8, 8),
(8, 9),
(8, 13),
(8, 21),
(8, 3),
(8, 1),
(8, 7),
(8, 18),
(8, 20),
(8, 16),
(8, 14),
(8, 6),
(8, 8),
(8, 9),
(8, 13),
(8, 21),
(8, 3),
(8, 1),
(8, 7),
(8, 18),
(8, 20),
(8, 16),
(8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `contient`
--

CREATE TABLE `contient` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `focaccia`
--

CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(0, 'nom_focaccia', 0),
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(0, 'nom_ingredient'),
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

-- --------------------------------------------------------

--
-- Table structure for table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL,
  `nom-marque` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom-marque`) VALUES
(0, 'nom_marque'),
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paye`
--

CREATE TABLE `paye` (
  `jour` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achete`
--
ALTER TABLE `achete`
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- Indexes for table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `comprend`
--
ALTER TABLE `comprend`
  ADD KEY `comprend_ingredient_1` (`id_ingredient`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- Indexes for table `contient`
--
ALTER TABLE `contient`
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_boisson` (`id_boisson`);

--
-- Indexes for table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Indexes for table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `paye`
--
ALTER TABLE `paye`
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`);

--
-- Constraints for table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  ADD CONSTRAINT `comprend_ingredient_1` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`);

--
-- Constraints for table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`);

--
-- Constraints for table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
