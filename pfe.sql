-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 avr. 2022 à 20:37
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `Username`, `CIN`, `phone`, `City`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Yassin', 'KB345364', '0720987658', 'tanger', 'admin@gmail.com', '$2y$10$Ct5DzO9MxtcrFmi4zfReDuMImdImUNRf0bX425sdq/sOdMeZL6yGC', NULL, NULL),
(3, 'Bilal', '37347', '435735', 'tanger', 'bilal@gmail.com', '$2y$10$xvZYm9nMhDwaEvljA7Q/TuwU5hpZYmwrF6kflDmDn/Eqb8X/OwOP2', '2021-06-21 16:55:53', '2021-06-21 16:55:53'),
(4, 'test', '36536453', '34343453', 'test', 'test@gmail.com', '$2y$10$X4aVK5YV3NMDFUxW.PxEi.NOsXoYexoTXPFx57YKxwBnsNgd024HK', '2021-06-21 18:09:50', '2021-06-21 18:09:50');

-- --------------------------------------------------------

--
-- Structure de la table `catigoies`
--

CREATE TABLE `catigoies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catigoies`
--

INSERT INTO `catigoies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(15, 'Vetements de sport', '2021-06-19 11:21:05', '2021-07-03 16:31:32'),
(26, 'pantalon short', '2021-07-03 17:27:07', '2021-07-03 17:27:07'),
(27, 'pantalon', '2021-07-10 11:55:02', '2022-02-11 14:09:55'),
(29, 'spadri', '2021-11-04 14:28:29', '2021-11-04 14:28:29'),
(33, 'pantalent10', '2022-02-11 15:26:50', '2022-02-11 15:26:50'),
(34, 'pantalent100', '2022-02-11 17:31:35', '2022-02-11 17:31:35');

-- --------------------------------------------------------

--
-- Structure de la table `emplovendres`
--

CREATE TABLE `emplovendres` (
  `id` int(11) NOT NULL,
  `datevendre` varchar(50) NOT NULL,
  `nomemployer` varchar(50) NOT NULL,
  `nomclient` varchar(50) NOT NULL,
  `contacte` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emplovendres`
--

INSERT INTO `emplovendres` (`id`, `datevendre`, `nomemployer`, `nomclient`, `contacte`) VALUES
(183, '2022-02-11 04:23 PM', 'Yassin', 'r', 'dfd'),
(184, '2022-02-11 05:00 PM', 'Yassin', 'client', '0654879500'),
(185, '2022-02-11 05:01 PM', 'Yassin', 'rachid', '0745256984'),
(186, '2022-02-11 05:01 PM', 'Yassin', 'mohamed', '0658748596'),
(187, '2022-02-11 05:33 PM', 'Yassin', 'client', '06548795'),
(188, '2022-02-11 05:36 PM', 'bilal', 'client10', '0654879500'),
(189, '2022-02-11 11:03 PM', 'Yassin', 'client10', '06548712'),
(190, '2022-02-11 11:06 PM', 'bilal', 'client1', '064587895');

-- --------------------------------------------------------

--
-- Structure de la table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employers`
--

INSERT INTO `employers` (`id`, `Username`, `CIN`, `phone`, `City`, `email`, `password`, `created_at`, `updated_at`) VALUES
(16, 'test', 'tests', '3212212258', 'tanger', 'user@gmail.com', '$2y$10$0XY3IXwZamluZK/XqlFpo.EWYwB6bvM5w5.ljxCY1YMbZVeu8zV7K', '2021-11-04 14:25:04', '2021-11-04 14:25:04'),
(17, 'bilal', 'kb545879', '0625458790', 'tanger', 'bilal10@gmail.com', '$2y$10$rYJtEH0bBLl4KODNuxW.cOjG2FpOs/I0F.QaPCL90MqmwFKL3FK76', '2022-02-11 16:47:48', '2022-02-11 16:47:48');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `infovendres`
--

CREATE TABLE `infovendres` (
  `id` int(11) NOT NULL,
  `idE` int(11) DEFAULT NULL,
  `idEV` int(11) NOT NULL,
  `idC` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `idS` int(11) NOT NULL,
  `QuantiVendre` int(11) NOT NULL,
  `prixAchat` float NOT NULL,
  `prixVendre` float NOT NULL,
  `marges` float NOT NULL,
  `toutal` float NOT NULL,
  `methodePayement` varchar(20) NOT NULL,
  `DateCreate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `infovendres`
--

INSERT INTO `infovendres` (`id`, `idE`, `idEV`, `idC`, `idP`, `idS`, `QuantiVendre`, `prixAchat`, `prixVendre`, `marges`, `toutal`, `methodePayement`, `DateCreate`) VALUES
(211, NULL, 184, 15, 96, 133, 2, 51, 90, 78, 180, 'Cash', '2022-02-11 17:01:15'),
(213, NULL, 186, 26, 104, 146, 2, 10, 50, 80, 100, 'Cash', '2022-02-11 17:02:18'),
(214, NULL, 187, 26, 104, 147, 1, 10, 50, 40, 50, 'Cash', '2022-02-11 17:34:21'),
(215, NULL, 187, 26, 105, 148, 2, 100, 150, 100, 300, 'Cash', '2022-02-11 17:34:21'),
(217, 17, 188, 26, 104, 146, 2, 10, 50, 80, 100, 'Cash', '2022-02-11 17:36:59'),
(218, NULL, 189, 26, 105, 149, 1, 100, 150, 50, 150, 'Cash', '2022-02-11 23:04:57'),
(219, NULL, 189, 26, 104, 146, 3, 10, 50, 120, 150, 'Cash', '2022-02-11 23:04:57'),
(220, 17, 190, 26, 105, 148, 2, 100, 150, 100, 300, 'Cash', '2022-02-11 23:07:00'),
(221, 17, 190, 29, 100, 140, 1, 90, 190, 100, 190, 'Cash', '2022-02-11 23:07:00');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2021_06_23_192639_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixAchat` double(8,2) NOT NULL,
  `prixVente` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `Cid`, `nome`, `prixAchat`, `prixVente`, `created_at`, `updated_at`) VALUES
(96, 15, 'chapeau', 51.00, 90.00, '2021-06-28 21:07:41', '2022-02-11 16:00:52'),
(99, 27, 'test', 100.00, 200.00, '2021-07-11 08:19:18', '2021-08-08 18:43:10'),
(100, 29, 'puma_gri', 90.00, 190.00, '2021-11-04 14:30:35', '2022-02-04 12:16:25'),
(101, 26, 'rer', 11.00, 111.00, '2021-11-04 23:00:07', '2021-11-04 23:00:07'),
(102, 27, 'test000', 2121.00, 221.00, '2021-11-06 23:45:17', '2021-11-06 23:45:17'),
(103, 29, 'trtr', 221.00, 21.00, '2021-11-06 23:46:56', '2021-11-06 23:46:56'),
(104, 26, 'nft', 10.00, 50.00, '2022-02-11 14:52:36', '2022-02-11 14:28:30'),
(105, 26, 'produit1', 100.00, 150.00, '2022-02-11 17:32:42', '2022-02-11 16:33:08'),
(106, 26, 'addidas', 200.00, 350.00, '2022-02-11 23:02:55', '2022-02-11 22:03:21');

-- --------------------------------------------------------

--
-- Structure de la table `referenceproducs`
--

CREATE TABLE `referenceproducs` (
  `id` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `referenceproducs`
--

INSERT INTO `referenceproducs` (`id`, `idP`, `reference`) VALUES
(40, 96, 'chapeau'),
(43, 99, 'test'),
(44, 100, '#00001'),
(45, 101, 'ere'),
(46, 102, 'test000'),
(47, 103, '02158p'),
(48, 104, '2121'),
(49, 105, '1021212'),
(50, 106, '21212');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CAQazKS6TcRAG0xvlxjCy1Qh8Tu889UHZO1vRlRr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSHl6VWplaVhTdEFYbk5BYkI1dHI3MnlHRWlwM3h3ZTFCdWlCZ0R2NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTE6IkxvZ2dlZEFkbWluIjtpOjI7fQ==', 1648308113),
('JyZgCISthAaecoUIgMaEPKFC1LPH2GEREgXGzIQ8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRVpFYXNVVEpQYm5Fbk5MOHp2MERjUmJyRkdkYmFnRkRkVmVtcmVybiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXJzaFVzZXJTdG9jaz9idG5TZWFyc2hTdG9jaz0mc2VhcnNoPWNoYXBlYXUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6IkxvZ2VVc2VyIjtpOjE3O3M6MTE6IkxvZ2dlZEFkbWluIjtOO30=', 1644620910);

-- --------------------------------------------------------

--
-- Structure de la table `sixeqauntites`
--

CREATE TABLE `sixeqauntites` (
  `id` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sixeqauntites`
--

INSERT INTO `sixeqauntites` (`id`, `idP`, `size`, `quantite`, `created_at`, `updated_at`) VALUES
(133, 96, 's', 20, '2021-06-28 21:07:41', '2022-02-11 16:01:15'),
(138, 100, '39', 3, '2021-11-04 14:30:35', '2022-02-11 13:31:23'),
(139, 100, '139', 4, '2021-11-04 14:30:35', '2021-11-04 13:35:32'),
(140, 100, '41', 3, '2021-11-04 14:30:35', '2022-02-11 22:07:00'),
(141, 100, '42', 4, '2021-11-04 14:30:35', '2022-02-04 12:16:25'),
(142, 100, '43', 4, '2021-11-04 14:30:35', '2021-11-04 14:30:35'),
(143, 101, '143', 1, '2021-11-04 23:00:07', '2022-02-11 16:36:59'),
(144, 102, 's', 0, '2021-11-06 23:45:17', '2022-02-11 13:23:09'),
(145, 103, 's', 5, '2021-11-06 23:46:56', '2021-11-06 23:46:56'),
(146, 104, 's', 2, '2022-02-11 14:52:36', '2022-02-11 22:04:57'),
(147, 104, 'xl', 1, '2022-02-11 14:52:36', '2022-02-11 16:34:21'),
(148, 105, 's', 7, '2022-02-11 17:32:42', '2022-02-11 22:07:00'),
(149, 105, 'xl', 14, '2022-02-11 17:32:42', '2022-02-11 22:04:57'),
(150, 106, 's', 10, '2022-02-11 23:02:55', '2022-02-11 23:02:55'),
(151, 106, 'xl', 20, '2022-02-11 23:02:55', '2022-02-11 23:02:55'),
(152, 106, 'xxl', 6, '2022-02-11 23:02:55', '2022-02-11 22:03:21');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'usertest@gmail.com', NULL, '$2y$10$kEAeJgSQ9lGj3aZbzgcA4.pqUvmir.xAw1IbT5mg3/ILAztMB5VEe', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'user2', 'user2@gmail.com', NULL, '$2y$10$kEAeJgSQ9lGj3aZbzgcA4.pqUvmir.xAw1IbT5mg3/ILAztMB5VEe', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `catigoies`
--
ALTER TABLE `catigoies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `emplovendres`
--
ALTER TABLE `emplovendres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `infovendres`
--
ALTER TABLE `infovendres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idV` (`idEV`),
  ADD KEY `idC` (`idC`),
  ADD KEY `idP` (`idP`),
  ADD KEY `idS` (`idS`),
  ADD KEY `idE` (`idE`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD KEY `products_ibfk_1` (`Cid`);

--
-- Index pour la table `referenceproducs`
--
ALTER TABLE `referenceproducs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD KEY `referencProduct` (`idP`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `sixeqauntites`
--
ALTER TABLE `sixeqauntites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sixeqauntites_ibfk_1` (`idP`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `catigoies`
--
ALTER TABLE `catigoies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `emplovendres`
--
ALTER TABLE `emplovendres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT pour la table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `infovendres`
--
ALTER TABLE `infovendres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT pour la table `referenceproducs`
--
ALTER TABLE `referenceproducs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `sixeqauntites`
--
ALTER TABLE `sixeqauntites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `infovendres`
--
ALTER TABLE `infovendres`
  ADD CONSTRAINT `infovendres_ibfk_1` FOREIGN KEY (`idEV`) REFERENCES `emplovendres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infovendres_ibfk_2` FOREIGN KEY (`idC`) REFERENCES `catigoies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infovendres_ibfk_3` FOREIGN KEY (`idP`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infovendres_ibfk_4` FOREIGN KEY (`idS`) REFERENCES `sixeqauntites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infovendres_ibfk_5` FOREIGN KEY (`idE`) REFERENCES `employers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `catigoies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `referenceproducs`
--
ALTER TABLE `referenceproducs`
  ADD CONSTRAINT `referenceproducs_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sixeqauntites`
--
ALTER TABLE `sixeqauntites`
  ADD CONSTRAINT `sixeqauntites_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
