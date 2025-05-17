-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 25 avr. 2025 à 23:48
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parti_politique`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

DROP TABLE IF EXISTS `actualites`;
CREATE TABLE IF NOT EXISTS `actualites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `date_publication`) VALUES
(16, 'KINSHASA CENTRE CULTUREL', '2025-04-25 21:16:17'),
(14, 'PREMIÈRE ACTIVITÉ LIGUE DES FEMMES', '2025-04-25 09:26:11');

-- --------------------------------------------------------

--
-- Structure de la table `actualite_contenus`
--

DROP TABLE IF EXISTS `actualite_contenus`;
CREATE TABLE IF NOT EXISTS `actualite_contenus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actualite_id` int DEFAULT NULL,
  `paragraphe` text,
  `image_path` varchar(255) DEFAULT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actualite_id` (`actualite_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actualite_contenus`
--

INSERT INTO `actualite_contenus` (`id`, `actualite_id`, `paragraphe`, `image_path`, `ordre`) VALUES
(1, 14, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745573172_B3.jpg', 0),
(2, 14, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745573172_F3.jpg', 1),
(3, 14, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745573172_F2.jpg', 2),
(4, 15, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/680b96be168b1.jpg', 0),
(5, 15, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745585846_F3.jpg', 1),
(6, 12, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745604361_IMG-20250424-WA0040.jpg', 0),
(7, 12, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745604361_F2.jpg', 1),
(8, 13, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/680bfb193cfbc.jpg', 0),
(9, 13, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe.\r\n', 'uploads/1745604627_F1.jpg', 1),
(10, 19, 'Le cabinet du Président du Mouvement Congo en-Avant ,MCA en sigle informe à\r\nl\'opinion publique, tant nationale qu\'internationale, que le Président Kas KASONGO\r\nKALALO a procédé à la nomination des membres du Bureau de la Ligue des Femmes\r\nAinsi, les bouteurs suivants ont nommés pour exercer les fonction en regard de leurs\r\nnoms:\r\n-MONDOMBO Germaine, Présidente de la Ligue des Femmes;\r\n-KANZEWU MULINDA Colette, Vice-présidente chargée des questions Politiques,\r\nAdministratives et Juridiques;\r\n-MUSWAMBAMUSAUCécile,Vice-présidentechargéedesquestionsÉconomiqueset\r\nFinancières;\r\n-ASIPAMBALICécile,Vice-présidentchargédesquestionsSocioculturelles;\r\n-NGOMA MIKEMBI, Secrétaire Rapporteur;\r\n-DEMOMO KARAWA Marie, Conseillère;\r\n-KENGE Jupsie , Conseillère;\r\n-LIKOKO Perpétue, Conseillère;\r\n-BOKUNGUE Milia, Conseillère.\r\nCettenominationestcontenuedansladécisionN°007/MCA/023du10Juin2023\r\nportant nomination des membres du bureau de la Ligue des Femmes', 'uploads/680be15d42fdb.jpg', 0),
(11, 20, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités. Ce samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\n', 'uploads/1745610979_B3.jpg', 0),
(12, 20, 'En effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limeté, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.', 'uploads/1745610979_F3.jpg', 1),
(13, 20, 'Ensuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe', 'uploads/1745610979_F1.jpg', 2),
(14, 6, 'En effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limeté, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.', 'uploads/680bf3e5800e3.jpg', 0),
(15, 4, 'En effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.', 'uploads/1745614582_blog-2.jpg', 0),
(16, 16, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745615777_img10.jpg', 0),
(17, 5, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745619052_img9.jpg', 0),
(18, 6, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités.\r\nCe samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.\r\nEn effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limete, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.\r\nEnsuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership féminin en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses, de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe\r\n', 'uploads/1745619679_img9.jpg', 0),
(19, 6, '', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cadres`
--

DROP TABLE IF EXISTS `cadres`;
CREATE TABLE IF NOT EXISTS `cadres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cadres`
--

INSERT INTO `cadres` (`id`, `titre`, `date_publication`) VALUES
(4, 'SESSION DE FORMATION SUR L\'UTILISATION DE L\'OUTIL INFORMATIQUE', '2025-04-25 20:56:22');

-- --------------------------------------------------------

--
-- Structure de la table `categories_structures`
--

DROP TABLE IF EXISTS `categories_structures`;
CREATE TABLE IF NOT EXISTS `categories_structures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories_structures`
--

INSERT INTO `categories_structures` (`id`, `nom`) VALUES
(1, 'Jeunesse'),
(2, 'Femmes'),
(3, 'Diaspora'),
(4, 'Cadres');

-- --------------------------------------------------------

--
-- Structure de la table `diasporas`
--

DROP TABLE IF EXISTS `diasporas`;
CREATE TABLE IF NOT EXISTS `diasporas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `diasporas`
--

INSERT INTO `diasporas` (`id`, `titre`, `date_publication`) VALUES
(6, 'NOMINATION MCA DIASPORA', '2025-04-25 20:13:10');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `fichier` varchar(255) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `titre`, `fichier`, `date_publication`) VALUES
(29, 'LISTE DES  NATIONAUX MCA', 'LISTE DES NATIONAUX MCA.pdf', '2025-04-24 13:04:31'),
(30, 'DECLARATION MCA', 'DÉCLARATION MCA.pdf', '2025-04-24 13:05:13'),
(31, 'DECISION 003 MCA', 'DÉCISION 003 MCA.pdf', '2025-04-24 13:05:36'),
(32, 'CONNAITRE LE MCA DELEGUES LOCAUX', 'Connaitre le MCA délégués locaux (1).pdf', '2025-04-24 13:06:14'),
(33, 'MESSAGE DE VOEUX MCA 2025', 'MESSAGE DE VOEUX MCA 2025.pdf', '2025-04-24 13:06:51'),
(34, 'CONDOLEANCES MCA', 'condoléances MCA.pdf', '2025-04-24 13:07:27'),
(35, 'NOMINATION LIGUE DES FEMMES', 'NOMINATION LIGUE DES FEMMES.pdf', '2025-04-24 13:15:44'),
(36, 'NOMINATION LIGUE DES JEUNES', 'NOMINATION LIGUE DES JEUNES.pdf', '2025-04-24 13:16:19');

-- --------------------------------------------------------

--
-- Structure de la table `femmes`
--

DROP TABLE IF EXISTS `femmes`;
CREATE TABLE IF NOT EXISTS `femmes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `femmes`
--

INSERT INTO `femmes` (`id`, `titre`, `date_publication`) VALUES
(19, 'NOMINATION LIGUE DES FEMMES', '2025-04-25 19:04:48'),
(20, 'PREMIÈRE ACTIVITÉ LIGUE DES FEMMES', '2025-04-25 19:56:19');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `titre`, `contenu`, `date_creation`) VALUES
(1, 'L\'HISTOIRE DU MOUVEMENT CONGO EN-AVANT(MCA)', '\r\n                                                                                  Racontée par Dr. Herve MUTINZUMU NANSUA\r\n\r\nLe Mouvement  Congo en-Avant, MCA est un méga mouvement des leaders acteurs du développement de la RDC à partir de la base créé le 18 Décembre 2020 à Kinshasa capitale de la République Démocratique du Congo. Ceci par l’initiative d’un jeune congolais soucieux du changement, Président Kas KASONGO KALALO.\r\nAprès la démission du Président KAS KASONGO de son poste de Président de la Ligue des jeunes de l’UDPS/TSHIBALA, pour divergence politique, il s’en est suivi des démissions de plusieurs cadres et membres de ce parti qui ont préférés soutenir leur camarade et le Mouvement Congo en-Avant a été mis en place.\r\nLe MCA rassemble les jeunes congolaises et congolais autour de 12 valeurs citoyennes et républicaines et la  venue de cette nouvelle formation politique se fait dans le contexte du renouvellement de la classe gouvernante politique congolaise et du changement du paradigme de la gestion de la chose publique.\r\nLe MCA va consacrer dans son action une place de choix  pour la lutte contre le détournement, la corruption et l’impunité qui constitue pour lui la source du blocage du développement de notre pays.\r\nAvec des convictions socio-démocratiques et progressistes, ce parti a pour vision d’étendre son influence sur la sphère politique congolaise en vue d’implémenter son modèle de bonne gouvernance et se fixe comme objectif principal de booster le développement de la RDC à partir de la base.\r\nLa première réunion du MCA s’est tenue dans la commune de Limete le 18 Janvier 2021, au cours de laquelle les membres présents seront choisis comme points focaux  dans les communes et des établissements d’enseignement supérieur de la ville de Kinshasa avec comme mission d’installer pour une durée de trois des nouvelles cellules dans les différents quartiers, universités et instituts supérieurs.\r\nLe 21 Mars 2021 le MCA va tenir sa première matinée politique dans la commune de Limete et va procéder à l’évaluation de la mission d’implantation. Au cours de cette matinée la première activité de la Ligue des Femmes le 28 Mars 2021 sera programmée, une marche de santé  dans le cadre de la clôture du mois dédié aux droits des femmes.\r\nAu début mois d’Avril de la même année, le Mouvement Congo en-Avant accompagné d’une délégation des étudiants et des associations des jeunes va rencontrer l’Inspecteur Général des Finances Chef de Service Jules ALINGETE KEY récemment nommé et qui avait pour habitude de rendre public la conclusion des enquêtes de l’Inspection générale des Finances.\r\nCette rencontre était sollicitée dans le but de cerner le pourquoi de la léthargie dans le traitement des dossiers de détournements plusieurs mois après que les conclusions de leurs enquêtes soient faites. Notamment le projet du Parc Agro-Industriel de BUKANGALONZO, les fonds Covid-19, Détournement à l’EPST et la mauvaise gestion de la Province de l’Equateur.\r\nA l’issue des échanges, le constat de la justice comme machine du blocage de la lutte conte la prédation financière en RD était fait. Ainsi, le MCA va décider de lancer la campagne LE PEUPLE RECLAME JUSTICE et va avec des mégaphones et tracts les boosters prendre d’assaut les différents points chauds de la ville de Kinshasa (Rond-point Victoire, Huilerie,…) pour sensibiliser la population sur l’appropriation de la lutte contre la prédation financière.\r\n Le 23 Avril 2025 plus d’une dizaine des milliers des jeunes ont décidés de faire une descente à la cour de cassation et à la cour constitutionnelle  pour s’enquérir de la situation. Après échange avec les procureurs généraux de ces instances, les immunités parlementaires ont été perçues par tous comme étant des freins à l’action judiciaire.\r\nLe MCA a lancé après cette descente plusieurs activités allant dans le sens de la redynamisation des bases et du réarmement moral notamment la mise en ligne du chant patriotique LE PEUPLE RECLAME JUSTICE en projection des actions de grandes envergures programmées.\r\nLe Jeudi 3 Juin 2021 le MCA va reprendre les activités de terrain à travers un sit-in, pour réclamer la levée des immunités des parlementaires cités dans divers affaires de détournement dont les immunités parlementaires étaient devenues des prétextes pour échapper à la justice.\r\nEn fin du mois de Juin le Président du MCA va nommer les membres de son premier Cabinet et va doter son parti d’un siège dans la commune de Bandalungwa. Puis se suivront les nominations de plus d’un millier de membres pour animer les structures de bases (cellules) mais aussi les comités estudiantins.\r\nPuis suivra le 17 Juillet 2021 une première rencontre entre le Président national et les premiers délégués des communes de la ville de Kinshasa.\r\nLe 4 Septembre 2021 le MCA va organiser sa première matinée politique dans son nouveau siège situé dans la commune de Bandalungwa.\r\nAu cours de la même année pendant que le MCA gagne du terrain à Kinshasa la capitale, plusieurs délégations provinciales se forment et des structures de base sont implantées notamment au Nord-Kivu, Kongo-Central, Kwilu, Haut-Katanga, Lualaba, Tshopo, KasaÏ-Central.\r\nLe 15 Janvier 2022, Monsieur Bruno ILUNGA est nommé Délégué Général c’est-à-dire Secrétaire Général sur décision du Président National et ses trois adjoints furent nommés au début du mois de Février de la même année. Il s’agissait de  Monsieur Junior MULENDA KATAKO chargé des questions politiques administratives et judiciaires, Monsieur Josué BONZEKE MPUTU chargé des questions économiques et financières et Monsieur Camy KASANJI chargé des questions socioculturelles.\r\nUne première activité d’adhésion massive sera organisée dans le district de Tshangu le 26 Février 2022 qui connaitra la participation de plus cinq cent personnes et la cérémonie fut présidée par le Président du parti qui a commencé par un encadrement idéologique avant de faire la remise des fiches aux adhérents.\r\nAu mois de Mars 2022, sur décision du Président du parti Madame Véronique LUSAMANYA sera nommée Trésorière Générale du MCA et quitte ainsi le cabinet du Président pour assumer ses nouvelles responsabilités.\r\nLa Ligue des Femmes va pour cette année-là organiser un échange autour des droits et devoirs des femmes. L’activité s’était déroulée dans la commune de Limete et a connu la participation des femmes boosters venues de toutes les communes de Kinshasa le 26 mars 2021 et le 31 Mars 2021 dans le Haut Katanga.\r\nAu mois d’Avril 2022, face à la maltraitance des compatriotes dans les entreprises indo-pakistanaises, une campagne dénommée CONGOLAIS AZALI MOHUMBU TE fut lancée. Elle avait pour objectif de dénoncer les mauvaises habitudes et d’exiger la révision à la hausse du SMIG.\r\nAprès installation effective des structures de base, le président du parti a procédé le 3 Mai 2022 à la nomination des premiers délégués provinciaux de 8 provinces. Monsieur Daniel KANGALE pour le NORD-UBANGUI, Monsieur Kennedy KABAMBA pour le KASAI-CENTRAL, Monsieur Renaud EPUSAKA pour l’EQUATEUR, Monsieur Franchily LOPILI pour le MAI-NDOMBE, Monsieur Tresor MICIABU pour le KONGO-CENTRAL, Monsieur Zenon KIPULU pour le KWILU, Monsieur Victor LUHAKA pour la TSHOPO, Monsieur Celestin MBUYU pour le HAUT-KATANGA.\r\nSe jognant aux mouvements citoyens, le MCA prendra part le 25 Juin 2022 à une marche de soutien aux FARDC allant de la commune de MASINA jusqu’à la commune de LIMETE. Marche qui connaîtra la Présence du Président du parti, Kas KASONGO KALALO, l’opposant Martin FAYULU et beaucoup d’autres figures de la scène politique.\r\nAu début du mois d’Août, une délégation des membres du cabinet du président fut envoyée en mission dans la province de la TSHOPO pour évaluer l’implantation du mouvement et redynamiser les bases. Cette délégation sera reçue également par le Procureur Général Franck BOKOTA l’un des admirateurs de la campagne de la lutte contre la corruption du MCA.\r\nEt pour les élections des gouverneurs dans la même province, le MCA a apporté son appui et son soutien à Madame Madeleine qui fut élue Gouverneure de la TSHOPO. \r\nLe 27 Août 2022, la deuxième cérémonie d’adhésion populaire fut organisée. Cette fois dans le district du Mont-Amba et elle connaitra aussi la participation du numéro un du mouvement.\r\nPour changer le paradigme de gestion de la chose publique, le MCA décide de prendre activement part aux élections en alignant des candidats à tous les niveaux. Et va procéder à la mobilisation de toutes ses bases pour l’enrôlement qui constitue la première étape. \r\nLe MCA va organiser le 12 Novembre 2022 un séminaire de renforcement idéologique en faveur des cadres du parti ainsi que tous les candidats dans le souci de les rendre plus compétitif sur la scène électorale.\r\nPuis, en fin d’année, le MCA va être contacté par diverses formations politiques partageant la même vision de la bonne gouvernance pour constituer un regroupement politique. Il sera nommé ACTIONS AUDIBLES POUR LA BONNE GOUVERNANCE et le Directeur du Cabinet du Chef de l’Etat Monsieur Guylain NYEMBO en sera le parrain et le Président du MCA sera désigné à l’unanimité comme coordonnateur de cette formation politique.\r\nC’est ainsi que le Président du parti va effectuer une tournée nationale pour redynamiser les bases et va déposer sa candidature pour la circonscription électorale du Mont Amba.\r\nPour la première participation comme parti politique, le numéro un du MCA va s’enrôler le Mardi 14 Février 2023 au collège Saint MONFORT sur la 11ème Rue Limete et va se voir attribuer le numéro 180 pour la députation nationale et 56 pour la députation provinciale comme de Limete.\r\nBien que considéré comme la révélation surprise des élections de 2023, bénéficiant d’une grande confiance de la population le MCA va être cette année -là victime d’un complot politique l’écartant des sièges parlementaires au risque de deporter sa lutte dans les institutions.\r\nEn ce moment le MCA est en train de revitaliser ses structures de base et se prépare à faire une rentrée politique.\r\n \r\n', '2025-03-29 10:00:26');

-- --------------------------------------------------------

--
-- Structure de la table `jeunesses`
--

DROP TABLE IF EXISTS `jeunesses`;
CREATE TABLE IF NOT EXISTS `jeunesses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jeunesses`
--

INSERT INTO `jeunesses` (`id`, `titre`, `date_publication`) VALUES
(13, 'REGLEMENT MCA', '2025-04-25 18:10:27'),
(12, 'MCA SOUHAITE SINCERES CONDOLEANCES A L\'EGLISE CATHOLIQUE', '2025-04-25 18:06:01');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `post_nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `sexe` enum('Homme','Femme') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `etat_civil` enum('Célibataire','Marié(e)','Divorcé(e)','Veuf(ve)') NOT NULL,
  `province_origine` varchar(100) NOT NULL,
  `federation` varchar(100) NOT NULL,
  `adresse` text NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telephone` (`telephone`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `nom`, `post_nom`, `prenom`, `sexe`, `date_naissance`, `etat_civil`, `province_origine`, `federation`, `adresse`, `telephone`, `date_inscription`, `email`) VALUES
(10, 'gggg', 'bbbbbb', 'hhhh', 'Homme', '2024-09-05', 'Célibataire', 'Kinshasa', 'Tshangu', 'kkkkkkk', '0907238027', '2025-04-05 07:39:19', ''),
(11, 'bbbb', 'nnnnnn', 'iiiii', 'Femme', '2025-04-24', 'Célibataire', 'Kisangani', 'Ushele', ',nnnnnn', '0827834937', '2025-04-05 07:41:44', ''),
(12, 'ccc', 'kkk', 'gggg', 'Femme', '2025-04-17', 'Célibataire', 'Bandundu', 'Nkamba', 'jjjjj', '0900067554', '2025-04-05 11:34:26', ''),
(13, 'Tunasi', 'Penge', 'Marcelo', 'Homme', '2024-03-13', 'Célibataire', 'Katanga', 'Nkamba', '36 de la paix N\'sele Kinshasa', '0900000000', '2025-04-09 09:02:34', ''),
(14, 'Kabengele', 'Kabongo', 'Rabby', 'Homme', '2025-04-07', 'Célibataire', 'Kasai centrale', 'Kananga', '123 les oliviers Kananga Kasai-centrale', '0823455499', '2025-04-09 09:05:26', ''),
(15, 'Mandefu', 'Malola', 'Hervé', 'Homme', '2025-03-31', 'Célibataire', 'Nord-Kivu', 'Ushele', '34 djkllmmmm', '091234565', '2025-04-09 09:07:19', ''),
(16, 'Litala', 'Kabongo', 'David', 'Homme', '2025-04-01', 'Célibataire', 'Kwilu', 'Kafufu', 'gggggggggggggg', '0800000000', '2025-04-09 09:29:02', 'senga@gmail.com'),
(17, 'Basende', 'Bekay', 'Beau', 'Homme', '2025-04-05', 'Célibataire', 'Bandundu', 'Ushele', 'bbbbbbbbbbbbbb', '09004567567', '2025-04-09 09:33:27', 'senga@gmail.com'),
(18, 'Eric Iwala', 'Kazumba', 'Christian', 'Femme', '2025-04-06', 'Marié(e)', 'Katanga', 'Kafufu', 'bbbbbbbbbbbbbbb', '0997409314', '2025-04-09 09:38:15', ''),
(19, 'Mbambula manasse', 'Makengo', 'David', 'Homme', '2025-04-19', 'Célibataire', 'Nord-Kivu', 'Ushele', 'bbbbbbbbbbb', '090000001', '2025-04-09 10:31:03', ''),
(21, 'Mbambula ', 'PENGE', 'Manassé', 'Homme', '2025-05-31', 'Célibataire', 'Kinshasa', 'Tshangu', '234 Faveur Rail Masina Petro', '0987665098', '2025-04-09 11:00:55', ''),
(22, 'Mbambula manasse', 'Makengo', 'Marcelo', 'Femme', '1999-09-30', 'Marié(e)', 'Equateur', 'Mongala', 'vvvvvvvvvvvv', '0911111111', '2025-04-15 00:30:32', '');

-- --------------------------------------------------------

--
-- Structure de la table `news_provinces`
--

DROP TABLE IF EXISTS `news_provinces`;
CREATE TABLE IF NOT EXISTS `news_provinces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `news_provinces`
--

INSERT INTO `news_provinces` (`id`, `province`, `titre`, `date_publication`) VALUES
(6, 'LUALABA', 'LANCEMENT DU SITE MCA', '2025-04-25 22:21:19');

-- --------------------------------------------------------

--
-- Structure de la table `structures_specialisees`
--

DROP TABLE IF EXISTS `structures_specialisees`;
CREATE TABLE IF NOT EXISTS `structures_specialisees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` enum('super_admin','admin','fédérale') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'fédérale',
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `email`, `mot_de_passe`, `role`, `date_creation`) VALUES
(16, 'Kay', 'greekmpinda@gmail.com', '$2y$10$0z7fN9vUxP8GbNBi839Reu80NXfqEwXPFcuSCqiF8OTxn9spsJcnG', 'super_admin', '2025-04-24 11:31:42'),
(17, 'SiegeMCA', 'info@mca-rdc.org', '$2y$10$jmj48Cxam7V/80RfDbCikOMmSbctiWfnsanGj/dUG6Fhrk.TE62Ua', 'fédérale', '2025-04-24 11:42:03'),
(14, 'Président Kas KASONGO', 'kaskalalo@yahoo.com', '$2y$10$c8hBHkn5GsqwnIysRMI1L.g7YBbmwKAZZjl2otUG50SKRj4BjPWZm', 'super_admin', '2025-04-24 11:21:24'),
(13, 'Dr Herve MUTINZUMU', 'hmutinzumu@gmail.com', '$2y$10$cNSoo.yvsS3TBr95vTurXOTlrbRzpOVB5fjcAt4axr2eIkARUsmbG', 'super_admin', '2025-04-24 11:20:46'),
(15, 'Iwala erick', 'erickiwala@gmail.com', '$2y$10$gj6of2JPe05aG/kCns5Apu9t/fLWkGo8RIYi1YLWTz4S9qZRvOONi', 'super_admin', '2025-04-24 11:27:56'),
(18, 'Delegue General', 'info@mca-rdc.org', '$2y$10$B7tNUFtXxveUZWdC4XYWueCLHOtRlxVZN79zYF5TaHT.X2yCxLC1S', 'fédérale', '2025-04-24 12:04:37'),
(19, 'Delegue General Adjoint PAJ', 'info@mca-rdc.org', '$2y$10$.jjRx1BaLb6pN.CfXSZ6le1koP4HsE1TbdsL6OZjIpJscZRrf2HQi', 'fédérale', '2025-04-24 12:06:26'),
(20, 'Delegue General Adjoint ECOFIN', 'info@mca-rdc.org', '$2y$10$rVNDQG92ABuKfHYdZYjCresvPBujYVp.VN6XSz39WFsdchtZBQO/G', 'fédérale', '2025-04-24 12:07:15'),
(21, 'Delegue General Adjoint SOCIOCULTURE', 'info@mca-rdc.org', '$2y$10$aQdSMJvCQuY3RxIg.A0dveYo7orTq6R07i1G78m6apSUsXyENEHve', 'fédérale', '2025-04-24 12:08:09'),
(22, 'Federation Tshangu 1', 'info@mca-rdc.org', '$2y$10$Ee.yc5FxrWHTEdmjMYPZSuABBckz2STAmYJzhi9q/RzU2W1VWbw6G', 'fédérale', '2025-04-24 12:10:07'),
(23, 'Federation Tshangu 2', 'info@mca-rdc.org', '$2y$10$o.9cIWHgdErNbbw0kgBtP.JmTRrbKvNpmoBdttMblveb2nQ0DNffC', 'fédérale', '2025-04-24 12:11:26'),
(24, 'Federation Mont-Amba ', 'info@mca-rdc.org', '$2y$10$eSLsoSYYnwQf4tGBz9KY6uFKa5FB6ry/Evfyhy54S4gQx8u69D1S2', 'fédérale', '2025-04-24 12:13:06'),
(25, 'Federation Lukunga 1', 'info@mca-rdc.org', '$2y$10$u7RiRxUx.eELwPQc1NMVtOxSNp0tnfDg4bUg2TOgEhlTjoi9IuqmG', 'fédérale', '2025-04-24 12:13:45'),
(26, 'Federation Lukunga 2', 'info@mca-rdc.org', '$2y$10$Wvkl93F3EkQi7TZTmVois.jpRaPH2wkSxmX72CJSSgx1HeCkHpnea', 'fédérale', '2025-04-24 12:15:16'),
(27, 'Federation Funa', 'info@mca-rdc.org', '$2y$10$R1cDzMARtu5wlp9aV2sgcenvhYU9nCTbARLpsvnSCbrr/fMmoO8/m', 'fédérale', '2025-04-24 12:16:19'),
(28, 'Province Lualaba', 'info@mca-rdc.org', '$2y$10$LUG6q5/tsBRe0Liqqq.Kh./J/yLqzaVEyoszrwIYG1Ok.e4Mv4lLG', 'fédérale', '2025-04-24 12:17:18'),
(29, 'Province Tanganyika', 'info@mca-rdc.org', '$2y$10$Y5DIIV2RqLpgTAuMiXleEe.TjKbo7WdQVkgzWBSuTTAXHkGFbK1li', 'fédérale', '2025-04-24 12:18:26'),
(30, 'Province Kongo Centrale ', 'info@mca-rdc.org', '$2y$10$Kiyc7AXywLOnN0Nyrs91EOAKpQB2hnBpYkwqESjMX7S7DC6x3Xb8S', 'fédérale', '2025-04-24 12:19:17'),
(31, 'Province Tshopo', 'info@mca-rdc.org', '$2y$10$SVNloxqhFNZxkHnTFMjRxesipkCUVTCp.Z5UA8XMSvShqTT3MVGJC', 'fédérale', '2025-04-24 12:20:00'),
(42, 'Province Nord kivu', 'info@mca-rdc.org', '$2y$10$A9iMCu0mo5AfM0HM9/Sns.YyFeF42UKonqCLlKansWOmPGNYngJ8S', 'fédérale', '2025-04-24 12:40:30'),
(33, 'Province Sud Kivu', 'info@mca-rdc.org', '$2y$10$QqmjzxSEMY/zBM9YpIkfFOO5WdIEFxhNDsgQ2n6gkyN1Tgyt8Gitu', 'fédérale', '2025-04-24 12:23:59'),
(34, 'Province Equateur', 'info@mca-rdc.org', '$2y$10$xxTVSHGd1XPykeZsNPgw0eyWV.mI5bCPR3KZJM9DCHSZaOp.m/fEO', 'fédérale', '2025-04-24 12:25:31'),
(35, 'Province Kasai-centrale', 'info@mca-rdc.org', '$2y$10$zCUcz78m1JM53/N0PLdsceDN/06KMa4rOoZ9xS5tW8WdbgorUFJfm', 'fédérale', '2025-04-24 12:26:40'),
(36, 'Province kasai-orientale', 'info@mca-rdc.org', '$2y$10$pQavQzi5vLNLajQmQPHH.e0NWi/zptFR45DYV65Vz1w23Vx4eaWPe', 'fédérale', '2025-04-24 12:27:56'),
(37, 'Pronvince Kwilu', 'info@mca-rdc.org', '$2y$10$Uw.M7YnfIW0O50qb1G7U9.1xGk9vQVRy1EEPAfa1ir/1KAEaxFJ66', 'fédérale', '2025-04-24 12:28:33'),
(38, 'Pronvince Mai ndombe', 'info@mca-rdc.org', '$2y$10$c7he1L9TU77xNORzVsGaZef1x3Q8uYA.Wdu12D33m8JtiwoOeAj4u', 'fédérale', '2025-04-24 12:29:24'),
(39, 'Province Kwango', 'info@mca-rdc.org', '$2y$10$QfPFYuRKgjx3yL8axarDQeG3jzTAW85/WriUcHEm8rcVjsWvMVVki', 'fédérale', '2025-04-24 12:31:06'),
(40, 'Province Haut-katanga', 'info@mca-rdc.org', '$2y$10$H98SM0FbuW6X0vOtsZorueJwa0GcKPVi0Hse9OYjPEJpwFFV98e/C', 'fédérale', '2025-04-24 12:32:11'),
(41, 'Province Nord-Ubangi', 'info@mca-rdc.org', '$2y$10$vrvUytxKnrIBdc4ODiBo9uLYVj910mkyCj5Ut2X8RL4erYB9AXiSe', 'fédérale', '2025-04-24 12:33:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
