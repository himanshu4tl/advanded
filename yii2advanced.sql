-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2015 at 02:16 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '66Q7983hLkvU0h7VjddqiAVIRAbWmVJ8', '$2y$13$RhKZfh/wJY1th4mCZNbhf.K/OeYFHEk/5xfqmksJFEIYdcYkRSt6G', NULL, 'admin@todooli.com', 0, 1444566629, 1444566629);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE IF NOT EXISTS `device` (
`d_id` bigint(20) NOT NULL,
  `d_udid` varchar(256) NOT NULL,
  `d_token` varchar(256) NOT NULL,
  `d_userid` bigint(20) NOT NULL,
  `d_key` text NOT NULL,
  `d_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1-iphone,2-android',
  `d_created` datetime NOT NULL,
  `d_modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`d_id`, `d_udid`, `d_token`, `d_userid`, `d_key`, `d_type`, `d_created`, `d_modified`) VALUES
(1, '', 'a465f77dee0aa1b5', 1, 'b07778c6d10fba9112bd7fd17da24017', '2', '2015-05-01 02:32:52', '2015-05-01 04:50:22'),
(2, '', ' a465f77dee0aa1b5', 1, 'ad0a7984cec18e1355f37655f9bd6682', '2', '2015-05-01 03:07:22', '0000-00-00 00:00:00'),
(3, '', '11111', 5, '2f0f73bea586b07360ef9b8c47adf464', '2', '2015-05-01 05:04:15', '0000-00-00 00:00:00'),
(4, '', '11111', 3, '106011cdf86b47bf437f2a47e655a329', '2', '2015-05-01 05:04:45', '0000-00-00 00:00:00'),
(5, '', 'a465f77dee0aa1b5', 6, '78592165630e7649c34e93591023bc39', '2', '2015-05-01 05:31:26', '2015-05-02 02:45:36'),
(6, '', 'a465f77dee0aa1b5', 17, '4ddf26273bebec62f54ff71b976eb1d1', '2', '2015-05-02 01:29:45', '2015-05-07 05:14:55'),
(7, '', 'a465f77dee0aa1b5', 21, 'e9db001b730cf15d855f9e7fa721a8e9', '2', '2015-05-02 03:15:01', '0000-00-00 00:00:00'),
(8, '', 'a465f77dee0aa1b5', 24, 'cdba6ecc17e543726fc8098f63e54464', '2', '2015-05-02 04:03:32', '2015-05-02 04:09:35'),
(9, '', 'a465f77dee0aa1b5', 26, '82e24267134d2928bd516d7338c9506c', '2', '2015-05-02 04:18:58', '2015-05-02 06:32:14'),
(10, '', 'a465f77dee0aa1b5', 29, '2aa2cc36965ee48a350650a60cb5ad73', '2', '2015-05-02 05:03:29', '2015-05-02 06:31:35'),
(11, '', 'a465f77dee0aa1b5', 30, '217f324f6ee0999a411225e924add18f', '2', '2015-05-02 05:32:20', '0000-00-00 00:00:00'),
(12, '', 'a465f77dee0aa1b5', 31, '5154b473f063632853d2971653da1681', '2', '2015-05-02 06:34:08', '2015-05-05 01:06:20'),
(13, '', 'a465f77dee0aa1b5', 32, '78ca8cb956979a3ecf82d1678858e5a5', '2', '2015-05-02 06:42:51', '2015-05-06 10:27:11'),
(14, '', 'a465f77dee0aa1b5', 19, 'c573c936f4c36a3828d9bc5f7bc92339', '2', '2015-05-02 07:18:36', '0000-00-00 00:00:00'),
(15, '', 'a465f77dee0aa1b5', 33, '43f77b41ad7c90440d4738a421e740d7', '2', '2015-05-04 10:24:11', '2015-05-25 11:23:59'),
(16, '', 'a465f77dee0aa1b5', 34, '90c6a09f7d77634318677941f46b1958', '2', '2015-05-04 10:54:59', '2015-05-04 11:07:30'),
(17, '', 'a465f77dee0aa1b5', 35, '6286940c3cbe49e0d248df5ecba64219', '2', '2015-05-04 11:12:44', '2015-05-07 02:39:46'),
(18, '', 'a465f77dee0aa1b5', 36, 'eeaa15b67ae58ca25295a3e21ada55c0', '2', '2015-05-04 11:26:19', '2015-05-04 11:26:53'),
(19, '', 'a465f77dee0aa1b5', 37, 'dec1d8abf681048c96f9ad2ca51aa71b', '2', '2015-05-04 12:25:43', '2015-05-04 06:14:51'),
(20, '', 'a465f77dee0aa1b5', 38, '9858832a468befd9c25de74e2742e1e9', '2', '2015-05-04 03:23:02', '2015-05-04 03:24:20'),
(21, '', '123132123', 3, '7c26fdf3cc5416103e00a3475efff026', '2', '2015-05-04 03:59:24', '0000-00-00 00:00:00'),
(22, '', 'a465f77dee0aa1b5', 39, '113ce17aafa8b15aff3185326bd54d32', '2', '2015-05-04 04:03:36', '0000-00-00 00:00:00'),
(23, '', 'a465f77dee0aa1b5', 40, '7d38e4b2f77fc282fc675e2c6a01654f', '2', '2015-05-04 04:11:54', '0000-00-00 00:00:00'),
(24, '', 'a465f77dee0aa1b5', 41, '9a2ce7c7ccc4456883579d9e4db76823', '2', '2015-05-04 04:13:00', '2015-05-04 04:16:37'),
(25, '', 'a465f77dee0aa1b5', 42, '2092997b484c0a45ea900f2e90d1f385', '2', '2015-05-04 04:27:02', '2015-05-04 04:27:22'),
(26, '', 'a465f77dee0aa1b5', 43, '7a0a33b11f7ca2a4233537338925ca1d', '2', '2015-05-04 04:38:42', '2015-05-04 04:38:56'),
(27, '', 'a465f77dee0aa1b5', 44, '34dd13106a4916ec92307eb745b331f5', '2', '2015-05-04 04:44:06', '0000-00-00 00:00:00'),
(28, '', 'a465f77dee0aa1b5', 45, 'eada8dee52b6560391c0de79babef68b', '2', '2015-05-04 04:49:54', '2015-05-04 05:02:34'),
(29, '', 'a465f77dee0aa1b5', 51, '85b09d3f4205c3178b7a006874099852', '2', '2015-05-05 12:42:27', '2015-05-05 01:11:07'),
(30, '', 'a465f77dee0aa1b5', 52, 'be7f0cbd8eb5237b886ee7b599f296ca', '2', '2015-05-05 12:45:08', '0000-00-00 00:00:00'),
(31, '', 'a465f77dee0aa1b5', 53, '6e9cdd202ddf03653f62435b4b18b1fc', '2', '2015-05-05 04:31:50', '2015-05-05 04:35:43'),
(32, '', '1111111', 33, 'bcd22812758010715f5b314e60a1599a', '1', '2015-05-07 07:10:05', '2015-05-12 02:58:56'),
(33, '', ' a465f77dee0aa1b5', 33, '85ff5d3ee91cc1c282cd40068c03a78b', '2', '2015-05-07 08:09:16', '2015-05-18 04:18:48'),
(34, '', '889c86e44200376c', 33, 'f59d160c18e0f7d2a09c25ea2bf5aab4', '2', '2015-05-11 10:45:16', '2015-05-15 04:04:49'),
(35, '', 'a465f77dee0aa1b5', 78, 'b5935aea0bd3cee36a5f7588270d0519', '2', '2015-05-11 12:53:53', '2015-05-11 02:38:28'),
(36, '', 'a465f77dee0aa1b5', 80, '4b7c3529356197d1dde798fb500d0386', '2', '2015-05-11 01:05:19', '0000-00-00 00:00:00'),
(37, '', 'a465f77dee0aa1b5', 81, 'acb2094f1a884ffd76e1d10b9f885841', '2', '2015-05-11 01:07:23', '0000-00-00 00:00:00'),
(38, '', 'a465f77dee0aa1b5', 83, '7a2c72bb753a686d3a9bca39716b12a5', '2', '2015-05-11 01:23:25', '2015-05-11 01:30:56'),
(39, '', 'a465f77dee0aa1b5', 84, '550274c8e34ec85a5c54fabfaa9b844e', '2', '2015-05-11 02:40:38', '2015-05-14 11:06:06'),
(40, '', 'a465f77dee0aa1b5', 85, '69b8a85a8b9c89d08dad6ca91ada40ea', '2', '2015-05-11 02:56:48', '2015-05-11 02:57:43'),
(41, '', '11111111', 33, 'adfa0f02f084a8baa91e1a41983d0dcf', '1', '2015-05-12 08:47:28', '0000-00-00 00:00:00'),
(42, '', 'a465f77dee0aa1b5', 103, 'b4c6de76b5c792e17f41d6468b071972', '2', '2015-05-14 10:26:40', '2015-05-14 10:47:08'),
(43, '', '1111111', 108, '2c3cd1f2f0049113647124230ada0a72', '1', '2015-05-14 10:41:31', '0000-00-00 00:00:00'),
(44, '', '1111111', 110, 'ab1b21d8c892579d25a3d68042f59164', '1', '2015-05-14 10:44:27', '2015-05-18 03:16:41'),
(45, '', 'a465f77dee0aa1b5', 111, 'f3ee3e8b98cc6d7edc2096df01f6aa82', '2', '2015-05-14 10:48:19', '2015-05-18 05:50:11'),
(46, '', 'a465f77dee0aa1b5', 112, '66c588f42cae48b0d69920690dee1dcb', '2', '2015-05-14 10:57:49', '0000-00-00 00:00:00'),
(47, '', 'a465f77dee0aa1b5', 115, 'c53da7f84bab2d855827b45a192068ac', '2', '2015-05-15 03:19:23', '0000-00-00 00:00:00'),
(48, '', 'a465f77dee0aa1b5', 116, '49fd28826e7d2b689f22f1b60feff1bd', '2', '2015-05-15 06:58:10', '0000-00-00 00:00:00'),
(49, '', '45bd5b17a054c16e', 101, '3a8b15c7bc0a10b24ef996bc713c8a2a', '2', '2015-05-16 02:04:39', '0000-00-00 00:00:00'),
(50, '', 'a465f77dee0aa1b5', 121, '19966432ff2d4c2b4919b78af4e1ecc4', '2', '2015-05-17 11:28:17', '2015-05-17 11:34:10'),
(51, '', 'a465f77dee0aa1b5', 122, '4a8f518ebd1e1ffaebb8f88a52665a35', '2', '2015-05-18 03:32:41', '0000-00-00 00:00:00'),
(52, '', 'a465f77dee0aa1b5', 123, '60683963ce69bce210d88879e42c4140', '2', '2015-05-18 04:02:47', '2015-05-18 04:28:56'),
(53, '', 'a465f77dee0aa1b5', 124, 'da798df9cb8b7ace0119212a9ed18899', '2', '2015-05-18 05:01:43', '2015-05-18 05:07:23'),
(54, '', 'a465f77dee0aa1b5', 125, '8cb809e3598f7ceade8f0bfb1440ec58', '2', '2015-05-18 05:13:42', '0000-00-00 00:00:00'),
(55, '', '6b55f87a6f4574a3', 33, 'ffdf34c883ab83211e0fd042db59b3dc', '2', '2015-05-18 06:07:32', '0000-00-00 00:00:00'),
(56, '', '6b55f87a6f4574a3', 124, 'f9e79a491dd7c15dd7f40286e7775fd9', '2', '2015-05-18 06:33:31', '2015-05-18 06:58:44'),
(57, '', '6fca8e868ddc5542', 33, '9e0a883bbf69020bf708dc7345374458', '2', '2015-05-18 06:39:09', '0000-00-00 00:00:00'),
(58, '', '6fca8e868ddc5542', 124, '6108269d5c56aabb768c0fb79020359c', '2', '2015-05-18 06:45:18', '0000-00-00 00:00:00'),
(59, '', 'a465f77dee0aa1b5', 126, '30c5b07b8b274259c1c1c4d6b6af9e1a', '2', '2015-05-18 07:03:05', '0000-00-00 00:00:00'),
(60, '', 'a465f77dee0aa1b5', 128, '5e49e86f304d4f021878fdc8ae1a182d', '2', '2015-05-18 10:46:16', '2015-05-19 12:19:41'),
(61, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 135, '90eea7862812c4ba2481be7fcd007afa', '1', '2015-05-19 02:27:02', '2015-05-30 06:47:08'),
(62, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 140, '757e3b9ab026e44788a2f0f9223b2e3b', '1', '2015-05-19 03:35:52', '0000-00-00 00:00:00'),
(63, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 143, 'f3f8f7245628c9dda6fc81808d032b3a', '1', '2015-05-21 04:05:48', '0000-00-00 00:00:00'),
(64, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 145, '8b2d6340979b9e1dd68ecdff4b5dd59d', '1', '2015-05-22 04:12:50', '2015-05-22 05:21:11'),
(65, '', 'a465f77dee0aa1b5', 146, '2953bc7587a78c898dc79a7bd65abe11', '2', '2015-05-22 05:29:08', '2015-05-22 05:32:31'),
(66, '', 'a465f77dee0aa1b5', 147, 'bd3418860f1021c048eb57b3b27b8b4a', '2', '2015-05-22 05:37:15', '0000-00-00 00:00:00'),
(67, '', 'a465f77dee0aa1b5', 148, '8fefa3d8832f0bcf31dd8e1312f56e6d', '2', '2015-05-22 05:49:24', '0000-00-00 00:00:00'),
(68, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 141, 'b73d387d176245d72e451917a2ab76b2', '1', '2015-05-22 06:13:58', '0000-00-00 00:00:00'),
(69, '', 'a465f77dee0aa1b5', 150, '147d3c357c15cc82fa1b5593d8e58190', '2', '2015-05-22 06:15:26', '0000-00-00 00:00:00'),
(70, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 149, '80a7103590a84da8a57393424195feab', '1', '2015-05-22 06:15:45', '0000-00-00 00:00:00'),
(71, '', 'a465f77dee0aa1b5', 151, '9ce0364501757fb43839bd3e5e910419', '2', '2015-05-24 11:02:51', '2015-05-25 12:23:54'),
(72, '', 'a465f77dee0aa1b5', 152, '683c0a63301ab76f4c37f728f9442b20', '2', '2015-05-25 02:06:57', '0000-00-00 00:00:00'),
(73, '', 'EA71603A-EB8D-400A-B80F-2DFCC69F7576', 153, '7b09e38fc40415965704204ff331bb80', '1', '2015-05-25 02:16:25', '2015-05-30 07:21:32'),
(74, '', 'a465f77dee0aa1b5', 154, '4df352faf0c771e6cba495bac8a0d588', '2', '2015-05-25 02:25:13', '2015-05-25 02:25:31'),
(75, '', 'a465f77dee0aa1b5', 156, '44c42a5eb1bca142ffd549026140cfbc', '2', '2015-05-25 03:04:59', '2015-05-30 12:25:17'),
(76, '', 'a465f77dee0aa1b5', 157, '558df7e8ee12bbce891d3b5132dcfdd6', '2', '2015-05-25 03:21:03', '0000-00-00 00:00:00'),
(77, '', '6fca8e868ddc5542', 156, 'ebb045735801b95dd55714aa243533b4', '2', '2015-05-25 05:01:51', '2015-05-29 05:39:28'),
(78, '', '889c86e44200376c', 156, '77559d4d41160d198e8a917fc77661c0', '2', '2015-05-25 05:21:36', '2015-05-30 05:20:38'),
(79, '', '6fca8e868ddc5542', 153, 'd518e5794ddd56d78c3be4a1208b959c', '2', '2015-05-25 05:22:29', '2015-05-27 03:09:56'),
(80, '', '6fca8e868ddc5542', 158, '9dbdf383721679d88d6c54d0ece9fbd0', '2', '2015-05-25 05:37:07', '2015-05-25 06:36:06'),
(81, '', 'a465f77dee0aa1b5', 158, '6696a733aa2d905fc822e6a74cb0d045', '2', '2015-05-25 05:41:59', '2015-05-27 04:50:15'),
(82, '', '889c86e44200376c', 153, '6fa08ed6bc9206a37ff98a4768568538', '2', '2015-05-25 05:57:41', '2015-05-29 11:15:02'),
(83, '', '889c86e44200376c', 158, 'fe7486b60a214770758e8f2cb3f44a2b', '2', '2015-05-25 09:18:33', '0000-00-00 00:00:00'),
(84, '', 'a465f77dee0aa1b5', 153, 'e8f3a00b8d5c2bb681d2c08ceb72e103', '2', '2015-05-25 10:55:59', '2015-05-27 04:44:43'),
(85, '', 'a465f77dee0aa1b5', 159, '73e12dfee34d34caf14d00f7d61f9e98', '2', '2015-05-25 11:49:47', '2015-05-25 11:50:21'),
(86, '', 'a465f77dee0aa1b5', 160, 'ec5556ebf9ebdadbcf6c6fad51aac009', '2', '2015-05-26 03:39:23', '2015-05-26 05:09:48'),
(87, '', '4688a5f3b57dd7da', 156, '606495d91c662a153abe8f9f72434a7a', '2', '2015-05-26 07:04:19', '2015-05-26 07:13:12'),
(88, '', '4688a5f3b57dd7da', 160, 'd0f01ef633d3fe11c92715e63ea52e23', '2', '2015-05-26 07:14:52', '2015-05-26 07:17:44'),
(89, '', '4f88057fc9629cc3', 153, '3184a252d33218074da47a5d59c4de9f', '2', '2015-05-27 10:42:49', '0000-00-00 00:00:00'),
(90, '', 'a465f77dee0aa1b5', 162, '48fb4b80c1921de6c3e8999192de3958', '2', '2015-05-28 05:05:37', '0000-00-00 00:00:00'),
(91, '', 'a465f77dee0aa1b5', 163, '323d2626a0b381199384807dda624d00', '2', '2015-05-28 06:01:54', '0000-00-00 00:00:00'),
(92, '', '86F7C390-A365-4D23-950C-DB3263E175EB', 101, '90746b2d8b073d9c5220e6f0a707a50d', '1', '2015-05-28 05:42:42', '0000-00-00 00:00:00'),
(93, '', 'a465f77dee0aa1b5', 101, '57a7cff46f8341002537e47a41d2b008', '2', '2015-05-29 04:43:13', '0000-00-00 00:00:00'),
(94, '', 'a465f77dee0aa1b5', 164, 'a6a2a99c9d0305e33e986c1b209b8b8e', '2', '2015-05-29 04:46:56', '2015-05-30 03:35:45'),
(95, '', '6fca8e868ddc5542', 165, '658b37711e4528d4f73f2551b550bce2', '2', '2015-05-29 05:10:08', '2015-05-29 05:38:35'),
(96, '', '1111111', 165, 'a587247078b5da0295eb4fd47d58c271', '1', '2015-05-29 05:44:30', '2015-05-30 04:26:09'),
(97, '', '1111111', 156, '5b34f648c301be7129462e0ff6ec31bd', '1', '2015-05-29 05:45:07', '0000-00-00 00:00:00'),
(98, '', '6fca8e868ddc5542', 166, '6c77ca92a722ef9700827b61597d5c25', '2', '2015-05-29 05:48:54', '2015-05-29 05:52:10'),
(99, '', 'a465f77dee0aa1b5', 167, '094f83f19b425e85097bbef3440f51e4', '2', '2015-05-29 06:02:46', '0000-00-00 00:00:00'),
(100, '', 'a465f77dee0aa1b5', 168, '1430ac613fd2e07e3aadee5c96a5d87a', '2', '2015-05-29 06:05:51', '0000-00-00 00:00:00'),
(101, '', '889c86e44200376c', 165, '5bdbef507f5cc0db6abdf2e020ade3d5', '2', '2015-05-29 11:30:12', '2015-05-29 11:32:57'),
(102, '', '889c86e44200376c', 168, '99cd79d3f128a2375ab8ac3439e7e8cf', '2', '2015-05-30 01:52:11', '0000-00-00 00:00:00'),
(103, '', '2aaf90b20d4abd14', 165, 'c8a3adf80e31328b16482cfc3e79c072', '2', '2015-05-30 02:14:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1433953352),
('m130524_201442_init', 1433953356);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(155) NOT NULL,
  `contactNo` varchar(255) NOT NULL,
  `username` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL,
  `status` int(2) NOT NULL,
  `cr_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `firstname`, `lastname`, `email`, `photo`, `contactNo`, `username`, `password`, `status`, `cr_date`) VALUES
(1, 'Gail', 'Mirchandani', 'info@insuranconnectapp.com', '300614121333160614052306MWnXpX6NWWz129M5.png', '9253545400', 'admin', 'YWRtaW5AMTIz', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agency`
--

CREATE TABLE IF NOT EXISTS `tbl_agency` (
`id` int(11) NOT NULL,
  `agecyId` int(5) NOT NULL,
  `agencyType` varchar(55) NOT NULL,
  `agencyName` varchar(255) NOT NULL,
  `agencyInfo` text NOT NULL,
  `agencyLogo` varchar(255) NOT NULL,
  `contactPerson` varchar(255) NOT NULL,
  `contactNo` varchar(100) NOT NULL,
  `officeNo` varchar(25) NOT NULL,
  `faxNo` varchar(25) NOT NULL,
  `webSiteUrl` varchar(155) NOT NULL,
  `address` varchar(555) NOT NULL,
  `city` varchar(155) NOT NULL,
  `pinCode` varchar(50) NOT NULL,
  `state` varchar(155) NOT NULL,
  `country` varchar(155) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_online` int(2) NOT NULL DEFAULT '0',
  `notifications` int(11) NOT NULL DEFAULT '1',
  `notifications_preview` int(11) NOT NULL DEFAULT '0',
  `notifications_sound` int(11) NOT NULL DEFAULT '0',
  `notifications_email` int(11) NOT NULL DEFAULT '0',
  `deviceToken` text NOT NULL,
  `fpassword_confirm` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `cr_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agency`
--

INSERT INTO `tbl_agency` (`id`, `agecyId`, `agencyType`, `agencyName`, `agencyInfo`, `agencyLogo`, `contactPerson`, `contactNo`, `officeNo`, `faxNo`, `webSiteUrl`, `address`, `city`, `pinCode`, `state`, `country`, `email`, `username`, `password`, `is_online`, `notifications`, `notifications_preview`, `notifications_sound`, `notifications_email`, `deviceToken`, `fpassword_confirm`, `status`, `cr_date`) VALUES
(2, 271174, 'Other', 'shuban', '', 'F45_FINAL994791.jpg', '', '09974343332', '09974343332', '', '', '202, Santam complex\r\ngurukul road, Memnagar', 'Ahmedabad', '', 'Gujarat', 'India', 'patel.kalpeshbeit2010@gmail.com', 'shuban', '3c067f2e5c7c8329225706329f029ab7:39', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01'),
(14, 413651, 'Farmers', 'Gail Mirchandani', 'Test info', '', '', '898989898', '(925) 244-1300', '(925) 244-1878', '', '3150 Crow Canyon Place', 'Suite 100 San Ramon', '', 'CA 94583', 'USA', 'gailmirch@gmail.com', 'mirch', 'ce23f76cd1c04fb43f50e0f13ddfcc51:e0', 0, 1, 0, 0, 0, '', '', 0, '2015-05-13'),
(15, 299041, 'Farmers', 'insurence', 'testing', '8961762.PNG', '98989898989', '(898) 989-898', '(888', '(888) 8', '', 'mansa', 'mansa', '', 'Alabama', 'United States', 'insurence@gmail.com', 'insurence', '70fade46506e37d50eb2ddfc9a6213d2:d0', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(16, 290114, 'Other', 'vkgas', '', '', 'chirag patel', '', '', '', '', '', '', '', '', 'United States', 'chirag.mods@gmail.com', 'vkgas', '6c91ddc617a372b5531ead74b18690d2:23', 0, 1, 0, 0, 0, '', '', 0, '2015-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent`
--

CREATE TABLE IF NOT EXISTS `tbl_agent` (
`id` int(11) NOT NULL,
  `agencyId` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(55) NOT NULL,
  `contactNo` varchar(255) NOT NULL,
  `agent_photo` varchar(255) NOT NULL,
  `adress` text NOT NULL,
  `city` varchar(155) NOT NULL,
  `state` varchar(155) NOT NULL,
  `pinCode` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_online` int(11) NOT NULL DEFAULT '0',
  `notifications` int(2) NOT NULL DEFAULT '1',
  `notifications_preview` int(2) NOT NULL DEFAULT '0',
  `notifications_sound` int(2) NOT NULL DEFAULT '0',
  `notifications_email` int(2) NOT NULL DEFAULT '0',
  `deviceToken` text NOT NULL,
  `fpassword_confirm` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `cr_date` date NOT NULL,
  `chatId` varchar(15) NOT NULL COMMENT 'Chat id',
  `canned` varchar(256) NOT NULL,
  `timezone` varchar(256) NOT NULL,
  `start_time` time NOT NULL COMMENT 'Login Time',
  `end_time` time NOT NULL,
  `day` varchar(256) NOT NULL COMMENT 'All Day'
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agent`
--

INSERT INTO `tbl_agent` (`id`, `agencyId`, `firstName`, `lastName`, `email`, `position`, `contactNo`, `agent_photo`, `adress`, `city`, `state`, `pinCode`, `username`, `password`, `is_online`, `notifications`, `notifications_preview`, `notifications_sound`, `notifications_email`, `deviceToken`, `fpassword_confirm`, `status`, `cr_date`, `chatId`, `canned`, `timezone`, `start_time`, `end_time`, `day`) VALUES
(7, 2, 'kalpesh', 'patel', 'kalpesh@shubantechnologies.com', 'CEO ', '09974343332', 'user1688088.png', '202 , Santam complex, Gurukul                                                 ', 'Ahmedabad', 'Gujarat', '380052', 'kalpesh', '1a89c8412f15465ad921eb6d284931b0:7d', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01', '2999311', '', 'Asia/Calcutta', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(10, 2, 'himanshu', 'patel', 'fabsinfo2013@gmail.com', 'PHP Head', '(545) 354-3543', 'user4227652.png', '                                                                    ', 'Ahmedabad', 'Gujarat', '380052', 'himanshu', 'f93fd45fde1fd641b120a14090e8412c:e3', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01', '2999430', '', 'Asia/Calcutta', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(11, 2, 'amrut', 'ratnani', 'oyeamrut@gmail.com', 'Wordpress Expert', '(664) 565-4645', 'user-avatar047204.png', '                                                                    ', 'Rajkot', 'Gujarat', '360005', 'amrut10', '1b78d4e2f48abc1ee18a4debbfa87a4c:8c', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01', '2999442', '', 'Asia/Calcutta', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(14, 3, 'Joey', 'Maroney', 'joey@photocloudapp.com', '', '(818) 809-6311', 'PhotoCloud-square-White757400.png', '                                                                                                                                        ', '', '', '', 'joeymaroney', 'd8b9944cfa0d2ffa1867aac0cca8f6b6:9e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02', '3007226', '', 'Asia/Calcutta', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(15, 3, 'kalpesh', 'patel', 'patel.kalpeshbeit201011@gmail.com', 'CEO MYFIRM', '(665) 656-5656', 'user4752109.png', '                                                                    ', 'Ahmedabad', 'Gujarat', '380052', 'kalpesh_pc', 'a475d688098037bde127826234339418:3f', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02', '3007228', '', 'Asia/Calcutta', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(23, 2, 'pratik', 'shah', 'pratik@shubantechnologies.com', 'developer', '(562) 156-1561', '1419045813_Tulips458844.jpg', '                                                    ', '', '', '', 'pratik123', '6b9c8a4a02181ebd988c4410245a7e0a:07', 0, 1, 0, 0, 0, '', '', 0, '2015-05-12', '3100502', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(25, 2, 'my', 'staff', 'mystaf@mtechsolgfgg.com', '', '(656) 565-6576', '', '                                                                    ', '', '', '', 'mystaff', '6673d0a517f91124f7bb815677a0fef5:fa', 0, 1, 0, 0, 0, '', '', 0, '2015-05-12', '3100542', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(33, 14, 'Neal', 'Mirchandani', 'neal.mirchandani@gmail.com', 'agent', '(514) 651-5615', 'C350 Morro Bay-1214383.jpg', '                                                    ', '', '', '', 'neal', '6b9c8a4a02181ebd988c4410245a7e0a:07', 0, 1, 0, 0, 0, '', '', 0, '2015-05-13', '3101642', '', 'America/Los_Angeles', '09:00:00', '23:00:00', 'Sun,Mon,Tue,Wed,Thu,Fri,Sat'),
(34, 14, 'Himanshu', 'Patel', 'himanshu4dfg4@gmail.com', 'free', '(989) 898-9898', 'member835701.PNG', 'mansa                                                                    ', 'mansa', 'gujarat', '111', 'himanshu1', 'b3f466b61107fb04a036bc0e3d1b5835:2b', 0, 1, 0, 0, 0, '', '', 0, '2015-05-15', '3129969', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(35, 14, 'test21', 'patel', 'test201@gmail.com', '1111', '(989) 898-98', '2635799.PNG', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'test201', '833ed020b54965dfcfa84192ea48251b:42', 0, 1, 0, 0, 0, '', '', 0, '2015-05-17', '3147053', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(36, 14, 'test22', 'Patel', 'test202@gmail.com', '1111', '(989) 898', '2931397.PNG', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'test202', '366e97af1858f99c04a4617b241515a2:0b', 0, 1, 0, 0, 0, '', '', 0, '2015-05-17', '3147059', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(37, 14, 'test23', 'patel', 'test203@gmail.com', '1111', '(989) 898-98', '', '3150 Crow Canyon Place', 'Suite 100 San Ramon', 'CA 94583', '', 'test203', 'c769985715d722eebd0f0867ecf3f148:38', 0, 1, 0, 0, 0, '', '', 0, '2015-05-17', '3147672', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(38, 14, 'test24', 'patel', 'test204@gmail.com', 'home', '(989) 898-9898', '3823251.PNG', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'test204', 'f4659b937b7d59562820d367f745ff70:29', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18', '3147702', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(39, 15, 'Himanshu', 'patel', 'himanshu1@gmail.com', 'ceo', '(989) 898-98', '9480174.PNG', '                         ', 'gandhinagar', 'Alabama', '', 'himanshu9', '4784ed9296911906de97f08ca01c26c8:16', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18', '3148110', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(40, 2, 'Tom', 'cruz', 'tomcruz@gmail.com', 'Support staff', '(323) 232-3233', 'ic_launcher194668.png', '', '', '', '', 'tomcruz', '786601a70dfbfc90f60dfb18fc06c011:c3', 0, 1, 0, 0, 0, '', '', 0, '2015-05-28', '3261039', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(41, 14, 'staff2905', 'staff2905', 'test307user@gmail.com', 'CEO', '(989) 898-9898', '', '', '', '', '', 'staff2905', '4da3614b243bab16df60f2edba28a8d1:0b', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29', '', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(42, 14, 'TEST', 'TEST', 'test306user@gmail.com', 'test', '(989) 898-9898', '', '', '', '', '', 'staff2906', '837faa431c30a3f5552dc74852b34f7b:a1', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29', '', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(43, 14, 'TEST', 'TEST', 'test306.user@gmail.com', 'position', '(878) 787-8787', '', '', '', '', '', 'staff2929', 'e1b8c9fc0e0c227db267a88f6b795bdd:43', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29', '3274312', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(44, 14, 'STAFF', 'MIRCH', 'test307.user@gmail.com', 'Staff', '(789) 789-7897', '', '', '', '', '', 'stafftest', 'bb0acdeab1dd8943959ef32de4fe0774:49', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29', '3274346', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(45, 16, 'kalpesh', 'patel', 'kalpesh@callabhi.com', 'Agent', '(646) 565-6565', '', '', '', '', '', 'keval', 'e7f64c4d7ee390eb55035456101a24d6:a8', 0, 1, 0, 0, 0, '', '', 0, '2015-05-30', '3286794', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(46, 16, 'rozy', 'boss', 'rozyboss@callabhi.com', 'agent', '(565) 656-5656', '', '', '', '', '', 'rozy', '9f2cd6b86d772a7634c3cce229f12e69:6c', 0, 1, 0, 0, 0, '', '', 0, '2015-05-30', '3286805', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun'),
(47, 16, 'sujan', 'mahi', 'sujanmahi@callabhi.com', 'agent', '(465) 656-565', '', '', '', '', '', 'sujan', '0319901ca34e823154cac03f5085ad87:0a', 0, 1, 0, 0, 0, '', '', 0, '2015-05-30', '3286816', '', 'America/Los_Angeles', '09:00:00', '18:00:00', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_canned`
--

CREATE TABLE IF NOT EXISTS `tbl_canned` (
`id` int(11) NOT NULL,
  `Agent_id` int(11) NOT NULL COMMENT 'Agent''s Id',
  `title` varchar(256) NOT NULL COMMENT 'Title',
  `response` varchar(512) NOT NULL COMMENT 'Message'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_canned`
--

INSERT INTO `tbl_canned` (`id`, `Agent_id`, `title`, `response`) VALUES
(1, 1, '#hey', 'hey how are you??'),
(2, 8, '#hey', 'hey how are you??'),
(3, 7, '#hello', 'Hello how are you ?'),
(5, 8, '#hi', 'hi i am pratik'),
(6, 7, '#money', 'you need to go for setting tab and follow instruction for payment '),
(7, 7, '#test', '#test #test #test #test #test'),
(9, 1, 'Hello', 'Hello, how are you doing today?'),
(12, 33, '#hay', 'Hello, how are you doing?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
`id` int(11) NOT NULL,
  `chatId` int(11) NOT NULL COMMENT 'user chat id',
  `agencyId` int(11) NOT NULL DEFAULT '0',
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactNo` varchar(255) NOT NULL,
  `agent_photo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(155) NOT NULL,
  `state` varchar(155) NOT NULL,
  `pinCode` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(155) NOT NULL,
  `is_online` int(11) NOT NULL DEFAULT '0',
  `notifications` int(2) NOT NULL DEFAULT '1',
  `notifications_preview` int(2) NOT NULL DEFAULT '0',
  `notifications_sound` int(2) NOT NULL DEFAULT '0',
  `notifications_email` int(2) NOT NULL DEFAULT '0',
  `deviceToken` text NOT NULL,
  `fpassword_confirm` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `cr_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `chatId`, `agencyId`, `firstName`, `lastName`, `email`, `contactNo`, `agent_photo`, `adress`, `city`, `state`, `pinCode`, `username`, `password`, `is_online`, `notifications`, `notifications_preview`, `notifications_sound`, `notifications_email`, `deviceToken`, `fpassword_confirm`, `status`, `cr_date`) VALUES
(3, 2998625, 1, 'lisaaaaaaa', 'stone', 'sharp10692@hotmail.com', '12313', 'image178447.png', '                                                                    ', 'Los Angeles', 'California', '', 'lisa', 'd1f18e56917d98d71eb076a43850994a:77', 0, 1, 0, 0, 0, '', '9503', 1, '2015-05-01'),
(5, 2998926, 1, 'tony', 'stark', 'p.s106@hotmail.com', '485615156', '', '', '', '', '', 'tony', '302a30780f9dd61f2fdd2173489f1f5b:43', 0, 1, 0, 0, 0, '', '', 1, '2015-05-01'),
(8, 2999336, 2, 'komal', 'patel', 'kkpatel.8890@gmail.com', '09974343332', 'user2495876.png', '                                                                    ', 'Ahmedabad', '*Not Applicable', '380052', 'komal', '9da89400ba3e630c15a2b5cbbf00166d:55', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01'),
(10, 2999379, 2, 'chirag', 'patel', 'chirag.mods1@gmail.com', '(898) 989-8989', 'user3298270.png', '                                                                    ', 'Ahmedabad', 'Gujarat', '380052', '111111', '0d5c9ee3f78b0d630ca0dbbdc05febbb:3b', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01'),
(11, 2999462, 2, 'mayank', 'patel', 'pratik11111@shubatechnologies.com', '(261) 656-1561', 'user-avatar564339.png', 'Broadway Strret                                                                    ', 'los Angeles', 'California', '2656465', 'mayank', '95222b409fd57e02fd488efe382a886c:2f', 0, 1, 0, 0, 0, '', '', 0, '2015-05-01'),
(17, 3006445, 2, 'div', 'div', 'div@gmail.com', '33323223', '', '', '', '', '', 'div', '10ac4846dca9b8a79ce6e429dbe34c3d:e8', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(18, 3006892, 2, 'test9921', 'test9921', 'test9921@gmail.com', '5453', '', '', '', '', '', 'test9921', 'c5add77af58572bd5f02665f8db6db03:48', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(19, 3006913, 2, 'test567', 'test567', 'test567@gmail.com', '545535', '', '', '', '', '', 'test567', '1e438dbfc0481525e0960c0413f9ce5f:1d', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(20, 3006963, 2, 'vish', 'vish', 'vish@gmail.com', '43543535', '', '', '', '', '', 'vish', '0b1cd0e6f1fc566cab52d093a7006fb2:81', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(22, 0, 3, 'Test', 'Customer', 'customer@marshalltechservices.com', '(818) 809-6311', '', '                                                    ', '', '', '', 'test_customer_1', '2f61794dfed70a26388a49ad2efff5eb:fe', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(23, 0, 3, 'lisa', 'patel', 'testlisa@gmail.com', '(656) 565-6565', 'user5332639.png', 'torento                                                    ', 'cal', 'california', '54455', 'lisa_pc', '0f4dfbe70a9663f745c7f3d5887c188c:b5', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(24, 3007322, 3, 'test134', 'test', 'test307@gmail.com', '12345', '', '', '', '', '', 'test307', '743be2d62a667f80c729ddf5d1dd9838:28', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(25, 3007412, 4, 'Customer', '1', 'qubs_customer1@gmail.com', '(566) 565-656', 'user2776344.png', '                                                                    ', 'Ahmedabad', 'Gujarat', '380052', 'qubs_customer1', 'd1f18e56917d98d71eb076a43850994a:77', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(26, 3007416, 3, 'jags', 'jags', 'jags@gmail.com', '323232323', '', '', '', '', '', 'jags', 'c0c2ccdcb74dbd475b6b1c1af8bb131d:2c', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(27, 3007425, 4, 'Customer', '2', 'qubs_customer2@gmail.com', '(656) 565-6566', 'user5901327.png', '                                                                    ', 'Rajkot', 'Gujarat', '360005', 'qubs_customer2', '3c067f2e5c7c8329225706329f029ab7:39', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(28, 3007455, 4, 'Customer', '3', 'qubs_customer3@gmail.com', '(465) 454-5454', 'user-avatar855846.png', '                                                                    ', 'Gandhinagar', 'Gujarat', '38202', 'qubs_customer3', 'aac2084225b1d9cf11498b16a19a06df:26', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(29, 3007766, 2, 'ss', 'ssss', 'ss@gmail.com', '443434', '', '', '', '', '', 'ss', 'de2bee8c1d0ddbf68cdf0bde1efb98b9:c2', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(30, 3007968, 2, 'tt', 'tt', 'tt@gmail.com', '43444', '', '', '', '', '', 'tt', 'beeae29945dc369f9d8593231190a63f:84', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(31, 3008410, 2, 'test123', 'test123', 'test123@gmail.com', '444223', '', '', '', '', '', 'test123', '146921e8e309fb4c6aac1e8d3a223c80:3f', 0, 1, 0, 0, 0, '', '8116', 0, '2015-05-02'),
(32, 3008476, 2, 'dp', 'dp', 'dp@gmail.com', '44435555', '', '', '', '', '', 'dp', 'c02f5e52626d318120a528b96e9115db:51', 0, 1, 0, 0, 0, '', '', 0, '2015-05-02'),
(33, 3022643, 2, 'tee', 'fdfd', 'dsdsf@gmail.com', '232323', 'images943796.jpg', '', 'Ahmadabad', 'Gujarat', '123456789', 'qaz', 'fcd04147f896b953ff99adb35f933051:cb', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(34, 3022771, 2, 'qwe', 'qwe', 'qwe@gmail.com', '1233', '', '', '', '', '', 'qwe', '321368af92c878029309259c4470595f:8a', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(35, 3022857, 2, 'asd', 'asd', 'asd@gmail.com', '123122', '', '', '', '', '', 'asd', 'fae2832742d30365f0442fbffc3e3c7b:5e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(36, 3022935, 2, 'zx', 'zx', 'zx@gmail.com', '122', '', '', '', '', '', 'zx', 'e1c3cb0b688b3b4325d4605a1a252b66:7e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(37, 3023267, 2, 'pop', 'pop', 'pop@gmail.com', '67866', '', '', '', '', '', 'pop', '6cf3af9ded1ca8cab82940f24bb64977:fa', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(38, 3024255, 2, 'j', 'p', 'j123@gmail.com', '9876543210', '', '', '', '', '', 'j123', '2081ed0ab3d3ae18fad3556920846b12:a4', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(39, 3024499, 2, 'test12', 'test12', 'test12@gmail.com', '435433452', '', '', '', '', '', 'test12', '9229cbfcb3e26f8b76f5ffa7956026db:89', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(40, 3024542, 2, 'td', 'td', 'td@gmail.com', '434343', '', '', '', '', '', 'td', '40aef7482aef8441f594d8b36bc8f860:eb', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(41, 3024552, 2, 'qw', 'qw', 'qw@gmail.com', '4343444', '', '', '', '', '', 'qw', '3385854facdd84acb74f37b475dd52d3:72', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(42, 3024647, 2, 'kk', 'kk', 'kk@gmail.com', '9787878787', '', '', '', '', '', 'kk', 'ed2c30d12265f80e7e9a7b151fc4ab14:a6', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(43, 3024733, 2, 'tg', 'tg', 'tg@gmail.com', '3444', '', '', '', '', '', 'tg', '8c53b307cc9ff650eb2585b481d45c80:f7', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(44, 3024777, 2, 'nm', 'nm', 'nm@gmail.com', '5645454', '', '', '', '', '', 'nm', '4075769303d9e30e16c8a5ab3752e0cf:64', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(45, 3024810, 2, 'ik', 'ik', 'ik@gmail.com', '42424242323', '', '', '', '', '', 'ik', '734a58f2a83d1ba6bb91c7ab5a326872:b5', 0, 1, 0, 0, 0, '', '', 0, '2015-05-04'),
(46, 3032085, 2, 'test12377', 'test12377', 'test1234577@gmail.com', '345353555', '', '', '', '', '', 'test12377', '06f3d1eef1f5dfe9147836e25bdf327a:b3', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(47, 0, 1, 'test123774', 'test123774', 'test12345776@gmail.com', '345353555', '', '', '', '', '', 'test123774', 'dccc39c7292bcb8734fa973e330444ab:c6', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(48, 0, 1, 'bv', 'bv', 'bv@gmail.com', '444424242', '', '', '', '', '', 'bv', 'c1c80e1c508147ba233b5c268b8ba732:13', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(49, 3032096, 2, 'bv', 'bv', 'bv5@gmail.com', '444424242', '', '', '', '', '', 'bvf', '982ec62bcba1118b5c51f6563707efc9:67', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(50, 3032101, 3, 'bv', 'bv', 'bv54@gmail.com', '444424242', '', '', '', '', '', 'bvf4', '3844bab4660091d04e42bcc73f7ad10d:a1', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(51, 3032112, 3, 'tr', 'tr', 'tr@gmail.com', '3434444', '', '', '', '', '', 'tr', '5240d69bdf3f6802571ed4c112b13afb:72', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(52, 0, 1, 'qa', 'qa', 'qa@gmail.com', '434232223', '', '', '', '', '', 'qa', '234ac56f563d9cd0c6d519850e275c2b:53', 0, 1, 0, 0, 0, '', '', 0, '2015-05-05'),
(53, 3033516, 2, 'dd', 'dd', 'divyang@xoomsolutions.com', '23223', '', '', '', '', '', 'dd', '9889991d07ea813bde336152401cc799:8c', 0, 1, 0, 0, 0, '', '7921', 0, '2015-05-05'),
(54, 0, 1, 'lisaaaaa', '45354345', 'xyz@gmail.com', '12313', '', '', '', '', '', 'lisa123', '6a9f63fcb8c6df831369456e8366265c:8f', 0, 1, 0, 0, 0, '', '', 0, '2015-05-08'),
(55, 0, 1, 'test12377', 'test12377', 'test1234577@gmail.com', '345353555', '', '', '', '', '', 'test12377', '825c7f0e91827cc05d4f16d93ded43f4:ea', 0, 1, 0, 0, 0, '', '', 0, '2015-05-08'),
(76, 3082538, 2, 'aza', 'aza', 'aza@gmail.com', '123121313', '', '', '', '', '', 'aza', '794c20854fb5bdede78a7fe8d6652b34:6e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-11'),
(77, 3082822, 2, 'fdf', 'fdfd', 'df@gmail.com', '323232', '', '', '', '', '', 'fd', 'be911234d108d0601988476f6fbf7624:cc', 0, 1, 0, 0, 0, '', '', 0, '2015-05-11'),
(78, 3082831, 2, 'pl', 'pl', 'pl@gmail.com', '344343434', '', '', '', '', '', 'pl', 'de5422a6cdb24dff5498fc93016826bc:97', 0, 1, 0, 0, 0, '', '', 0, '2015-05-11'),
(79, 3082860, 2, 'ytyt', 'yt', 'yt@gmail.com', '553433443', '', '', '', '', '', 'yt', 'dfbf209992a6ffb86b69f8d9c1bbd66f:56', 0, 1, 0, 0, 0, '', '', 0, '2015-05-11'),
(80, 3082892, 4, 'ds', 'ds', 'dsd@gmail.com', 'ds', '', '', '', '', '', 'ds', '99a1b5809d2410f1a29441403cfb9f49:20', 0, 1, 0, 0, 0, '', '', 0, '2015-05-11'),
(84, 3083379, 2, 'azaz', 'az', 'az@gmail.com', '434343435', '', '', '', '', '', 'az', '024a481f234082969aa178de051dee48:0e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-11'),
(101, 3101470, 14, 'yohan', 'marshall', 'p.s10692@gmail.com', '(561) 561-5156', 'C350 Modded796230.jpg', '                                                                                                                                        P.O. Box 852', 'Agoura Hills', 'California', '91377', 'yohan_m2', '78f65670bbe264eea3c0fcefb85847b9:09', 0, 1, 0, 0, 0, '', '', 0, '2015-05-13'),
(102, 3101665, 14, 'kalpesh', 'patel', 'patel.kalpeshbeit2010@gmail.com', '(165) 165-1651', 'Hydrangeas485066.jpg', '                                                                    ', '', '', '', 'kalpesh_m', '78f65670bbe264eea3c0fcefb85847b9:09', 0, 1, 0, 0, 0, '', '', 0, '2015-05-13'),
(103, 3119109, 2, 'jd', 'jd', 'jd@gmail.com', '6656565656', '', '', '', '', '', 'jd', 'b1c85532d59d4606e8708998cb2a97d7:31', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(104, 0, 1, 'lisaaaaaaa', '45354345', 'xyzaa@gmail.com', '12313', '', '', '', '', '', 'lisa123aa', '45d3516102632e8ac1a999ecfa6fc5cc:ef', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(105, 0, 1, 'lisaaaaaaa', '45354345', 'xyferfzaa@gmail.com', '12313', '', '', '', '', '', 'lisa1e23aa', 'ca87861c538914e9da0c12bbd51942f2:a4', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(106, 0, 1, 'lisaaaaaaa', '45354345', 'xy@gmail.com', '12313', '', '', '', '', '', 'lis', 'accdd79438ec042675a7586f4e10c26b:c5', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(107, 0, 1, 'test12377', 'test12377', 'test123457fddggf7@gmail.com', '345353555', '', '', '', '', '', 'test12377fd', '1bae1abcdabf517147558c57d094e3c4:e2', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(108, 3119180, 2, 'lisaaaaaaa', '45354345', 'xydf@gmail.com', '12313', '', '', '', '', '', 'lise', '2dcec020bca2a0718ad57dc9ada6138a:1d', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(109, 0, 1, 'test12377', 'test12377', 'test123457ufddggf7@gmail.com', '345353555', '', '', '', '', '', 'testh12377fd', '1d2c1e9ea6e777dc4574f6041f0ad0b9:53', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(110, 3119200, 2, 'lisaaaaaaa', '45354345', 'xydef@gmail.com', '12313', '2562014_0956562.jpg', '', '', '', '', 'lisee', '7e8ddaba9458c0be5ba4d34a0d040153:57', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(111, 3119225, 2, 'ws', 'ws', 'wsd@gmail.com', '222166', 'images (2)984562.jpg', '', 'abad', 'dxccdd', '1322323232', 'ws', '3543223c65f7cdb3188646bcd330c04a:78', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(112, 0, 14, 'mr', 'mr', 'mr@gmail.com', '533355535353535', 'images (2)110003.jpg', '', '', '', '', 'mr', '0c98ba2950214c5de2bf206fa6cc6438:b7', 0, 1, 0, 0, 0, '', '', 0, '2015-05-14'),
(113, 0, 1, 'test12377', 'test12377', 'test123457ufdccdggf7@gmail.com', '345353555', 'forgotpassword983648.png', '', '', '', '', 'testh12377fdc', 'a74d4c3eb78968ac7c7213a9d1032e5f:0a', 0, 1, 0, 0, 0, '', '', 0, '2015-05-15'),
(114, 3120577, 2, 'test12377', 'test12377', 'tehfhff@gmail.com', '345353555', 'forgotpassword011308.png', '', '', '', '', 'tegh', '22fad614663979d5ae472937fdcd4e40:59', 0, 1, 0, 0, 0, '', '', 0, '2015-05-15'),
(115, 3120939, 2, 'dc', 'dc', 'dc@gmail.com', '1211312', 'download (1)185527.jpg', '', '', '', '', 'dc', '510056522d9d5932b0ff03216d2d1b98:6f', 0, 1, 0, 0, 0, '', '', 0, '2015-05-15'),
(116, 0, 14, 'ed', 'ed', 'ed@gmail.com', '3234442344', 'images (1)805538.jpg', '', '', '', '', 'ed', '2d472f6759f8d31f8aa2590ceda087aa:83', 0, 1, 0, 0, 0, '', '', 0, '2015-05-15'),
(117, 0, 14, 'Himanshu', 'Patel', 'himanshu53939@gmail.com', '(989) 898-9898', '', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'himanshu101', '623cc955e916757a8e7c7488855e4d4c:ed', 0, 1, 0, 0, 0, '', '', 0, '2015-05-16'),
(119, 3147070, 14, 'test11', 'patel', 'test101@gmail.com', '(898) 989-898', '', 'mansa                                                    ', 'mansa', 'Alabama', '1111', 'test101', '91b49d4e86528af3704da2959e0e1b2a:4e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-17'),
(120, 3147453, 2, 'xc', 'xc', 'xc@gmail.com', '54535353535', 'images (2)016118.jpg', '', '', '', '', 'xc', '2b95c76ea1a3b16280e65ba604dd71de:4d', 0, 1, 0, 0, 0, '', '', 0, '2015-05-17'),
(121, 3147496, 2, 'rt', 'rt', 'rt@gmail.com', '434343444343', 'images (2)555269.jpg', '', '', '', '', 'rt', '63beedd19b07024778b9300a1ad7686a:01', 0, 1, 0, 0, 0, '', '', 0, '2015-05-17'),
(122, 3148985, 15, 'dw', 'dw', 'ew@gmail.com', '5454545454', 'images (2)624293.jpg', '', '', '', '', 'dw', 'd6deb12f4a0ed33c31ed292c04b73404:65', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(123, 3149179, 2, 'nn', 'nn', 'nn@gmail.com', '43434343434', 'images (2)941425.jpg', '', '', '', '', 'nn', 'ab1c180e840e0ef83b1148c5690ef898:40', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(124, 3149613, 2, 'ikuy', 'ikuy', 'ikii@gmail.com', '7575757575567', 'images (1)275502.jpg', '', '', '', '', 'ikyu', 'f09f305b525ac6f633bfee63332e8af3:52', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(125, 3149687, 15, 'jpk', 'jpk', 'jpk@gmail.com', '9876543210', 'images (1)112777.jpg', '', '', '', '', 'jpk', 'fc1f7864d27c11dbaf2e7c4f5aad0a23:30', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(126, 3150623, 2, 'uu', 'uu', 'uu@gmail.com', '434333434', 'images (2)449693.jpg', '', '', '', '', 'uu', '7754470cbe0ccd3a6e5a1a6d482489db:00', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(127, 3157681, 2, 'd', 'd', 'd@gmail.com', '434343', '', '', '', '', '', '4343444', '1430e35544d584b863e108d87ffb7071:89', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(128, 0, 2, 'r', 'r', 'r@gmail.com', '434343', '', '', '', '', '', 'r', '842ec5bf40a85f5107a2ff9bb161ca23:d3', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(129, 3158174, 14, 'test25', 'patel', 'hi@gmail.com', '(889) 898-9898', '', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'test105', '9183c25755b91210c7a0d08cb1a33436:03', 0, 1, 0, 0, 0, '', '', 0, '2015-05-18'),
(130, 3158256, 14, 'test26', 'patel', 'mansa@gmail.com', '(989) 898-9898', '4176428.PNG', 'mansa                                                    ', 'mansa', 'Alabama', '1111', 'test106', 'd24bf8c90da3a0d94267edf71da8236c:56', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(131, 3158394, 14, 'test27', 'patel', 'mansafg@gmail.com', '(989) 889-8989', '', 'mansa                                                    ', 'mansa', 'Alabama', '1111', 'test107', '17f901d74ba7f08d801da1f762a18406:81', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(132, 3158505, 14, 'test28', 'r', 'rk@gmail.com', '(989) 898-9898', 'surreal-ad998556.png', '                       abd                                             ', 'gnr', 'Delaware', '383001', 'test108', 'a63e463e640b7cd200106379d36cf73f:a6', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(133, 3158926, 2, 'ff', 'ff', 'ff@gmail.com', '12345678', '', '', '', '', '', 'ff', 'e91bde2933026064495c79a0bc9317c8:55', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(134, 3159287, 14, 'First', 'hh', 'gg@gmail.com', '66', '', '', '', '', '', 'Ty', '3097c0389562a1b4585dd70717a4da04:cd', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(135, 3159314, 2, 'First', 'cook', 'james@gmail.com', '12345678', '', '', '', '', '', 'James', 'f923745970315d676bb890b343cf9dae:58', 0, 1, 0, 0, 0, '', '8037', 0, '2015-05-19'),
(136, 3159335, 14, 'test18', 'patel', 'test21@gmail.com', '(989) 898-9898', '', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'test109', 'dab18e3d9ff3b0e1fdfda83511f8262d:e6', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(137, 3159530, 14, 'test113', 'patel', 'test113@gmail.com', '(989) 898-9888', '', 'mansa                                                                    ', 'mnasa', 'Alabama', '1111', 'test113', '077dca55e8de7af7280e30452f7f370c:db', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(138, 3159721, 14, 'test114', 'patel', 'test114@gmail.com', '(989) 898-9', '', 'mansa                                                                    ', 'mansa', 'Alabama', '1111', 'test114', '0fda775b10abac8add15496bfd7a1e83:9e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(139, 3159739, 14, 'test115', 'patel', 'test115@gmail.com', '(989) 898-9898', '', 'mansa                                                                    ', 'mansa', '', '1111', 'test115', '2f3b7766b39d9286be4e27a02177b80c:7c', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(140, 3160023, 14, 'deduct', 'guests', 'vuedv@gmail.com', '332324', '', '', '', '', '', 'poo', '7a6487f56b3c3c44f2270e8a54f26186:17', 0, 1, 0, 0, 0, '', '', 0, '2015-05-19'),
(141, 3180825, 14, 'XYS', 'per', 'aaa@gmail.com', '12345', '', '', '', '', '', 'aaaaa', '7f92b7b75e9a9210a72c8117a1ceec01:72', 0, 1, 0, 0, 0, '', '', 0, '2015-05-21'),
(142, 3180870, 14, 'Starcraft', 'girl', 'ggg@gmail.com', '12345678', '', '', '', '', '', 'aaaaaaaaa', 'e859c935337f919078cd6af8a09488e7:65', 0, 1, 0, 0, 0, '', '', 0, '2015-05-21'),
(143, 3181084, 2, 'Asa', 'Bibb', 'gggg@gmail.com', '12345678', '', '', '', '', '', 'aaaa', '95b0784a68274eec557189688d7232a8:20', 0, 1, 0, 0, 0, '', '', 0, '2015-05-21'),
(144, 3182250, 2, 'yy', 'yy', 'yy@gmail.com', '64646466', '', '', '', '', '', 'yy', '5e5bae950316fc6bf50a4f50fd897dd2:95', 0, 1, 0, 0, 0, '', '', 0, '2015-05-21'),
(145, 3190967, 14, 'Paul', 'walker', 'paul@gmail.com', '12345678', '', '', '', '', '', 'Paul', 'cd20aea0b1d780515c9b233de2fca7a1:53', 0, 1, 0, 0, 0, '', '', 0, '2015-05-22'),
(146, 3191525, 14, 'rr', 'rr', 'rr@gmail.com', '32322323', '', '', '', '', '', 'rr', 'eda878e65803a7e72b25a95729d79f26:53', 0, 1, 0, 0, 0, '', '', 0, '2015-05-22'),
(147, 3191570, 2, 'tomtorreto', 'tom', 'yre@gmail.com', '3232323', 'images (2)357428.jpg', '', '', '', '', 'tom', '1c380502fb808cc7641ead6d820aa3ca:ce', 0, 1, 0, 0, 0, '', '', 0, '2015-05-22'),
(148, 3191675, 15, 'rehan', 'rehan', 'rehan@gmail.com', '3434343434', '5660_219751100.png', '', '', '', '', 'rehan', '2221380baaf569913c15dc5cab991580:bd', 0, 1, 0, 0, 0, '', '', 0, '2015-05-22'),
(149, 3191854, 14, 'aaaaa', 'bbbbb', 'aaaaa@gmail.com', '12345678', '', '', '', '', '', 'ccccc', 'b656aa0c0b69531266a1bc7b46e683d2:dd', 0, 1, 0, 0, 0, '', '', 0, '2015-05-22'),
(150, 3191872, 14, 'poker', 'poker', 'poker@gmail.com', '323232323233', '8031_219428571.png', '', '', '', '', 'poker', '12b80802ac6a50b10f3dd23643c4c053:10', 0, 1, 0, 0, 0, '', '', 0, '2015-05-22'),
(151, 3220613, 14, 'piku', 'piku', 'piku@gmail.com', '423232323', '5674_219946984.png', '', '', '', '', 'piku', '690edb257ddf5120c11b566a80228f44:13', 0, 1, 0, 0, 0, '', '', 0, '2015-05-24'),
(152, 3221878, 2, 'uy', 'uy', 'uy@gmail.com', '1234567890', '8031_219966992.png', '', '', '', '', 'uy', '33084fa63dd3e4f48b54b028339c0fcc:9e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(153, 3221968, 2, 'ik', 'ikee', 'ikyyt@gmail.com', '382828822', '5660_219846394.png', '', '', '', '', 'ikuu', 'db84b7275731141300efe82599b890f8:5f', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(154, 3222035, 2, 'opl', 'opl', 'opl@gmail.com', '4343434', '8031_219820619.png', '', '', '', '', 'opl', '385dd813e0fef5f102f3b989301330d6:d6', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(155, 3222295, 2, 'yy', 'yy', 'yyjbjbjb@gmail.com', '4554545', '5674_219652672.png', '', '', '', '', 'pp', '75bf1e221e76ada372de3bc66efb16db:e2', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(156, 3222303, 2, 'tt', 'tt', 'ttttt@gmail.com', '232323', '5674_219744327.png', '', '', '', '', 'tttt', '4fedf8e253f9eac6b0985cadaade8cc6:a2', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(157, 3222423, 2, 'muskan', 'patel', 'muskan@gmail.com', '32231222122', 'images798644.jpg', '', '', '', '', 'muskan', 'f16c045a4d5a96f37d92eeb48e158429:a4', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(158, 3223501, 2, 'ffffff', 'ff', 'ffff@gmail.com', '382828288282', '', '', '', '', '', 'ffff', '2f83e7a8e793c6f302209663f3289ece:97', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(159, 3233377, 2, 'Tailor', 'Tailor', 'Tailor@gmail.com', '323232323', '5660_219212573.png', '', '', '', '', 'Tailor', 'e796d7b1a15ff0df785c11a0cb9e0b66:d0', 0, 1, 0, 0, 0, '', '', 0, '2015-05-25'),
(160, 3236259, 2, 'Awsm', 'awsm', 'awsm@gmail.com', '13233233', '5660_219238163.png', '', '', '', '', 'awsm', '4d0befddd91fec3017da613ad4a7eec0:f6', 0, 1, 0, 0, 0, '', '', 0, '2015-05-26'),
(161, 3260256, 2, 'rty', 'rty', 'rty@gmail.com', '44222232', '5660_219152080.png', '', '', '', '', 'rty', 'a8a9f5a876d090478ed078adb4286704:2a', 0, 1, 0, 0, 0, '', '', 0, '2015-05-28'),
(162, 3261146, 2, 'edc', 'edc', 'edc@gmail.com', '23222223', 'images (2)078437.jpg', '', '', '', '', 'edc ', '1d6fdb18721c95be3561abf0830039d1:0f', 0, 1, 0, 0, 0, '', '', 0, '2015-05-28'),
(163, 3261669, 14, 'ghj', 'ghj', 'ghj@gmail.com', '434343343', '5674_219792555.png', '', '', '', '', 'ghj', 'ab685bdf9ea251de2568d6605b52b95d:a7', 0, 1, 0, 0, 0, '', '', 0, '2015-05-28'),
(164, 3274216, 14, 'Denial', 'Denial', 'Denial@gmail.com', '3232323223', '5660_219608152.png', '', '', '', '', 'Denial', '84848f1dbb007afc2d49837960e19764:39', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29'),
(165, 3274217, 14, 'TEST  2905', 'TEST 2905', 'umang.gitech@gmail.com', '(989) 898-9898', '', '                                                        test2905                                                                                                                    ', 'test2905', 'Indiana', '95051', 'test2905', 'cee80c08c5a7d494c60468973147f648:27', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29'),
(166, 3274834, 14, 'umangtest', 'umangtest', 'umanggitech@gmail.com', '9999999999', '', '', '', '', '', 'testumang', '9868b274e4e132c5d9852a691e49024a:74', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29'),
(167, 3274979, 14, 'tyd', 'tyd', 'tyd@gmail.com', '123332323', '', '', '', '', '', 'tyd', '6ed69a11896ae4795a89ea05d2febbc0:fb', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29'),
(168, 3275004, 14, 'torreto', 'torreto', 'torreto@gmail.com', '434343434', '', '', '', '', '', 'torreto', 'e6ba81e0302c797ad7c946b290eea2a5:16', 0, 1, 0, 0, 0, '', '', 0, '2015-05-29'),
(169, 3286838, 16, 'chirag', 'custo', 'chirag@callabhi.com', '(545) 454-5454', '', '                                                                    ', '', '', '', 'chirag', '5ae5480fa76bea9ce8d449ad65e39faf:bd', 0, 1, 0, 0, 0, '', '', 0, '2015-05-30'),
(171, 3286861, 16, 'ankit', 'patel', 'ankitjp26@gmail.com', '(656) 565-6565', '', '                                                                    ', '', '', '', 'ankit', '883b09471ded04ee7933a9ff8daa2273:6e', 0, 1, 0, 0, 0, '', '', 0, '2015-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`u_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'himanshu93', '66Q7983hLkvU0h7VjddqiAVIRAbWmVJ8', '$2y$13$RhKZfh/wJY1th4mCZNbhf.K/OeYFHEk/5xfqmksJFEIYdcYkRSt6G', NULL, 'himanshu1@gmail.com', 10, 1444566629, 1444566629),
(3, 'himanshu', 'WN1KF3igIENntlaQ2z0VaC04BmeSN1XW', '$2y$13$ThmmqYGfrrja142/WqdJfuZb4lotvIkTNhtLiInxWL9h8NHq0jJ4C', '6Jjv2rjHTnuvhCJu0s0xJeXYijLxwrzC_1445126352', 'himanshu53939@gmail.com', 10, 1445124240, 1445127333);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
 ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agency`
--
ALTER TABLE `tbl_agency`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agent`
--
ALTER TABLE `tbl_agent`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_canned`
--
ALTER TABLE `tbl_canned`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
MODIFY `d_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_agency`
--
ALTER TABLE `tbl_agency`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_agent`
--
ALTER TABLE `tbl_agent`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_canned`
--
ALTER TABLE `tbl_canned`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
