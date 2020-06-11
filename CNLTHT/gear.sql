-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-06-11 04:20:14
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gear`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cart`
--

CREATE TABLE `cart` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `cart`
--

INSERT INTO `cart` (`product_id`, `user_id`, `quantity`) VALUES
(10, 2, 3),
(12, 4, 1),
(2, 1, 2),
(3, 1, 1),
(10, 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `description`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', NULL, 'OK', 'laptop', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(2, 'Bàn phím', NULL, 'OK', 'ban-phim', '2020-05-29 08:17:03', '2020-05-29 08:17:03');

-- --------------------------------------------------------

--
-- テーブルの構造 `manufactuers`
--

CREATE TABLE `manufactuers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `manufactuers`
--

INSERT INTO `manufactuers` (`id`, `name`, `description`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Acer', NULL, 'OK', 'acer', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(2, 'DareU', NULL, 'OK', 'dareu', '2020-05-29 08:17:03', '2020-05-29 08:17:03');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(44, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(45, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(46, '2016_06_01_000004_create_oauth_clients_table', 1),
(47, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(48, '2020_05_27_024629_gear_database', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0359098f4db0080bbb62ab0e0278c9927628a615a25beb41c5c9f18d8008c361c2e42e8ae458d136', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-31 03:12:21', '2020-05-31 03:12:21', '2020-06-01 10:12:20'),
('08b741201e9508add1b984148c4eb6edf26188ea2505d8d194c4d46851396a7a4c29b007c54a6c4a', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:41:02', '2020-05-30 03:41:02', '2020-05-31 10:41:02'),
('0f47a60a14747679fd59feee9b99b2eadc1453aae537d0f599ef631ec9131fd0c3dd4292a82ab796', 2, 1, 'GearApi', '[\"Member\"]', 1, '2020-05-30 07:00:32', '2020-05-30 07:00:32', '2020-05-31 14:00:32'),
('104a47259e22c016243f618db7a1364ad9f4f41378e1645569cb2f3a730b48696cb9392a68dec3af', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:04:17', '2020-05-30 04:04:17', '2020-05-31 11:04:17'),
('109408fd0966466bc17e66a65dd96bbad69320bbfac92581bae60631bcd3fe2dd0ee4f683387c7cc', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-30 07:04:20', '2020-05-30 07:04:20', '2020-05-31 14:04:20'),
('11bac466ccc1b7e288efcb7f8eeb7c51e65ef5c6e72fadae83cf5789773625a6b22d712f0dd28e4b', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:50:00', '2020-05-30 03:50:00', '2020-05-31 10:50:00'),
('14c00a7007ff49932856bc73f7519a558c4b060eeecc2b19444e04b20f91aafb0e1db235c9748df6', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:11:31', '2020-05-30 04:11:31', '2020-05-31 11:11:31'),
('1579915593416271580bbd79af13825d5c5c59963d4895887c25ca4527d6bdbc782f6c6b0b63d55c', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-30 05:01:41', '2020-05-30 05:01:41', '2020-05-31 12:01:41'),
('29549b449cdf824b936ac659e04f54ee10b3b2ba782c45e820125e7c0ec7625c74a2887477522597', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:23:21', '2020-05-30 04:23:21', '2020-05-31 11:23:21'),
('2c485a565ec5c29ff3795125866b1b48672790ea9aaaae0b52cf9e2765a9ad8df7ca8464c93f21ad', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:41:47', '2020-05-30 04:41:47', '2020-05-31 11:41:47'),
('30be0bd29c9cd7686e68566c5637ffa9832729502bbe956ace715fc8d56f4c2a65b5c3aa0540054b', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:14:15', '2020-05-30 03:14:15', '2020-05-31 10:14:15'),
('3354c5a07310a4f68395bd57a1edfb6a590598c4ca7f209c52237e7a1d8e297b8029d87e3cede907', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-31 03:13:03', '2020-05-31 03:13:03', '2020-06-01 10:13:03'),
('37afc7d0a1e4a3b29192ba510c0c574faa80ffd9513b0d416a32df087574cc891450560c76b01de2', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:54:20', '2020-05-30 04:54:20', '2020-05-31 11:54:20'),
('38ed811ec2a92705279223380ab213a98d9ab38ca771a112b0c9c06f997753bf194a27f76730d20d', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:19:39', '2020-05-30 04:19:39', '2020-05-31 11:19:39'),
('3b49960961967e89ef7c74d0439b57f3748501133f5e28c9c3bdf3195b0d9393fbfff725705ac32c', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-06-11 01:55:28', '2020-06-11 01:55:28', '2020-06-12 08:55:28'),
('3c479631aaa9389245398b2fbb548e289b7fb195a1fff0f8c2e1b8dd8d16ead405c84afc7af22122', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:37:17', '2020-05-30 04:37:17', '2020-05-31 11:37:17'),
('40b4b353107ffbdf7d2a9f627d7a0314ffe0d5b56520b261e7813f43dc43b41580c79fe5432ccf46', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-29 08:20:57', '2020-05-29 08:20:57', '2020-05-30 15:20:57'),
('44b683e63a171ad94ec562bbc17af92c5b2844e6befb27aca7c3ac6d8ef91c80371274000c598e68', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:56:01', '2020-05-30 04:56:01', '2020-05-31 11:56:01'),
('4f265018acd9738864afe125c2db3ec5c0d1ba245c3bfc399535de69dcbc57d06db72370871dd8fd', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:37:43', '2020-05-30 03:37:43', '2020-05-31 10:37:43'),
('52cbe1a1421831dc62f39ab74b275aabb395686293bef53481bed2cae7fca71c05d155fe5f8b170f', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:53:47', '2020-05-30 04:53:47', '2020-05-31 11:53:47'),
('52de7225e49aedbecd9c5073c13c1172c1af845eb4a42078e62fa6fc1484e80b4a8d7f794b3b8ec3', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:25:59', '2020-05-30 04:25:59', '2020-05-31 11:25:59'),
('5326ae96af65668f1f924466d28d1d8569e0e57063fdd391a722c7d3d52a5e2fabcf1416018d20b2', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-06-08 03:30:53', '2020-06-08 03:30:53', '2020-06-09 10:30:53'),
('53a9cd4fcb44b684a51e3b09e49cc721cd9b913a9fdad9b2b5898c8aed818ef3f329b9b409002ab2', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:32:38', '2020-05-30 03:32:38', '2020-05-31 10:32:37'),
('57cf53c516c157dbd3804670f8d72d1e0aeeb05cb48617a4ac54ef7f44a44e7228f7e4ed370b077a', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:49:41', '2020-05-30 03:49:41', '2020-05-31 10:49:41'),
('586c4ef7b20db5020b2d20ba6a9725fa418985623e97727952309d11d9bf61cfca7ae026f7356926', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 13:05:05', '2020-05-30 13:05:05', '2020-05-31 20:05:05'),
('5d3dba20ab9240a9d4a7f7bd84212d290d6bf45de495cd16e53711bd14e91589910bc9eb49938c5a', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:56:50', '2020-05-30 04:56:50', '2020-05-31 11:56:50'),
('5ff8f9e3b8c7dd30d94b3511f134306153c73f8f23524a100423ed7fe112d35fe8c8087d12aeec31', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:03:43', '2020-05-30 04:03:43', '2020-05-31 11:03:43'),
('6132095332f18c129a2b5c28f6c93c5e887a3e24c84516fcc51aa9776ea2c60ccba41fa6e06401c7', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:09:12', '2020-05-30 04:09:12', '2020-05-31 11:09:12'),
('6331dba995bbb3ded43a9898b23be8158bf6f6f367a2b5267a1f0759d44fc13706cf3aaf8ccfa197', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:32:03', '2020-05-30 04:32:03', '2020-05-31 11:32:03'),
('639f3458c08afcf960f2dabc27da50c464fa527458e6f38e48038ced2cc26967bb20fae10f184985', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:56:23', '2020-05-30 03:56:23', '2020-05-31 10:56:23'),
('641590f8fb9d80bb7901967e6761c1d4c833248d806315c6eb0b0384614f775ea1722339e57202ea', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:58:08', '2020-05-30 03:58:08', '2020-05-31 10:58:07'),
('6426a9bc17844e4d867fddbd4e4503980085d94b18a3e5e7036aabc95d313072827954ca3c5a06c0', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-30 07:08:24', '2020-05-30 07:08:24', '2020-05-31 14:08:24'),
('6a15ae9fa02e6d125c3d4e59940ccf56126d83ca71258b8871e1f9276a582c321c2366fd4af3c8be', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:45:00', '2020-05-30 04:45:00', '2020-05-31 11:45:00'),
('6d257a74a421532537e4859d9df90a3cef1ec741373f2e26cc440a8cb93a05b1a8722c0bcb976fce', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:08:13', '2020-05-30 04:08:13', '2020-05-31 11:08:13'),
('6f4367b84429e9c35792cd1f2f21f623be61de119e1130564dee35bf5249ca96d05b8417782d461b', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:55:42', '2020-05-30 04:55:42', '2020-05-31 11:55:41'),
('707f92cb2c991c5d8453e959e2089b5d99dd3101ad926c5f917880b629dee2010de446b0674aee40', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:14:49', '2020-05-30 03:14:49', '2020-05-31 10:14:49'),
('72cf565c4b71266a6f7d63cf6ece215ddc43e5999c1b413ee62b347aadc12ba86fc5df11ec160800', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:02:28', '2020-05-30 04:02:28', '2020-05-31 11:02:28'),
('7429680e08d1173fd3c8ac6f5f1ec8388a2da6d0d4b461c0577f677a47deecfaeadc7cc537e0c812', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:52:51', '2020-05-30 03:52:51', '2020-05-31 10:52:51'),
('78e6c79913fbd2f9b49cba6460db88227da77d2cc52011eaab74edc6ae69728a13b4495ca3dbfce4', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:38:10', '2020-05-30 03:38:10', '2020-05-31 10:38:10'),
('7fe730d8fe7c9bbcff6abc5794ba28010e1a18ce8e79eab25484aeebf470b66690576ba0c4a475a5', 4, 1, 'GearApi', '[\"Member\"]', 1, '2020-05-30 06:51:45', '2020-05-30 06:51:45', '2020-05-31 13:51:45'),
('820a9819e85bfe000af58ca00a14408279e08a0ecacab8ffc63bf79380d01ad88109121b10eb92b5', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:05:18', '2020-05-30 04:05:18', '2020-05-31 11:05:18'),
('83d7c423f15a253b94cb338cff49be8b2b3d3b7b9e8f65ae8ed92eb961703a15c636db8f2921eab8', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:12:01', '2020-05-30 04:12:01', '2020-05-31 11:12:01'),
('86b4874f6d0fa2b72af8a32d3ddde566bcae357da1f3a88ff5a80b3dfa3505bf731c51901a4e19c0', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:32:19', '2020-05-30 03:32:19', '2020-05-31 10:32:19'),
('8ad0fc6dfa0b9c5e542caf26c9c0785eb4a86021ada16b2666288ee0aef64d48ed7b79ae55685a67', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:52:21', '2020-05-30 04:52:21', '2020-05-31 11:52:21'),
('91bf3dc44cb1284eee501179f55ffa10fd0bdf1beb0747f2262a8542ac9ab74dfb322f1d26c6cfe3', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:58:42', '2020-05-30 04:58:42', '2020-05-31 11:58:41'),
('9228f6e7217199c2ba46ed67385efc8d5d9e0b86b3987e98d76d3e89b36ad15e7d6f6ec07f8dd096', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-06-08 03:28:51', '2020-06-08 03:28:51', '2020-06-09 10:28:51'),
('942f2603ab0e0b3e6c491ddc64fded7f8850c0ce4140158b055be8febb5c1b6eb1f1a37c7d525cef', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-30 13:03:05', '2020-05-30 13:03:05', '2020-05-31 20:03:05'),
('9cf3f8c414d1fb7a28b4b1c1acfc38e4896d90e2abf419bdd76473172d757e69eff88388a1ec9b06', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:58:56', '2020-05-30 03:58:56', '2020-05-31 10:58:56'),
('9df705815222649b85189a25b45d98f01bd8078ff49d0753b9a5a2c3714011d5e2a806637d58750b', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:56:45', '2020-05-30 03:56:45', '2020-05-31 10:56:45'),
('a0b5302e5d6c9a985e9578031576ddeae56df1a0ec514adc46ab554cb9a1ab28d4eb94c87d052d96', 4, 1, 'GearApi', '[\"Member\"]', 1, '2020-05-30 12:58:15', '2020-05-30 12:58:15', '2020-05-31 19:58:15'),
('a358a205a8c6e4a196c212396a7103fd125e9f6bc27899fc03fe93ec93f1197494467c66e254b7e9', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:14:40', '2020-05-30 04:14:40', '2020-05-31 11:14:39'),
('a5508ae2f2147dbf461dd4a89ce990d1ce1d32e7e8b4408c614a02705d5d7c5c06d46c8185e8a62c', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:32:25', '2020-05-30 04:32:25', '2020-05-31 11:32:25'),
('a6e637274200f2e995707b8dd19038fa83ac558bcc733b72a16205277581f0e837e50c9dc7dbcc3c', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:31:26', '2020-05-30 03:31:26', '2020-05-31 10:31:26'),
('aa01d6736c5dac904ef15f5d771c469d070f76c29d1018e32645b75d85cae9edd4d882ec718dfba6', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:59:10', '2020-05-30 03:59:10', '2020-05-31 10:59:10'),
('ad1e6b689dbc2cf18f26ba774e3382df99d8d2f04cefc9092132193b06093413b0afd848b8ad2dbd', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:04:36', '2020-05-30 04:04:36', '2020-05-31 11:04:36'),
('b126b1663c682105140a23a414953a9d2d9a2de805a3ce56e04159c7a6d025ee32631abf84759ca6', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:01:16', '2020-05-30 04:01:16', '2020-05-31 11:01:16'),
('b25b4cbbac0c127051b73e5b8719679ce8a337fc14fd75911565c0d74e170d642b260aef56db30c1', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:16:11', '2020-05-30 03:16:11', '2020-05-31 10:16:11'),
('b49c7d1ca798f66fab781960bc0ac163f6e0047fb46e1c9132ffd4d78b45f5511f93a182b2733888', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:20:25', '2020-05-30 04:20:25', '2020-05-31 11:20:25'),
('b7250b385a78b71fc57959690c1166f83ecad15f3f8a386d5c76d731b3da43dabd80c199ce3935a1', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:36:22', '2020-05-30 03:36:22', '2020-05-31 10:36:22'),
('bb0f29364dfc3f8526668a7086a7d0e07065bb8680ea48f757054552f18c1798b369f97b8d7f746e', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:35:40', '2020-05-30 03:35:40', '2020-05-31 10:35:40'),
('bc21598a4283cace6b876b15635593c85cd4b4ef570b19df069132aaeebb630a8edb0f3b65deb82f', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-30 04:57:17', '2020-05-30 04:57:17', '2020-05-31 11:57:17'),
('bcd739a3b489e18b8200bd3393248390bbf177473d7af78516fdf0241a49b0dd4977441963d828fc', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:07:37', '2020-05-30 04:07:37', '2020-05-31 11:07:37'),
('c39f9c9fb508fc1bfc5279139873bf3e61085de31efc3e8f6dcd9a3a6e3a9e2c04595481bd79e976', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:59:50', '2020-05-30 03:59:50', '2020-05-31 10:59:50'),
('c48a1e34e48bbc06b03bbbc77bf84b34e07428157f34ddf1b5c8b4232c29bc5c0b5d3c3c3ccc7803', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:16:37', '2020-05-30 04:16:37', '2020-05-31 11:16:37'),
('cc4edeefcdab0e6c319c9b4f2c033f05e86e6589bb7a1fd4b0ef2f92b093f606712659e6c6cebd76', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:29:34', '2020-05-30 04:29:34', '2020-05-31 11:29:34'),
('ce242015675332d2660c137fee1beb8e0a2b0d959a3ee54f25d551aacb8abfce9d6130af28c60743', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:47:22', '2020-05-30 04:47:22', '2020-05-31 11:47:22'),
('d03425910dff260204b21e2a5d5365f51c5690c885404f346586668a540548c7b3ec78a6bf951eae', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:42:07', '2020-05-30 03:42:07', '2020-05-31 10:42:07'),
('d4ba40ee10023dfa3595e595c1b35f09066481a98f6d645530c3d5a0aea43726f8c22d70b217cfdd', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:12:20', '2020-05-30 04:12:20', '2020-05-31 11:12:20'),
('d7abed557e67c479dfbf603e377fa8cd12852ce628736f23f2b2f627942f4b8770f758c3287d3ccc', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:27:18', '2020-05-30 04:27:18', '2020-05-31 11:27:18'),
('ddcde208a0c5ca31d41a171cb899beba4bea820a56a8e4ec00cd978c60bbd896a1e0c626f8229b00', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:35:36', '2020-05-30 04:35:36', '2020-05-31 11:35:36'),
('df317296ec99b91a506c950c2f605c3283fd2af26857c6fc33caf507ac8b8a81b2595cd2c098bdb3', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:08:21', '2020-05-30 04:08:21', '2020-05-31 11:08:21'),
('dff842085b6936db79cbd3b4930ccc362dde959c8c29230f5cd79f9e2c655daf75fb9682603d4131', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:37:03', '2020-05-30 03:37:03', '2020-05-31 10:37:03'),
('e057f168d99b569cb0eac7e02a2675ad29ac961a0f017dcecd036ea646ff9e8bb8ca1c7bd9c7a2cf', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:54:46', '2020-05-30 04:54:46', '2020-05-31 11:54:45'),
('e10fe61eab8ff828e7c4351fd7ac78472f622a4e9f8af29cd219d21b2b91b9c8e450eb008a08bdba', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:15:51', '2020-05-30 03:15:51', '2020-05-31 10:15:51'),
('e1193606e6e8683551af5e7c4c769d3844f2c1e13ce0e52279c67755f0226b65b1ace9b0671d1605', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:32:01', '2020-05-30 03:32:01', '2020-05-31 10:32:01'),
('e538bca2e0a2532651b4dcdae2801963ae4b128ccef414306a1e4b5a6763b8a677b70d20e3554558', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:53:31', '2020-05-30 03:53:31', '2020-05-31 10:53:31'),
('e8b8f94551677a4e47557b02d0da98b963e44f8f3c1ad2eb0c953235f83ddf888f71124226966aa5', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:58:34', '2020-05-30 03:58:34', '2020-05-31 10:58:34'),
('ea84306308bedf62dd80ecc1ce2fcba76a7a974e76c22385fddebf709ec62f9efcc1280724636795', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 03:36:30', '2020-05-30 03:36:30', '2020-05-31 10:36:30'),
('f27d092fa4f61d9a98bc7931be01d6598b156ad71b373f88e9d899f5441d14076dbd01ca75d4d173', 1, 1, 'GearApi', '[\"Admin\"]', 0, '2020-05-30 04:11:09', '2020-05-30 04:11:09', '2020-05-31 11:11:09'),
('f78b5af0e4cb87189375e0d010f22fe521a507436c675b08b8f710a664765691fbb68d2fb2bf1bd5', 1, 1, 'GearApi', '[\"Admin\"]', 1, '2020-05-30 05:01:19', '2020-05-30 05:01:19', '2020-05-31 12:01:19'),
('f7957b2f1331cc85167460d83d78538da1d24ebb81d77fd53d3e1b089a9b297b4bf4501fe611cb62', 4, 1, 'GearApi', '[\"Member\"]', 1, '2020-05-30 12:59:36', '2020-05-30 12:59:36', '2020-05-31 19:59:36');

-- --------------------------------------------------------

--
-- テーブルの構造 `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'xUS5EGBrmLVZGR1BzJKuJAFZcbadk9tmQuXOjLDZ', NULL, 'http://localhost', 1, 0, 0, '2020-05-29 08:17:16', '2020-05-29 08:17:16'),
(2, NULL, 'Laravel Password Grant Client', 'zQ0mnkoxdYvTD2Ex0z0Piw0Xmil9lI0QsMOuJR2I', 'users', 'http://localhost', 0, 1, 0, '2020-05-29 08:17:16', '2020-05-29 08:17:16');

-- --------------------------------------------------------

--
-- テーブルの構造 `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-29 08:17:16', '2020-05-29 08:17:16');

-- --------------------------------------------------------

--
-- テーブルの構造 `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `price_discount` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `catalog_id` bigint(20) UNSIGNED NOT NULL,
  `manufactuer_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `description`, `price`, `discount`, `price_discount`, `stock`, `catalog_id`, `manufactuer_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 526', 'Laptop được ưu chuộng trong năm', 260964, 20, 208771, 14, 1, 1, 'laptop-acer-nitro-526', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(2, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 513', 'Laptop được ưu chuộng trong năm', 2613456, 25, 1960092, 18, 1, 1, 'laptop-acer-nitro-513', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(3, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 528', 'Laptop được ưu chuộng trong năm', 5038133, 13, 4383176, 13, 1, 1, 'laptop-acer-nitro-528', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(4, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 549', 'Laptop được ưu chuộng trong năm', 1147055, 28, 825880, 38, 1, 1, 'laptop-acer-nitro-549', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(5, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 534', 'Laptop được ưu chuộng trong năm', 4932717, 24, 3748865, 30, 1, 1, 'laptop-acer-nitro-534', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(6, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 521', 'Laptop được ưu chuộng trong năm', 3179141, 10, 2861227, 17, 1, 1, 'laptop-acer-nitro-521', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(7, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 522', 'Laptop được ưu chuộng trong năm', 2273744, 26, 1682571, 29, 1, 1, 'laptop-acer-nitro-522', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(8, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 518', 'Laptop được ưu chuộng trong năm', 5377430, 38, 3334007, 13, 1, 1, 'laptop-acer-nitro-518', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(9, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 516', 'Laptop được ưu chuộng trong năm', 9917997, 22, 7736038, 20, 1, 1, 'laptop-acer-nitro-516', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(10, 'laptop/acer_nitro_5.jpg', 'Laptop Acer Nitro 518', 'Laptop được ưu chuộng trong năm', 8242065, 17, 6840914, 12, 1, 1, 'laptop-acer-nitro-518-1', 'OK', '2020-05-29 08:17:03', '2020-05-29 08:17:03'),
(11, '[\"15907404680.webp\",\"15907404681.webp\",\"15907404682.webp\"]', 'Laptop Gaming Acer Nitro 5 2020 AN515-43 R9FD', '<p>\r\n										</p><p style=\"text-align: center;\" data-mce-style=\"text-align: center;\"><span contenteditable=\"false\" data-mce-object=\"iframe\" class=\"mce-preview-object mce-object-iframe\" data-mce-p-allowfullscreen=\"allowfullscreen\" data-mce-p-src=\"//www.youtube.com/embed/x6VzMIKw49Y\"><iframe src=\"//www.youtube.com/embed/x6VzMIKw49Y\" allowfullscreen=\"allowfullscreen\" width=\"900\" height=\"505\" frameborder=\"0\" data-mce-src=\"//www.youtube.com/embed/x6VzMIKw49Y\"></iframe><span class=\"mce-shim\"></span></span></p><p><span style=\"font-size: 15pt; color: #000000;\" data-mce-style=\"font-size: 15pt; color: #000000;\"><strong>THÔNG SỐ KỸ THUẬT</strong></span></p><p><span style=\"font-size: 15pt; color: #000000;\" data-mce-style=\"font-size: 15pt; color: #000000;\"><strong></strong></span><br></p><p><span style=\"font-size: 20pt;\" data-mce-style=\"font-size: 20pt;\"><strong>Chính Sách Bảo Hành 3S1 Cho Các Sản Phẩm Gaming</strong></span></p><p><strong>Tất cả các sản phẩm Gaming Acer (*) được cam kết bảo hành trong vòng 03 ngày (72 giờ) bao gồm cả ngày thứ bảy và ngày chủ nhật (**). Acer cam kết sẽ đổi sản phẩm mới cùng loại hoặc tương đương (1 đổi 1) cho các trường hợp không hoàn thành bảo hành trong 03 ngày.&nbsp;</strong></p><p>Đặc biệt sản phẩm Máy tính để bàn Gaming và Màn hình máy tính Gaming được bảo hành tận nơi (On-site) tại 02 thành phố Hồ Chí Minh và Hà Nội. Các sản phẩm Gaming khác áp dụng hình thức dịch vụ khách hàng mang sản phẩm đến Trung tâm Bảo hành (Carry-in) tại các tỉnh thành có Trung tâm Bảo hành của Acer (***).&nbsp;</p><p><strong>(*) Danh sách các sản phẩm Gaming Acer&nbsp;</strong></p><p><strong>Máy tính xách tay Gaming (Notebook)</strong></p><ul><li>Predator 21X (GX21-71)</li><li>Predator 17X (GX-792)</li><li>Predator Triton 700 (PT715-51)</li><li>Predator Helios 300 (G3-572)</li><li>Acer Nitro 5 (AN515-51)</li><li>Acer A7 (A715-71G)</li><li>Acer VX5 (VX5-591G)</li></ul><p><strong>Máy tính để bàn Gaming (Desktop)</strong></p><ul><li>Predator Orion 9000</li><li>Predator G9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li><li>Predator G6&nbsp;</li><li>Predator G3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li><li>Predator G1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li></ul><p><strong>Màn hình máy tính Gaming (Monitor)</strong></p><ul><li>Acer XR382 (XR382CQK)</li><li>Predator Z35P (Z35P)</li><li>Predator X34 (X34A)</li><li>Predator XB27 (XB271H, XB270H)</li><li>Predator XF240 (XF240H)</li></ul><p><strong>(**) Thời gian bảo hành</strong></p><ul><li>Carry-in: Từ khi nhận sản phẩm đến khi sản phẩm được sửa chữa hoàn thành (có thể trả sản phẩm tốt cho khách hàng).</li><li>Onsite: Từ khi nhận yêu cầu dịch vụ thông qua tổng đài&nbsp;<strong>1900-969601</strong>&nbsp;hoặc email&nbsp;<strong>acercare.vn@acer.com</strong>&nbsp;đến khi sản phẩm được sửa chữa hoàn thành.</li></ul><p>Ghi chú: Thời gian bảo hành được tính từ thời điểm khách hàng cung cấp chứng từ mua hàng cho các trường hợp sản phẩm cần chứng minh ngày mua do sản phẩm đã quá thời hạn bảo hành dựa theo ngày sản xuất.&nbsp;</p><p><strong>(***) Danh sách Trung tâm Bảo hành Acer</strong></p><ul><li>TPHCM: 585-587 Điện Biên Phủ, Phường 1, Quận 3, Tp. HCM</li><li>Hà Nội: Tầng 1, Tòa nhà Đào Duy Anh, số 9A Đường Đào Duy Anh, Phường Kim Liên, Quận Đống Đa, Tp. Hà Nội</li><li>Đà Nẵng: 296 Nguyễn Hoàng, Phường Vĩnh Trung, Quận Thanh Khê, Tp. Đà Nẵng</li><li>Cần Thơ: 94-96 Đường Nguyễn Trãi, Phường Cái Khế, Quận Ninh Kiều, Tp. Cần Thơ</li><li>Nghệ An: 171 Lê Lợi, Phường Lê Lợi, Tp. Vinh, Tỉnh Nghệ An</li><li>Hải Phòng: Tầng 6, Số 7 Lê Hồng Phong, Quận Ngô Quyền, Tp. Hải Phòng</li><li>Thái Nguyên: 44A Hoàng Văn Thụ, Phường Hoàng Văn Thụ, Tp. Thái Nguyên, Tỉnh Thái Nguyên</li></ul>\r\n									<p></p>', 20690000, 10, 18621000, 10, 1, 1, 'laptop-gaming-acer-nitro-5-2020-an515-43-r9fd', 'OK', '2020-05-29 08:21:08', '2020-05-29 08:21:08'),
(12, '[\"15907410590.webp\",\"15907410591.webp\"]', 'Laptop Acer Aspire 3 A315 56 37DV', '<p><strong>\n										</strong></p><table class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; width: 100%; min-width: 500px; max-width: 100%; margin-bottom: 20px; border: 1px solid rgb(238, 238, 238); color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; line-height: 20px; background-color: rgb(255, 255, 255); height: 0px; margin-left: auto; margin-right: auto;\" data-mce-style=\"box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; width: 100%; min-width: 500px; max-width: 100%; margin-bottom: 20px; border: 1px solid #eeeeee; color: #333333; font-family: Roboto, sans-serif; font-size: 13px; line-height: 20px; background-color: #ffffff; height: 0px; margin-left: auto; margin-right: auto;\" border=\"3\" cellpadding=\"3\" cellspacing=\"3\"><tbody style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">CPU</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Intel Core i3-1005G1 1.2GHz up to 3.4GHz 4MB</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">RAM</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">4GB DDR4 2400MHz&nbsp;Onboard (1x SO-DIMM socket, up to 12GB SDRAM)</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Ổ cứng</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">256GB SSD M.2 PCIE, 1x slot SATA3 2.5\"</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Card đồ họa</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Intel UHD Graphics</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Màn hình</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">15.6\" FHD (1920 x 1080) Acer ComfyView LCD, Anti-Glare</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Cổng giao tiếp</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">1x USB 3.1, 2x USB 2.0, HDMI, RJ-45</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span color=\"#000000\" style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Ổ quang</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">None</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Audio</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Realtek High Definition</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Đọc thẻ nhớ</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span color=\"#000000\" style=\"color: #000000;\" data-mce-style=\"color: #000000;\">None</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Chuẩn LAN</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">10/100/1000 Mbps</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Chuẩn WIFI</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">802.11a/b/g/n/ac</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Bluetooth</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">v4.2</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Webcam</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">HD Webcam</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Hệ điều hành</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span color=\"#000000\" style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Windows 10 Home</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Pin</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">3 Cell 36.7 Whr</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Trọng lượng</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">1.7 kg</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span color=\"#000000\" style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Màu sắc</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Shale Black</span></td></tr><tr class=\"row-info\" style=\"box-sizing: border-box;\" data-mce-style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 18.5209%; background-color: #f7f7f7 !important;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">Kích thước</span></td><td style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\" data-mce-style=\"box-sizing: border-box; padding: 8px; vertical-align: top; border: 1px solid #eeeeee; width: 78.4791%;\"><span style=\"color: #000000;\" data-mce-style=\"color: #000000;\">363 x 247.5 x 19.9 (mm)</span></td></tr></tbody></table>\n									<p></p>', 11990000, 0, 11990000, 12, 1, 1, 'laptop-acer-aspire-3-a315-56-37dv', 'OK', '2020-05-29 08:30:59', '2020-05-29 08:30:59'),
(13, '[\"15908439420.webp\",\"15908439421.webp\"]', 'Product-4', 'ABCXYZ', 100000, 0, 100000, 10, 1, 1, 'product-4', 'Deleted', '2020-05-30 13:05:42', '2020-05-30 13:05:42'),
(14, '[\"15918405870.webp\",\"15918405871.webp\"]', 'Bàn phím DareU EK169', '<b>Bảo Hành:</b> 24 tháng<br/>\n<b>Switch ::</b> D Switch - Blue/Red/Brown<br/>\n<b>Led:</b> Rainbow<br/>', 690000, 10, 621000, 10, 2, 2, 'ban-phim-dareu-ek169', 'OK', '2020-06-11 01:56:27', '2020-06-11 01:56:27'),
(15, '[\"15918414240.webp\",\"15918414241.webp\"]', 'Bàn phím cơ DareU EK520 Optical', '<b>Bảo Hành:</b> 24 tháng<br/>\n<b>Switch :</b> D Switch - Blue<br/>\n<b>Led:</b> RGB<br/>', 890000, 20, 712000, 10, 2, 2, 'ban-phim-co-dareu-ek520-optical', 'OK', '2020-06-11 02:10:24', '2020-06-11 02:10:24'),
(16, '[\"15918415080.webp\",\"15918415081.webp\"]', 'Bàn phím Gaming DareU EK1280 RGB 2019', '<b>Bảo Hành:</b> 24 tháng<br/>\n<b>Switch :</b> D Switch - Blue/Brown/Red<br/>\n<b>Led:</b> RGB<br/>', 1080000, 30, 756000, 10, 2, 2, 'ban-phim-gaming-dareu-ek1280-rgb-2019', 'OK', '2020-06-11 02:11:48', '2020-06-11 02:11:48'),
(19, '[\"15918419330.webp\",\"15918419331.webp\",\"15918419332.jpg\"]', 'Laptop Gaming ACER Predator Helios PH315 52 78MG', '<p><strong>\n										</strong></p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-acer-predator-helios-ph315-52-78mg-13442_d9ae07be3aa34c4ab31bf16bae0474d3.jpg\" data-mce-src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-acer-predator-helios-ph315-52-78mg-13442_d9ae07be3aa34c4ab31bf16bae0474d3.jpg\" width=\"800px\" height=\"600px\"></p><p><span style=\"font-size: 15pt;\" data-mce-style=\"font-size: 15pt;\"><strong>Thông số kỹ thuật:</strong></span><span style=\"font-size: 15pt;\" data-mce-style=\"font-size: 15pt;\"><strong></strong></span></p><table border=\"3\" width=\"100%\" cellpadding=\"3\" cellspacing=\"3\" style=\"height: 500px; margin-left: auto; margin-right: auto;\" data-mce-style=\"height: 500px; margin-left: auto; margin-right: auto;\"><tbody><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Hãng sản xuất&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Acer</span></strong></p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Tên sản phẩm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Predator Helios PH315-52-78MG NH.Q53SV.009</span></strong></p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Bộ vi xử lý</span></strong><span>&nbsp;</span></p></td></tr><tr><td width=\"218\"><p><span>Bộ vi xử lý</span></p></td><td width=\"408\"><p><span>Intel® Core™ i7-9750H</span></p></td></tr><tr><td width=\"218\"><p><span>Tốc độ</span></p></td><td width=\"408\"><p>2.6 upto 4.5GHz, 6 nhân 12 luồng</p></td></tr><tr><td width=\"218\"><p><span>Bộ nhớ đệm</span></p></td><td width=\"408\"><p><span>12MB Cache</span></p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Bộ nhớ trong&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Dung lượng</span></p></td><td width=\"408\"><p><span>8GB DDR4 2666MHz&nbsp;, Nâng cấp tối đa 32GB</span></p></td></tr><tr><td width=\"218\"><p><span>Số khe cắm</span></p></td><td width=\"408\"><p>&nbsp;2 khe cắm ram&nbsp;</p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Ổ cứng&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Dung lượng</span></p></td><td width=\"408\"><p>512GB SSD M2 PCIe NVMe</p></td></tr><tr><td width=\"218\"><p><span>Tốc độ vòng quay</span></p></td><td width=\"408\"><p>&nbsp;</p></td></tr><tr><td width=\"218\"><p><strong><span>Ổ đĩa quang (ODD)&nbsp;</span></strong></p></td><td width=\"408\"><p><span>&nbsp;Không</span></p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Hiển thị&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Màn hình</span></p></td><td width=\"408\"><p><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">15.6\" display with IPS (In-Plane Switching) technology, Full HD 1920 x 1080, high-brightness (300 nits) Acer ComfyViewTM LED-backlit TFT LCD, supporting 144 Hz, 3 ms Overdrive</span></p></td></tr><tr><td width=\"218\"><p><span>Độ phân giải</span></p></td><td width=\"408\"><p><span>1920x1080</span></p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Đồ Họa (VGA)&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Card màn hình</span></p></td><td width=\"408\"><p>nVidia Geforce GTX 1660Ti 6GB DDR6</p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Kết nối (Network)&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Wireless</span></p></td><td width=\"408\"><p><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">WLAN:<br>• Killer™ Wireless-AC 1550 / 1550i<br>• 802.11a/b/g/n/ac wireless LAN<br>• Dual Band (2.4 GHz and 5 GHz)<br>• 2x2 MU-MIMO technology</span></p></td></tr><tr><td width=\"218\"><p><span>Lan</span></p></td><td width=\"408\"><p>• Killer™ Ethernet E2500<br>• Gigabit Ethernet<br>• Wake-on-LAN ready</p></td></tr><tr><td width=\"218\"><p><span>Bluetooth</span></p></td><td width=\"408\"><p>Bluetooth 5.0</p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Bàn phím , Chuột&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Kiểu bàn phím</span></p></td><td width=\"408\"><p><span>Bàn phím tiêu chuẩn, có bàn phím số - Đèn nền bàn phím RGB</span></p></td></tr><tr><td width=\"218\"><p><span>Chuột</span></p></td><td width=\"408\"><p><span>Cảm ứng đa điểm</span></p></td></tr><tr><td colspan=\"2\" width=\"628\"><p><strong><span>Giao tiếp mở rộng&nbsp;</span></strong></p></td></tr><tr><td width=\"218\"><p><span>Kết nối USB</span></p></td><td width=\"408\"><p>1 x USB Type C (thunderbolt)&nbsp;<br>2 x USB 3.1 gen 1<br>1 x USB 3.1 gen 2(with power off charging)</p></td></tr><tr><td width=\"218\"><p><span>Kết nối HDMI/VGA</span></p></td><td width=\"408\"><p><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">1 x Mini Display port<br>1 x HDMI</span></p></td></tr><tr><td width=\"218\"><p><span>Khe cắm thẻ nhớ</span></p></td><td width=\"408\"><p><span>không</span></p></td></tr><tr><td width=\"218\"><p><span>Tai nghe</span></p></td><td width=\"408\"><p>1 x Headset/speaker jack</p></td></tr><tr><td width=\"218\"><p><span>Camera</span></p></td><td width=\"408\"><p><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">HD webcam with 1280 x 720 resolution, 720p HD audio/video recording and Super high dynamic range imaging (SHDR)</span></p></td></tr><tr><td width=\"218\"><p><strong><span>Dung lượng pin</span></strong></p></td><td width=\"408\"><p><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">59Whr Li-ion battery</span></p></td></tr><tr><td width=\"218\"><p><strong><span>Sạc pin</span></strong></p></td><td width=\"408\"><p><span>Đi kèm</span></p></td></tr><tr><td width=\"218\"><p><strong><span>Hệ điều hành đi kèm</span></strong></p></td><td width=\"408\"><p><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">Windows 10 Home</span></p></td></tr><tr><td width=\"218\"><p><strong><span>Trọng Lượng</span></strong></p></td><td width=\"408\"><p><span>2.4kg</span></p></td></tr><tr><td width=\"218\"><p><strong><span>Màu sắc</span></strong></p></td><td width=\"408\"><p>Đen</p></td></tr></tbody></table>', 37990000, 5, 36090500, 5, 1, 1, 'laptop-gaming-acer-predator-helios-ph315-52-78mg', 'OK', '2020-06-11 02:18:53', '2020-06-11 02:18:53');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Liêu Hoàng Long', 'shinlong1998@gmail.com', '$2y$10$jU/HjlBds1XSGgkACzHTwOpjUH1uSpzbMcmKUhx01tULOLoHo6sbG', '18 Trần Hưng Đạo', '0903232312', 'Admin', 'OK', NULL, NULL),
(2, 'Trang123', 'abc@gmail.com', '$2y$10$7GOw7.8AueE0Q4pFO87aDOZ0xyHR7AjRiG4gdOV0MmzTSP4RWlVmS', '123 ABC', '0903234123', 'Admin', 'OK', '2020-05-30 06:49:52', '2020-05-30 07:04:37'),
(3, 'Hào', 'abc123@yahoo.com', '$2y$10$8E16SU2icJgworussJSrceEUXs1n2P3zQromHHQO1ZAynET1hpdRu', 'sdfdsf', '0903826341', 'Member', 'OK', '2020-05-30 06:50:38', '2020-05-30 06:50:38'),
(4, 'Hào Nguyễn', 'abc5@gmail.com', '$2y$10$YDkk1bP7PpOuMgYO5TVIle9XwluquG1HMnw3zxgjzMhM/IEFrkgsi', 'ABC Nguyễn Văn Cừ', '0903826341', 'Member', 'OK', '2020-05-30 06:51:35', '2020-05-30 06:51:35');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `manufactuers`
--
ALTER TABLE `manufactuers`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- テーブルのインデックス `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- テーブルのインデックス `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- テーブルのインデックス `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `manufactuers`
--
ALTER TABLE `manufactuers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- テーブルのAUTO_INCREMENT `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
