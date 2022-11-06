-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2022 pada 06.03
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truk_mmc2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `images_test`
--

CREATE TABLE `images_test` (
  `id_img_test` int(11) NOT NULL,
  `id_weight` int(11) NOT NULL,
  `img_truk` varchar(256) DEFAULT NULL,
  `w_image` int(11) DEFAULT NULL,
  `h_image` int(11) DEFAULT NULL,
  `img_od` varchar(256) DEFAULT NULL,
  `label_kepala` varchar(12) DEFAULT NULL,
  `confidence_kepala` double DEFAULT NULL,
  `x_kepala` int(11) DEFAULT NULL,
  `y_kepala` int(11) DEFAULT NULL,
  `w_kepala` int(11) DEFAULT NULL,
  `h_kepala` int(11) DEFAULT NULL,
  `label_badan` varchar(12) DEFAULT NULL,
  `confidence_badan` double DEFAULT NULL,
  `x_badan` int(11) DEFAULT NULL,
  `y_badan` int(11) DEFAULT NULL,
  `w_badan` int(11) DEFAULT NULL,
  `h_badan` int(11) DEFAULT NULL,
  `od_test` varchar(16) DEFAULT NULL,
  `result_a` double DEFAULT NULL,
  `result_b` double DEFAULT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `images_test`
--

INSERT INTO `images_test` (`id_img_test`, `id_weight`, `img_truk`, `w_image`, `h_image`, `img_od`, `label_kepala`, `confidence_kepala`, `x_kepala`, `y_kepala`, `w_kepala`, `h_kepala`, `label_badan`, `confidence_badan`, `x_badan`, `y_badan`, `w_badan`, `h_badan`, `od_test`, `result_a`, `result_b`, `datetime`) VALUES
(327, 21, './test-truk-ori/truk1649212631.jpg', 201, 180, './test-truk-od/trukOD1649212632.jpg', 'kepala_truk', 99, 7, 46, 140, 127, 'badan_truk', 99, 26, 1, 153, 129, '0', 47.73948946335768, 30.79079523979956, '2022-04-06 09:37:12'),
(328, 21, './test-truk-ori/truk1649212633.jpg', 224, 205, './test-truk-od/trukOD1649212634.jpg', 'kepala_truk', 99, -3, 39, 171, 150, 'badan_truk', 99, 22, -1, 184, 143, '0', 51.340011712076176, 34.87152510769328, '2022-04-06 09:37:14'),
(329, 21, './test-truk-ori/truk1649212635.jpg', 271, 262, './test-truk-od/trukOD1649212636.jpg', 'kepala_truk', 77, 19, 29, 199, 194, 'badan_truk', 99, 38, -1, 221, 161, '0', 104.86075206898956, 94.25222966595445, '2022-04-06 09:37:16'),
(330, 21, './test-truk-ori/truk1649212637.jpg', 325, 342, './test-truk-od/trukOD1649212637.jpg', 'kepala_truk', 99, 1, 34, 277, 235, 'badan_truk', 99, 51, -2, 287, 194, '0', 211.74706295595053, 207.22510050920133, '2022-04-06 09:37:17'),
(331, 21, './test-truk-ori/truk1649212705.jpg', 202, 173, './test-truk-od/trukOD1649212706.jpg', 'kepala_truk', 98, 2, 50, 138, 119, 'badan_truk', 99, 18, -2, 153, 133, '0', 43.93946876647781, 38.74872870963618, '2022-04-06 09:38:26'),
(332, 21, './test-truk-ori/truk1649212707.jpg', 241, 236, './test-truk-od/trukOD1649212708.jpg', 'kepala_truk', 99, 0, 35, 193, 167, 'badan_truk', 99, 31, -2, 202, 154, '0', 77.31214996333358, 66.61475011436538, '2022-04-06 09:38:28'),
(333, 21, './test-truk-ori/truk1649212709.jpg', 340, 325, './test-truk-od/trukOD1649212709.jpg', 'kepala_truk', 99, -6, 42, 269, 228, 'badan_truk', 99, 41, 0, 280, 195, '0', 199.33178318976772, 195.90947756961612, '2022-04-06 09:38:29'),
(334, 21, './test-truk-ori/truk1649212775.jpg', 210, 129, './test-truk-od/trukOD1649212775.jpg', 'kepala_truk', 71, 1, 76, 115, 100, 'badan_truk', 82, 6, 1, 128, 153, '1', 63.422241771176125, 80.81346137113967, '2022-04-06 09:39:35'),
(335, 21, './test-truk-ori/truk1649212776.jpg', 222, 166, './test-truk-od/trukOD1649212777.jpg', 'kepala_truk', 99, 2, 67, 133, 119, 'badan_truk', 83, 11, 3, 161, 156, '1', 24.309477837165446, 51.704795240580964, '2022-04-06 09:39:37'),
(336, 21, './test-truk-ori/truk1649212778.jpg', 261, 193, './test-truk-od/trukOD1649212779.jpg', 'kepala_truk', 99, 2, 83, 156, 135, 'badan_truk', 98, 19, 4, 176, 184, '1', 32.74359707368722, 67.46997943883194, '2022-04-06 09:39:39'),
(337, 21, './test-truk-ori/truk1649212780.jpg', 304, 250, './test-truk-od/trukOD1649212781.jpg', 'kepala_truk', 99, 0, 92, 188, 164, 'badan_truk', 98, 25, 4, 225, 214, '1', 94.12783761833765, 117.77296647148955, '2022-04-06 09:39:41'),
(338, 21, './test-truk-ori/truk1649212785.jpg', 201, 177, './test-truk-od/trukOD1649212786.jpg', 'kepala_truk', 99, 2, 49, 142, 121, 'badan_truk', 95, 19, 9, 157, 130, '0', 43.987915397759856, 33.25578540751404, '2022-04-06 09:39:46'),
(339, 21, './test-truk-ori/truk1649212787.jpg', 233, 204, './test-truk-od/trukOD1649212788.jpg', 'kepala_truk', 99, 1, 38, 166, 142, 'badan_truk', 99, 25, -1, 175, 142, '0', 44.65737134771167, 29.02781894369474, '2022-04-06 09:39:48'),
(340, 21, './test-truk-ori/truk1649212789.jpg', 260, 264, './test-truk-od/trukOD1649212789.jpg', 'kepala_truk', 99, 0, 34, 211, 173, 'badan_truk', 99, 34, 1, 229, 158, '0', 103.00831308379183, 96.5937557414917, '2022-04-06 09:39:49'),
(341, 21, './test-truk-ori/truk1649212790.jpg', 316, 353, './test-truk-od/trukOD1649212791.jpg', 'kepala_truk', 99, 2, 35, 269, 221, 'badan_truk', 99, 51, 0, 299, 188, '0', 204.71161773324863, 202.15606178950756, '2022-04-06 09:39:51'),
(342, 21, './test-truk-ori/truk1649212806.jpg', 204, 183, './test-truk-od/trukOD1649212807.jpg', 'kepala_truk', 99, 56, 70, 127, 106, 'badan_truk', 99, 0, 2, 172, 147, '1', 26.36576121863426, 56.62895333379422, '2022-04-06 09:40:07'),
(343, 21, './test-truk-ori/truk1649212808.jpg', 253, 243, './test-truk-od/trukOD1649212809.jpg', 'kepala_truk', 99, 81, 82, 163, 133, 'badan_truk', 98, 2, 4, 222, 176, '1', 50.19433628600799, 80.59816874101188, '2022-04-06 09:40:09'),
(344, 21, './test-truk-ori/truk1649212810.jpg', 302, 230, './test-truk-od/trukOD1649212811.jpg', 'kepala_truk', 60, 51, 118, 177, 150, 'badan_truk', 94, -1, 8, 214, 206, '1', 72.51008607971114, 101.79743632491382, '2022-04-06 09:40:11'),
(345, 21, './test-truk-ori/truk1649212854.jpg', 206, 203, './test-truk-od/trukOD1649212855.jpg', 'kepala_truk', 72, 72, 76, 124, 109, 'badan_truk', 99, 4, 2, 180, 151, '1', 21.227555669409004, 58.9657282572686, '2022-04-06 09:40:55'),
(346, 21, './test-truk-ori/truk1649212884.jpg', 201, 199, './test-truk-od/trukOD1649212886.jpg', 'kepala_truk', 99, 3, 27, 150, 147, 'badan_truk', 97, 25, -1, 171, 127, '0', 50.558444291864824, 9.090970791944223, '2022-04-06 09:41:26'),
(347, 21, './test-truk-ori/truk1649212887.jpg', 244, 268, './test-truk-od/trukOD1649212888.jpg', 'kepala_truk', 99, 6, 31, 192, 182, 'badan_truk', 99, 33, 1, 233, 154, '0', 98.25124640444955, 90.30741991053671, '2022-04-06 09:41:28'),
(348, 21, './test-truk-ori/truk1649212946.jpg', 206, 140, './test-truk-od/trukOD1649212946.jpg', 'kepala_truk', 96, 0, 82, 109, 98, 'badan_truk', 81, 15, 2, 124, 153, '1', 69.68160343340527, 86.86508788759569, '2022-04-06 09:42:26'),
(349, 21, './test-truk-ori/truk1649212947.jpg', 235, 183, './test-truk-od/trukOD1649212948.jpg', 'kepala_truk', 99, 0, 78, 138, 120, 'badan_truk', 90, 20, 4, 162, 165, '1', 21.51166350877863, 56.565228111556166, '2022-04-06 09:42:28'),
(350, 21, './test-truk-ori/truk1649212949.jpg', 296, 236, './test-truk-od/trukOD1649212950.jpg', 'kepala_truk', 99, 0, 99, 181, 151, 'badan_truk', 98, 37, 7, 192, 205, '1', 68.6842679607246, 94.42320154739778, '2022-04-06 09:42:30'),
(351, 21, './test-truk-ori/truk1649213011.jpg', 202, 201, './test-truk-od/trukOD1649213012.jpg', 'kepala_truk', 99, 78, 56, 122, 115, 'badan_truk', 68, 3, 4, 188, 137, '1', 31.82905979687208, 51.7653911159412, '2022-04-06 09:43:32'),
(352, 21, './test-truk-ori/truk1649213015.jpg', 330, 274, './test-truk-od/trukOD1649213015.jpg', 'kepala_truk', 84, 74, 89, 200, 193, 'badan_truk', 91, 6, 3, 240, 214, '1', 123.2098444282028, 136.22450187992865, '2022-04-06 09:43:35'),
(353, 21, './test-truk-ori/truk1649213063.jpg', 201, 166, './test-truk-od/trukOD1649213063.jpg', 'kepala_truk', 99, 1, 50, 121, 134, 'badan_truk', 97, 20, 5, 141, 141, '0', 53.275612813508, 49.27276419553772, '2022-04-06 09:44:23'),
(354, 21, './test-truk-ori/truk1649213064.jpg', 233, 199, './test-truk-od/trukOD1649213065.jpg', 'kepala_truk', 99, 0, 49, 150, 162, 'badan_truk', 99, 28, 6, 166, 161, '0', 48.73146834856834, 44.980059611930514, '2022-04-06 09:44:25'),
(355, 21, './test-truk-ori/truk1649213066.jpg', 295, 265, './test-truk-od/trukOD1649213067.jpg', 'kepala_truk', 99, 2, 61, 191, 208, 'badan_truk', 99, 40, 7, 215, 207, '1', 117.17469467587931, 122.96564365022282, '2022-04-06 09:44:27'),
(356, 21, './test-truk-ori/truk1649213068.jpg', 369, 375, './test-truk-od/trukOD1649213069.jpg', 'kepala_truk', 99, 17, 67, 257, 279, 'badan_truk', 98, 74, 6, 291, 264, '1', 248.28343996409248, 253.6860994614446, '2022-04-06 09:44:29'),
(357, 21, './test-truk-ori/truk1649213086.jpg', 210, 204, './test-truk-od/trukOD1649213087.jpg', 'kepala_truk', 99, 4, 28, 148, 137, 'badan_truk', 98, 23, 5, 180, 124, '0', 46.17631299358686, 17.0241626299646, '2022-04-06 09:44:47'),
(358, 21, './test-truk-ori/truk1649213088.jpg', 243, 269, './test-truk-od/trukOD1649213089.jpg', 'kepala_truk', 99, 5, 28, 189, 166, 'badan_truk', 98, 38, 1, 224, 142, '0', 84.54481444504589, 72.87290124354074, '2022-04-06 09:44:49'),
(359, 21, './test-truk-ori/truk1649213090.jpg', 299, 343, './test-truk-od/trukOD1649213090.jpg', 'kepala_truk', 99, 4, 27, 250, 222, 'badan_truk', 99, 48, 2, 289, 177, '0', 186.6501354982836, 181.65698080760157, '2022-04-06 09:44:50'),
(360, 21, './test-truk-ori/truk1649213124.jpg', 204, 231, './test-truk-od/trukOD1649213125.jpg', 'kepala_truk', 99, 8, 23, 174, 144, 'badan_truk', 99, 36, 3, 187, 129, '0', 57.6757546843297, 30.985642373510395, '2022-04-06 09:45:25'),
(361, 21, './test-truk-ori/truk1649213126.jpg', 243, 272, './test-truk-od/trukOD1649213126.jpg', 'kepala_truk', 99, -2, 25, 216, 175, 'badan_truk', 99, 37, 2, 231, 155, '0', 108.79555113531141, 100.34272466145147, '2022-04-06 09:45:27'),
(362, 21, './test-truk-ori/truk1649213128.jpg', 315, 370, './test-truk-od/trukOD1649213128.jpg', 'kepala_truk', 99, 2, 31, 292, 229, 'badan_truk', 99, 59, 2, 307, 196, '0', 229.29989794489512, 226.61048307104872, '2022-04-06 09:45:28'),
(363, 21, './test-truk-ori/truk1649213146.jpg', 202, 138, './test-truk-od/trukOD1649213147.jpg', 'kepala_truk', 99, 6, 87, 100, 93, 'badan_truk', 92, 10, -8, 131, 170, '1', 69.09479737246183, 99.02064690879284, '2022-04-06 09:45:47'),
(364, 21, './test-truk-ori/truk1649213148.jpg', 252, 181, './test-truk-od/trukOD1649213149.jpg', 'kepala_truk', 99, 10, 111, 124, 113, 'badan_truk', 97, 19, -4, 161, 203, '1', 46.5018440796732, 96.03202977774127, '2022-04-06 09:45:49'),
(365, 21, './test-truk-ori/truk1649213150.jpg', 340, 214, './test-truk-od/trukOD1649213151.jpg', 'kepala_truk', 82, -2, 144, 161, 150, 'badan_truk', 86, 16, -1, 203, 262, '1', 106.92846582914343, 147.94498827954578, '2022-04-06 09:45:51'),
(366, 21, './test-truk-ori/truk1649213152.jpg', 379, 337, './test-truk-od/trukOD1649213153.jpg', 'kepala_truk', 99, 12, 141, 223, 207, 'badan_truk', 99, 38, -8, 295, 298, '1', 213.29680354834835, 238.1845731414592, '2022-04-06 09:45:53'),
(367, 21, './test-truk-ori/truk1649213207.jpg', 203, 224, './test-truk-od/trukOD1649213208.jpg', 'kepala_truk', 99, 8, 27, 150, 134, 'badan_truk', 99, 34, 1, 188, 115, '0', 53.88149647153426, 23.980007262754178, '2022-04-06 09:46:48'),
(368, 21, './test-truk-ori/truk1649213209.jpg', 271, 326, './test-truk-od/trukOD1649213210.jpg', 'kepala_truk', 99, 2, 41, 212, 186, 'badan_truk', 99, 46, 3, 277, 164, '0', 137.75971672780872, 137.274733575321, '2022-04-06 09:46:50'),
(369, 21, './test-truk-ori/truk1649213232.jpg', 202, 171, './test-truk-od/trukOD1649213232.jpg', 'kepala_truk', 92, 0, 54, 133, 111, 'badan_truk', 96, 14, 1, 159, 129, '0', 44.051661991759616, 43.98739558708658, '2022-04-06 09:47:12'),
(370, 21, './test-truk-ori/truk1649213233.jpg', 273, 251, './test-truk-od/trukOD1649213234.jpg', 'kepala_truk', 99, 0, 76, 190, 153, 'badan_truk', 80, 23, 9, 216, 180, '1', 72.99019045849832, 86.69514668865335, '2022-04-06 09:47:14'),
(371, 21, './test-truk-ori/truk1649213247.jpg', 202, 190, './test-truk-od/trukOD1649213247.jpg', 'kepala_truk', 87, 5, 76, 130, 105, 'badan_truk', 99, 22, 1, 166, 148, '1', 28.489222349283917, 56.67341576756182, '2022-04-06 09:47:27'),
(372, 21, './test-truk-ori/truk1649213249.jpg', 258, 236, './test-truk-od/trukOD1649213249.jpg', 'kepala_truk', 65, 8, 90, 155, 131, 'badan_truk', 98, 24, 3, 212, 181, '1', 39.677781774410455, 77.9883581956701, '2022-04-06 09:47:29'),
(373, 21, './test-truk-ori/truk1649213250.jpg', 308, 284, './test-truk-od/trukOD1649213251.jpg', 'kepala_truk', 99, 1, 104, 190, 150, 'badan_truk', 82, 21, 9, 272, 205, '1', 115.35485885224618, 140.0230102327736, '2022-04-06 09:47:31'),
(374, 21, './test-truk-ori/truk1649213259.jpg', 202, 182, './test-truk-od/trukOD1649213260.jpg', 'kepala_truk', 99, 4, 44, 126, 132, 'badan_truk', 99, 15, 0, 169, 132, '0', 39.566513754678695, 33.14487174002403, '2022-04-06 09:47:40'),
(375, 21, './test-truk-ori/truk1649213261.jpg', 226, 212, './test-truk-od/trukOD1649213262.jpg', 'kepala_truk', 99, 6, 49, 146, 149, 'badan_truk', 99, 21, 0, 192, 149, '1', 36.44137813664707, 38.74726034245419, '2022-04-06 09:47:42'),
(376, 21, './test-truk-ori/truk1649213263.jpg', 273, 258, './test-truk-od/trukOD1649213263.jpg', 'kepala_truk', 95, 7, 58, 174, 183, 'badan_truk', 99, 26, 2, 231, 179, '1', 89.48417078304921, 96.16208903614013, '2022-04-06 09:47:43'),
(377, 21, './test-truk-ori/truk1649213264.jpg', 366, 358, './test-truk-od/trukOD1649213265.jpg', 'kepala_truk', 80, 12, 78, 236, 249, 'badan_truk', 86, 34, 13, 329, 240, '1', 231.81164090234415, 240.2460120835556, '2022-04-06 09:47:45'),
(378, 21, './test-truk-ori/truk1649213292.jpg', 201, 157, './test-truk-od/trukOD1649213292.jpg', 'kepala_truk', 99, -1, 67, 118, 99, 'badan_truk', 92, 6, 6, 152, 133, '1', 52.180461402737116, 63.567767568564214, '2022-04-06 09:48:12'),
(379, 21, './test-truk-ori/truk1649213293.jpg', 228, 227, './test-truk-od/trukOD1649213294.jpg', 'kepala_truk', 97, 9, 70, 147, 121, 'badan_truk', 74, 15, 3, 210, 160, '1', 29.017338546929125, 64.61139084161294, '2022-04-06 09:48:14'),
(380, 21, './test-truk-ori/truk1649213295.jpg', 290, 282, './test-truk-od/trukOD1649213296.jpg', 'kepala_truk', 99, 0, 88, 185, 152, 'badan_truk', 99, 35, 0, 240, 197, '1', 87.753898761289, 111.20330538774647, '2022-04-06 09:48:16'),
(381, 21, './test-truk-ori/truk1649213385.jpg', 201, 173, './test-truk-od/trukOD1649213385.jpg', 'kepala_truk', 99, 0, 40, 132, 139, 'badan_truk', 95, 18, 3, 155, 139, '0', 43.60607482300234, 32.96750934173498, '2022-04-06 09:49:45'),
(382, 21, './test-truk-ori/truk1649213386.jpg', 213, 193, './test-truk-od/trukOD1649213387.jpg', 'kepala_truk', 99, -1, 39, 133, 153, 'badan_truk', 98, 9, 5, 177, 145, '0', 40.250537599729995, 33.79752228071702, '2022-04-06 09:49:47'),
(383, 21, './test-truk-ori/truk1649213388.jpg', 238, 248, './test-truk-od/trukOD1649213389.jpg', 'kepala_truk', 99, 13, 27, 159, 177, 'badan_truk', 99, 37, -2, 203, 155, '0', 66.1969686934225, 58.230854806463235, '2022-04-06 09:49:49'),
(384, 21, './test-truk-ori/truk1649213390.jpg', 256, 279, './test-truk-od/trukOD1649213391.jpg', 'kepala_truk', 99, 20, 31, 182, 189, 'badan_truk', 99, 43, -2, 232, 167, '0', 96.82069074372738, 94.54305231837992, '2022-04-06 09:49:51'),
(385, 21, './test-truk-ori/truk1649213392.jpg', 288, 306, './test-truk-od/trukOD1649213392.jpg', 'kepala_truk', 91, 4, 58, 202, 197, 'badan_truk', 65, 45, 6, 255, 198, '1', 129.03039733668172, 136.67758794299417, '2022-04-06 09:49:52'),
(386, 21, './test-truk-ori/truk1649213394.jpg', 348, 368, './test-truk-od/trukOD1649213394.jpg', 'kepala_truk', 98, 3, 70, 241, 240, 'badan_truk', 92, 49, 9, 316, 235, '1', 219.42272831876772, 227.3099614824114, '2022-04-06 09:49:54'),
(387, 21, './test-truk-ori/truk1649213398.jpg', 205, 139, './test-truk-od/trukOD1649213399.jpg', 'kepala_truk', 99, 3, 39, 88, 121, 'badan_truk', 74, 10, 5, 131, 122, '0', 83.28065072206122, 78.91778606431876, '2022-04-06 09:49:59'),
(388, 21, './test-truk-ori/truk1649213400.jpg', 221, 182, './test-truk-od/trukOD1649213401.jpg', 'kepala_truk', 99, 9, 36, 119, 138, 'badan_truk', 99, 21, 2, 160, 136, '0', 45.32170560695657, 39.41277638061145, '2022-04-06 09:50:01'),
(389, 21, './test-truk-ori/truk1649213402.jpg', 244, 224, './test-truk-od/trukOD1649213403.jpg', 'kepala_truk', 99, 7, 33, 154, 157, 'badan_truk', 99, 31, 0, 187, 149, '0', 45.06746639239484, 36.73573972514318, '2022-04-06 09:50:03'),
(390, 21, './test-truk-ori/truk1649213404.jpg', 282, 351, './test-truk-od/trukOD1649213405.jpg', 'kepala_truk', 99, 3, 42, 228, 190, 'badan_truk', 99, 64, 1, 276, 183, '1', 149.5016820233917, 152.43049251293976, '2022-04-06 09:50:05'),
(391, 21, './test-truk-ori/truk1649213412.jpg', 201, 217, './test-truk-od/trukOD1649213413.jpg', 'kepala_truk', 97, 5, 28, 148, 138, 'badan_truk', 99, 24, 1, 192, 121, '0', 49.8481795715346, 25.539262951471862, '2022-04-06 09:50:13'),
(392, 21, './test-truk-ori/truk1649213414.jpg', 225, 256, './test-truk-od/trukOD1649213415.jpg', 'kepala_truk', 69, 5, 27, 175, 165, 'badan_truk', 99, 22, 3, 239, 135, '0', 87.12936383780912, 77.56488130257328, '2022-04-06 09:50:15'),
(393, 21, './test-truk-ori/truk1649213416.jpg', 260, 320, './test-truk-od/trukOD1649213417.jpg', 'kepala_truk', 94, 12, 29, 210, 190, 'badan_truk', 99, 37, 2, 284, 157, '0', 143.70911328403736, 141.05558193566927, '2022-04-06 09:50:17'),
(394, 21, './test-truk-ori/truk1649213457.jpg', 201, 218, './test-truk-od/trukOD1649213457.jpg', 'kepala_truk', 99, 3, 21, 163, 150, 'badan_truk', 99, 27, 1, 190, 125, '0', 57.41448605631021, 24.926092755322138, '2022-04-06 09:50:57'),
(395, 21, './test-truk-ori/truk1649213459.jpg', 242, 266, './test-truk-od/trukOD1649213459.jpg', 'kepala_truk', 99, -3, 19, 209, 194, 'badan_truk', 99, 31, -1, 231, 152, '0', 115.51009289975825, 101.91406437465822, '2022-04-06 09:50:59'),
(396, 21, './test-truk-ori/truk1649213481.jpg', 202, 160, './test-truk-od/trukOD1649213482.jpg', 'kepala_truk', 97, 5, 77, 117, 103, 'badan_truk', 99, 17, 0, 143, 153, '1', 48.983473485096965, 71.44710722965209, '2022-04-06 09:51:22'),
(397, 21, './test-truk-ori/truk1649213483.jpg', 241, 188, './test-truk-od/trukOD1649213484.jpg', 'kepala_truk', 99, 0, 69, 141, 140, 'badan_truk', 96, 15, 2, 177, 171, '1', 23.578154521878467, 54.900234276821664, '2022-04-06 09:51:24'),
(398, 21, './test-truk-ori/truk1649213485.jpg', 348, 291, './test-truk-od/trukOD1649213486.jpg', 'kepala_truk', 99, 3, 101, 208, 198, 'badan_truk', 73, 22, 3, 261, 246, '1', 155.00265715335468, 174.47152549855647, '2022-04-06 09:51:26'),
(399, 21, './test-truk-ori/truk1649213530.jpg', 201, 247, './test-truk-od/trukOD1649213531.jpg', 'kepala_truk', 98, 76, 13, 161, 158, 'badan_truk', 98, 9, -1, 209, 122, '0', 67.95726741922529, 42.455766404813644, '2022-04-06 09:52:11'),
(400, 21, './test-truk-ori/truk1649213532.jpg', 239, 322, './test-truk-od/trukOD1649213533.jpg', 'kepala_truk', 99, 109, 13, 201, 193, 'badan_truk', 97, 11, -3, 275, 147, '0', 135.54715163603564, 128.5418361544446, '2022-04-06 09:52:13'),
(401, 21, './test-truk-ori/truk1649213534.jpg', 208, 188, './test-truk-od/trukOD1649213535.jpg', 'kepala_truk', 99, 60, 60, 128, 120, 'badan_truk', 99, 6, 2, 165, 147, '1', 26.968120886689494, 46.7108357219783, '2022-04-06 09:52:15'),
(402, 21, './test-truk-ori/truk1649213536.jpg', 243, 217, './test-truk-od/trukOD1649213537.jpg', 'kepala_truk', 99, 67, 71, 150, 139, 'badan_truk', 99, 2, 2, 197, 173, '1', 29.103833189034713, 62.11509290822597, '2022-04-06 09:52:17'),
(403, 21, './test-truk-ori/truk1649213538.jpg', 283, 233, './test-truk-od/trukOD1649213538.jpg', 'kepala_truk', 98, 79, 87, 153, 161, 'badan_truk', 99, 0, 6, 221, 198, '1', 67.70842661069771, 96.01856008871016, '2022-04-06 09:52:18'),
(404, 21, './test-truk-ori/truk1649213540.jpg', 355, 326, './test-truk-od/trukOD1649213540.jpg', 'kepala_truk', 99, 106, 113, 221, 194, 'badan_truk', 99, 3, 3, 295, 255, '1', 182.781168168836, 203.68338032436967, '2022-04-06 09:52:20'),
(405, 21, './test-truk-ori/truk1649213587.jpg', 202, 230, './test-truk-od/trukOD1649213588.jpg', 'kepala_truk', 99, 87, 54, 142, 124, 'badan_truk', 98, 4, 2, 207, 143, '1', 32.914020061180295, 52.21878077823614, '2022-04-06 09:53:08'),
(406, 21, './test-truk-ori/truk1649213589.jpg', 236, 267, './test-truk-od/trukOD1649213590.jpg', 'kepala_truk', 99, 97, 63, 165, 141, 'badan_truk', 88, 0, 4, 232, 161, '1', 60.656482161503064, 77.61292466867451, '2022-04-06 09:53:10'),
(407, 21, './test-truk-ori/truk1649213591.jpg', 270, 333, './test-truk-od/trukOD1649213591.jpg', 'kepala_truk', 99, 128, 69, 202, 169, 'badan_truk', 81, -1, 4, 284, 188, '1', 132.18175027185356, 145.13838475918715, '2022-04-06 09:53:11'),
(408, 21, './test-truk-ori/truk1649213592.jpg', 232, 210, './test-truk-od/trukOD1649213593.jpg', 'kepala_truk', 78, 61, 84, 146, 127, 'badan_truk', 99, 4, 1, 193, 169, '1', 16.384725707725423, 60.167505516191916, '2022-04-06 09:53:13'),
(409, 21, './test-truk-ori/truk1649213594.jpg', 306, 257, './test-truk-od/trukOD1649213595.jpg', 'kepala_truk', 99, 71, 95, 185, 166, 'badan_truk', 98, 4, 9, 234, 205, '1', 93.6400744568149, 114.79046028878638, '2022-04-06 09:53:15'),
(410, 21, './test-truk-ori/truk1649213596.jpg', 379, 341, './test-truk-od/trukOD1649213597.jpg', 'kepala_truk', 99, 95, 117, 246, 221, 'badan_truk', 94, 0, 2, 315, 273, '1', 226.91495416749925, 243.87697770877926, '2022-04-06 09:53:17'),
(411, 21, './test-truk-ori/truk1649213626.jpg', 205, 208, './test-truk-od/trukOD1649213626.jpg', 'kepala_truk', 99, 77, 52, 126, 128, 'badan_truk', 99, 7, 1, 182, 147, '1', 22.664954389102977, 45.25388926199983, '2022-04-06 09:53:46'),
(412, 21, './test-truk-ori/truk1649213627.jpg', 235, 268, './test-truk-od/trukOD1649213628.jpg', 'kepala_truk', 99, 97, 62, 158, 148, 'badan_truk', 95, 5, -2, 235, 177, '1', 64.27429157435077, 88.55307147310094, '2022-04-06 09:53:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `images_test`
--
ALTER TABLE `images_test`
  ADD PRIMARY KEY (`id_img_test`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `images_test`
--
ALTER TABLE `images_test`
  MODIFY `id_img_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
