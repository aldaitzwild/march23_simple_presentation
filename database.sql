-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simple-mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `title`) VALUES
(1, 'Stuff'),
(2, 'Doodads');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


DROP TABLE product;

CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(200), 
description TEXT, 
photo_url VARCHAR(250),
price FLOAT);


INSERT INTO product (name, description, price, photo_url)
VALUES
	('télécommande', 'télécommande pointeur', 18.00, 'https://www.electrodepot.fr/media/catalog/product/P956356.jpg'),
	('gourde', 'gourde en verre', 15.23, 'https://www.pimkie.fr/dw/image/v2/AAYN_PRD/on/demandware.static/-/Sites-pimkie-master-catalog/default/dw649bc315/images/917494_152A01_portrait_HD_1.JPG?sw=760&sh=938'),
	('tasse', 'Tasse grumPHP', 7800.00, 'https://fr.cplfabbrika.com/media/catalog/product/cache/2/image/470x470/9df78eab33525d08d6e5fb8d27136e95/3/7/3744.jpg')
;

CREATE TABLE user (
	id int PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (login, password)
VALUES ('thomas', '$2y$10$B2bdjTb/SSvU1TGnOAoFuubh3CmBv.NnG0vBsA3CeKQmbr6wAetiK');
