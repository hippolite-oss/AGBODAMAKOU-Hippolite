-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2026 at 09:07 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapido`
--

-- --------------------------------------------------------

--
-- Table structure for table `chauffeurs`
--

DROP TABLE IF EXISTS `chauffeurs`;
CREATE TABLE IF NOT EXISTS `chauffeurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chauffeurs`
--

INSERT INTO `chauffeurs` (`id`, `nom`, `prenom`, `telephone`) VALUES
(1, 'BOTON', 'Jean', '+2290112345678'),
(2, 'TOTO', 'Pierre', '+2290123456789'),
(3, 'KOFFI', 'Marie', '+2290134567890');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `depart` varchar(255) DEFAULT NULL,
  `arrivee` varchar(255) DEFAULT NULL,
  `date_heure` datetime DEFAULT NULL,
  `chauffeur_id` int DEFAULT NULL,
  `statut` enum('en_attente','en_cours','terminee') DEFAULT 'en_attente',
  PRIMARY KEY (`id`),
  KEY `chauffeur_id` (`chauffeur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `depart`, `arrivee`, `date_heure`, `chauffeur_id`, `statut`) VALUES
(4, 'Cotonou', 'Agla', '2024-03-22 09:00:00', NULL, 'en_cours'),
(2, 'Akpakpa', 'calavi', '2024-03-21 14:30:00', 2, ''),
(3, 'Porto-novo', 'Gbegamey', '2024-03-22 09:00:00', NULL, ''),
(5, 'Avrankou', 'Adjara', '2026-02-20 12:44:00', 2, 'en_attente'),
(6, 'Porto', 'Gbegamey', '2026-02-20 17:22:00', 3, 'en_attente'),
(7, 'Porto', 'Gbegamey', '2026-02-20 17:42:00', NULL, ''),
(8, 'f1', 'f2', '2026-02-21 17:46:00', NULL, ''),
(9, 'f1', 'Adjara', '2026-02-20 17:47:00', 1, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
