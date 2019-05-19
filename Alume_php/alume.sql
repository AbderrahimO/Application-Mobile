-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : alumeprorwbts.mysql.db
-- Généré le :  mar. 12 juin 2018 à 08:41
-- Version du serveur :  5.6.39-log
-- Version de PHP :  7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alumeprorwbts`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `code_art` varchar(255) NOT NULL,
  `nom_art` varchar(255) NOT NULL,
  `img_art` text,
  `prix_art` varchar(20) NOT NULL,
  `qte` varchar(3) DEFAULT NULL,
  `id_depot` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`code_art`, `nom_art`, `img_art`, `prix_art`, `qte`, `id_depot`) VALUES
('fen_1', 'Fenetre en bois', 'image/img/fen_1.jpg', '700.00', '5', 1),
('fen_10', 'Fenetre bois ouvert', 'image/img/fen_10.jpg', '300.00', NULL, 2),
('fen_11', 'Fenetre triple rotor', 'image/img/fen_11.jpg', '350.00', NULL, 2),
('fen_12', 'Fenetre a rabat', 'image/img/fen_12.jpg', '340.00', NULL, 2),
('fen_13', 'Fenetre porte', 'image/img/fen_13.jpg', '400.00', NULL, 3),
('fen_14', 'Fenetre arrondie', 'image/img/fen_14.jpg', '450.00', NULL, 3),
('fen_15', 'Fenetre mini', 'image/img/fen_15.jpg', '430.00', NULL, 3),
('fen_16', 'Fenetre petite', 'image/img/fen_16.jpg', '410.00', NULL, 3),
('fen_17', 'Fenetre large', 'image/img/fen_17.jpg', '600.00', NULL, 3),
('fen_18', 'Fenetre rectangulaire', 'image/img/fen_18.jpg', '230.00', NULL, 3),
('fen_19', 'Fenetre triple rotator', 'image/img/fen_19.jpg', '210.00', NULL, 1),
('fen_2', 'Fenetre bois long', 'image/img/fen_2.jpg', '300.00', NULL, 1),
('fen_20', 'Fenetre petit bois', 'image/img/fen_20.jpg', '900.00', NULL, 1),
('fen_3', 'Fenetre PVC blanc', 'image/img/fen_3.jpg', '120.00', NULL, 1),
('fen_4', 'Fenetre en bois', 'image/img/fen_4.jpg', '140.00', NULL, 1),
('fen_5', 'Fenetre PVC noir', 'image/img/fen_5.jpg', '220.00', NULL, 1),
('fen_6', 'Fenetre PVC gris', 'image/img/fen_6.jpg', '240.00', NULL, 1),
('fen_7', 'Fenetre PVC vitre', 'image/img/fen_7.jpg', '210.00', NULL, 1),
('fen_8', 'Fenetre bois fonce', 'image/img/fen_8.jpg', '260.00', NULL, 2),
('fen_9', 'Fenetre bois haut', 'image/img/fen_9.jpg', '320.00', NULL, 2),
('pisc_1', 'Piscine rectangulaire arrondie', 'image/img/pisc_1.jpg', '4500.00', '5', 1),
('pisc_10', 'Piscine forme libre', 'image/img/pisc_10.jpg', '3500.00', '5', 1),
('pisc_11', 'Piscine en cacahuete', 'image/img/pisc_11.jpg', '2500.00', '5', 1),
('pisc_12', 'Piscine en retroviseur', 'image/img/pisc_12.jpg', '5500.00', '5', 1),
('pisc_13', 'Piscine en charette', 'image/img/pisc_13.jpg', '4500.00', '5', 1),
('pisc_14', 'Piscine ovale', 'image/img/pisc_14.jpg', '2500.00', '5', 1),
('pisc_15', 'Piscine ronde', 'image/img/pisc_15.jpg', '2000.00', '5', 1),
('pisc_16', 'Piscine guitare', 'image/img/pisc_16.jpg', '7000.00', '5', 1),
('pisc_17', 'Piscine simple', 'image/img/pisc_17.jpg', '5500.00', '5', 1),
('pisc_18', 'Piscine en coeur', 'image/img/pisc_18.jpg', '2500.00', '5', 1),
('pisc_19', 'Piscine topaze', 'image/img/pisc_19.jpg', '4444.00', '5', 1),
('pisc_2', 'Piscine rectangulaire', 'image/img/pisc_2.jpg', '4000.00', '5', 1),
('pisc_20', 'Piscine longue', 'image/img/pisc_20.jpg', '6000.00', '5', 1),
('pisc_3', 'Piscine rectangulaire profonde', 'image/img/pisc_3.jpg', '3500.00', '5', 1),
('pisc_4', 'Piscine rectangulaire tres profonde', 'image/img/pisc_4.jpg', '5000.00', '5', 1),
('pisc_5', 'Piscine interieur', 'image/img/pisc_5.jpg', '3000.00', '5', 1),
('pisc_6', 'Piscine lowcost', 'image/img/pisc_6.jpg', '400.00', '5', 1),
('pisc_7', 'Piscine rectangulaire longue', 'image/img/pisc_7.jpg', '4500.00', '5', 1),
('pisc_8', 'Piscine rectangulaire courte', 'image/img/pisc_8.jpg', '2500.00', '5', 1),
('pisc_9', 'Piscine petite forme libre', 'image/img/pisc_9.jpg', '2500.00', '5', 1),
('port_1', 'Porte marron', 'image/img/port_1.jpg', '200.00', '5', 1),
('port_10', 'Porte double rotor', 'image/img/port_10.jpg', '300.00', NULL, 2),
('port_11', 'Porte de garage grise', 'image/img/port_11.jpg', '350.00', NULL, 2),
('port_12', 'Porte de garage marron', 'image/img/port_12.jpg', '340.00', NULL, 2),
('port_13', 'Porte de garage coullisant', 'image/img/port_13.jpg', '400.00', NULL, 3),
('port_14', 'Porte de garage double', 'image/img/port_14.jpg', '450.00', NULL, 3),
('port_15', 'Porte de garage petite', 'image/img/port_15.jpg', '430.00', NULL, 3),
('port_16', 'Porte de garage noire', 'image/img/port_16.jpg', '410.00', NULL, 3),
('port_17', 'Porte double rotator', 'image/img/port_17.jpg', '600.00', NULL, 3),
('port_18', 'Porte de garage beige', 'image/img/port_18.jpg', '230.00', NULL, 3),
('port_19', 'Porte anthracite', 'image/img/port_19.jpg', '210.00', NULL, 1),
('port_2', 'Porte grise', 'image/img/port_2.jpg', '300.00', NULL, 1),
('port_20', 'Porte triple rotor', 'image/img/port_20.jpg', '900.00', NULL, 1),
('port_3', 'Porte rectangulaire', 'image/img/port_3.jpg', '120.00', NULL, 1),
('port_4', 'Porte lisse', 'image/img/port_4.jpg', '140.00', NULL, 1),
('port_5', 'Porte marron', 'image/img/port_5.jpg', '220.00', NULL, 1),
('port_6', 'Porte large', 'image/img/port_6.jpg', '240.00', NULL, 1),
('port_7', 'Porte avec des vitres', 'image/img/port_7.jpg', '210.00', NULL, 1),
('port_8', 'Porte a barre blanche', 'image/img/port_8.jpg', '260.00', NULL, 2),
('port_9', 'Porte de batiment', 'image/img/port_9.jpg', '320.00', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `bon_livraison`
--

CREATE TABLE `bon_livraison` (
  `id_bonliv` int(6) NOT NULL,
  `date_bonliv` date NOT NULL,
  `id_devis` int(6) NOT NULL,
  `id_cli` int(6) NOT NULL,
  `id_cam` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `camion`
--

CREATE TABLE `camion` (
  `id_cam` int(6) NOT NULL,
  `annee_cam` year(4) NOT NULL,
  `id_chauf` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `camion`
--

INSERT INTO `camion` (`id_cam`, `annee_cam`, `id_chauf`) VALUES
(1, 1998, 1),
(2, 1999, 2),
(3, 2005, 3),
(4, 2010, 4),
(5, 2009, 20),
(6, 2015, 5),
(7, 1998, 6),
(8, 1999, 7),
(9, 2017, 8),
(10, 2006, 9),
(11, 2014, 10),
(12, 2014, 11),
(13, 2013, 12),
(14, 2018, 13),
(15, 2006, 14),
(16, 2015, 15),
(17, 1999, 16),
(18, 2006, 17),
(19, 2006, 18),
(20, 2012, 19);

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

CREATE TABLE `chauffeur` (
  `id_chauf` int(2) NOT NULL,
  `nom_chauf` varchar(25) DEFAULT NULL,
  `prenom_chauf` varchar(25) DEFAULT NULL,
  `tel_chauf` varchar(10) DEFAULT NULL,
  `libre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id_chauf`, `nom_chauf`, `prenom_chauf`, `tel_chauf`, `libre`) VALUES
(1, 'Loic', 'BernardO', '0344556677', 'oui'),
(2, 'Henro', 'Baptiste', '0455447899', 'Non'),
(3, 'Clauss', 'Verma', '0544889933', 'Oui'),
(4, 'Hermel', 'Ortoga', '0544889933', 'non'),
(5, 'Heinss', 'Dimitri', '0587689933', 'Non'),
(6, 'Voss', 'Karina', '054486233', 'Oui'),
(7, 'Fouger', 'Guillaume', '0245129933', 'Non'),
(8, 'Han', 'Thuan', '0567932411', 'Oui'),
(9, 'Loran', 'Norman', '0588990455', 'Oui'),
(10, 'Poulet', 'Thibault', '0143522324', 'Non'),
(11, 'Anouk', 'Anna', '0322321219', 'Non'),
(12, 'Mojart', 'Nikolai', '0984354677', 'Non'),
(13, 'reus', 'Marco', '123976655', 'Non'),
(14, 'Luigiano', 'Mario', '0237654310', 'Non'),
(15, 'Fett', 'Valentin', '0233440105', 'Oui'),
(16, 'Ken', 'Nicolas', '0121176753', 'Non'),
(17, 'Pouti', 'Adelin', '0588997111', 'Non'),
(18, 'Guodar', 'Amza', '0344321167', 'Oui'),
(19, 'Thie', 'Camille', '0321765544', 'Non'),
(20, 'Veers', 'Gordon', '0543221010', 'Non');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_cli` int(6) NOT NULL,
  `mail_cli` varchar(75) NOT NULL,
  `mdp_cli` varchar(50) NOT NULL,
  `nom_cli` varchar(25) DEFAULT NULL,
  `prenom_cli` varchar(25) DEFAULT NULL,
  `datenaiss_cli` varchar(25) DEFAULT NULL,
  `tel_cli` varchar(15) DEFAULT NULL,
  `adress_cli` varchar(255) DEFAULT NULL,
  `cp_cli` varchar(25) DEFAULT NULL,
  `id_chauf` int(6) DEFAULT NULL,
  `nbcom` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_cli`, `mail_cli`, `mdp_cli`, `nom_cli`, `prenom_cli`, `datenaiss_cli`, `tel_cli`, `adress_cli`, `cp_cli`, `id_chauf`, `nbcom`) VALUES
(1, 'mumin.guvendi@gmail.com', '386cd26a03430055835c4429d132338449a13689', 'Guvendi', 'Mumin', NULL, '651680971', '5b les touleuses mauves', '95000', NULL, 0),
(24, 'mucahit@mucahit.fr', 'e99ed52991be1b97b68d18fe76f0e6127ff58722', 'Guvendi', 'Mucahit', NULL, '0123456788', '5b les touleuses mauves', '95000', NULL, 0),
(25, 'mumin@hotmail.fr', 'e99ed52991be1b97b68d18fe76f0e6127ff58722', 'Herve', 'Loic', NULL, '054612345', '8rue des sabliers', '93000', NULL, 0),
(26, 'jyja@gmail.com', '86a9db8e00a9f960cf79f78996dfdbfeb613abd5', 'Jeremy', 'Charrier', NULL, '0666554466', 'rue du test', '28000', NULL, 0),
(27, 'test@test.fr', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test', 'test', NULL, '0122347875', 'rue du test', '98000', NULL, 0),
(28, 'client66@hotmail.fr', 'd2a04d71301a8915217dd5faf81d12cffd6cd958', 'Cabon', 'Christelle', NULL, '0651680917', '23 rue de Jordan', '75018', NULL, 0),
(29, 'Chat@hotmail.fr', 'e4b203cd2273969f31fad4df07d1acb0924a0619', 'Chaton', 'Francis', NULL, '0145669877', 'rue des chardons', '280000', NULL, 0),
(30, 'damienabiib@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'Abib', 'Damien', NULL, '0651109933', '88 rue pasteur', '95100  ', NULL, 0),
(31, 'mamarouu@hotmail.fr', '9cf95dacd226dcf43dbba7035218921', 'Marouane', 'Pep', NULL, '01010564020', 'rue des sos', '95830', NULL, 0),
(32, 'eric@hotmail.fr', '9cf95dacd226dcf43dqdqd7035218921', 'Eric', 'Faris', NULL, '01017789020', 'place de la rue', '91000', NULL, 0),
(33, 'freir@gmail.fr', '9cf95dacd226dazazz6cbba5218921', 'Miguel', 'Freire', NULL, '01046561020', 'rue du rouge', '38000', NULL, 0),
(34, 'balo@laposte.net', '9cf95dacd226aeazeeeeda376cdb6cbba708921', 'Balo', 'Bertrand', NULL, '0144569320', 'rue des treize', '15000', NULL, 0),
(35, 'nmolok@yahoo.fr', '9cf95dacd226dczazeazea376cdbba703521', 'Moloque', 'Nathan', NULL, '0237506599', 'rue des platres', '63000', NULL, 0),
(36, 'Tpa@hotmail.fr', '9cf95dacd226dcaeazeaze376cdb6c18921', 'Tap', 'Antony', NULL, '0549780000', 'impasse du pressoir', '88900', NULL, 0),
(37, 'valyo@hotmail.fr', '9cf95dacd226dceeeee376cdb6cbba8921', 'Valerro', 'Yollande', NULL, '0237896522', 'rue du prieure', '28630', NULL, 0),
(38, 'Eloarm@hotmail.fr', '9cf95dacd226dcf43da376cdb6cb18921', 'Army', 'Elodie', NULL, '0875693322', 'rue des anges', '28170', NULL, 0),
(39, 'Erftheo@hotmail.fr', '9cf95dacd226dcf43ddddbba7035218921', 'Erf', 'Theo', NULL, '0452365588', 'rue des animaux', '69882', NULL, 0),
(40, 'Chantal.no@hotmail.fr', '9cf95dacd226dcf4xxx6cbba7035218921', 'No', 'Chantal', NULL, '0237658965', 'place jungle', '01520', NULL, 0),
(41, 'Jospeed@hotmail.fr', '9cf95dacd226dcfxxaaaacdb6cbba8921', 'Vitesse', 'Josiane', NULL, '0355664488', 'rue allende', '78520', NULL, 0),
(42, 'testfinal@gmail.com', 'c2db4744e6e98778900f74c3ebb13fd7580a9b78', 'nomfinal', 'prenomfinal', NULL, '0651689729', 'adresse', '95000', NULL, 0),
(43, 'ka77950@gmail.com', '7e240de74fb1ed08fa08d38063f6a6a91462a815', 'ka', 'ka', NULL, '0160565657', 'paris', '75000', NULL, 0),
(44, 'tristan.chat@test.fr', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'chat', 'tristan', NULL, '0678787878', '2RRR', '78600', NULL, 0),
(45, 'test@free.fr', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 'TEST', 'Test', NULL, '0123456789', '10 rue du bord', '75015', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commandec`
--

CREATE TABLE `commandec` (
  `id_commandc` int(6) NOT NULL,
  `date_commandc` date NOT NULL,
  `id_cli` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commandec`
--

INSERT INTO `commandec` (`id_commandc`, `date_commandc`, `id_cli`) VALUES
(4, '2018-05-02', 24),
(5, '2018-05-02', 24),
(6, '2018-05-02', 24),
(7, '2018-05-02', 24),
(8, '2018-05-02', 24),
(9, '2018-05-02', 24),
(10, '2018-05-02', 24),
(11, '2018-05-02', 24),
(12, '2018-05-02', 24),
(13, '2018-05-02', 26),
(14, '2018-05-03', 24),
(15, '2018-05-03', 24),
(16, '2018-05-03', 24),
(17, '2018-05-03', 24),
(18, '2018-05-03', 24),
(19, '2018-05-03', 24),
(20, '2018-05-03', 24),
(21, '2018-05-03', 24),
(22, '2018-05-03', 24),
(23, '2018-05-03', 24),
(24, '2018-05-03', 24),
(25, '2018-05-03', 24),
(26, '2018-05-03', 24),
(27, '2018-05-03', 24),
(28, '2018-05-03', 24),
(29, '2018-05-03', 24),
(30, '2018-05-03', 24),
(31, '2018-05-03', 24),
(32, '2018-05-03', 24),
(33, '2018-05-03', 29),
(34, '2018-05-07', 30),
(35, '2018-05-09', 31),
(36, '2018-05-26', 27);

--
-- Déclencheurs `commandec`
--
DELIMITER $$
CREATE TRIGGER `Statcom` AFTER INSERT ON `commandec` FOR EACH ROW BEGIN
	Declare nb int;
	select nbcom into nb
	from client where id_cli=new.id_cli;
	if nb is null 

	then set nb=0;
		end if;
		UPDATE CLIENT 
		set nbcom=nb+1 where id_cli=new.id_cli;
		END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Statcom2` AFTER DELETE ON `commandec` FOR EACH ROW BEGIN
	Declare nb int;
	select nbcom into nb
	from client where id_cli=old.id_cli;
		UPDATE CLIENT 
		set nbcom=nb-1 where id_cli=old.id_cli;
		END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteCommande` BEFORE DELETE ON `commandec` FOR EACH ROW BEGIN
			delete from lignecommandc where lignecommande.id_commandc = old.id_commandc;
		END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `commandef`
--

CREATE TABLE `commandef` (
  `id_commandf` int(6) NOT NULL,
  `date_commandf` date NOT NULL,
  `id_fourni` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

CREATE TABLE `commercial` (
  `id_com` int(6) NOT NULL,
  `nom_com` varchar(25) NOT NULL,
  `prenom_com` varchar(25) NOT NULL,
  `mail_com` varchar(50) NOT NULL,
  `tel_com` int(10) NOT NULL,
  `id_cli` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commercial`
--

INSERT INTO `commercial` (`id_com`, `nom_com`, `prenom_com`, `mail_com`, `tel_com`, `id_cli`) VALUES
(1, 'Skrilanka', 'Jerome', 'skrilanka@alume.com', 789541213, 1),
(2, 'Bachung', 'Ernesto', 'bachung@alume.com', 789652214, 24),
(3, 'Losange', 'Manuelle', 'losange@alume.com', 689241213, 25),
(4, 'Trumpin', 'Pascal', 'trumpin@alume.com', 689131418, 26),
(5, 'Veneci', 'Isabelle', 'veneci@alume.com', 649121855, 27),
(6, 'Mysthere', 'Felicia', 'Mysthere@alume.com', 789541213, 28);

-- --------------------------------------------------------

--
-- Structure de la table `depot`
--

CREATE TABLE `depot` (
  `id_depot` int(2) NOT NULL,
  `nom_depot` varchar(25) NOT NULL,
  `adress_depot` varchar(255) NOT NULL,
  `cp_depot` int(5) NOT NULL,
  `tel_depot` int(10) NOT NULL,
  `mail_depot` varchar(50) DEFAULT NULL,
  `id_cam` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `depot`
--

INSERT INTO `depot` (`id_depot`, `nom_depot`, `adress_depot`, `cp_depot`, `tel_depot`, `mail_depot`, `id_cam`) VALUES
(1, 'Dépot Zone A', '5 rue de la Zone A', 75000, 123475000, 'depot_zone_a@yopmail.com', NULL),
(2, 'Dépot Zone B', '10 rue de la Zone B', 23000, 123423000, 'depot_zone_b@yopmail.com', NULL),
(3, 'Dépot Zone C', '15 rue de la Zone C', 13000, 123413000, 'depot_zone_c@yopmail.com', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id_devis` int(6) NOT NULL,
  `id_commandc` int(6) NOT NULL,
  `id_bonliv` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fourni` int(6) NOT NULL,
  `nom_fourni` varchar(25) NOT NULL,
  `adress_fourni` varchar(255) NOT NULL,
  `cp_fourni` int(5) NOT NULL,
  `tel_fourni` int(10) NOT NULL,
  `mail_fourni` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fourni`, `nom_fourni`, `adress_fourni`, `cp_fourni`, `tel_fourni`, `mail_fourni`) VALUES
(1, 'Boisage', 'rue du chenes', 78000, 895668744, 'contact@boisage.fr'),
(2, 'Piscinemania', 'place de walter', 13000, 456603211, 'contact@piscmania.fr'),
(3, 'verriere', '6 place du sable', 45000, 895699980, 'commercial@verre'),
(4, 'fenwick', 'rue des roues', 78890, 966668744, 'contact@fen.com'),
(5, 'Toiturex5', 'rue laplace', 75001, 123335691, 'toiture.comml@gmail.fr'),
(6, 'Watership', 'rue du clan', 41000, 978561980, 'contact@water.fr'),
(7, 'Serruro', 'rue du piques', 75000, 877521912, 'benjamin@serruro.com');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande_client`
--

CREATE TABLE `ligne_commande_client` (
  `id_lignec` int(6) NOT NULL,
  `code_art` varchar(255) NOT NULL,
  `nom_artc` varchar(40) NOT NULL,
  `qte_lignec` int(4) NOT NULL,
  `id_commandc` int(6) NOT NULL,
  `prix_lignec` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligne_commande_client`
--

INSERT INTO `ligne_commande_client` (`id_lignec`, `code_art`, `nom_artc`, `qte_lignec`, `id_commandc`, `prix_lignec`) VALUES
(5, 'fen_11', 'Fenetre triple rotor', 1, 4, 350),
(6, 'fen_10', 'Fenetre bois ouvert', 5, 4, 300),
(7, 'port_11', 'Porte de garage grise', 1, 4, 350),
(8, 'fen_11', 'Fenetre triple rotor', 1, 4, 350),
(9, 'fen_10', 'Fenetre bois ouvert', 5, 4, 300),
(10, 'port_11', 'Porte de garage grise', 1, 4, 350),
(11, 'fen_11', 'Fenetre triple rotor', 1, 4, 350),
(12, 'fen_10', 'Fenetre bois ouvert', 5, 4, 300),
(13, 'port_11', 'Porte de garage grise', 1, 4, 350),
(14, 'fen_5', 'Fenetre PVC noir', 1, 4, 220),
(15, 'fen_10', 'Fenetre bois ouvert', 1, 4, 300),
(16, 'fen_10', 'Fenetre bois ouvert', 1, 4, 300),
(17, 'fen_10', 'Fenetre bois ouvert', 1, 4, 300),
(18, 'fen_10', 'Fenetre bois ouvert', 1, 4, 300),
(19, 'fen_11', 'Fenetre triple rotor', 1, 4, 350),
(20, 'fen_11', 'Fenetre triple rotor', 1, 4, 350),
(21, 'fen_1', 'Fenetre bois', 1, 13, 200),
(22, 'pisc_10', 'Piscine forme libre', 1, 13, 3500),
(23, 'fen_10', 'Fenetre bois ouvert', 1, 13, 300),
(24, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(25, 'fen_1', 'Fenetre bois', 1, 14, 200),
(26, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(27, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(28, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(29, 'fen_13', 'Fenetre porte', 1, 14, 400),
(30, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(31, 'fen_16', 'Fenetre petite', 1, 14, 410),
(32, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(33, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(34, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(35, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(36, 'fen_1', 'Fenetre bois', 1, 14, 200),
(37, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(38, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(39, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(40, 'fen_13', 'Fenetre porte', 1, 14, 400),
(41, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(42, 'fen_16', 'Fenetre petite', 1, 14, 410),
(43, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(44, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(45, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(46, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(47, 'fen_1', 'Fenetre bois', 1, 14, 200),
(48, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(49, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(50, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(51, 'fen_13', 'Fenetre porte', 1, 14, 400),
(52, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(53, 'fen_16', 'Fenetre petite', 1, 14, 410),
(54, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(55, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(56, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(57, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(58, 'fen_1', 'Fenetre bois', 1, 14, 200),
(59, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(60, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(61, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(62, 'fen_13', 'Fenetre porte', 1, 14, 400),
(63, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(64, 'fen_16', 'Fenetre petite', 1, 14, 410),
(65, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(66, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(67, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(68, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(69, 'fen_1', 'Fenetre bois', 1, 14, 200),
(70, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(71, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(72, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(73, 'fen_13', 'Fenetre porte', 1, 14, 400),
(74, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(75, 'fen_16', 'Fenetre petite', 1, 14, 410),
(76, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(77, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(78, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(79, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(80, 'fen_1', 'Fenetre bois', 1, 14, 200),
(81, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(82, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(83, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(84, 'fen_13', 'Fenetre porte', 1, 14, 400),
(85, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(86, 'fen_16', 'Fenetre petite', 1, 14, 410),
(87, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(88, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(89, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(90, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(91, 'fen_1', 'Fenetre bois', 1, 14, 200),
(92, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(93, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(94, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(95, 'fen_13', 'Fenetre porte', 1, 14, 400),
(96, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(97, 'fen_16', 'Fenetre petite', 1, 14, 410),
(98, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(99, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(100, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(101, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(102, 'fen_1', 'Fenetre bois', 1, 14, 200),
(103, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(104, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(105, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(106, 'fen_13', 'Fenetre porte', 1, 14, 400),
(107, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(108, 'fen_16', 'Fenetre petite', 1, 14, 410),
(109, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(110, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(111, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(112, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(113, 'fen_1', 'Fenetre bois', 1, 14, 200),
(114, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(115, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(116, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(117, 'fen_13', 'Fenetre porte', 1, 14, 400),
(118, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(119, 'fen_16', 'Fenetre petite', 1, 14, 410),
(120, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(121, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(122, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(123, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(124, 'fen_1', 'Fenetre bois', 1, 14, 200),
(125, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(126, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(127, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(128, 'fen_13', 'Fenetre porte', 1, 14, 400),
(129, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(130, 'fen_16', 'Fenetre petite', 1, 14, 410),
(131, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(132, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(133, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(134, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(135, 'fen_1', 'Fenetre bois', 1, 14, 200),
(136, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(137, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(138, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(139, 'fen_13', 'Fenetre porte', 1, 14, 400),
(140, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(141, 'fen_16', 'Fenetre petite', 1, 14, 410),
(142, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(143, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(144, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(145, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(146, 'fen_1', 'Fenetre bois', 1, 14, 200),
(147, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(148, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(149, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(150, 'fen_13', 'Fenetre porte', 1, 14, 400),
(151, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(152, 'fen_16', 'Fenetre petite', 1, 14, 410),
(153, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(154, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(155, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(156, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(157, 'fen_1', 'Fenetre bois', 1, 14, 200),
(158, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(159, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(160, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(161, 'fen_13', 'Fenetre porte', 1, 14, 400),
(162, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(163, 'fen_16', 'Fenetre petite', 1, 14, 410),
(164, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(165, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(166, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(167, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(168, 'fen_1', 'Fenetre bois', 1, 14, 200),
(169, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(170, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(171, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(172, 'fen_13', 'Fenetre porte', 1, 14, 400),
(173, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(174, 'fen_16', 'Fenetre petite', 1, 14, 410),
(175, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(176, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(177, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(178, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(179, 'fen_1', 'Fenetre bois', 1, 14, 200),
(180, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(181, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(182, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(183, 'fen_13', 'Fenetre porte', 1, 14, 400),
(184, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(185, 'fen_16', 'Fenetre petite', 1, 14, 410),
(186, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(187, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(188, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(189, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(190, 'fen_1', 'Fenetre bois', 1, 14, 200),
(191, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(192, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(193, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(194, 'fen_13', 'Fenetre porte', 1, 14, 400),
(195, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(196, 'fen_16', 'Fenetre petite', 1, 14, 410),
(197, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(198, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(199, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(200, 'fen_10', 'Fenetre bois ouvert', 2, 14, 300),
(201, 'fen_1', 'Fenetre bois', 1, 14, 200),
(202, 'fen_11', 'Fenetre triple rotor', 1, 14, 350),
(203, 'fen_12', 'Fenetre a rabat', 1, 14, 340),
(204, 'fen_14', 'Fenetre arrondie', 1, 14, 450),
(205, 'fen_13', 'Fenetre porte', 1, 14, 400),
(206, 'fen_18', 'Fenetre rectangulaire', 2, 14, 230),
(207, 'fen_16', 'Fenetre petite', 1, 14, 410),
(208, 'fen_19', 'Fenetre triple rotator', 1, 14, 210),
(209, 'pisc_10', 'Piscine forme libre', 1, 14, 3500),
(210, 'pisc_12', 'Piscine en retroviseur', 1, 14, 5500),
(211, 'fen_1', 'Fenetre bois', 1, 14, 200),
(212, 'fen_10', 'Fenetre bois ouvert', 1, 14, 300),
(213, 'fen_10', 'Fenetre bois ouvert', 1, 33, 300),
(214, 'fen_10', 'Fenetre bois ouvert', 1, 34, 300),
(215, 'pisc_11', 'Piscine en cacahuete', 1, 35, 2500),
(216, 'fen_1', 'Fenetre bois', 1, 35, 200),
(217, 'fen_12', 'Fenetre a rabat', 1, 36, 340);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande_fournisseur`
--

CREATE TABLE `ligne_commande_fournisseur` (
  `qte_lignef` int(4) NOT NULL,
  `id_commandf` int(6) NOT NULL,
  `code_art` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `login` varchar(50) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `droits` enum('admin','user','autre') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`login`, `mdp`, `droits`) VALUES
('admin', 'admin', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`code_art`),
  ADD KEY `FK_Article_id_depot` (`id_depot`);

--
-- Index pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  ADD PRIMARY KEY (`id_bonliv`),
  ADD KEY `FK_Bon_livraison_id_devis` (`id_devis`),
  ADD KEY `FK_Bon_livraison_id_cli` (`id_cli`),
  ADD KEY `FK_Bon_livraison_id_cam` (`id_cam`);

--
-- Index pour la table `camion`
--
ALTER TABLE `camion`
  ADD PRIMARY KEY (`id_cam`),
  ADD KEY `FK_Camion_id_chauf` (`id_chauf`);

--
-- Index pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD PRIMARY KEY (`id_chauf`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_cli`),
  ADD KEY `FK_Client_id_chauf` (`id_chauf`);

--
-- Index pour la table `commandec`
--
ALTER TABLE `commandec`
  ADD PRIMARY KEY (`id_commandc`),
  ADD KEY `FK_CommandC_id_cli` (`id_cli`);

--
-- Index pour la table `commandef`
--
ALTER TABLE `commandef`
  ADD PRIMARY KEY (`id_commandf`),
  ADD KEY `FK_CommandF_id_fourni` (`id_fourni`);

--
-- Index pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `FK_Commercial_id_cli` (`id_cli`);

--
-- Index pour la table `depot`
--
ALTER TABLE `depot`
  ADD PRIMARY KEY (`id_depot`),
  ADD KEY `FK_Depot_id_cam` (`id_cam`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id_devis`),
  ADD KEY `FK_Devis_id_commandc` (`id_commandc`),
  ADD KEY `FK_Devis_id_bonliv` (`id_bonliv`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fourni`);

--
-- Index pour la table `ligne_commande_client`
--
ALTER TABLE `ligne_commande_client`
  ADD PRIMARY KEY (`id_lignec`,`id_commandc`,`code_art`),
  ADD KEY `FK_Ligne_commande_client_code_art` (`code_art`),
  ADD KEY `FK_Ligne_commande_client_id_commandc` (`id_commandc`);

--
-- Index pour la table `ligne_commande_fournisseur`
--
ALTER TABLE `ligne_commande_fournisseur`
  ADD PRIMARY KEY (`id_commandf`,`code_art`),
  ADD KEY `FK_Ligne_commande_fournisseur_code_art` (`code_art`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  MODIFY `id_bonliv` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `camion`
--
ALTER TABLE `camion`
  MODIFY `id_cam` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  MODIFY `id_chauf` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_cli` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `commandec`
--
ALTER TABLE `commandec`
  MODIFY `id_commandc` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `commandef`
--
ALTER TABLE `commandef`
  MODIFY `id_commandf` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id_com` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `depot`
--
ALTER TABLE `depot`
  MODIFY `id_depot` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id_devis` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fourni` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `ligne_commande_client`
--
ALTER TABLE `ligne_commande_client`
  MODIFY `id_lignec` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  ADD CONSTRAINT `FK_Bon_livraison_id_cam` FOREIGN KEY (`id_cam`) REFERENCES `camion` (`id_cam`),
  ADD CONSTRAINT `FK_Bon_livraison_id_cli` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`),
  ADD CONSTRAINT `FK_Bon_livraison_id_devis` FOREIGN KEY (`id_devis`) REFERENCES `devis` (`id_devis`);

--
-- Contraintes pour la table `camion`
--
ALTER TABLE `camion`
  ADD CONSTRAINT `FK_Camion_id_chauf` FOREIGN KEY (`id_chauf`) REFERENCES `chauffeur` (`id_chauf`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_Client_id_chauf` FOREIGN KEY (`id_chauf`) REFERENCES `chauffeur` (`id_chauf`);

--
-- Contraintes pour la table `commandec`
--
ALTER TABLE `commandec`
  ADD CONSTRAINT `FK_CommandC_id_cli` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`);

--
-- Contraintes pour la table `commandef`
--
ALTER TABLE `commandef`
  ADD CONSTRAINT `FK_CommandF_id_fourni` FOREIGN KEY (`id_fourni`) REFERENCES `fournisseur` (`id_fourni`);

--
-- Contraintes pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD CONSTRAINT `FK_Commercial_id_cli` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`);

--
-- Contraintes pour la table `depot`
--
ALTER TABLE `depot`
  ADD CONSTRAINT `FK_Depot_id_cam` FOREIGN KEY (`id_cam`) REFERENCES `camion` (`id_cam`);

--
-- Contraintes pour la table `devis`
--
ALTER TABLE `devis`
  ADD CONSTRAINT `FK_Devis_id_bonliv` FOREIGN KEY (`id_bonliv`) REFERENCES `bon_livraison` (`id_bonliv`),
  ADD CONSTRAINT `FK_Devis_id_commandc` FOREIGN KEY (`id_commandc`) REFERENCES `commandec` (`id_commandc`);

--
-- Contraintes pour la table `ligne_commande_fournisseur`
--
ALTER TABLE `ligne_commande_fournisseur`
  ADD CONSTRAINT `FK_Ligne_commande_fournisseur_code_art` FOREIGN KEY (`code_art`) REFERENCES `article` (`code_art`),
  ADD CONSTRAINT `FK_Ligne_commande_fournisseur_id_commandf` FOREIGN KEY (`id_commandf`) REFERENCES `commandef` (`id_commandf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
