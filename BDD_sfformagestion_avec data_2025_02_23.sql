-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour sfformagestion
CREATE DATABASE IF NOT EXISTS `sfformagestion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sfformagestion`;

-- Listage de la structure de table sfformagestion. apprenant
CREATE TABLE IF NOT EXISTS `apprenant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `societe_id` int DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `metier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C4EB462EFCF77503` (`societe_id`),
  CONSTRAINT `FK_C4EB462EFCF77503` FOREIGN KEY (`societe_id`) REFERENCES `societe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.apprenant : ~18 rows (environ)
INSERT INTO `apprenant` (`id`, `societe_id`, `nom`, `prenom`, `sexe`, `adresse`, `code_postal`, `ville`, `pays`, `tel`, `email`, `date_naissance`, `metier`) VALUES
	(1, 1, 'MARTIN', 'Yvette', 'F', '6, rue des Roses', '67000', 'Strasbourg', 'FRANCE', '0645329578', 'martin.yvette@gmail.com', '1990-04-12', 'cuisinière'),
	(2, 1, 'MILLER', 'Lucette', 'F', '16, rue des Iris', '67100', 'Strasbourg', 'FRANCE', '0612857435', 'miller.lucette@gmail.com', '1994-08-24', 'assistante'),
	(3, 1, 'MULLER', 'Aliette', 'F', '42, bvp des Lys', '67200', 'Strasbourg', 'FRANCE', '0633157844', 'muller.aliette@gmail.com', '1979-01-06', 'assistante'),
	(4, 1, 'MOORE', 'Violette', 'F', '22, impasse du Houx', '67800', 'Hoenheim', 'FRANCE', '0644856211', 'moore.violette@gmail.com', '1999-11-29', 'directrice'),
	(5, 2, 'PETIT', 'Amandine', 'F', '10, rue du chateau', '67000', 'Strasbourg', 'FRANCE', '0688453295', 'petit.amandine@gmail.com', '1975-03-28', 'aide cuisinière'),
	(6, 2, 'PRATT', 'Capucine', 'F', '2, avenue du manoir', '67800', 'Hoenheim', 'FRANCE', '0644882573', 'pratt.capucine@gmail.com', '2000-03-23', 'gestionnaire'),
	(7, 2, 'PIVIN', 'Justine', 'F', '56, rue du palais', '67200', 'Strasbourg', 'FRANCE', '0645896634', 'pivin.justine@gmail.com', '1982-11-11', 'assistante'),
	(8, 3, 'FISHER', 'Aronne', 'F', '2, rue des poules', '67000', 'Strasbourg', 'FRANCE', '0644129983', 'fisher.aronne@gmail.com', '1969-01-25', 'cuisinière'),
	(9, 3, 'FAGNAN', 'Yvonne', 'F', '12, impasse des lapins', '67000', 'Strasbourg', 'FRANCE', '0622458639', 'fagnan.yvonne@gmail.com', '1997-09-17', 'directrice'),
	(10, 3, 'FRIGON', 'Simonne', 'F', '35, rue des chats', '67800', 'Hoenheim', 'FRANCE', '0622781966', 'frigon.simonne@gmail.com', '1992-11-29', 'gestionnaire'),
	(11, 3, 'FORD', 'Deonne', 'F', '63, bvd des chiens', '67000', 'Strasbourg', 'FRANCE', '0633221784', 'ford.deonne@gmail.com', '1986-12-12', 'assistante'),
	(12, 3, 'FAVREAU', 'Lavonne', 'F', '14, rue du hérisson', '67600', 'Ebersheim', 'FRANCE', '0655128961', 'favreau.lavonne@gmail.com', '1998-09-27', 'aide cuisinière'),
	(13, 3, 'FRECHET', 'Evonne', 'F', '156, rue de la tortue', '67500', 'Haguenau', 'FRANCE', '0658731542', 'frechet.evonne@gmail.com', '1980-12-24', 'aide cuisinière'),
	(14, NULL, 'IDRIS', 'Claire', 'F', '2, rue du général Leclerc', '67000', 'Strasbourg', 'FRANCE', '0645258563', 'idris.claire@gmail.com', '1976-04-02', 'gérante'),
	(15, NULL, 'DUPONT', 'Francis', 'M', '13, rue du colonel Poivre', '67000', 'Strasbourg', 'FRANCE', '0622448865', 'dupont.francis@gmail.com', '1985-06-06', 'restaurateur'),
	(16, NULL, 'LORIENT', 'Gérard', 'M', '1, impasse du sergent Bonnet', '67000', 'Strasbourg', 'FRANCE', '0611557893', 'lorient.gerard@gmail.com', '1974-11-11', 'technicien'),
	(17, NULL, 'ARNOLD', 'Gisela', 'F', '2, rue du soldat inconnu', '67800', 'Hoenheim', 'FRANCE', '0666458734', 'arnold.gisela@gmail.com', '2002-06-23', 'gérante'),
	(18, NULL, 'BLONDIN', 'Armelle', 'F', '14, rue du maréchal Foch', '67000', 'Strasbourg', 'FRANCE', '0645859532', 'blondin.armelle@gmail.com', '1991-12-22', 'infirmière');

-- Listage de la structure de table sfformagestion. categorie
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.categorie : ~3 rows (environ)
INSERT INTO `categorie` (`id`, `nom_categorie`) VALUES
	(1, 'La petite enfance'),
	(2, 'La restauration collective'),
	(3, 'La restauration commerciale');

-- Listage de la structure de table sfformagestion. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table sfformagestion.doctrine_migration_versions : ~0 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20250220023741', '2025-02-20 02:38:20', 687);

-- Listage de la structure de table sfformagestion. encadrement
CREATE TABLE IF NOT EXISTS `encadrement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formateur_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `type_referent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF024B09155D8F51` (`formateur_id`),
  KEY `IDX_BF024B09613FECDF` (`session_id`),
  CONSTRAINT `FK_BF024B09155D8F51` FOREIGN KEY (`formateur_id`) REFERENCES `formateur` (`id`),
  CONSTRAINT `FK_BF024B09613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.encadrement : ~16 rows (environ)
INSERT INTO `encadrement` (`id`, `formateur_id`, `session_id`, `type_referent`) VALUES
	(1, 1, 1, 'administratif'),
	(2, 5, 1, 'pédagogique'),
	(3, 1, 2, 'administratif'),
	(4, 2, 2, 'pédagogique'),
	(5, 1, 3, 'administratif'),
	(6, 3, 3, 'pédagogique'),
	(7, 1, 4, 'administratif'),
	(8, 3, 4, 'pédagogique'),
	(9, 1, 5, 'administratif'),
	(10, 3, 5, 'pédagogique'),
	(11, 1, 6, 'administratif'),
	(12, 5, 6, 'pédagogique'),
	(13, 1, 7, 'administratif'),
	(14, 4, 7, 'pédagogique'),
	(15, 1, 8, 'administratif'),
	(16, 5, 8, 'pédagogique');

-- Listage de la structure de table sfformagestion. entreprise
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `representant_id` int NOT NULL,
  `raison_sociale` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut_juri` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_siege` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal_siege` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_siege` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays_siege` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_siret` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_rcs` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_tva` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_decla_activite` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefecture_region` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tribunal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D19FA606C4A52F0` (`representant_id`),
  CONSTRAINT `FK_D19FA606C4A52F0` FOREIGN KEY (`representant_id`) REFERENCES `representant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.entreprise : ~1 rows (environ)
INSERT INTO `entreprise` (`id`, `representant_id`, `raison_sociale`, `statut_juri`, `adresse_siege`, `code_postal_siege`, `ville_siege`, `pays_siege`, `tel`, `email`, `num_siret`, `num_rcs`, `num_tva`, `num_decla_activite`, `prefecture_region`, `tribunal`, `logo`) VALUES
	(1, 1, 'Forma\'Toque', 'SARL', '3, rue des Vosges', '67800', 'Hoenheim', 'FRANCE', '0618613212', 'varol.diet@gmail.com', '910 655 489 00011', 'Strasbourg B 910 655 489', 'FR85910655489', '44670706067', 'région GRAND EST', 'Tribunal judiciaire de Strasbourg', 'public/uploads/images/logo.jpg');

-- Listage de la structure de table sfformagestion. formateur
CREATE TABLE IF NOT EXISTS `formateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `societe_id` int DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ED767E4FFCF77503` (`societe_id`),
  CONSTRAINT `FK_ED767E4FFCF77503` FOREIGN KEY (`societe_id`) REFERENCES `societe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.formateur : ~5 rows (environ)
INSERT INTO `formateur` (`id`, `societe_id`, `nom`, `prenom`, `sexe`, `tel`, `email`, `statut`) VALUES
	(1, NULL, 'VAROL', 'Nalan', 'F', '0612485963', 'varol.diet@gmail.com', 'salarié'),
	(2, NULL, 'VERMET', 'Hélian', 'M', '0666551873', 'vermet.helian@gmail.com', 'salarié'),
	(3, NULL, 'VITARD', 'Izan', 'F', '0655235548', 'vitard.izan@gmail.com', 'salarié'),
	(4, NULL, 'VOYER', 'Noan', 'F', '0655229873', 'voyer.noan@gmail.com', 'salarié'),
	(5, 4, 'VASSEUR', 'Anne', 'F', '0645123597', 'vasseur.anne@gmail.com', 'salarié');

-- Listage de la structure de table sfformagestion. formation
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `programme_id` int NOT NULL,
  `nom_formation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalites` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_maj` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_404021BF62BB7AEE` (`programme_id`),
  CONSTRAINT `FK_404021BF62BB7AEE` FOREIGN KEY (`programme_id`) REFERENCES `programme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.formation : ~10 rows (environ)
INSERT INTO `formation` (`id`, `programme_id`, `nom_formation`, `modalites`, `type`, `date_maj`) VALUES
	(1, 1, '[COL][01][DIS][INTER] Bonnes pratiques d\'hygiène (B.P.H.) en restauration collective, introduction à la méthode H.A.C.C.P.', 'distanciel', 'INTER', '2025-02-20'),
	(2, 1, '[COL][01][DIS][INTRA] Bonnes pratiques d\'hygiène (B.P.H.) en restauration collective, introduction à la méthode H.A.C.C.P.', 'distanciel', 'INTRA', '2025-02-20'),
	(3, 2, '[COL][01][PRE][INTER] Bonnes pratiques d\'hygiène (B.P.H.) en restauration collective, introduction à la méthode H.A.C.C.P.', 'présentiel', 'INTER', '2025-02-20'),
	(4, 2, '[COL][01][PRE][INTRA] Bonnes pratiques d\'hygiène (B.P.H.) en restauration collective, introduction à la méthode H.A.C.C.P.', 'présentiel', 'INTRA', '2025-02-20'),
	(5, 3, '[ENF][01][DIS][INTER] Alimentation du jeune enfant de 0 à 3 ans et élaboration des menus en collectivité', 'distanciel', 'INTER', '2025-02-20'),
	(6, 3, '[ENF][01][DIS][INTRA] Alimentation du jeune enfant de 0 à 3 ans et élaboration des menus en collectivité', 'distanciel', 'INTRA', '2025-02-20'),
	(7, 4, '[ENF][01][PRE][INTER] Alimentation du jeune enfant de 0 à 3 ans et élaboration des menus en collectivité', 'présentiel', 'INTER', '2025-02-20'),
	(8, 4, '[ENF][01][PRE][INTRA] Alimentation du jeune enfant de 0 à 3 ans et élaboration des menus en collectivité', 'présentiel', 'INTRA', '2025-02-20'),
	(9, 5, '[ENF][02][PRE][INTER] Bases de l\'alimentation du jeune enfant, de la théorie à la pratique', 'présentiel', 'INTER', '2025-02-20'),
	(10, 5, '[ENF][02][PRE][INTRA] Bases de l\'alimentation du jeune enfant, de la théorie à la pratique', 'présentiel', 'INTRA', '2025-02-20');

-- Listage de la structure de table sfformagestion. inscription
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apprenant_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5E90F6D6C5697D6D` (`apprenant_id`),
  KEY `IDX_5E90F6D6613FECDF` (`session_id`),
  CONSTRAINT `FK_5E90F6D6613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  CONSTRAINT `FK_5E90F6D6C5697D6D` FOREIGN KEY (`apprenant_id`) REFERENCES `apprenant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.inscription : ~9 rows (environ)
INSERT INTO `inscription` (`id`, `apprenant_id`, `session_id`, `prix`) VALUES
	(1, 1, 1, 300),
	(2, 2, 1, 300),
	(3, 3, 1, 300),
	(4, 4, 1, 300),
	(5, 7, 1, 250),
	(6, 5, 1, 250),
	(7, 13, 1, 300),
	(8, 17, 1, 150),
	(9, 18, 1, 150);

-- Listage de la structure de table sfformagestion. messenger_messages
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.messenger_messages : ~0 rows (environ)

-- Listage de la structure de table sfformagestion. module
CREATE TABLE IF NOT EXISTS `module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categorie_id` int NOT NULL,
  `nom_module` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_C242628BCF5E72D` (`categorie_id`),
  CONSTRAINT `FK_C242628BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.module : ~17 rows (environ)
INSERT INTO `module` (`id`, `categorie_id`, `nom_module`, `description`) VALUES
	(1, 2, '[COL][01][M1]', 'Sécurité alimentaire : les notions et principes essentiels d\'hygiène alimentaire, la réglementation'),
	(2, 2, '[COL][01][M2]', 'Les bonnes pratiques d\'hygiène'),
	(3, 2, '[COL][01][M3]', 'Les procédures et documents de traçabilité, l\'archivage'),
	(4, 2, '[COL][01][M4]', 'La méthode H.A.C.C.P. (analyse des dangers et points critiques pour leur maîtrise)'),
	(5, 2, '[COL][01][M5]', 'Gestion des non-conformités, des alertes, des retraits et des rappels'),
	(6, 1, '[ENF][01][M1]', 'Une croissance rapide qui justifie de besoins spécifiques chez le jeune enfant'),
	(7, 1, '[ENF][01][M2]', 'Les besoins spécifiques du jeune enfant entre 0 et 3 ans'),
	(8, 1, '[ENF][01][M3]', 'La diversification alimentaire'),
	(9, 1, '[ENF][01][M4]', 'Les allergies alimentaires'),
	(10, 1, '[ENF][01][M5]', 'L\'élaboration des menus et des repas'),
	(11, 1, '[ENF][01][M6]', 'Éviter les principales \'erreurs\' alimentaires'),
	(12, 1, '[ENF][02][M1]', 'Quelle alimentation pour le bébé ?'),
	(13, 1, '[ENF][02][M2]', 'Les équivalences alimentaires : mesures et quantités'),
	(14, 1, '[ENF][02][M3]', 'Ce qu\'il faut en cuisine'),
	(15, 1, '[ENF][02][M4]', 'Découverte des modes de cuisson les plus adaptés selon les plats et les aliments, intérêts nutritionnels'),
	(16, 1, '[ENF][02][M5]', 'Découverte des différentes techniques de base culinaire pour l\'élaboration des plats et des desserts'),
	(17, 1, '[ENF][02][M6]', 'Réalisation pratique en cuisine');

-- Listage de la structure de table sfformagestion. planification
CREATE TABLE IF NOT EXISTS `planification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` int DEFAULT NULL,
  `module_id` int DEFAULT NULL,
  `duree` int NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FFC02E1B613FECDF` (`session_id`),
  KEY `IDX_FFC02E1BAFC2B591` (`module_id`),
  CONSTRAINT `FK_FFC02E1B613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  CONSTRAINT `FK_FFC02E1BAFC2B591` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.planification : ~5 rows (environ)
INSERT INTO `planification` (`id`, `session_id`, `module_id`, `duree`, `date_debut`, `date_fin`) VALUES
	(1, 1, 1, 120, '2025-02-20 09:00:00', '2025-02-20 11:00:00'),
	(2, 1, 2, 60, '2025-02-20 11:00:00', '2025-02-20 12:00:00'),
	(3, 1, 3, 60, '2025-02-20 13:00:00', '2025-02-20 14:00:00'),
	(4, 1, 4, 120, '2025-02-20 14:00:00', '2025-02-20 16:00:00'),
	(5, 1, 5, 60, '2025-02-20 16:00:00', '2025-02-20 17:00:00');

-- Listage de la structure de table sfformagestion. programme
CREATE TABLE IF NOT EXISTS `programme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_programme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_programme` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `objectifs_peda` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenus_peda` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aptitude` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `competences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delai_acces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moyens_enca` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `methodes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moyens_tech` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalites_acces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalites_eval` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessibilite` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taux_reussite` double NOT NULL,
  `debouches` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cible` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_maj` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.programme : ~5 rows (environ)
INSERT INTO `programme` (`id`, `nom_programme`, `ref_programme`, `prerequis`, `objectifs_peda`, `contenus_peda`, `aptitude`, `competences`, `delai_acces`, `moyens_enca`, `methodes`, `moyens_tech`, `niveau`, `modalites_acces`, `modalites_eval`, `accessibilite`, `taux_reussite`, `debouches`, `cible`, `date_maj`) VALUES
	(1, '[COL][01][DIS] Bonnes pratiques d\'hygiène (B.P.H.) en restauration collective, introduction à la méthode H.A.C.C.P.', '[COL][01][DIS]', 'Aucun prérequis lié aux connaissances n’est nécessaire. Compréhension de la langue française orale et écrite.', 'À l\'issue de la formation, le stagiaire est en mesure de :\r\nConnaître et s’approprier les cadres réglementaires français et européen, liés à la sécurité alimentaire applicable dans sa structure (restauration collective).\r\nDécrire le monde bactérien et ses conditions de vie.\r\nDéfinir et identifier les dangers physique, chimique et biologique en cuisine, afin de les maîtriser.\r\nAppliquer les bonnes pratiques d’hygiène pour maîtriser l’hygiène des repas préparés.\r\nComprendre et savoir mettre en œuvre la méthode H.A.C.C.P. afin de prévenir les dangers et les maîtriser.\r\nMettre en œuvre le système de traçabilité des repas préparés et servis en restauration collective, depuis l’achat des denrées jusqu’à l’assiette.\r\nRepérer les non-conformités et mettre en place les actions correctives.', 'Ce programme présente les titres généraux de la formation. Un programme de formation plus détaillé est disponible en téléchargement dans les ressources pédagogiques de votre session de formation.\r\nSécurité alimentaire : les notions et principes essentiels d\'hygiène alimentaire, la réglementation\r\nLes bonnes pratiques d\'hygiène\r\n-L\'hygiène du personnel\r\n-L\'hygiène des locaux, des équipements et du matériel\r\n-Les bonnes pratiques d\'hygiène\r\n-Plan de lutte contre les nuisibles (nom et coordonnées de la société, contrat, plan de localisation des pièges, rapports de visite, etc.)\r\n-L\'approvisionnement en eau\r\n-La maîtrise des températures\r\nLes procédures et documents de traçabilité, l\'archivage\r\nLa méthode H.A.C.C.P. (analyse des dangers et points critiques pour leur maîtrise)\r\nGestion des non-conformités, des alertes, des retraits et des rappels', 'Capacité d\'appliquer les savoirs et les savoir-faire définis dans les objectifs pédagogiques.', 'Capacité avérée de mettre en œuvre les savoirs, les savoir faire et les dispositions personnelles en situation de travail pour le développement professionnel.', 'Entre 1 et 3 mois dans la limite des places disponibles, selon un calendrier préétabli.', 'formation synchrone à distance, en classe virtuelle.', 'La pédagogie est prioritairement active et participative par le questionnement et l’analyse réflexive : description et analyse des pratiques professionnelles afin de les améliorer, trouver des solutions aux questions posées. \r\n\r\nCette méthode favorise les échanges entre les apprenants et l’interaction avec le formateur.\r\n\r\nMéthode didactique pour certaines notions théoriques : support de présentation PPT, projection de vidéo.\r\n\r\nExercices d’apprentissage : mise en situation, analyse des pratiques professionnelles concrètes, analyse de documents, etc.', '•	Ordinateur équipé d’une webcam, d’un microphone et d’un système audio.\r\n•	Plate-forme LMS « Agora Infinity », couplée à une connexion internet de bonne qualité.\r\n•	Téléphone portable ou smartphone.\r\n•	Matériel nécessaire à la prise de note.', 'Aucun niveau d\'étude n\'est demandé.\r\nAucune expérience professionnelle n\'est demandée.', 'Inscription à la formation à la demande de l\'entreprise bénéficiaire ou / et du bénéficiaire.', 'L’évaluation des acquis est assurée en cours de formation et en fin de formation, de plusieurs manières.\r\n\r\nEn cours de formation, la formatrice vérifie la bonne compréhension du contenu pédagogique par le stagiaire grâce à :\r\n•	Un questionnement fréquent pendant la formation pour garder le stagiaire actif.\r\n•	Des exercices d’apprentissage pour mettre l’accent sur les notions essentielles.\r\n•	Des mises en situation pour ancrer la formation dans les réalités professionnelles du stagiaire.\r\n\r\nEn fin de formation, la formatrice soumet le stagiaire à :\r\n•	Un quiz d’évaluation pour confirmer la bonne assimilation des connaissances.', 'En cas de nécessité d’adapter la formation liée à un handicap particulier, veuillez contacter Madame Nalan VAROL, votre référente handicap, au 06.18.61.32.12. et consulter les sites suivants : https://www.agefiph.fr/ et https://adapeipapillonsblancs.alsace/ : un aménagement spécifique pourra être proposé en fonction de la demande du stagiaire.', 100, 'Cette formation permet aux participants d\'améliorer leurs compétences professionnelles dans le domaine de la restauration collective.', 'Les professionnels de structures ayant une activité de restauration collective.', '2025-02-20'),
	(2, '[COL][01][PRE] Bonnes pratiques d\'hygiène (B.P.H.) en restauration collective, introduction à la méthode H.A.C.C.P.', '[COL][01][PRE]', 'Aucun prérequis lié aux connaissances n’est nécessaire. Compréhension de la langue française orale et écrite.', 'À l\'issue de la formation, le stagiaire est en mesure de :\r\nConnaître et s’approprier les cadres réglementaires français et européen, liés à la sécurité alimentaire applicable dans sa structure (restauration collective).\r\nDécrire le monde bactérien et ses conditions de vie.\r\nDéfinir et identifier les dangers physique, chimique et biologique en cuisine, afin de les maîtriser.\r\nAppliquer les bonnes pratiques d’hygiène pour maîtriser l’hygiène des repas préparés.\r\nComprendre et savoir mettre en œuvre la méthode H.A.C.C.P. afin de prévenir les dangers et les maîtriser.\r\nMettre en œuvre le système de traçabilité des repas préparés et servis en restauration collective, depuis l’achat des denrées jusqu’à l’assiette.\r\nRepérer les non-conformités et mettre en place les actions correctives.', 'Ce programme présente les titres généraux de la formation. Un programme de formation plus détaillé est disponible en téléchargement dans les ressources pédagogiques de votre session de formation.\r\nSécurité alimentaire : les notions et principes essentiels d\'hygiène alimentaire, la réglementation\r\nLes bonnes pratiques d\'hygiène\r\n-L\'hygiène du personnel\r\n-L\'hygiène des locaux, des équipements et du matériel\r\n-Les bonnes pratiques d\'hygiène\r\n-Plan de lutte contre les nuisibles (nom et coordonnées de la société, contrat, plan de localisation des pièges, rapports de visite, etc.)\r\n-L\'approvisionnement en eau\r\n-La maîtrise des températures\r\nLes procédures et documents de traçabilité, l\'archivage\r\nLa méthode H.A.C.C.P. (analyse des dangers et points critiques pour leur maîtrise)\r\nGestion des non-conformités, des alertes, des retraits et des rappels', 'Capacité d\'appliquer les savoirs et les savoir-faire définis dans les objectifs pédagogiques.', 'Capacité avérée de mettre en œuvre les savoirs, les savoir faire et les dispositions personnelles en situation de travail pour le développement professionnel.', 'Entre 1 et 3 mois dans la limite des places disponibles, selon un calendrier préétabli.', 'formation synchrone en présence, en salle de formation.', 'La pédagogie est prioritairement active et participative par le questionnement et l’analyse réflexive : description et analyse des pratiques professionnelles afin de les améliorer, trouver des solutions aux questions posées. ', '•	Salle de formation.', 'Aucun niveau d\'étude n\'est demandé.', 'Néant', 'L’évaluation des acquis est assurée en cours de formation et en fin de formation, de plusieurs manières.', 'En amont de la formation et selon les besoins identifiés, nous nous assurons que les locaux utilisés pour la formation répondent aux normes d’accès et d’accueil des personnes en situation de handicap. En cas de nécessité d’adapter la formation liée à un handicap particulier, veuillez contacter Madame Nalan VAROL, votre référente handicap, au 06.18.61.32.12. et consulter les sites suivants : https://www.agefiph.fr/ et https://adapeipapillonsblancs.alsace/ : un aménagement spécifique pourra être proposé en fonction de la demande du stagiaire.', 100, 'Cette formation permet aux participants d\'améliorer leurs compétences professionnelles dans le domaine de la restauration collective.', 'Les professionnels de structures ayant une activité de restauration collective.', '2025-02-20'),
	(3, '[ENF][01][DIS] Alimentation du jeune enfant de 0 à 3 ans et élaboration des menus en collectivité', '[ENF][01][DIS]', 'Aucun prérequis lié aux connaissances n’est nécessaire. Compréhension de la langue française orale et écrite.', 'À l\'issue de la formation, le stagiaire est en mesure de :\r\nMaîtriser les besoins nutritionnels du jeune enfant de 0 à 3 ans, afin de proposer des repas adaptés à ses besoins physiologiques.\r\nMettre en place les différentes étapes de la diversification alimentaire pour l’éducation au goût et la gestion des allergies.\r\nDéfinir la néophobie alimentaire et comprendre ses enjeux, afin d’adopter une attitude d’accompagnement de l’enfant dans sa problématique.\r\nSavoir prendre en charge les allergies alimentaires et mettre en place un projet d’accueil individualisé (P.A.I.).\r\nÉlaborer des menus conformes aux recommandations nutritionnelles pour le jeune enfant.\r\nDécrire les principaux modes de cuisson pour la réalisation de repas adaptés au jeune enfant.\r\nRepérer les principales ‘erreurs’ alimentaires et y remédier.', 'Ce programme présente les titres généraux de la formation. Un programme de formation plus détaillé est disponible en téléchargement dans les ressources pédagogiques de votre session de formation.\r\nUne croissance rapide qui justifie de besoins spécifiques chez le jeune enfant\r\nLes besoins spécifiques du jeune enfant entre 0 et 3 ans\r\nLa diversification alimentaire\r\nLes allergies alimentaires\r\nL\'élaboration des menus et des repas\r\nÉviter les principales \'erreurs\' alimentaires', 'Capacité d\'appliquer les savoirs et les savoir-faire définis dans les objectifs pédagogiques.', 'Capacité avérée de mettre en œuvre les savoirs, les savoir faire et les dispositions personnelles en situation de travail pour le développement professionnel.', 'Entre 1 et 3 mois dans la limite des places disponibles, selon un calendrier préétabli.', 'formation synchrone à distance, en classe virtuelle.', 'La pédagogie est prioritairement active et participative par le questionnement et l’analyse réflexive : description et analyse des pratiques professionnelles afin de les améliorer, trouver des solutions aux questions posées. ', '•	Ordinateur équipé d’une webcam, d’un microphone et d’un système audio.', 'Aucun niveau d\'étude n\'est demandé.', 'Inscription à la formation à la demande de l\'entreprise bénéficiaire ou / et du bénéficiaire.', 'L’évaluation des acquis est assurée en cours de formation et en fin de formation, de plusieurs manières.', 'En cas de nécessité d’adapter la formation liée à un handicap particulier, veuillez contacter Madame Nalan VAROL, votre référente handicap, au 06.18.61.32.12. et consulter les sites suivants : https://www.agefiph.fr/ et https://adapeipapillonsblancs.alsace/ : un aménagement spécifique pourra être proposé en fonction de la demande du stagiaire.', 100, 'Cette formation permet aux participants d\'améliorer leurs compétences professionnelles dans le domaine de la restauration collective de la petite enfance.', 'Les professionnels de structures de la petite enfance ayant une activité de restauration collective (confection et/ou service des repas).', '2025-02-20'),
	(4, '[ENF][01][PRE] Alimentation du jeune enfant de 0 à 3 ans et élaboration des menus en collectivité', '[ENF][01][PRE]', 'Aucun prérequis lié aux connaissances n’est nécessaire. Compréhension de la langue française orale et écrite.', 'À l\'issue de la formation, le stagiaire est en mesure de :\r\nMaîtriser les besoins nutritionnels du jeune enfant de 0 à 3 ans, afin de proposer des repas adaptés à ses besoins physiologiques.\r\nMettre en place les différentes étapes de la diversification alimentaire pour l’éducation au goût et la gestion des allergies.\r\nDéfinir la néophobie alimentaire et comprendre ses enjeux, afin d’adopter une attitude d’accompagnement de l’enfant dans sa problématique.\r\nSavoir prendre en charge les allergies alimentaires et mettre en place un projet d’accueil individualisé (P.A.I.).\r\nÉlaborer des menus conformes aux recommandations nutritionnelles pour le jeune enfant. \r\nDécrire les principaux modes de cuisson pour la réalisation de repas adaptés au jeune enfant.\r\nRepérer les principales ‘erreurs’ alimentaires et y remédier.', 'Ce programme présente les titres généraux de la formation. Un programme de formation plus détaillé est disponible en téléchargement dans les ressources pédagogiques de votre session de formation.\r\nUne croissance rapide qui justifie de besoins spécifiques chez le jeune enfant\r\nLes besoins spécifiques du jeune enfant entre 0 et 3 ans\r\nLa diversification alimentaire\r\nLes allergies alimentaires\r\nL\'élaboration des menus et des repas\r\nÉviter les principales \'erreurs\' alimentaires', 'Capacité d\'appliquer les savoirs et les savoir-faire définis dans les objectifs pédagogiques.', 'Capacité avérée de mettre en œuvre les savoirs, les savoir faire et les dispositions personnelles en situation de travail pour le développement professionnel.', 'Entre 1 et 3 mois dans la limite des places disponibles, selon un calendrier préétabli.', 'formation synchrone en présence, en salle de formation.', 'La pédagogie est prioritairement active et participative par le questionnement et l’analyse réflexive : description et analyse des pratiques professionnelles afin de les améliorer, trouver des solutions aux questions posées. ', '•	Salle de formation.', 'Aucun niveau d\'étude n\'est demandé.', 'Néant', 'L’évaluation des acquis est assurée en cours de formation et en fin de formation, de plusieurs manières.', 'En amont de la formation et selon les besoins identifiés, nous nous assurons que les locaux utilisés pour la formation répondent aux normes d’accès et d’accueil des personnes en situation de handicap. En cas de nécessité d’adapter la formation liée à un handicap particulier, veuillez contacter Madame Nalan VAROL, votre référente handicap, au 06.18.61.32.12. et consulter les sites suivants : https://www.agefiph.fr/ et https://adapeipapillonsblancs.alsace/ : un aménagement spécifique pourra être proposé en fonction de la demande du stagiaire.', 100, 'Cette formation permet aux participants d\'améliorer leurs compétences professionnelles dans le domaine de la restauration collective de la petite enfance.', 'Les professionnels de structures de la petite enfance ayant une activité de restauration collective (confection et/ou service des repas).', '2025-02-20'),
	(5, '[ENF][02][PRE] Bases de l\'alimentation du jeune enfant, de la théorie à la pratique', '[ENF][02][PRE]', 'Aucun prérequis lié aux connaissances n’est nécessaire. Compréhension de la langue française orale et écrite.', 'À l\'issue de la formation, le stagiaire est en mesure de :\r\nS’approprier les besoins alimentaires du jeune enfant et les traduire en repas équilibrés et diversifiés.\r\nÉlaborer des menus en fonction des âges et adapter les bonnes textures lors de la préparation des repas.\r\nUtiliser les équivalences alimentaires dans sa pratique pour s’affranchir des pesées.\r\nApporter de la diversité et du goût aux repas préparés en variant les modes de cuisson, les recettes, les épices et les aromates.\r\nEmployer les différents modes de cuisson lors de la préparation des repas et décrire leurs avantages nutritionnels.\r\nDécrire les principales bases de recettes et les appliquer à la confection de repas adaptés aux besoins du jeune enfant.', 'Ce programme présente les titres généraux de la formation. Un programme de formation plus détaillé est disponible en téléchargement dans les ressources pédagogiques de votre session de formation.\r\nQuelle alimentation pour le bébé ?\r\nLes équivalences alimentaires : mesures et quantités\r\nCe qu\'il faut en cuisine\r\nDécouverte des modes de cuisson les plus adaptés selon les plats et les aliments, intérêts nutritionnels\r\nDécouverte des différentes techniques de base culinaire pour l\'élaboration des plats et des desserts\r\nRéalisation pratique en cuisine', 'Capacité d\'appliquer les savoirs et les savoir-faire définis dans les objectifs pédagogiques.', 'Capacité avérée de mettre en œuvre les savoirs, les savoir faire et les dispositions personnelles en situation de travail pour le développement professionnel.', 'Entre 1 et 3 mois dans la limite des places disponibles, selon un calendrier préétabli.', 'formation synchrone en présence, en salle de formation.', 'La pédagogie est prioritairement active et participative par le questionnement et l’analyse réflexive : description et analyse des pratiques professionnelles afin de les améliorer, trouver des solutions aux questions posées. ', '•	Salle de formation.', 'Aucun niveau d\'étude n\'est demandé.', 'Néant', 'L’évaluation des acquis est assurée en cours de formation et en fin de formation, de plusieurs manières.', 'En amont de la formation et selon les besoins identifiés, nous nous assurons que les locaux utilisés pour la formation répondent aux normes d’accès et d’accueil des personnes en situation de handicap. En cas de nécessité d’adapter la formation liée à un handicap particulier, veuillez contacter Madame Nalan VAROL, votre référente handicap, au 06.18.61.32.12. et consulter les sites suivants : https://www.agefiph.fr/ et https://adapeipapillonsblancs.alsace/ : un aménagement spécifique pourra être proposé en fonction de la demande du stagiaire.', 100, 'Cette formation permet aux participants d\'améliorer leurs compétences professionnelles dans le domaine de la restauration collective de la petite enfance.', 'Les professionnels de structures de la petite enfance ayant une activité de restauration collective (confection et/ou service des repas).', '2025-02-20');

-- Listage de la structure de table sfformagestion. questionnaire
CREATE TABLE IF NOT EXISTS `questionnaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url_stockage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_questionnaire` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.questionnaire : ~9 rows (environ)
INSERT INTO `questionnaire` (`id`, `url_stockage`, `nom_questionnaire`) VALUES
	(1, 'public/uploads/questionnaires/[COL][01]questionnaire_préformation.pdf', '[COL][01]questionnaire_préformation.pdf'),
	(2, 'public/uploads/questionnaires/[COL][01]questionnaire_chaud.pdf', '[COL][01]questionnaire_chaud.pdf'),
	(3, 'public/uploads/questionnaires/[COL][01]questionnaire_froid.pdf', '[COL][01]questionnaire_froid.pdf'),
	(4, 'public/uploads/questionnaires/[ENF][01]questionnaire_préformation.pdf', '[ENF][01]questionnaire_préformation.pdf'),
	(5, 'public/uploads/questionnaires/[ENF][01]questionnaire_chaud.pdf', '[ENF][01]questionnaire_chaud.pdf'),
	(6, 'public/uploads/questionnaires/[ENF][01]questionnaire_froid.pdf', '[ENF][01]questionnaire_froid.pdf'),
	(7, 'public/uploads/questionnaires/[ENF][02]questionnaire_préformation.pdf', '[ENF][02]questionnaire_préformation.pdf'),
	(8, 'public/uploads/questionnaires/[ENF][02]questionnaire_chaud.pdf', '[ENF][02]questionnaire_chaud.pdf'),
	(9, 'public/uploads/questionnaires/[ENF][02]questionnaire_froid.pdf', '[ENF][02]questionnaire_froid.pdf');

-- Listage de la structure de table sfformagestion. representant
CREATE TABLE IF NOT EXISTS `representant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fonction` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tampon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.representant : ~1 rows (environ)
INSERT INTO `representant` (`id`, `nom`, `prenom`, `sexe`, `fonction`, `tampon`) VALUES
	(1, 'VAROL', 'Nalan', 'F', 'dirigeante', 'public/uploads/images/tampon.jpg');

-- Listage de la structure de table sfformagestion. responsabilite
CREATE TABLE IF NOT EXISTS `responsabilite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `responsable_id` int DEFAULT NULL,
  `societe_id` int DEFAULT NULL,
  `type_responsable` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4EA0982053C59D72` (`responsable_id`),
  KEY `IDX_4EA09820FCF77503` (`societe_id`),
  CONSTRAINT `FK_4EA0982053C59D72` FOREIGN KEY (`responsable_id`) REFERENCES `responsable` (`id`),
  CONSTRAINT `FK_4EA09820FCF77503` FOREIGN KEY (`societe_id`) REFERENCES `societe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.responsabilite : ~10 rows (environ)
INSERT INTO `responsabilite` (`id`, `responsable_id`, `societe_id`, `type_responsable`) VALUES
	(1, 1, 1, 'légal'),
	(2, 2, 1, 'administratif'),
	(3, 2, 1, 'RH'),
	(4, 3, 2, 'légal'),
	(5, 3, 2, 'administratif'),
	(6, 3, 2, 'RH'),
	(7, 5, 3, 'légal'),
	(8, 6, 3, 'administratif'),
	(9, 4, 3, 'RH'),
	(10, 7, 4, 'légal');

-- Listage de la structure de table sfformagestion. responsable
CREATE TABLE IF NOT EXISTS `responsable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fonction` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.responsable : ~7 rows (environ)
INSERT INTO `responsable` (`id`, `nom`, `prenom`, `sexe`, `tel`, `email`, `fonction`) VALUES
	(1, 'MARTINEZ', 'Adela', 'F', '0645856623', 'martinez.adela@gmail.com', 'directeur'),
	(2, 'MORALES', 'Barbara', 'F', '0655984333', 'morales.barbara@gmail.com', 'gestionnaire'),
	(3, 'PEREZ', 'Angela', 'F', '0688458816', 'perez.angela@gmail.com', 'gérante'),
	(4, 'FUENTES', 'Clara', 'F', '0622452293', 'fuentes.clara@gmail.com', 'assistante RH'),
	(5, 'FRANCO', 'Claudio', 'M', '0655487753', 'franco.claudio@gmail.com', 'directeur'),
	(6, 'FUEGO', 'Felicia', 'F', '0655478833', 'fuego.felicia@gmail.com', 'secrétaire de direction'),
	(7, 'SAUMUR', 'Alexis', 'M', '0666784239', 'saumur.alexis@gmail.com', 'gérant');

-- Listage de la structure de table sfformagestion. session
CREATE TABLE IF NOT EXISTS `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formation_id` int DEFAULT NULL,
  `titre_session` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accroche` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nb_places` int NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D044D5D45200282E` (`formation_id`),
  CONSTRAINT `FK_D044D5D45200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.session : ~8 rows (environ)
INSERT INTO `session` (`id`, `formation_id`, `titre_session`, `accroche`, `nb_places`, `date_debut`, `date_fin`) VALUES
	(1, 1, '[COL][01][DIS][INTER]', NULL, 10, '2025-02-20 09:00:00', '2025-02-20 17:00:00'),
	(2, 1, '[COL][01][DIS][INTER]', NULL, 10, '2025-02-24 09:00:00', '2025-02-24 17:00:00'),
	(3, 10, '[ENF][02][PRE][INTRA]', NULL, 8, '2025-03-05 09:00:00', '2025-03-05 17:00:00'),
	(4, 9, '[ENF][02][PRE][INTER]', NULL, 10, '2025-03-15 09:00:00', '2025-03-15 17:00:00'),
	(5, 8, '[ENF][01][PRE][INTRA]', NULL, 8, '2025-03-17 09:00:00', '2025-03-17 17:00:00'),
	(6, 6, '[ENF][01][DIS][INTRA]', NULL, 8, '2025-03-28 09:00:00', '2025-03-28 17:00:00'),
	(7, 5, '[ENF][01][DIS][INTER]', NULL, 10, '2025-04-04 09:00:00', '2025-04-04 17:00:00'),
	(8, 3, '[COL][01][PRE][INTER]', NULL, 6, '2025-04-10 09:00:00', '2025-04-10 17:00:00');

-- Listage de la structure de table sfformagestion. societe
CREATE TABLE IF NOT EXISTS `societe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut_juri` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_siege` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal_siege` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_siege` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays_siege` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_fac` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal_fac` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_fac` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays_fac` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_siret` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.societe : ~4 rows (environ)
INSERT INTO `societe` (`id`, `raison_sociale`, `statut_juri`, `adresse_siege`, `code_postal_siege`, `ville_siege`, `pays_siege`, `adresse_fac`, `code_postal_fac`, `ville_fac`, `pays_fac`, `tel`, `email`, `num_siret`) VALUES
	(1, 'Les Malicettes', 'SARL', '10, rue de l\'argent', '67000', 'Strasbourg', 'FRANCE', '10, rue de l\'argent', '67000', 'Strasbourg', 'FRANCE', '0699881453', 'les.malicettes@gmail.com', '553 279 879 00672'),
	(2, 'Les Pralines', 'SARL', '22, impasse du cuivre', '67000', 'Strasbourg', 'FRANCE', '22, impasse du cuivre', '67000', 'Strasbourg', 'FRANCE', '0622559943', 'les.pralines@gmail.com', '784 671 695 00095'),
	(3, 'La Forgeronne', 'SARL', '89, rue de l\'aluminium', '67800', 'Hoenheim', 'FRANCE', '89, rue de l\'aluminium', '67800', 'Hoenheim', 'FRANCE', '0699321899', 'la.forgeronne@gmail.com', '123 456 789 00002'),
	(4, 'StageCuisine', 'SARL', '25, rue de la patisserie', '67000', 'Strasbourg', 'FRANCE', '25, rue de la patisserie', '67000', 'Strasbourg', 'FRANCE', '0628934570', 'stagecuisine@gmail.com', '362 521 879 00034');

-- Listage de la structure de table sfformagestion. sondage
CREATE TABLE IF NOT EXISTS `sondage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questionnaire_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `type_questionnaire` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7579C89FCE07E8FF` (`questionnaire_id`),
  KEY `IDX_7579C89F613FECDF` (`session_id`),
  CONSTRAINT `FK_7579C89F613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  CONSTRAINT `FK_7579C89FCE07E8FF` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfformagestion.sondage : ~24 rows (environ)
INSERT INTO `sondage` (`id`, `questionnaire_id`, `session_id`, `type_questionnaire`) VALUES
	(1, 1, 1, 'de préformation'),
	(2, 2, 1, 'à chaud'),
	(3, 3, 1, 'à froid'),
	(4, 1, 2, 'de préformation'),
	(5, 2, 2, 'à chaud'),
	(6, 3, 2, 'à froid'),
	(7, 7, 3, 'de préformation'),
	(8, 8, 3, 'à chaud'),
	(9, 9, 3, 'à froid'),
	(10, 7, 4, 'de préformation'),
	(11, 8, 4, 'à chaud'),
	(12, 9, 4, 'à froid'),
	(13, 4, 5, 'de préformation'),
	(14, 5, 5, 'à chaud'),
	(15, 6, 5, 'à froid'),
	(16, 4, 6, 'de préformation'),
	(17, 5, 6, 'à chaud'),
	(18, 6, 6, 'à froid'),
	(19, 4, 7, 'de préformation'),
	(20, 5, 7, 'à chaud'),
	(21, 6, 7, 'à froid'),
	(22, 1, 8, 'de préformation'),
	(23, 2, 8, 'à chaud'),
	(24, 3, 8, 'à froid');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
