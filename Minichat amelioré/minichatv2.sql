-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  lun. 11 nov. 2019 à 12:57
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `minichatv2`
--

-- --------------------------------------------------------

--
-- Structure de la table `minichatv2`
--

CREATE TABLE `minichatv2` (
  `id` int(11) NOT NULL,
  `date_post` datetime NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `minichatv2`
--

INSERT INTO `minichatv2` (`id`, `date_post`, `pseudo`, `message`) VALUES
(1, '2019-11-12 02:04:04', 'Nathalie', 'un message test ajouté avec phpmyadmin'),
(2, '2019-11-11 13:36:00', 'Nathalie', 'encore moi qui teste depuis le formulaire'),
(3, '2019-11-11 13:36:26', 'John', 'super ça marche !'),
(4, '2019-11-11 13:37:52', 'Chmou', 'Ah oui super!'),
(5, '2019-11-11 13:51:47', 'Nathalie', 'Yeah!');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `minichatv2`
--
ALTER TABLE `minichatv2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `minichatv2`
--
ALTER TABLE `minichatv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
