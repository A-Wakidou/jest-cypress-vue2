-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 06 mars 2022 à 16:10
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ynov-tests`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(2, 'Rick Sanchez', 35, 1, 'https://rickandmortyapi.com/api/character/avatar/1.jpeg'),
(5, 'Jerry Smith', 1, 5, 'https://rickandmortyapi.com/api/character/avatar/5.jpeg'),
(6, 'Abadango Cluster Princess', 30, 2, 'https://rickandmortyapi.com/api/character/avatar/6.jpeg'),
(7, 'Albert Einstein', 17, 2, 'https://rickandmortyapi.com/api/character/avatar/11.jpeg'),
(8, 'Annie', 20, 6, 'https://rickandmortyapi.com/api/character/avatar/17.jpeg'),
(9, 'Antenna Morty', 5, 5, 'https://rickandmortyapi.com/api/character/avatar/18.jpeg'),
(10, 'Perso 1', 15, 5, 'https://rickandmortyapi.com/api/character/avatar/1.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
