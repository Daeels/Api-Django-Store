-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 fév. 2021 à 18:37
-- Version du serveur :  8.0.18
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `store`
--

-- --------------------------------------------------------

--
-- Structure de la table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE IF NOT EXISTS `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('48c5e7491d69176f4979a27195815b4be0b06691', '2021-02-19 17:48:32.713566', 1);

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add clients', 7, 'add_clients'),
(26, 'Can change clients', 7, 'change_clients'),
(27, 'Can delete clients', 7, 'delete_clients'),
(28, 'Can view clients', 7, 'view_clients'),
(29, 'Can add products', 8, 'add_products'),
(30, 'Can change products', 8, 'change_products'),
(31, 'Can delete products', 8, 'delete_products'),
(32, 'Can view products', 8, 'view_products'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add clients', 10, 'add_clients'),
(38, 'Can change clients', 10, 'change_clients'),
(39, 'Can delete clients', 10, 'delete_clients'),
(40, 'Can view clients', 10, 'view_clients'),
(41, 'Can add Token', 11, 'add_token'),
(42, 'Can change Token', 11, 'change_token'),
(43, 'Can delete Token', 11, 'delete_token'),
(44, 'Can view Token', 11, 'view_token'),
(45, 'Can add token', 12, 'add_tokenproxy'),
(46, 'Can change token', 12, 'change_tokenproxy'),
(47, 'Can delete token', 12, 'delete_tokenproxy'),
(48, 'Can view token', 12, 'view_tokenproxy');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$BxWIksDIqbTE$Hy76QGGZJ9drsZYgHzxXxTmfQwABAXV9ZOSizis03Y0=', '2021-02-19 17:47:50.060721', 1, 'ilyas', '', '', 'ilyasirgui@gmail.com', 1, 1, '2021-02-19 00:07:42.948567');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-02-19 01:02:41.657805', '1', 'Headphones', 1, '[{\"added\": {}}]', 9, 1),
(2, '2021-02-19 01:03:19.154646', '2', 'Phone', 1, '[{\"added\": {}}]', 9, 1),
(3, '2021-02-19 01:05:41.236688', '1', 'Ali', 1, '[{\"added\": {}}]', 10, 1),
(4, '2021-02-19 13:22:57.448327', '2', 'khalid', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-02-19 17:17:31.083375', '15', 'Hamid', 3, '', 10, 1),
(6, '2021-02-19 17:18:03.630033', '5', 'Clavier', 2, '[{\"changed\": {\"fields\": [\"Owner\"]}}]', 9, 1),
(7, '2021-02-19 17:18:16.276553', '4', 'Souris', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Owner\"]}}]', 9, 1),
(8, '2021-02-19 17:48:32.714564', '1', '48c5e7491d69176f4979a27195815b4be0b06691', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Shop', 'clients'),
(8, 'Shop', 'products'),
(9, 'magazine', 'products'),
(10, 'magazine', 'clients'),
(11, 'authtoken', 'token'),
(12, 'authtoken', 'tokenproxy');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-19 00:04:46.264970'),
(2, 'auth', '0001_initial', '2021-02-19 00:04:46.366698'),
(3, 'admin', '0001_initial', '2021-02-19 00:04:46.945152'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-19 00:04:47.148608'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-19 00:04:47.155588'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-19 00:04:47.233380'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-19 00:04:47.277264'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-19 00:04:47.316159'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-19 00:04:47.322171'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-19 00:04:47.363033'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-19 00:04:47.364031'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-19 00:04:47.371013'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-19 00:04:47.411903'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-19 00:04:47.453791'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-19 00:04:47.493684'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-19 00:04:47.501663'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-19 00:04:47.546543'),
(18, 'sessions', '0001_initial', '2021-02-19 00:04:47.563497'),
(19, 'Shop', '0001_initial', '2021-02-19 00:25:43.223066'),
(20, 'magazine', '0001_initial', '2021-02-19 00:55:27.598007'),
(21, 'authtoken', '0001_initial', '2021-02-19 17:47:09.318159'),
(22, 'authtoken', '0002_auto_20160226_1747', '2021-02-19 17:47:09.472759'),
(23, 'authtoken', '0003_tokenproxy', '2021-02-19 17:47:09.479729');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e7ukoewsp10b30to3fh8ybkg84jlo79s', '.eJxVjEEOwiAQRe_CuiEMtGVw6d4zkAGmUjWQlHZlvLs26cJu_3vvv4Wnbc1-a7z4OYmLANH9b4Hik8sO0oPKvcpYy7rMQe6KPGiTt5r4dT3c00Gmln-1VaQZtQMyODHAqMyACBwM92lUqJCsRcusKUY3OLCge1DAjsAEnMTnC7yxNuE:1lCtdj:R4v806QwbxhgmUPBdx5S_2CUzBFoC8YHMdB38IfBjGA', '2021-03-05 00:27:23.171480');

-- --------------------------------------------------------

--
-- Structure de la table `magazine_clients`
--

DROP TABLE IF EXISTS `magazine_clients`;
CREATE TABLE IF NOT EXISTS `magazine_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magazine_clients_owner_id_ccb6ced3` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `magazine_clients`
--

INSERT INTO `magazine_clients` (`id`, `first_name`, `last_name`, `email`, `age`, `owner_id`) VALUES
(1, 'Ali', 'Alilo', 'ali.ali@gmail.com', 21, 1),
(2, 'khalid', 'tosani', 'to.khalid@hotmail.com', 50, 1),
(25, 'Alla', 'Alisa', 'aa@gmail.com', 21, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `magazine_clients_products`
--

DROP TABLE IF EXISTS `magazine_clients_products`;
CREATE TABLE IF NOT EXISTS `magazine_clients_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clients_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `magazine_clients_Products_clients_id_products_id_8f6d497f_uniq` (`clients_id`,`products_id`),
  KEY `magazine_clients_Products_clients_id_31561c53` (`clients_id`),
  KEY `magazine_clients_Products_products_id_a8cb4128` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `magazine_clients_products`
--

INSERT INTO `magazine_clients_products` (`id`, `clients_id`, `products_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(5, 25, 4);

-- --------------------------------------------------------

--
-- Structure de la table `magazine_products`
--

DROP TABLE IF EXISTS `magazine_products`;
CREATE TABLE IF NOT EXISTS `magazine_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `rate` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magazine_products_owner_id_0d932453` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `magazine_products`
--

INSERT INTO `magazine_products` (`id`, `name`, `category`, `rate`, `owner_id`) VALUES
(1, 'Headphones', 'Technology', 5, 1),
(2, 'Phone', 'Technology', 8, 1),
(5, 'Clavier', 'Technology', 4, 1),
(4, 'Souris', 'Technology', 9, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
