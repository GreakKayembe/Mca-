-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 17 mai 2025 à 12:01
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
-- Base de données : `mca_bdd`
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `date_publication`) VALUES
(23, 'PREMIÈRE RÉUNION DU MOUVEMENT CONGO EN-AVANT.', '2025-04-30 13:51:00'),
(24, 'PREMIÈRE MATINÉE POLITIQUE DU MCA', '2025-04-30 14:21:47'),
(25, 'LE MCA, LES MOUVEMENTS ASSOCIATIFS DES JEUNES ET LES ÉTUDIANTS À LA RENCONTRE DU NOUVEAU CHEF DE SERVICE DE L\'INSPECTION GENERALE DES FINANCES', '2025-05-04 13:32:38'),
(26, 'LE MCA DANS LA RUE POUR RECLAMER JUSTICE', '2025-05-04 13:45:01'),
(27, 'PARTAGE D\'EXPÉRIENCE DU MOUVEMENT CONGO EN-AVANT DANS LA LUTTE CONTRE LA CORRUPTION', '2025-05-06 08:35:43'),
(29, 'REACTION DU MOUVEMENT CONGO EN AVANT APRES L’ADMISSION A LA RETRAITE ANTICIPEE DE L\'INSPECTEUR GÉNÉRAL DES FINANCES – CHEF DE SERVICE, JULES ALINGETE KEY.', '2025-05-11 21:40:06');

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
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actualite_contenus`
--

INSERT INTO `actualite_contenus` (`id`, `actualite_id`, `paragraphe`, `image_path`, `ordre`) VALUES
(89, 29, 'Le Mouvement Congo en Avant, MCA en sigle, a suivi avec attention la lecture des ordonnances présidentielles, annonçant l’admission à la retraite de Monsieur Jules ALINGETE KEY, Inspecteur Général des Finances Chef de Service, ainsi que de son remplacement à la tête de l’Inspection Générale des Finances, et prend acte. En ce moment où Monsieur Jules ALINGETE KEY entame une retraite anticipée, le Mouvement Congo en-Avant et le peuple congolais tout entier rendent un hommage respectueux et profondément reconnaissant à l’œuvre monumentale qu’il a accomplie à la destinée de l’Inspection Générale des Finances. Grâce à son engagement inébranlable, sincères et son intégrité exemplaire, il a su faire reculer d’une manière significative les frontières de la corruption, du détournement des fonds publics et de l’intouchabilité dans notre pays, marquant durablement les esprits et les institutions trouvant un écho retentissant au-delà de nos frontières.', 'uploads/1746999606_Screenshot_20250421-202839.jpg', 0),
(90, 29, 'Le MCA a noté que l’action de l’IGF dirigée par Monsieur ALINGETE s’est distinguée par son impartialité et sa rigueur sans faille. Contrairement aux attentes de certains politiciens, elle n’a favorisé personne comme nombreux auraient souhaité. Aucun rang, aucun régime, passé ou présent, aucun statut n’a été épargné. Seul, l’intérêt supérieur de la fonction de contrôle a guidé ses actions. Cette posture intransigeante a, certes perturbé les équilibres habituels de nombreux acteurs politiques suscitant les réactions contrastées selon les cas et les intérêts des protagonistes : tantôt accusé d’instrumentalisation politique contre l’opposition lors d’enquêtes sur les multiples scandales des prédations du régime passé, tantôt critiqué par des figures du pouvoir actuel pour ses révélations potentiellement préjudiciables ou disent-ils, avoir ciblé les proches du Chef de l’État. Une position peu confortable pour un homme qui a porté seul sur lui, la charge de changer tout un système mafieux. Pour la première fois dans l’histoire de notre pays, de hauts dignitaires de l’État ont été nommément cités dans les conclusions des enquêtes rendues publiques. Certains ont été traduits en justice, et d’autres incarcérés, preuve de la rigueur qui a caractérisé son mandat. Ces actions audacieuses ont permis à la République de récupérer des milliards de dollars qui, auparavant, partaient dans les poches des individus. Ce fut un tournant majeur dans la restauration de la reevabilité au sommet de l’administration publique. Animé par la volonté de forger une nouvelle génération de patriotes, artisans de la bonne gouvernance, Monsieur Jules ALINGETE a initié les enrichissantes journées d’échange citoyen (conférences, ateliers, campagne de sensibilisation, etc.). Durant ces rencontres, il n’a ménagé aucun effort pour inculquer aux diverses couches de la population, le bien-fondé et l’urgence du combat pour la bonne gouvernance. Aujourd’hui, l’éveil des consciences sur la question cruciale de la corruption est devenu une flamme impossible à éteindre, notamment au sein de notre jeunesse. Le Mouvement Congo en Avant salue la nomination d’une nouvelle équipe dirigeante à l’IGF, composée des Inspecteurs Généraux des Finances chevronnés, à laquelle revient désormais la responsabilité de poursuivre cette lutte essentielle et ces initiatives louables avec la même ardeur, voire de les surpasser. Les attentes légitimes du peuple congolais sont immenses. L’environnement reste malheureusement pollué les détournements, et donc, l’exemplarité doit demeurer la norme absolue. Le MCA met en garde les fossoyeurs du trésor public, ceux qui se croient intouchables derrière leurs réseaux obscurs ou la protection illusoire de leurs fonctions, qu’ils sachent que la lutte acharnée contre la prédation financière ne s’arrêtera ni avec le départ de Monsieur ALINGETE, ni à la fin d’un mandat. Le Mouvement Congo en-Avant s’engage à poursuivre ce combat avec une détermination encore plus forte, avec pour objectif clair et non négociable : l\'implémentation du respect des biens collectifs en RDC. Au Chef de l’Etat, artisan principal de l’efficacité de l’IGF, qu’il plaise à votre Haute Autorité, de débaptiser l’avenue des Forces Armées (Haut commandement) au nom de « Avenue Jules ALINGETE KEY », en reconnaissance de son travail mémorial et de ses réalisations spectaculaires durant votre mandat, en parfaite adéquation avec votre vision de lutte contre la corruption, opérée à partir de cette avenue. A Monsieur Jules ALINGETE KEY Inspecteur Général des Finances-Chef de Service Honoraire, votre héritage précieux légué à la Nation et aux générations futures est un puissant appel à la vigilance, au patriotisme, au courage, à l’action et à l’intégrité. Nous vous célébrons aujourd’hui, et nous honorons votre retraite en tant que Haut fonctionnaire de l’Administration publique, riche de satisfaction du devoir accompli et de reconnaissance nationale, cependant, le Congo a encore énormément besoin de vous afin de lui donner plus que ce que vous avez donné et construit à l’IGF, pourquoi pas au plus haut sommet.\r\n\r\n                                                                                         \r\n                                                                                   Pour le Mouvement Congo en-Avant\r\n                                                                                      Dr. Herve MUTINZUMU NANSUA.\r\n                                                        Chargé de Communication et Porte-parole du Président National.\r\n', 'uploads/1746999606_images (3).jpeg', 1),
(82, 25, 'A l’issue des échanges, le constat de la justice comme machine du blocage de la lutte conte la prédation financière en RDC était fait. Ainsi, le MCA va décider de lancer la campagne LE PEUPLE RECLAME JUSTICE et va avec des mégaphones et tracts les boosters prendrez d’assaut les différents points chauds de la ville de Kinshasa (Rond-point Victoire, Huilerie,…) pour sensibiliser la population sur l’appropriation de la lutte contre la prédation financière.', 'uploads/68176d5312598.jpg', 2),
(83, 26, 'Le 23 Avril 2025 plus d’une dizaine des milliers des jeunes ont décidés de faire une descente à la cour de cassation et à la cour constitutionnelle pour s’enquérir de la situation. Après échange avec les procureurs généraux de ces instances, les immunités parlementaires ont été perçues par tous comme étant des freins à l’action judiciaire.\r\n\r\n', 'uploads/1746366301_IMG-20250504-WA0013.jpg', 0),
(84, 26, 'Le MCA a lancé après cette descente plusieurs activités allant dans le sens de la redynamisation des bases et du réaménagement moral notamment la mise en ligne du chant patriotique LE PEUPLE RECLAME JUSTICE en projection des actions de grandes envergures programmées.', 'uploads/1746366301_IMG-20250504-WA0023.jpg', 1),
(85, 27, 'Le 03 Mars 2025 devant Madame la Première Ministre, Cheffe du Gouvernement, les Ministres d\'État, Ministre  de la Justice et celle de l\'éducation nationale, les ministres de l\'Enseignement Supérieur et Universitaire et celui de la Formation Professionnelle ainsi que Monsieur l\'Inspecteur Général des Finances Chef de Service, Dr. Herve MUTINZUMU Conseiller en Communication et Porte-parole du Président du MCA a partagé l\'expérience du Mouvement Congo en-Avant (MCA) sur l\'implication de la jeunesse dans la lutte contre la Corruption et le Détournement.\r\nDans son allocution des remerciements ont été adressés à celui qui a forgé cette génération des avant-gardistes, le Président Kasongo Kalalo Kas.\r\n', 'uploads/1746520543_IMG-20250505-WA0016.jpg', 0),
(74, 24, '', 'uploads/1746022907_IMG-20250430-WA0002.jpg', 1),
(75, 24, '', 'uploads/1746022907_IMG-20250430-WA0004.jpg', 2),
(76, 24, '', 'uploads/1746022907_IMG-20250430-WA0005.jpg', 3),
(81, 25, 'Cette rencontre était sollicitée dans le but de cerner le pourquoi de la léthargie dans le traitement des dossiers de détournements plusieurs mois après que les conclusions de leurs enquêtes soient faites. Notamment le projet du Parc Agro-Industriel de BUKANGALONZO, les fonds Covid-19, Détournement à l’EPST et la mauvaise gestion de la Province de l’Equateur.\r\n', 'uploads/1746365558_IMG-20250504-WA0011.jpg', 1),
(77, 24, '', 'uploads/1746022907_IMG-20250430-WA0006.jpg', 4),
(78, 24, '', 'uploads/1746022907_IMG-20250430-WA0007.jpg', 5),
(79, 24, '', 'uploads/1746022907_IMG-20250430-WA0008.jpg', 6),
(80, 25, 'Au début du  mois d’Avril de l\' année 2021, le Mouvement Congo en-Avant accompagné d’une délégation des étudiants et des associations des jeunes va rencontrer l’Inspecteur Général des Finances Chef de Service Jules ALINGETE KEY récemment nommé et qui avait pour habitude de rendre public la conclusion des enquêtes de l’Inspection générale des Finances.\r\n', 'uploads/1746365558_IMG-20250504-WA0012.jpg', 0),
(73, 24, 'Le 21 Mars 2021 le MCA va tenir sa première matinée politique dans la commune de Limete et va procéder à l’évaluation de la mission d’implantation. Au cours de cette matinée la première activité de la Ligue des Femmes le 28 Mars 2021 sera programmée, une marche de santé  dans le cadre de la clôture du mois dédié aux droits des femmes.', 'uploads/1746022907_IMG-20250430-WA0003.jpg', 0),
(71, 23, 'Le président du Mouvement Congo En-avant Kas Kasongo Kalalo à réunis les boosters envie d\'expliquer sa vision ainsi que sa lutte. en démontrant l\'impact et les méfaits du détournement et d\'une mauvaise gestion de la chose publique sur le développement d\'un pays. ainsi il souligne que le Mouvement Congo En-Avant dit non contre ce fléaux qui freine notre beau pays. ', 'uploads/68122ed3b3109.jpg', 1),
(72, 23, 'Les boosters sont prêt à tout pour instaurer un nouveau mentalité , celle de porter  le pays au cœur et cultiver un esprit patriotique pour mettre fin à l\'injustice, le détournement. les douze valeurs citoyennes et républicaines un état d\'esprit. ', 'uploads/68122ed3b3729.jpg', 2),
(70, 23, 'La première réunion du MCA s’est tenue dans la commune de Limete le 18 Janvier 2021, au cours de laquelle les membres présents seront choisis comme points focaux dans les communes et des établissements d’enseignement supérieur de la ville de Kinshasa avec comme mission d’installer pour une durée de trois des nouvelles cellules dans les différents quartiers, universités et instituts supérieurs.', 'uploads/1746021060_IMG-20250430-WA0018.jpg', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cadres`
--

INSERT INTO `cadres` (`id`, `titre`, `date_publication`) VALUES
(9, 'HAUT-KATANGA UNE REUNION STATUANT L\'INSTALLATION DES COMITES LOCAUX DANS DIFFERENTES COMMUNES DE LA ', '2025-04-30 09:32:23'),
(10, 'COMPTE RENDU DE LA REUNION AVEC LES CADRES DU MOUVEMENT CONGO EN-AVANT(MCA) PROVINCE DE TANGANYIKA', '2025-05-04 12:40:58'),
(11, 'LE MOUVEMENT CONGO EN-AVANT(MCA) TANGANYIKA(KALEMIE)', '2025-05-04 13:13:59'),
(12, 'NOMINATION DU CABINET ET DES ANIMATEURS', '2025-05-04 13:54:59'),
(13, 'NOMINATION DES DÉLÉGUÉS PROVINCIAUX', '2025-05-04 13:57:14'),
(14, 'NOMINATION DU DÉLÉGUÉ GÉNÉRAL ET DES DÉLÉGUÉS GÉNÉRAUX ADJOINTS.', '2025-05-04 13:59:44');

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
-- Structure de la table `contenus_cadres`
--

DROP TABLE IF EXISTS `contenus_cadres`;
CREATE TABLE IF NOT EXISTS `contenus_cadres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cadre_id` int DEFAULT NULL,
  `paragraphe` text,
  `image_path` varchar(255) DEFAULT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cadre_id` (`cadre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contenus_cadres`
--

INSERT INTO `contenus_cadres` (`id`, `cadre_id`, `paragraphe`, `image_path`, `ordre`) VALUES
(62, 9, '', 'uploads/1746005543_IMG-20250429-WA0013.jpg', 0),
(63, 9, '', 'uploads/1746005543_IMG-20250429-WA0014.jpg', 1),
(61, 8, 'jjjjjjjjjjjjjjjjjjjjjjjjjj', '', 0),
(64, 10, 'Le Délégué a ouvert la réunion en adressant ses salutations et en remerciant les cadres présents pour leurs engagement continu et leurs dévouement envers le parti. il a exprimé sa gratitude pour les efforts fournis lors des récentes activités et a souligné l\'importance de maintenir la dynamique actuelle pour les défis à venir. Le Délégué provincial a rappelé l\'importance de l\'unité et de la cohésion au sein du parti pour réussir dans la réalisation de nos objectifs politique et sociaux. Il a également évoqué les enjeux actuels, notamment la nécessité d\'être plus visible et plus présents sur le terrain, tout en renforçant la communication interne et externe du parti.', 'uploads/1746362458_IMG-20250504-WA0030.jpg', 0),
(65, 11, 'Le Mouvement Congo En-avant(MCA)  a participé ce mardi 11 Mars 2025 à une rencontre des partis membres du regroupement politique AABG Tanganyika  à Kalemie, pour exprimer son message de remerciement à son Excellence Monsieur le Président de la République Démocratique du Congo, Félix Antoine Tshisekedi Tshilombo, pour avoir désigné le VPM du Plan Guylain Nyembo à la tête de l\'Union Sacrée de la République Démocratique du Congo. ', 'uploads/1746364439_IMG-20250504-WA0029.jpg', 0),
(66, 12, 'Au mois de Juin  2021  le Président du MCA va nommer les membres de son premier Cabinet et va doter son parti d’un siège dans la commune de Bandalungwa. Puis se suivront les nominations de plus d’un millier de membres pour animer les structures de bases (cellules) mais aussi les comités estudiantins.\r\n', 'uploads/1746366899_IMG-20250504-WA0021.jpg', 0),
(67, 13, 'Après installation effective des structures de base, le président du parti a procédé le 3 Mai 2022 à la nomination des premiers délégués provinciaux de 8 provinces. Monsieur Daniel KANGALE pour le NORD-UBANGUI, Monsieur Kennedy KABAMBA pour le KASAI-CENTRAL, Monsieur Renaud EPUSAKA pour l’EQUATEUR, Monsieur Franchily LOPILI pour le MAI-NDOMBE, Monsieur Tresor MICIABU pour le KONGO-CENTRAL, Monsieur Zenon KIPULU pour le KWILU, Monsieur Victor LUHAKA pour la TSHOPO, Monsieur Celestin MBUYU pour le HAUT-KATANGA.\r\n', 'uploads/1746367034_IMG-20250504-WA0020.jpg', 0),
(68, 13, '', 'uploads/1746367034_IMG-20250504-WA0019.jpg', 1),
(69, 14, 'Le 15 Janvier 2022, Monsieur Bruno ILUNGA est nommé Délégué Général c’est-à-dire Secrétaire Général sur décision du Président National et ses trois adjoints furent nommés au début du mois de Février de la même année. Il s’agissait de  Monsieur Junior MULENDA KATAKO chargé des questions politiques administratives et judiciaires, Monsieur Josué BONZEKE MPUTU chargé des questions économiques et financières et Monsieur Camy KASANJI chargé des questions socioculturelles.\r\n', 'uploads/1746367184_IMG-20250504-WA0018.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `contenus_diaspora`
--

DROP TABLE IF EXISTS `contenus_diaspora`;
CREATE TABLE IF NOT EXISTS `contenus_diaspora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `diaspora_id` int DEFAULT NULL,
  `paragraphe` text,
  `image_path` varchar(255) DEFAULT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `diaspora_id` (`diaspora_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contenus_femme`
--

DROP TABLE IF EXISTS `contenus_femme`;
CREATE TABLE IF NOT EXISTS `contenus_femme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `femme_id` int DEFAULT NULL,
  `paragraphe` text,
  `image_path` varchar(255) DEFAULT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `femme_id` (`femme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contenus_femme`
--

INSERT INTO `contenus_femme` (`id`, `femme_id`, `paragraphe`, `image_path`, `ordre`) VALUES
(60, 23, 'Les femmes du MCA et leur Président Kas KASONGO, ont clôturé le mois de la femme par une série d\'activités. Ce samedi 27 mars 2021, le Mouvement Congo en-Avant a organisé à l\'intention des femmes de ce mouvement politique, une série d\'activités pour clôturer le mois dédié aux droits de la femme.', 'uploads/1745879896_B3.jpg', 0),
(61, 23, 'En effet, les femmes du MCA, accompagné par leur Président, Kas KASONGO, ont commencé cette journée par une marche de santé qui est partie de la place commerciale à la 7ème rue limeté, jusqu\'au marché de liberté dans la commune de Masina. L\'activité était bien choisie pour montrer l\'importance que requiert la meilleure prise en charge de notre santé en cette période de la covid-19.', 'uploads/1745879896_F2.jpg', 1),
(62, 23, 'Ensuite, au lieu du chute dans la commune de la N\'sele, à ma vallée, les femmes ont échangé sur le leadership feminine en cette période de la covid-19, le Président Kas KASONGO a encouragé ces jeunes dames venues nombreuses  de toutes les 24 communes de Kinshasa, à militer efficacement en politique sans craindre la différence liée au sexe.', 'uploads/1745879897_F1.jpg', 2),
(63, 24, 'Dans le cadre  de la clôture du mois de la femme, les femmes boosters du MCA ce sont réunies aujourd\'hui 26 mars 2022 à Limete 6ème rue  avec les délégués de chaque commune, cela en présence du Président KAS KASONGO.\r\n', 'uploads/1746366767_IMG-20250504-WA0022.jpg', 0),
(64, 25, 'Lors de la cérémonie commémorative de la journée du 08 mars célébrer le 29 Mars 2025 au bar SHAMUKWALE de Gbadolite. Présider par madame la Présidente de Ligue de femmes Prisca YAFANGI sous la Bénédiction de son président National 3k , Kas KASONGO KALALO via délégation provinciale du Nord Ubangi.', 'uploads/1746367873_IMG-20250504-WA0040.jpg', 0),
(65, 26, 'Lors de la cérémonie commémorative de la journée du 08 mars célébrer le 29 Mars 2025 au bar SHAMUKWALE de Gbadolite. Présider par madame la Présidente de Ligue de femmes Prisca YAFANGI sous la Bénédiction de son président National 3k , Kas KASONGO KALALO via délégation provinciale du Nord Ubangi.\r\n', 'uploads/1746368054_IMG-20250429-WA0009.jpg', 0),
(67, 28, 'La ligue des femmes du MCA a organisée ce samedi 15 mars 2025 au siège du parti un meeting centré sur le thème National \" la congolaise au centre de toutes les ambitions \" commencer  par l\'hymne National, puis hymne du parti ensuite une minute silence pour les femmes qui subissent des atrocités à l\'Est du pays pat des troupes rwandaise et leurs supplétif M23 AFC.\r\n150 femmes ont été conscientiser à l\'éveil et l\'autonomisation dans leurs choix et leurs actions\r\n', 'uploads/1746520669_IMG-20250505-WA0018.jpg', 0),
(68, 28, '', 'uploads/1746520669_IMG-20250505-WA0017.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `contenus_jeunesse`
--

DROP TABLE IF EXISTS `contenus_jeunesse`;
CREATE TABLE IF NOT EXISTS `contenus_jeunesse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jeunesse_id` int DEFAULT NULL,
  `paragraphe` text,
  `image_path` varchar(255) DEFAULT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jeunesse_id` (`jeunesse_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contenus_province`
--

DROP TABLE IF EXISTS `contenus_province`;
CREATE TABLE IF NOT EXISTS `contenus_province` (
  `id` int NOT NULL AUTO_INCREMENT,
  `province_id` int DEFAULT NULL,
  `paragraphe` text,
  `image_path` varchar(255) DEFAULT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contenus_province`
--

INSERT INTO `contenus_province` (`id`, `province_id`, `paragraphe`, `image_path`, `ordre`) VALUES
(63, 26, 'Ceux qui commencent  bien finis bien ! la réunion était présidée par le secrétaire rapporteur sous l\'autorisation du président provincial. Dans le souci de rappeler aux militants et militantes la lutte que mène le Mouvement Congo En-avant (MCA) et aussi élargir notre champs d\'activité .  ', 'uploads/1745880956_P1.jpg', 0),
(64, 26, 'Un seul point était au programme celui de la sensibilisation des membres pour le parti. À cela, il faut noter qu\'aujourd\'hui nous sommes au 92 -ème jours de sensibilisation depuis notre première réunion du mois d\'octobre jusqu\'à présent. En effet, chaque participant s\'est exprimé à propos de ce point et certaines stratégies étaient montées en vue de faire mieux en 2025 et de chercher comment on peut  visualiser le parti dans tout les coins de la province. Partant de cette logique d\'idée, nous avons envisagé les éléments nécessaires pour la visibilité du parti ( drapeau,  bureau…) que cela soit réalisé en 2025 dans toutes les cellules provinciale.', 'uploads/1745880956_P2.jpg', 1),
(65, 26, 'À la fin nous avons chuté par une prise de photo de famille et l\'organisation de la prochaine réunion.', 'uploads/1745880956_P3.jpg', 2),
(67, 28, 'La participation active des boosters du Mouvement Congo En-Avant (MCA) à l’atelier de lutte contre la corruption organisé par l’Inspection Générale des Finances (IGF), en collaboration avec la société civile, marque un tournant important dans l\'engagement citoyen pour une gouvernance responsable et transparente en République Démocratique du Congo. Cet atelier, tenu à Lubumbashi, a réuni plusieurs acteurs de la société civile, des institutions publiques et des représentants politiques, dans une volonté commune de renforcer les mécanismes de contrôle, de dénonciation et de prévention des pratiques corruptives. Les boosters du MCA, connus pour leur mobilisation sur le terrain et leur attachement aux valeurs de bonne gouvernance, y ont apporté une contribution significative à travers des échanges constructifs, des propositions concrètes et une volonté affirmée de jouer un rôle de veille citoyenne. En participant à cet espace de dialogue, le MCA, par le biais de ses boosters, réaffirme sa détermination à combattre le détournement des deniers publics et toutes formes d’injustice économique qui freinent le développement du pays. Cette initiative s’inscrit dans la vision du parti, qui place la lutte contre la corruption au cœur de son projet politique. Les représentants du MCA ont salué le leadership de l’IGF dans cette démarche et ont appelé à un renforcement de la collaboration entre les institutions publiques, la société civile et les partis politiques pour bâtir une culture d\'intégrité. Le MCA entend poursuivre cette dynamique en multipliant les actions de sensibilisation, de formation et d’observation citoyenne, pour faire de la lutte contre la corruption un combat collectif et durable.\r\n\r\n\r\n	\r\n\r\n', 'uploads/6810b6b4ac148.jpg', 0),
(68, 29, 'Les missions de suivis et évaluations effectuées dans la commune de la Lukuga Quartier Kituku, En faveur du parti politique MCA Mouvement Congo en-Avant da la province du Tanganyika à Kalemie exécuter par camarade Manganza Ramazani Alain , l\'installation de cellule MCA Tanganyika au quartier Kataki 1 en 2022.\r\n', 'uploads/68175b2d15882.jpg', 0),
(69, 30, 'Rencontre de la délégation provinciale du Nord Ubangi avec le ministre provincial de l\'intérieur Excellence ALAWE MANDO Didier après l\'entretien dans son cabinet.\r\n', 'uploads/68175a5020899.jpg', 0),
(81, 38, 'Les populations locales, venues en grand nombre, ont exprimé leur attachement aux valeurs défendues par le MCA. Dans un contexte politique où la gestion de la chose publique reste préoccupante, beaucoup de citoyens voient en ce parti une véritable alternative crédible face aux dérives observées dans l’administration publique. L’appel du MCA à une gouvernance éthique et responsable résonne de plus en plus comme une nécessité dans le cœur des Congolais.', 'uploads/1746003729_IMG-20250429-WA0016.jpg', 1),
(74, 35, 'Accueille du Président de la République Démocratique du Congo Felix  Antoine Tshisekedi dans la Province du Tanganyika à Kalemie en 2024.\r\n', 'uploads/68175cf43ee9e.jpg', 0),
(75, 36, 'Délégué Alphonse Mutamba Ngoy  à côté du Président 3k avec deux membres des comités du MCA  Tanganyika à Kalemie à la période de lancement officiel de Regroupement politique AABG.\r\n', 'uploads/68175d50eba74.jpg', 0),
(80, 38, 'Le Mouvement Congo En-avant (MCA), section du Haut-Katanga, a organisé une activité d\'adhésion massive au quartier Hewabora à Lubumbashi. Cette initiative s’inscrit dans une dynamique de proximité avec la population et traduit la montée en puissance d’un parti qui ne cesse de mobiliser les citoyens autour de son idéal de justice, de bonne gouvernance et de lutte contre les antivaleurs. L\'événement a connu une participation remarquable, preuve de l’intérêt croissant que suscite le MCA auprès des habitants.', 'uploads/1746003729_IMG-20250429-WA0017.jpg', 0),
(82, 38, 'Le quartier Hewabora, longtemps marginalisé dans les actions politiques concrètes, a accueilli cette activité avec enthousiasme. Des discours mobilisateurs, portés par les cadres et les militants du parti, ont mis en lumière les engagements du MCA, notamment la lutte acharnée contre le détournement des fonds publics, l’injustice sociale et la corruption. Ces fléaux minent le développement et creusent davantage les inégalités que le MCA entend combattre avec détermination.', 'uploads/1746003729_IMG-20250429-WA0015.jpg', 2),
(83, 38, 'Au cours de cette rencontre, des dizaines de nouveaux adhérents ont signé leur engagement pour rejoindre le parti. Hommes, femmes et jeunes ont répondu à l’appel, convaincus par le message d’espoir et de changement porté par le MCA. Le parti entend capitaliser sur cet élan populaire pour renforcer son ancrage dans toutes les communes de Lubumbashi et au-delà, dans toute la province du Haut-Katanga. Le MCA réaffirme ainsi son engagement à rester proche du peuple et à porter haut la voix de ceux qui aspirent à une nouvelle classe politique, soucieuse du bien-être collectif. Le succès de cette activité à Hewabora témoigne d’un changement de mentalité en marche, d’une volonté populaire de bâtir un avenir fondé sur la justice, l’intégrité et la bonne gouvernance. Le MCA compte bien être au cœur de cette transformation.', 'uploads/1746003729_IMG-20250429-WA0018.jpg', 3),
(85, 40, 'Le Comité provincial en plein mouvement de suivi et évaluation dans les différentes cellules du parti.', 'uploads/1746361469_IMG-20250504-WA0033.jpg', 0),
(86, 41, 'Visite du Président National du Mouvement Congo En-avant (MCA), Kas Kasongo Kalalo à Lubumbashi dans le cadre des préparatifs aux élections générales avec les candidats du MCA Haut-Katanga.', 'uploads/1746364775_IMG-20250504-WA0028.jpg', 0),
(87, 42, 'Une première activité d’adhésion massive sera organisée dans le district de Tshangu le 26 Février 2022 qui connaitra la participation de plus cinq cent personnes et la cérémonie fut présidée par le Président du parti qui a commencé par un encadrement idéologique avant de faire la remise des fiches aux adhérents.\r\n', 'uploads/1746367321_IMG-20250504-WA0017.jpg', 0),
(88, 43, 'Le 27 Août 2022, la deuxième cérémonie d’adhésion populaire fut organisée. Cette fois dans le district du Mont-Amba et elle connaitra aussi la participation du numéro un du mouvement', 'uploads/1746367417_IMG-20250504-WA0016.jpg', 0),
(89, 44, 'LANCEMENT REGROUPEMENT POLITIQUE AABG\r\nLe MCA va être contacté par diverses formations politiques partageant la même vision de la bonne gouvernance pour constituer un regroupement politique. Il sera nommé ACTIONS AUDIBLES POUR LA BONNE GOUVERNANCE et le Directeur du Cabinet du Chef de l’Etat Monsieur Guylain NYEMBO en sera le parrain et le Président du MCA sera désigné à l’unanimité comme coordonnateur de cette formation politique.\r\n', 'uploads/1746367542_IMG-20250504-WA0015.jpg', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(36, 'NOMINATION LIGUE DES JEUNES', 'NOMINATION LIGUE DES JEUNES.pdf', '2025-04-24 13:16:19'),
(37, 'REACTION DU MOUVEMENT CONGO EN AVANT APRES L’ADMISSION A LA  RETRAITE ANTICIPEE DE L&#039;INSPECTEUR GÉNÉRAL DES FINANCES – CHEF DE  SERVICE, JULES ALINGETE KEY.', 'MESSAGE_du_MCA_sur_la_mise_en_retraite_de_JAK[1].pdf', '2025-05-11 21:05:36');

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `femmes`
--

INSERT INTO `femmes` (`id`, `titre`, `date_publication`) VALUES
(24, 'KINSHASA DEUXIÈME ACTIVITÉ LIGUE DES FEMMES ', '2025-05-04 13:52:47'),
(23, 'PREMIÈRE ACTIVITÉ LIGUE DES FEMMES', '2025-04-28 22:38:16'),
(25, 'NORD-UBANGI CLOTURE MOIS DE LA FEMME', '2025-05-04 14:11:13'),
(26, 'PROVINCE NORD UBANGI  CLÔTURE MOIS DE LA FEMME', '2025-05-04 14:14:14'),
(28, 'CÉLÉBRATION DE LA JOURNÉE DÉDIÉE AUX DROITS FEMMES.', '2025-05-06 08:37:49');

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
(1, 'L\'HISTOIRE DU MOUVEMENT CONGO EN-AVANT(MCA)', '                                                                                  Racontée par Dr. Herve MUTINZUMU NANSUA\r\n\r\nLe Mouvement  Congo en-Avant, MCA est un méga mouvement des leaders acteurs du développement de la RDC à partir de la base créé le 18 Décembre 2020 à Kinshasa capitale de la République Démocratique du Congo. Ceci par l’initiative d’un jeune congolais soucieux du changement, Président Kas KASONGO KALALO.\r\nAprès la démission du Président KAS KASONGO de son poste de Président de la Ligue des jeunes de l’UDPS/TSHIBALA, pour divergence politique, il s’en est suivi des démissions de plusieurs cadres et membres de ce parti qui ont préférés soutenir leur camarade et le Mouvement Congo en-Avant a été mis en place.\r\nLe MCA rassemble les jeunes congolaises et congolais autour de 12 valeurs citoyennes et républicaines et la  venue de cette nouvelle formation politique se fait dans le contexte du renouvellement de la classe gouvernante politique congolaise et du changement du paradigme de la gestion de la chose publique.\r\nLe MCA va consacrer dans son action une place de choix  pour la lutte contre le détournement, la corruption et l’impunité qui constitue pour lui la source du blocage du développement de notre pays.\r\nAvec des convictions socio-démocratiques et progressistes, ce parti a pour vision d’étendre son influence sur la sphère politique congolaise en vue d’implémenter son modèle de bonne gouvernance et se fixe comme objectif principal de booster le développement de la RDC à partir de la base.\r\nLa première réunion du MCA s’est tenue dans la commune de Limete le 18 Janvier 2021, au cours de laquelle les membres présents seront choisis comme points focaux  dans les communes et des établissements d’enseignement supérieur de la ville de Kinshasa avec comme mission d’installer pour une durée de trois des nouvelles cellules dans les différents quartiers, universités et instituts supérieurs.\r\nLe 21 Mars 2021 le MCA va tenir sa première matinée politique dans la commune de Limete et va procéder à l’évaluation de la mission d’implantation. Au cours de cette matinée la première activité de la Ligue des Femmes le 28 Mars 2021 sera programmée, une marche de santé  dans le cadre de la clôture du mois dédié aux droits des femmes.\r\nAu début mois d’Avril de la même année, le Mouvement Congo en-Avant accompagné d’une délégation des étudiants et des associations des jeunes va rencontrer l’Inspecteur Général des Finances Chef de Service Jules ALINGETE KEY récemment nommé et qui avait pour habitude de rendre public la conclusion des enquêtes de l’Inspection générale des Finances.\r\nCette rencontre était sollicitée dans le but de cerner le pourquoi de la léthargie dans le traitement des dossiers de détournements plusieurs mois après que les conclusions de leurs enquêtes soient faites. Notamment le projet du Parc Agro-Industriel de BUKANGALONZO, les fonds Covid-19, Détournement à l’EPST et la mauvaise gestion de la Province de l’Equateur.\r\nA l’issue des échanges, le constat de la justice comme machine du blocage de la lutte conte la prédation financière en RD était fait. Ainsi, le MCA va décider de lancer la campagne LE PEUPLE RECLAME JUSTICE et va avec des mégaphones et tracts les boosters prendre d’assaut les différents points chauds de la ville de Kinshasa (Rond-point Victoire, Huilerie,…) pour sensibiliser la population sur l’appropriation de la lutte contre la prédation financière.\r\n Le 23 Avril 2025 plus d’une dizaine des milliers des jeunes ont décidés de faire une descente à la cour de cassation et à la cour constitutionnelle  pour s’enquérir de la situation. Après échange avec les procureurs généraux de ces instances, les immunités parlementaires ont été perçues par tous comme étant des freins à l’action judiciaire.\r\nLe MCA a lancé après cette descente plusieurs activités allant dans le sens de la redynamisation des bases et du réarmement moral notamment la mise en ligne du chant patriotique LE PEUPLE RECLAME JUSTICE en projection des actions de grandes envergures programmées.\r\nLe Jeudi 3 Juin 2021 le MCA va reprendre les activités de terrain à travers un sit-in, pour réclamer la levée des immunités des parlementaires cités dans divers affaires de détournement dont les immunités parlementaires étaient devenues des prétextes pour échapper à la justice.\r\nEn fin du mois de Juin le Président du MCA va nommer les membres de son premier Cabinet et va doter son parti d’un siège dans la commune de Bandalungwa. Puis se suivront les nominations de plus d’un millier de membres pour animer les structures de bases (cellules) mais aussi les comités estudiantins.\r\nPuis suivra le 17 Juillet 2021 une première rencontre entre le Président national et les premiers délégués des communes de la ville de Kinshasa.\r\nLe 4 Septembre 2021 le MCA va organiser sa première matinée politique dans son nouveau siège situé dans la commune de Bandalungwa.\r\nAu cours de la même année pendant que le MCA gagne du terrain à Kinshasa la capitale, plusieurs délégations provinciales se forment et des structures de base sont implantées notamment au Nord-Kivu, Kongo-Central, Kwilu, Haut-Katanga, Lualaba, Tshopo, KasaÏ-Central.\r\nLe 15 Janvier 2022, Monsieur Bruno ILUNGA est nommé Délégué Général c’est-à-dire Secrétaire Général sur décision du Président National et ses trois adjoints furent nommés au début du mois de Février de la même année. Il s’agissait de  Monsieur Junior MULENDA KATAKO chargé des questions politiques administratives et judiciaires, Monsieur Josué BONZEKE MPUTU chargé des questions économiques et financières et Monsieur Camy KASANJI chargé des questions socioculturelles.\r\nUne première activité d’adhésion massive sera organisée dans le district de Tshangu le 26 Février 2022 qui connaitra la participation de plus cinq cent personnes et la cérémonie fut présidée par le Président du parti qui a commencé par un encadrement idéologique avant de faire la remise des fiches aux adhérents.\r\nAu mois de Mars 2022, sur décision du Président du parti Madame Véronique LUSAMANYA sera nommée Trésorière Générale du MCA et quitte ainsi le cabinet du Président pour assumer ses nouvelles responsabilités.\r\nLa Ligue des Femmes va pour cette année-là organiser un échange autour des droits et devoirs des femmes. L’activité s’était déroulée dans la commune de Limete et a connu la participation des femmes boosters venues de toutes les communes de Kinshasa le 26 mars 2021 et le 31 Mars 2021 dans le Haut Katanga.\r\nAu mois d’Avril 2022, face à la maltraitance des compatriotes dans les entreprises indo-pakistanaises, une campagne dénommée CONGOLAIS AZALI MOHUMBU TE fut lancée. Elle avait pour objectif de dénoncer les mauvaises habitudes et d’exiger la révision à la hausse du SMIG.\r\nAprès installation effective des structures de base, le président du parti a procédé le 3 Mai 2022 à la nomination des premiers délégués provinciaux de 8 provinces. Monsieur Daniel KANGALE pour le NORD-UBANGUI, Monsieur Kennedy KABAMBA pour le KASAI-CENTRAL, Monsieur Renaud EPUSAKA pour l’EQUATEUR, Monsieur Franchily LOPILI pour le MAI-NDOMBE, Monsieur Tresor MICIABU pour le KONGO-CENTRAL, Monsieur Zenon KIPULU pour le KWILU, Monsieur Victor LUHAKA pour la TSHOPO, Monsieur Celestin MBUYU pour le HAUT-KATANGA.\r\nSe jognant aux mouvements citoyens, le MCA prendra part le 25 Juin 2022 à une marche de soutien aux FARDC allant de la commune de MASINA jusqu’à la commune de LIMETE. Marche qui connaîtra la Présence du Président du parti, Kas KASONGO KALALO, l’opposant Martin FAYULU et beaucoup d’autres figures de la scène politique.\r\nAu début du mois d’Août, une délégation des membres du cabinet du président fut envoyée en mission dans la province de la TSHOPO pour évaluer l’implantation du mouvement et redynamiser les bases. Cette délégation sera reçue également par le Procureur Général Franck BOKOTA l’un des admirateurs de la campagne de la lutte contre la corruption du MCA.\r\nEt pour les élections des gouverneurs dans la même province, le MCA a apporté son appui et son soutien à Madame Madeleine qui fut élue Gouverneure de la TSHOPO. \r\nLe 27 Août 2022, la deuxième cérémonie d’adhésion populaire fut organisée. Cette fois dans le district du Mont-Amba et elle connaitra aussi la participation du numéro un du mouvement.\r\nPour changer le paradigme de gestion de la chose publique, le MCA décide de prendre activement part aux élections en alignant des candidats à tous les niveaux. Et va procéder à la mobilisation de toutes ses bases pour l’enrôlement qui constitue la première étape. \r\nLe MCA va organiser le 12 Novembre 2022 un séminaire de renforcement idéologique en faveur des cadres du parti ainsi que tous les candidats dans le souci de les rendre plus compétitif sur la scène électorale.\r\nPuis, en fin d’année, le MCA va être contacté par diverses formations politiques partageant la même vision de la bonne gouvernance pour constituer un regroupement politique. Il sera nommé ACTIONS AUDIBLES POUR LA BONNE GOUVERNANCE et le Directeur du Cabinet du Chef de l’Etat Monsieur Guylain NYEMBO en sera le parrain et le Président du MCA sera désigné à l’unanimité comme coordonnateur de cette formation politique.\r\nC’est ainsi que le Président du parti va effectuer une tournée nationale pour redynamiser les bases et va déposer sa candidature pour la circonscription électorale du Mont Amba.\r\nPour la première participation comme parti politique, le numéro un du MCA va s’enrôler le Mardi 14 Février 2023 au collège Saint MONFORT sur la 11ème Rue Limete et va se voir attribuer le numéro 180 pour la députation nationale et 56 pour la députation provinciale comme de Limete.\r\nBien que considéré comme la révélation surprise des élections de 2023, bénéficiant d’une grande confiance de la population le MCA va être cette année -là victime d’un complot politique l’écartant des sièges parlementaires au risque de deporter sa lutte dans les institutions.\r\nEn ce moment le MCA est en train de revitaliser ses structures de base et se prépare à faire une rentrée politique.\r\n \r\n', '2025-03-29 10:00:26');

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `nom`, `post_nom`, `prenom`, `sexe`, `date_naissance`, `etat_civil`, `province_origine`, `federation`, `adresse`, `telephone`, `date_inscription`, `email`) VALUES
(26, 'KAYEMBE', 'KAZUMBA', 'GREAK', 'Homme', '1999-09-30', 'Célibataire', 'Kinshasa', 'Tshangu 2', 'Rue De la paix 34 , Bibwa , N&#039;sele', '0823455499', '2025-04-29 11:04:26', 'gregorykayembe584@gmail.com'),
(27, 'MBAMBULA', 'PENGE', 'MANASSE', 'Homme', '1996-05-31', 'Célibataire', 'KINSHASA', 'TSHANGU 2', 'NGENDA 07, Bibwa, N\'sele', '0827834937', '2025-05-04 14:44:55', 'manassembambula1@gmail.com');

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `news_provinces`
--

INSERT INTO `news_provinces` (`id`, `province`, `titre`, `date_publication`) VALUES
(30, 'NORD UBANGI', 'RENCONTRE AVEC LE MINISTRE PROVINCIAL DE L\'INTÉRIEUR', '2025-04-28 23:12:22'),
(29, 'TANGANYIKA', 'SUIVI DE LA MISSION D\'IMPLANTATION', '2025-04-28 23:02:57'),
(26, 'MANIEMA', 'RÉUNION DE SENSIBILISATION À LA BASE ', '2025-04-28 22:55:56'),
(28, ' HAUT-KATANGA', 'PARTICIPATION DES BOOSTERS À L\'ATELIER DE LUTTE CONTRE LA CORRUPTION DE L\'IGF AVEC LA SOCIÉTÉ CIVILE', '2025-04-28 22:59:47'),
(38, 'HAUT-KATANGA ', 'ACTIVITE D\'ADHESION MASSIVE A LUBUMBASHI AU QUARTIER HEWA BORA UNE DYNAMIQUE POPULAIRE EN MARCHE', '2025-04-30 09:02:09'),
(35, 'TANGANYIKA', 'ACCUEIL DU CHEF DE L\'ÉTAT À KALEMIE', '2025-04-28 23:51:10'),
(36, 'TANGANYIKA', 'ACCUEIL DU PRÉSIDENT DU MCA A KALEMIE', '2025-04-28 23:57:39'),
(40, 'TANGANYIKA', 'LE COMITE PROVINCIAL', '2025-05-04 12:24:29'),
(41, 'HAUT-KATANGA', 'VISITE DU PRESIDENT NATIONAL DU MOUVEMENT CONGO EN-AVANT(MCA)', '2025-05-04 13:19:35'),
(42, 'KINSHASA', 'PREMIÈRE ADHÉSION MASSIVE À TSHANGU.', '2025-05-04 14:02:01'),
(43, 'KINSHASA', 'ADHESION MASSIVE MONT-AMBA', '2025-05-04 14:03:37'),
(44, 'KINSHASA', 'LANCEMENT REGROUPEMENT POLITIQUE AABG', '2025-05-04 14:05:42');

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(41, 'Province Nord-Ubangi', 'info@mca-rdc.org', '$2y$10$vrvUytxKnrIBdc4ODiBo9uLYVj910mkyCj5Ut2X8RL4erYB9AXiSe', 'fédérale', '2025-04-24 12:33:32'),
(43, 'Mbambula manasse', 'manassembambula1@gmail.com', '$2y$10$.1tXwgU4IiIaChDCxlb/tOu.lS3qFzNUKI0e/3LtC6Jsxn7khQko.', 'super_admin', '2025-04-26 08:01:51');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `video_path` varchar(50) NOT NULL,
  `date_ajout` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titre` (`titre`),
  UNIQUE KEY `video_path` (`video_path`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `videos`
--

INSERT INTO `videos` (`id`, `titre`, `video_path`, `date_ajout`) VALUES
(18, 'LE MCA RECLAMENT ET DONNE LE CARTON ROUGE AUX DETO', 'uploads/videosVID-20230214-WA0368.mp4', '2025-05-16 10:41:09'),
(19, 'KAS KASONGO KALALO COORDONATEUR NATIONAL DU REGROU', 'uploads/videosVID-20230920-WA0703.mp4', '2025-05-16 11:29:32'),
(22, 'LE MCA S\'INSURGE A LA DECLARATION DU TRIO MAT', 'uploads/videosVID-20230914-WA0098.mp4', '2025-05-16 11:33:09'),
(24, 'LES PEUPLES RECLAMENT JUSTICE', 'uploads/videosVID-20230216-WA0115.mp4', '2025-05-16 11:40:14'),
(40, 'SORTIE OFFICIELLE DU REGROUPEMENT AABG', 'uploads/videosVID-20230617-WA0554.mp4', '2025-05-16 12:43:13'),
(26, 'LES KINOISES ET KINOIS RECLAMENT JUSTICE DANS LES ', 'uploads/videosmca dans la rue.mp4', '2025-05-16 11:55:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
