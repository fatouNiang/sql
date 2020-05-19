-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 mai 2020 à 19:28
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gmc`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `NUMDEP` int(11) NOT NULL,
  `NUMMEDECIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `appartenir`
--

INSERT INTO `appartenir` (`NUMDEP`, `NUMMEDECIN`) VALUES
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `NUMCHAMBRE` int(11) NOT NULL,
  `NUMDEP` int(11) NOT NULL,
  `CATEGORIE` char(10) NOT NULL,
  `TYPE` char(10) NOT NULL,
  `plusOccupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`NUMCHAMBRE`, `NUMDEP`, `CATEGORIE`, `TYPE`, `plusOccupe`) VALUES
(1, 1, 'C1', 'T1', 3),
(2, 2, 'C2', 'T2', 5),
(3, 1, 'C4', 'T1', 1),
(4, 2, 'C4', 'T2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `dep_medical`
--

CREATE TABLE `dep_medical` (
  `NUMDEP` int(11) NOT NULL,
  `NOMDEP` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dep_medical`
--

INSERT INTO `dep_medical` (`NUMDEP`, `NOMDEP`) VALUES
(1, 'dep1'),
(2, 'dep2'),
(3, 'dep3'),
(4, 'dep4'),
(5, 'dep5');

-- --------------------------------------------------------

--
-- Structure de la table `feuille_evolution`
--

CREATE TABLE `feuille_evolution` (
  `NUMFEUILLE` int(11) NOT NULL,
  `NUMMALADE` int(11) NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `feuille_evolution`
--

INSERT INTO `feuille_evolution` (`NUMFEUILLE`, `NUMMALADE`, `DATE`) VALUES
(2, 2, '2020-05-01 12:19:20'),
(3, 2, '2020-06-06 23:10:01'),
(4, 5, '2020-06-01 23:10:01'),
(11, 11, '2020-05-17 12:19:20');

-- --------------------------------------------------------

--
-- Structure de la table `lit`
--

CREATE TABLE `lit` (
  `NUMLIT` int(11) NOT NULL,
  `NUMCHAMBRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lit`
--

INSERT INTO `lit` (`NUMLIT`, `NUMCHAMBRE`) VALUES
(1, 1),
(2, 2),
(10, 2),
(21, 2);

-- --------------------------------------------------------

--
-- Structure de la table `malade`
--

CREATE TABLE `malade` (
  `NUMMALADE` int(11) NOT NULL,
  `NUMDEP` int(11) NOT NULL,
  `NOM_MALADE` char(10) NOT NULL,
  `ADRESSE` char(10) NOT NULL,
  `SEXE` char(10) NOT NULL,
  `DATE_NAISS` date NOT NULL,
  `LIEU_NAISS` char(10) NOT NULL,
  `mois` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `malade`
--

INSERT INTO `malade` (`NUMMALADE`, `NUMDEP`, `NOM_MALADE`, `ADRESSE`, `SEXE`, `DATE_NAISS`, `LIEU_NAISS`, `mois`) VALUES
(1, 1, 'fatou', 'parcelle', 'F', '2012-04-22', 'dakar', 'janvier'),
(2, 2, 'ndongo', 'Guediawaye', 'M', '1995-05-18', 'Guediawaye', 'decembre'),
(3, 2, 'Mouhamed', 'mermoz', 'M', '2002-01-19', 'mermoz', 'juin'),
(4, 3, 'asta', 'pikine', 'F', '2003-05-05', 'pikine', 'mars'),
(5, 5, 'mendes', 'colobane', 'M', '2020-08-25', 'colobane', 'fevrier'),
(11, 5, 'amina', 'nord foire', 'F', '1999-06-04', 'dakar', 'fevrier');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `NUMMEDECIN` int(11) NOT NULL,
  `NUMSPECIALITE` int(11) NOT NULL,
  `NOMMED` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`NUMMEDECIN`, `NUMSPECIALITE`, `NOMMED`) VALUES
(1, 1, 'M1'),
(2, 2, 'M2'),
(3, 1, 'M3');

-- --------------------------------------------------------

--
-- Structure de la table `occuper`
--

CREATE TABLE `occuper` (
  `NUMMALADE` int(11) NOT NULL,
  `NUMLIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `occuper`
--

INSERT INTO `occuper` (`NUMMALADE`, `NUMLIT`) VALUES
(2, 21),
(4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `NUMSPECIALITE` int(11) NOT NULL,
  `nomSpecialite` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`NUMSPECIALITE`, `nomSpecialite`) VALUES
(1, 'S1'),
(2, 'S2'),
(3, 'S3'),
(4, 'S4'),
(5, 'S5');

-- --------------------------------------------------------

--
-- Structure de la table `suivre`
--

CREATE TABLE `suivre` (
  `NUMMEDECIN` int(11) NOT NULL,
  `NUMMALADE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `suivre`
--

INSERT INTO `suivre` (`NUMMEDECIN`, `NUMMALADE`) VALUES
(1, 4),
(2, 3),
(3, 2),
(3, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`NUMDEP`,`NUMMEDECIN`),
  ADD KEY `FK_APPARTENIR2` (`NUMMEDECIN`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`NUMCHAMBRE`),
  ADD KEY `FK_CONTENIR` (`NUMDEP`);

--
-- Index pour la table `dep_medical`
--
ALTER TABLE `dep_medical`
  ADD PRIMARY KEY (`NUMDEP`);

--
-- Index pour la table `feuille_evolution`
--
ALTER TABLE `feuille_evolution`
  ADD PRIMARY KEY (`NUMFEUILLE`),
  ADD KEY `FK_AVOIR` (`NUMMALADE`);

--
-- Index pour la table `lit`
--
ALTER TABLE `lit`
  ADD PRIMARY KEY (`NUMLIT`),
  ADD KEY `FK_POSSEDER` (`NUMCHAMBRE`);

--
-- Index pour la table `malade`
--
ALTER TABLE `malade`
  ADD PRIMARY KEY (`NUMMALADE`),
  ADD KEY `FK_INTERNER` (`NUMDEP`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`NUMMEDECIN`),
  ADD KEY `FK_ETRE_SPECIALISER` (`NUMSPECIALITE`);

--
-- Index pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD PRIMARY KEY (`NUMMALADE`,`NUMLIT`),
  ADD KEY `FK_OCCUPER2` (`NUMLIT`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`NUMSPECIALITE`);

--
-- Index pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD PRIMARY KEY (`NUMMEDECIN`,`NUMMALADE`),
  ADD KEY `FK_SUIVRE2` (`NUMMALADE`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `FK_APPARTENIR` FOREIGN KEY (`NUMDEP`) REFERENCES `dep_medical` (`NUMDEP`),
  ADD CONSTRAINT `FK_APPARTENIR2` FOREIGN KEY (`NUMMEDECIN`) REFERENCES `medecin` (`NUMMEDECIN`);

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `FK_CONTENIR` FOREIGN KEY (`NUMDEP`) REFERENCES `dep_medical` (`NUMDEP`);

--
-- Contraintes pour la table `feuille_evolution`
--
ALTER TABLE `feuille_evolution`
  ADD CONSTRAINT `FK_AVOIR` FOREIGN KEY (`NUMMALADE`) REFERENCES `malade` (`NUMMALADE`);

--
-- Contraintes pour la table `lit`
--
ALTER TABLE `lit`
  ADD CONSTRAINT `FK_POSSEDER` FOREIGN KEY (`NUMCHAMBRE`) REFERENCES `chambre` (`NUMCHAMBRE`);

--
-- Contraintes pour la table `malade`
--
ALTER TABLE `malade`
  ADD CONSTRAINT `FK_INTERNER` FOREIGN KEY (`NUMDEP`) REFERENCES `dep_medical` (`NUMDEP`);

--
-- Contraintes pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD CONSTRAINT `FK_ETRE_SPECIALISER` FOREIGN KEY (`NUMSPECIALITE`) REFERENCES `specialite` (`NUMSPECIALITE`);

--
-- Contraintes pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD CONSTRAINT `FK_OCCUPER` FOREIGN KEY (`NUMMALADE`) REFERENCES `malade` (`NUMMALADE`),
  ADD CONSTRAINT `FK_OCCUPER2` FOREIGN KEY (`NUMLIT`) REFERENCES `lit` (`NUMLIT`);

--
-- Contraintes pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD CONSTRAINT `FK_SUIVRE` FOREIGN KEY (`NUMMEDECIN`) REFERENCES `medecin` (`NUMMEDECIN`),
  ADD CONSTRAINT `FK_SUIVRE2` FOREIGN KEY (`NUMMALADE`) REFERENCES `malade` (`NUMMALADE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
