-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 06:48 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `images_test`
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
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images_test`
--

INSERT INTO `images_test` (`id_img_test`, `id_weight`, `img_truk`, `w_image`, `h_image`, `img_od`, `label_kepala`, `confidence_kepala`, `x_kepala`, `y_kepala`, `w_kepala`, `h_kepala`, `label_badan`, `confidence_badan`, `x_badan`, `y_badan`, `w_badan`, `h_badan`, `od_test`, `result_a`, `result_b`, `datetime`) VALUES
(413, 21, './test-truk-ori/truk1649305589.jpg', 201, 180, './test-truk-od/trukOD1649305589.jpg', 'kepala_truk', 99, 7, 46, 140, 127, 'badan_truk', 99, 26, 1, 153, 129, '0', 47.73948946335768, 30.79079523979956, '2022-04-07 11:26:29'),
(414, 21, './test-truk-ori/truk1649305590.jpg', 278, 287, './test-truk-od/trukOD1649305591.jpg', 'kepala_truk', 99, 9, 39, 224, 199, 'badan_truk', 99, 39, -1, 247, 175, '0', 135.065713496944, 130.90880728921618, '2022-04-07 11:26:31'),
(415, 21, './test-truk-ori/truk1649305616.jpg', 202, 173, './test-truk-od/trukOD1649305617.jpg', 'kepala_truk', 98, 2, 50, 138, 119, 'badan_truk', 99, 18, -2, 153, 133, '0', 43.93946876647781, 38.74872870963618, '2022-04-07 11:26:57'),
(416, 21, './test-truk-ori/truk1649305644.jpg', 210, 129, './test-truk-od/trukOD1649305644.jpg', 'kepala_truk', 71, 1, 76, 115, 100, 'badan_truk', 82, 6, 1, 128, 153, '1', 63.422241771176125, 80.81346137113967, '2022-04-07 11:27:24'),
(417, 21, './test-truk-ori/truk1649305645.jpg', 269, 226, './test-truk-od/trukOD1649305645.jpg', 'kepala_truk', 99, 2, 84, 168, 144, 'badan_truk', 97, 22, 2, 205, 192, '1', 53.29877644947563, 83.7320379051811, '2022-04-07 11:27:25'),
(418, 21, './test-truk-ori/truk1649305647.jpg', 201, 177, './test-truk-od/trukOD1649305648.jpg', 'kepala_truk', 99, 2, 49, 142, 121, 'badan_truk', 95, 19, 9, 157, 130, '0', 43.987915397759856, 33.25578540751404, '2022-04-07 11:27:28'),
(419, 21, './test-truk-ori/truk1649305649.jpg', 294, 286, './test-truk-od/trukOD1649305649.jpg', 'kepala_truk', 99, -2, 52, 226, 187, 'badan_truk', 99, 32, 4, 255, 182, '1', 134.4884932222245, 136.04617961660895, '2022-04-07 11:27:29'),
(420, 21, './test-truk-ori/truk1649305655.jpg', 204, 183, './test-truk-od/trukOD1649305655.jpg', 'kepala_truk', 99, 56, 70, 127, 106, 'badan_truk', 99, 0, 2, 172, 147, '1', 26.36576121863426, 56.62895333379422, '2022-04-07 11:27:35'),
(421, 21, './test-truk-ori/truk1649305656.jpg', 350, 371, './test-truk-od/trukOD1649305657.jpg', 'kepala_truk', 79, 149, 139, 217, 169, 'badan_truk', 99, 8, 3, 324, 256, '1', 192.61906483580825, 218.41077000720688, '2022-04-07 11:27:37'),
(422, 21, './test-truk-ori/truk1649305674.jpg', 206, 203, './test-truk-od/trukOD1649305674.jpg', 'kepala_truk', 72, 72, 76, 124, 109, 'badan_truk', 99, 4, 2, 180, 151, '1', 21.227555669409004, 58.9657282572686, '2022-04-07 11:27:54'),
(423, 21, './test-truk-ori/truk1649305686.jpg', 201, 199, './test-truk-od/trukOD1649305687.jpg', 'kepala_truk', 99, 3, 27, 150, 147, 'badan_truk', 97, 25, -1, 171, 127, '0', 50.558444291864824, 9.090970791944223, '2022-04-07 11:28:07'),
(424, 21, './test-truk-ori/truk1649305711.jpg', 206, 140, './test-truk-od/trukOD1649305711.jpg', 'kepala_truk', 96, 0, 82, 109, 98, 'badan_truk', 81, 15, 2, 124, 153, '1', 69.68160343340527, 86.86508788759569, '2022-04-07 11:28:31'),
(425, 21, './test-truk-ori/truk1649305712.jpg', 302, 242, './test-truk-od/trukOD1649305712.jpg', 'kepala_truk', 99, 0, 104, 190, 154, 'badan_truk', 98, 36, 8, 198, 210, '1', 79.80031669899411, 103.71694060864283, '2022-04-07 11:28:32'),
(426, 21, './test-truk-ori/truk1649305738.jpg', 202, 201, './test-truk-od/trukOD1649305739.jpg', 'kepala_truk', 99, 78, 56, 122, 115, 'badan_truk', 68, 3, 4, 188, 137, '1', 31.82905979687208, 51.7653911159412, '2022-04-07 11:28:59'),
(427, 21, './test-truk-ori/truk1649305740.jpg', 330, 274, './test-truk-od/trukOD1649305740.jpg', 'kepala_truk', 84, 74, 89, 200, 193, 'badan_truk', 91, 6, 3, 240, 214, '1', 123.2098444282028, 136.22450187992865, '2022-04-07 11:29:00'),
(428, 21, './test-truk-ori/truk1649305761.jpg', 201, 166, './test-truk-od/trukOD1649305761.jpg', 'kepala_truk', 99, 1, 50, 121, 134, 'badan_truk', 97, 20, 5, 141, 141, '0', 53.275612813508, 49.27276419553772, '2022-04-07 11:29:21'),
(429, 21, './test-truk-ori/truk1649305762.jpg', 299, 274, './test-truk-od/trukOD1649305763.jpg', 'kepala_truk', 99, 6, 63, 191, 208, 'badan_truk', 99, 45, 6, 216, 211, '1', 118.94826501970341, 126.24913679439159, '2022-04-07 11:29:23'),
(430, 21, './test-truk-ori/truk1649305771.jpg', 210, 204, './test-truk-od/trukOD1649305771.jpg', 'kepala_truk', 99, 4, 28, 148, 137, 'badan_truk', 98, 23, 5, 180, 124, '0', 46.17631299358686, 17.0241626299646, '2022-04-07 11:29:31'),
(431, 21, './test-truk-ori/truk1649305772.jpg', 335, 366, './test-truk-od/trukOD1649305772.jpg', 'kepala_truk', 88, 1, 34, 265, 235, 'badan_truk', 99, 53, 3, 302, 186, '0', 211.04066625772015, 206.62620347634513, '2022-04-07 11:29:32'),
(432, 21, './test-truk-ori/truk1649305787.jpg', 204, 231, './test-truk-od/trukOD1649305788.jpg', 'kepala_truk', 99, 8, 23, 174, 144, 'badan_truk', 99, 36, 3, 187, 129, '0', 57.6757546843297, 30.985642373510395, '2022-04-07 11:29:48'),
(433, 21, './test-truk-ori/truk1649305797.jpg', 202, 138, './test-truk-od/trukOD1649305797.jpg', 'kepala_truk', 99, 6, 87, 100, 93, 'badan_truk', 92, 10, -8, 131, 170, '1', 69.09479737246183, 99.02064690879284, '2022-04-07 11:29:57'),
(434, 21, './test-truk-ori/truk1649305798.jpg', 335, 216, './test-truk-od/trukOD1649305798.jpg', 'kepala_truk', 89, -2, 143, 162, 143, 'badan_truk', 65, 12, -6, 213, 269, '1', 114.00423860318824, 157.3883392887906, '2022-04-07 11:29:58'),
(435, 21, './test-truk-ori/truk1649305821.jpg', 203, 224, './test-truk-od/trukOD1649305821.jpg', 'kepala_truk', 99, 8, 27, 150, 134, 'badan_truk', 99, 34, 1, 188, 115, '0', 53.88149647153426, 23.980007262754178, '2022-04-07 11:30:21'),
(436, 21, './test-truk-ori/truk1649305832.jpg', 202, 171, './test-truk-od/trukOD1649305832.jpg', 'kepala_truk', 92, 0, 54, 133, 111, 'badan_truk', 96, 14, 1, 159, 129, '0', 44.051661991759616, 43.98739558708658, '2022-04-07 11:30:32'),
(437, 21, './test-truk-ori/truk1649305838.jpg', 202, 190, './test-truk-od/trukOD1649305838.jpg', 'kepala_truk', 87, 5, 76, 130, 105, 'badan_truk', 99, 22, 1, 166, 148, '1', 28.489222349283917, 56.67341576756182, '2022-04-07 11:30:38'),
(438, 21, './test-truk-ori/truk1649305839.jpg', 308, 284, './test-truk-od/trukOD1649305839.jpg', 'kepala_truk', 99, 1, 104, 190, 150, 'badan_truk', 82, 21, 9, 272, 205, '1', 115.35485885224618, 140.0230102327736, '2022-04-07 11:30:39'),
(439, 21, './test-truk-ori/truk1649305843.jpg', 202, 182, './test-truk-od/trukOD1649305843.jpg', 'kepala_truk', 99, 4, 44, 126, 132, 'badan_truk', 99, 15, 0, 169, 132, '0', 39.566513754678695, 33.14487174002403, '2022-04-07 11:30:43'),
(440, 21, './test-truk-ori/truk1649305844.jpg', 289, 292, './test-truk-od/trukOD1649305844.jpg', 'kepala_truk', 69, 8, 62, 198, 191, 'badan_truk', 99, 31, 2, 260, 189, '1', 124.33598472633408, 131.43443716743693, '2022-04-07 11:30:44'),
(441, 21, './test-truk-ori/truk1649305856.jpg', 201, 157, './test-truk-od/trukOD1649305856.jpg', 'kepala_truk', 99, -1, 67, 118, 99, 'badan_truk', 92, 6, 6, 152, 133, '1', 52.180461402737116, 63.567767568564214, '2022-04-07 11:30:56'),
(442, 21, './test-truk-ori/truk1649305857.jpg', 305, 293, './test-truk-od/trukOD1649305858.jpg', 'kepala_truk', 99, -2, 91, 197, 163, 'badan_truk', 99, 34, 0, 253, 207, '1', 110.66845424156118, 131.18053295921405, '2022-04-07 11:30:58'),
(443, 21, './test-truk-ori/truk1649305896.jpg', 201, 173, './test-truk-od/trukOD1649305897.jpg', 'kepala_truk', 99, 0, 40, 132, 139, 'badan_truk', 95, 18, 3, 155, 139, '0', 43.60607482300234, 32.96750934173498, '2022-04-07 11:31:37'),
(444, 21, './test-truk-ori/truk1649305898.jpg', 235, 245, './test-truk-od/trukOD1649305898.jpg', 'kepala_truk', 99, 15, 30, 156, 173, 'badan_truk', 99, 37, -2, 201, 154, '0', 61.25306923176861, 54.181515641999, '2022-04-07 11:31:38'),
(445, 21, './test-truk-ori/truk1649305899.jpg', 292, 323, './test-truk-od/trukOD1649305899.jpg', 'kepala_truk', 80, 8, 59, 209, 201, 'badan_truk', 99, 50, -3, 264, 198, '1', 140.09154795878166, 146.535724519153, '2022-04-07 11:31:39'),
(446, 21, './test-truk-ori/truk1649305901.jpg', 205, 139, './test-truk-od/trukOD1649305902.jpg', 'kepala_truk', 99, 3, 39, 88, 121, 'badan_truk', 74, 10, 5, 131, 122, '0', 83.28065072206122, 78.91778606431876, '2022-04-07 11:31:42'),
(447, 21, './test-truk-ori/truk1649305903.jpg', 249, 241, './test-truk-od/trukOD1649305903.jpg', 'kepala_truk', 97, 4, 32, 167, 165, 'badan_truk', 99, 30, 1, 206, 149, '0', 61.862885702586965, 53.24048168604622, '2022-04-07 11:31:43'),
(448, 21, './test-truk-ori/truk1649305907.jpg', 201, 217, './test-truk-od/trukOD1649305907.jpg', 'kepala_truk', 97, 5, 28, 148, 138, 'badan_truk', 99, 24, 1, 192, 121, '0', 49.8481795715346, 25.539262951471862, '2022-04-07 11:31:47'),
(449, 21, './test-truk-ori/truk1649305908.jpg', 258, 305, './test-truk-od/trukOD1649305908.jpg', 'kepala_truk', 99, -1, 32, 206, 186, 'badan_truk', 99, 31, 3, 276, 156, '0', 134.15458652880102, 131.42772116451226, '2022-04-07 11:31:48'),
(450, 21, './test-truk-ori/truk1649305926.jpg', 201, 218, './test-truk-od/trukOD1649305926.jpg', 'kepala_truk', 99, 3, 21, 163, 150, 'badan_truk', 99, 27, 1, 190, 125, '0', 57.41448605631021, 24.926092755322138, '2022-04-07 11:32:06'),
(451, 21, './test-truk-ori/truk1649305936.jpg', 202, 160, './test-truk-od/trukOD1649305936.jpg', 'kepala_truk', 97, 5, 77, 117, 103, 'badan_truk', 99, 17, 0, 143, 153, '1', 48.983473485096965, 71.44710722965209, '2022-04-07 11:32:16'),
(452, 21, './test-truk-ori/truk1649305937.jpg', 376, 320, './test-truk-od/trukOD1649305938.jpg', 'kepala_truk', 99, 5, 109, 225, 216, 'badan_truk', 67, 24, 2, 290, 269, '1', 198.83007238098517, 217.59646083453922, '2022-04-07 11:32:18'),
(453, 21, './test-truk-ori/truk1649305957.jpg', 201, 247, './test-truk-od/trukOD1649305957.jpg', 'kepala_truk', 98, 76, 13, 161, 158, 'badan_truk', 98, 9, -1, 209, 122, '0', 67.95726741922529, 42.455766404813644, '2022-04-07 11:32:37'),
(454, 21, './test-truk-ori/truk1649305959.jpg', 208, 188, './test-truk-od/trukOD1649305959.jpg', 'kepala_truk', 99, 60, 60, 128, 120, 'badan_truk', 99, 6, 2, 165, 147, '1', 26.968120886689494, 46.7108357219783, '2022-04-07 11:32:39'),
(455, 21, './test-truk-ori/truk1649305960.jpg', 342, 283, './test-truk-od/trukOD1649305960.jpg', 'kepala_truk', 85, 105, 111, 173, 157, 'badan_truk', 70, 2, 12, 257, 226, '1', 109.40765484413711, 140.98821321071475, '2022-04-07 11:32:40'),
(456, 21, './test-truk-ori/truk1649305981.jpg', 202, 230, './test-truk-od/trukOD1649305981.jpg', 'kepala_truk', 99, 87, 54, 142, 124, 'badan_truk', 98, 4, 2, 207, 143, '1', 32.914020061180295, 52.21878077823614, '2022-04-07 11:33:01'),
(457, 21, './test-truk-ori/truk1649305982.jpg', 308, 364, './test-truk-od/trukOD1649305982.jpg', 'kepala_truk', 99, 136, 82, 225, 178, 'badan_truk', 96, 11, -1, 309, 206, '1', 169.74838153108695, 183.2487893773501, '2022-04-07 11:33:02'),
(458, 21, './test-truk-ori/truk1649305983.jpg', 328, 281, './test-truk-od/trukOD1649305984.jpg', 'kepala_truk', 99, 80, 106, 200, 176, 'badan_truk', 99, 6, 7, 253, 228, '1', 127.11987041313462, 149.03150984452262, '2022-04-07 11:33:04'),
(459, 21, './test-truk-ori/truk1649305997.jpg', 205, 208, './test-truk-od/trukOD1649305997.jpg', 'kepala_truk', 99, 77, 52, 126, 128, 'badan_truk', 99, 7, 1, 182, 147, '1', 22.664954389102977, 45.25388926199983, '2022-04-07 11:33:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images_test`
--
ALTER TABLE `images_test`
  ADD PRIMARY KEY (`id_img_test`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images_test`
--
ALTER TABLE `images_test`
  MODIFY `id_img_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
