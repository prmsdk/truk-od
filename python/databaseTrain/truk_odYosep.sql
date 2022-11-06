-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 10:07 AM
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
-- Database: `truk_od`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_img` int(11) NOT NULL,
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
  `status` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_img`, `img_truk`, `w_image`, `h_image`, `img_od`, `label_kepala`, `confidence_kepala`, `x_kepala`, `y_kepala`, `w_kepala`, `h_kepala`, `label_badan`, `confidence_badan`, `x_badan`, `y_badan`, `w_badan`, `h_badan`, `od_test`, `status`) VALUES
(12, './truk-ori/truk1647417159.jpg', 201, 180, './truk-od/trukOD1647417160.jpg', 'kepala_truk', 99, 7, 46, 140, 127, 'badan_truk', 99, 26, 1, 153, 129, NULL, 'active'),
(13, './truk-ori/truk1647417161.jpg', 286, 283, './truk-od/trukOD1647417161.jpg', 'kepala_truk', 99, 6, 46, 226, 199, 'badan_truk', 99, 39, 0, 246, 179, NULL, 'active'),
(14, './truk-ori/truk1647417187.jpg', 202, 173, './truk-od/trukOD1647417187.jpg', 'kepala_truk', 98, 2, 50, 138, 119, 'badan_truk', 99, 18, -2, 153, 133, NULL, 'active'),
(15, './truk-ori/truk1647417188.jpg', 361, 362, './truk-od/trukOD1647417188.jpg', 'kepala_truk', 99, -6, 42, 297, 250, 'badan_truk', 99, 45, -1, 312, 212, NULL, 'active'),
(16, './truk-ori/truk1647417215.jpg', 210, 129, './truk-od/trukOD1647417216.jpg', 'kepala_truk', 71, 1, 76, 115, 100, 'badan_truk', 82, 6, 1, 128, 153, NULL, 'active'),
(17, './truk-ori/truk1647417217.jpg', 272, 217, './truk-od/trukOD1647417217.jpg', 'kepala_truk', 99, 1, 84, 165, 143, 'badan_truk', 93, 22, 4, 196, 190, NULL, 'active'),
(18, './truk-ori/truk1647417219.jpg', 201, 177, './truk-od/trukOD1647417219.jpg', 'kepala_truk', 99, 2, 49, 142, 121, 'badan_truk', 95, 19, 9, 157, 130, NULL, 'active'),
(19, './truk-ori/truk1647417220.jpg', 294, 286, './truk-od/trukOD1647417221.jpg', 'kepala_truk', 99, -2, 52, 226, 187, 'badan_truk', 99, 32, 4, 255, 182, NULL, 'active'),
(20, './truk-ori/truk1647417227.jpg', 204, 183, './truk-od/trukOD1647417227.jpg', 'kepala_truk', 99, 56, 70, 127, 106, 'badan_truk', 99, 0, 2, 172, 147, NULL, 'active'),
(21, './truk-ori/truk1647417228.jpg', 338, 355, './truk-od/trukOD1647417228.jpg', 'kepala_truk', 98, 128, 113, 224, 176, 'badan_truk', 90, 2, 5, 321, 237, NULL, 'active'),
(22, './truk-ori/truk1647417245.jpg', 206, 203, './truk-od/trukOD1647417245.jpg', 'kepala_truk', 72, 72, 76, 124, 109, 'badan_truk', 99, 4, 2, 180, 151, NULL, 'active'),
(23, './truk-ori/truk1647417258.jpg', 201, 199, './truk-od/trukOD1647417258.jpg', 'kepala_truk', 99, 3, 27, 150, 147, 'badan_truk', 97, 25, -1, 171, 127, NULL, 'active'),
(24, './truk-ori/truk1647417282.jpg', 206, 140, './truk-od/trukOD1647417282.jpg', 'kepala_truk', 96, 0, 82, 109, 98, 'badan_truk', 81, 15, 2, 124, 153, NULL, 'active'),
(25, './truk-ori/truk1647417283.jpg', 302, 242, './truk-od/trukOD1647417283.jpg', 'kepala_truk', 99, 0, 104, 190, 154, 'badan_truk', 98, 36, 8, 198, 210, NULL, 'active'),
(26, './truk-ori/truk1647417309.jpg', 202, 201, './truk-od/trukOD1647417310.jpg', 'kepala_truk', 99, 78, 56, 122, 115, 'badan_truk', 68, 3, 4, 188, 137, NULL, 'active'),
(27, './truk-ori/truk1647417311.jpg', 330, 274, './truk-od/trukOD1647417311.jpg', 'kepala_truk', 84, 74, 89, 200, 193, 'badan_truk', 91, 6, 3, 240, 214, NULL, 'active'),
(28, './truk-ori/truk1647417332.jpg', 201, 166, './truk-od/trukOD1647417333.jpg', 'kepala_truk', 99, 1, 50, 121, 134, 'badan_truk', 97, 20, 5, 141, 141, NULL, 'active'),
(29, './truk-ori/truk1647417334.jpg', 299, 274, './truk-od/trukOD1647417334.jpg', 'kepala_truk', 99, 6, 63, 191, 208, 'badan_truk', 99, 45, 6, 216, 211, NULL, 'active'),
(30, './truk-ori/truk1647417342.jpg', 210, 204, './truk-od/trukOD1647417342.jpg', 'kepala_truk', 99, 4, 28, 148, 137, 'badan_truk', 98, 23, 5, 180, 124, NULL, 'active'),
(31, './truk-ori/truk1647417343.jpg', 315, 359, './truk-od/trukOD1647417344.jpg', 'kepala_truk', 89, 6, 27, 259, 231, 'badan_truk', 99, 57, 0, 289, 177, NULL, 'active'),
(32, './truk-ori/truk1647417358.jpg', 204, 231, './truk-od/trukOD1647417359.jpg', 'kepala_truk', 99, 8, 23, 174, 144, 'badan_truk', 99, 36, 3, 187, 129, NULL, 'active'),
(33, './truk-ori/truk1647417360.jpg', 315, 370, './truk-od/trukOD1647417360.jpg', 'kepala_truk', 99, 2, 31, 292, 229, 'badan_truk', 99, 59, 2, 307, 196, NULL, 'active'),
(34, './truk-ori/truk1647417368.jpg', 202, 138, './truk-od/trukOD1647417368.jpg', 'kepala_truk', 99, 6, 87, 100, 93, 'badan_truk', 92, 10, -8, 131, 170, NULL, 'active'),
(35, './truk-ori/truk1647417369.jpg', 340, 214, './truk-od/trukOD1647417369.jpg', 'kepala_truk', 82, -2, 144, 161, 150, 'badan_truk', 86, 16, -1, 203, 262, NULL, 'active'),
(36, './truk-ori/truk1647417392.jpg', 203, 224, './truk-od/trukOD1647417393.jpg', 'kepala_truk', 99, 8, 27, 150, 134, 'badan_truk', 99, 34, 1, 188, 115, NULL, 'active'),
(37, './truk-ori/truk1647417403.jpg', 202, 171, './truk-od/trukOD1647417403.jpg', 'kepala_truk', 92, 0, 54, 133, 111, 'badan_truk', 96, 14, 1, 159, 129, NULL, 'active'),
(38, './truk-ori/truk1647417409.jpg', 202, 190, './truk-od/trukOD1647417409.jpg', 'kepala_truk', 87, 5, 76, 130, 105, 'badan_truk', 99, 22, 1, 166, 148, NULL, 'active'),
(39, './truk-ori/truk1647417410.jpg', 312, 295, './truk-od/trukOD1647417411.jpg', 'kepala_truk', 99, 3, 106, 192, 156, 'badan_truk', 86, 20, 9, 285, 210, NULL, 'active'),
(40, './truk-ori/truk1647417414.jpg', 202, 182, './truk-od/trukOD1647417414.jpg', 'kepala_truk', 99, 4, 44, 126, 132, 'badan_truk', 99, 15, 0, 169, 132, NULL, 'active'),
(41, './truk-ori/truk1647417415.jpg', 289, 292, './truk-od/trukOD1647417416.jpg', 'kepala_truk', 69, 8, 62, 198, 191, 'badan_truk', 99, 31, 2, 260, 189, NULL, 'active'),
(42, './truk-ori/truk1647417427.jpg', 201, 157, './truk-od/trukOD1647417428.jpg', 'kepala_truk', 99, -1, 67, 118, 99, 'badan_truk', 92, 6, 6, 152, 133, NULL, 'active'),
(43, './truk-ori/truk1647417429.jpg', 298, 294, './truk-od/trukOD1647417429.jpg', 'kepala_truk', 99, -1, 90, 200, 159, 'badan_truk', 67, 29, 8, 270, 199, NULL, 'active'),
(44, './truk-ori/truk1647417467.jpg', 201, 173, './truk-od/trukOD1647417468.jpg', 'kepala_truk', 99, 0, 40, 132, 139, 'badan_truk', 95, 18, 3, 155, 139, NULL, 'active'),
(45, './truk-ori/truk1647417469.jpg', 238, 248, './truk-od/trukOD1647417469.jpg', 'kepala_truk', 99, 13, 27, 159, 177, 'badan_truk', 99, 37, -2, 203, 155, NULL, 'active'),
(46, './truk-ori/truk1647417470.jpg', 292, 323, './truk-od/trukOD1647417470.jpg', 'kepala_truk', 80, 8, 59, 209, 201, 'badan_truk', 99, 50, -3, 264, 198, NULL, 'active'),
(47, './truk-ori/truk1647417472.jpg', 205, 139, './truk-od/trukOD1647417473.jpg', 'kepala_truk', 99, 3, 39, 88, 121, 'badan_truk', 74, 10, 5, 131, 122, NULL, 'active'),
(48, './truk-ori/truk1647417474.jpg', 251, 234, './truk-od/trukOD1647417474.jpg', 'kepala_truk', 99, 1, 36, 169, 162, 'badan_truk', 99, 30, 1, 199, 152, NULL, 'active'),
(49, './truk-ori/truk1647417478.jpg', 201, 217, './truk-od/trukOD1647417478.jpg', 'kepala_truk', 97, 5, 28, 148, 138, 'badan_truk', 99, 24, 1, 192, 121, NULL, 'active'),
(50, './truk-ori/truk1647417479.jpg', 260, 320, './truk-od/trukOD1647417479.jpg', 'kepala_truk', 94, 12, 29, 210, 190, 'badan_truk', 99, 37, 2, 284, 157, NULL, 'active'),
(51, './truk-ori/truk1647417497.jpg', 201, 218, './truk-od/trukOD1647417497.jpg', 'kepala_truk', 99, 3, 21, 163, 150, 'badan_truk', 99, 27, 1, 190, 125, NULL, 'active'),
(52, './truk-ori/truk1647417507.jpg', 202, 160, './truk-od/trukOD1647417507.jpg', 'kepala_truk', 97, 5, 77, 117, 103, 'badan_truk', 99, 17, 0, 143, 153, NULL, 'active'),
(53, './truk-ori/truk1647417509.jpg', 376, 320, './truk-od/trukOD1647417509.jpg', 'kepala_truk', 99, 5, 109, 225, 216, 'badan_truk', 67, 24, 2, 290, 269, NULL, 'active'),
(54, './truk-ori/truk1647417528.jpg', 201, 247, './truk-od/trukOD1647417528.jpg', 'kepala_truk', 98, 76, 13, 161, 158, 'badan_truk', 98, 9, -1, 209, 122, NULL, 'active'),
(55, './truk-ori/truk1647417529.jpg', 208, 188, './truk-od/trukOD1647417530.jpg', 'kepala_truk', 99, 60, 60, 128, 120, 'badan_truk', 99, 6, 2, 165, 147, NULL, 'active'),
(56, './truk-ori/truk1647417531.jpg', 283, 233, './truk-od/trukOD1647417531.jpg', 'kepala_truk', 98, 79, 87, 153, 161, 'badan_truk', 99, 0, 6, 221, 198, NULL, 'active'),
(57, './truk-ori/truk1647417552.jpg', 202, 230, './truk-od/trukOD1647417552.jpg', 'kepala_truk', 99, 87, 54, 142, 124, 'badan_truk', 98, 4, 2, 207, 143, NULL, 'active'),
(58, './truk-ori/truk1647417553.jpg', 308, 360, './truk-od/trukOD1647417553.jpg', 'kepala_truk', 99, 136, 84, 220, 175, 'badan_truk', 92, 14, 0, 299, 205, NULL, 'active'),
(59, './truk-ori/truk1647417554.jpg', 326, 271, './truk-od/trukOD1647417555.jpg', 'kepala_truk', 99, 76, 106, 196, 173, 'badan_truk', 99, 4, 8, 247, 223, NULL, 'active'),
(60, './truk-ori/truk1647417568.jpg', 205, 208, './truk-od/trukOD1647417568.jpg', 'kepala_truk', 99, 77, 52, 126, 128, 'badan_truk', 99, 7, 1, 182, 147, NULL, 'active'),
(61, './truk-ori/truk1647417764.jpg', 201, 154, './truk-od/trukOD1647417765.jpg', 'kepala_truk', 99, 0, 61, 123, 107, 'badan_truk', 99, 15, 5, 140, 137, NULL, 'active'),
(62, './truk-ori/truk1647417766.jpg', 265, 224, './truk-od/trukOD1647417766.jpg', 'kepala_truk', 99, 0, 71, 183, 151, 'badan_truk', 99, 24, 8, 200, 178, NULL, 'active'),
(63, './truk-ori/truk1647417773.jpg', 204, 142, './truk-od/trukOD1647417774.jpg', 'kepala_truk', 71, -1, 75, 119, 110, 'badan_truk', 98, 49, 5, 93, 145, NULL, 'active'),
(64, './truk-ori/truk1647417775.jpg', 242, 222, './truk-od/trukOD1647417775.jpg', 'kepala_truk', 94, 12, 63, 177, 156, 'badan_truk', 86, 84, 1, 136, 188, NULL, 'active'),
(65, './truk-ori/truk1647417776.jpg', 375, 316, './truk-od/trukOD1647417776.jpg', 'kepala_truk', 99, -10, 96, 284, 234, 'badan_truk', 95, 156, 0, 160, 294, NULL, 'active'),
(66, './truk-ori/truk1647417789.jpg', 209, 240, './truk-od/trukOD1647417789.jpg', 'kepala_truk', 99, -3, 10, 190, 155, 'badan_truk', 99, 42, 1, 196, 123, NULL, 'active'),
(67, './truk-ori/truk1647417819.jpg', 204, 163, './truk-od/trukOD1647417820.jpg', 'kepala_truk', 99, 2, 61, 129, 104, 'badan_truk', 96, 18, 6, 145, 135, NULL, 'active'),
(68, './truk-ori/truk1647417821.jpg', 287, 261, './truk-od/trukOD1647417821.jpg', 'kepala_truk', 99, -2, 83, 202, 160, 'badan_truk', 98, 40, 4, 217, 202, NULL, 'active'),
(69, './truk-ori/truk1647417844.jpg', 201, 126, './truk-od/trukOD1647417845.jpg', 'kepala_truk', 87, 6, 51, 101, 117, 'badan_truk', 96, 5, 9, 117, 128, NULL, 'active'),
(70, './truk-ori/truk1647417900.jpg', 202, 173, './truk-od/trukOD1647417900.jpg', 'kepala_truk', 66, 6, 53, 132, 113, 'badan_truk', 89, 16, 7, 159, 132, NULL, 'active'),
(71, './truk-ori/truk1647417901.jpg', 253, 226, './truk-od/trukOD1647417901.jpg', 'kepala_truk', 76, -1, 62, 173, 152, 'badan_truk', 76, 16, 9, 201, 166, NULL, 'active'),
(72, './truk-ori/truk1647417902.jpg', 359, 320, './truk-od/trukOD1647417903.jpg', 'kepala_truk', 99, -1, 79, 242, 210, 'badan_truk', 99, 38, 1, 278, 240, NULL, 'active'),
(73, './truk-ori/truk1647417944.jpg', 204, 164, './truk-od/trukOD1647417944.jpg', 'kepala_truk', 99, 15, 58, 123, 107, 'badan_truk', 82, 16, 1, 148, 133, NULL, 'active'),
(74, './truk-ori/truk1647417945.jpg', 253, 213, './truk-od/trukOD1647417946.jpg', 'kepala_truk', 94, 12, 68, 169, 139, 'badan_truk', 86, 19, -2, 196, 168, NULL, 'active'),
(75, './truk-ori/truk1647417954.jpg', 202, 208, './truk-od/trukOD1647417954.jpg', 'kepala_truk', 99, 6, 29, 152, 143, 'badan_truk', 99, 30, -2, 169, 136, NULL, 'active'),
(76, './truk-ori/truk1647417955.jpg', 287, 321, './truk-od/trukOD1647417956.jpg', 'kepala_truk', 99, 9, 41, 227, 208, 'badan_truk', 99, 47, -1, 262, 187, NULL, 'active'),
(77, './truk-ori/truk1647417959.jpg', 201, 161, './truk-od/trukOD1647417959.jpg', 'kepala_truk', 99, 0, 58, 130, 112, 'badan_truk', 87, 13, 5, 142, 135, NULL, 'active'),
(78, './truk-ori/truk1647417961.jpg', 307, 281, './truk-od/trukOD1647417961.jpg', 'kepala_truk', 99, 5, 92, 207, 168, 'badan_truk', 98, 42, 9, 233, 206, NULL, 'active'),
(79, './truk-ori/truk1647417978.jpg', 204, 146, './truk-od/trukOD1647417978.jpg', 'kepala_truk', 98, -1, 75, 109, 97, 'badan_truk', 99, 6, 4, 132, 148, NULL, 'active'),
(80, './truk-ori/truk1647417980.jpg', 270, 216, './truk-od/trukOD1647417980.jpg', 'kepala_truk', 98, 4, 99, 151, 132, 'badan_truk', 99, 22, -2, 193, 211, NULL, 'active'),
(81, './truk-ori/truk1647417981.jpg', 373, 327, './truk-od/trukOD1647417981.jpg', 'kepala_truk', 98, 6, 126, 227, 196, 'badan_truk', 99, 41, 0, 279, 276, NULL, 'active'),
(82, './truk-ori/truk1647417984.jpg', 203, 174, './truk-od/trukOD1647417984.jpg', 'kepala_truk', 98, 3, 48, 138, 125, 'badan_truk', 99, 24, 1, 145, 132, NULL, 'active'),
(83, './truk-ori/truk1647417985.jpg', 279, 258, './truk-od/trukOD1647417986.jpg', 'kepala_truk', 99, 2, 52, 201, 184, 'badan_truk', 99, 46, 0, 202, 181, NULL, 'active'),
(84, './truk-ori/truk1647418006.jpg', 203, 158, './truk-od/trukOD1647418006.jpg', 'kepala_truk', 99, -3, 42, 132, 125, 'badan_truk', 97, 10, 9, 141, 132, NULL, 'active'),
(85, './truk-ori/truk1647418034.jpg', 201, 160, './truk-od/trukOD1647418034.jpg', 'kepala_truk', 98, 8, 52, 130, 116, 'badan_truk', 65, 16, 4, 146, 137, NULL, 'active'),
(86, './truk-ori/truk1647418036.jpg', 256, 210, './truk-od/trukOD1647418036.jpg', 'kepala_truk', 94, 0, 67, 177, 143, 'badan_truk', 99, 25, -3, 182, 179, NULL, 'active'),
(87, './truk-ori/truk1647418075.jpg', 201, 176, './truk-od/trukOD1647418075.jpg', 'kepala_truk', 99, 4, 65, 129, 110, 'badan_truk', 89, 13, 2, 168, 143, NULL, 'active'),
(88, './truk-ori/truk1647418077.jpg', 297, 273, './truk-od/trukOD1647418077.jpg', 'kepala_truk', 99, 3, 94, 196, 162, 'badan_truk', 92, 24, 5, 253, 205, NULL, 'active'),
(89, './truk-ori/truk1647418080.jpg', 202, 150, './truk-od/trukOD1647418080.jpg', 'kepala_truk', 99, 1, 64, 116, 102, 'badan_truk', 79, 12, 4, 140, 141, NULL, 'active'),
(90, './truk-ori/truk1647418081.jpg', 274, 228, './truk-od/trukOD1647418081.jpg', 'kepala_truk', 99, 1, 83, 178, 156, 'badan_truk', 99, 24, 0, 203, 201, NULL, 'active'),
(91, './truk-ori/truk1647418114.jpg', 213, 145, './truk-od/trukOD1647418114.jpg', 'kepala_truk', 98, 2, 65, 127, 108, 'badan_truk', 92, 9, 7, 140, 143, NULL, 'active'),
(92, './truk-ori/truk1647418115.jpg', 262, 239, './truk-od/trukOD1647418116.jpg', 'kepala_truk', 99, 4, 69, 184, 148, 'badan_truk', 98, 27, -1, 209, 176, NULL, 'active'),
(93, './truk-ori/truk1647418141.jpg', 204, 150, './truk-od/trukOD1647418141.jpg', 'kepala_truk', 96, 43, 78, 106, 104, 'badan_truk', 99, 4, 1, 132, 148, NULL, 'active'),
(94, './truk-ori/truk1647418142.jpg', 335, 335, './truk-od/trukOD1647418143.jpg', 'kepala_truk', 99, 117, 135, 209, 190, 'badan_truk', 89, 13, -2, 279, 265, NULL, 'active'),
(95, './truk-ori/truk1647418153.jpg', 209, 173, './truk-od/trukOD1647418153.jpg', 'kepala_truk', 70, 56, 70, 114, 126, 'badan_truk', 99, 2, 1, 160, 158, NULL, 'active'),
(96, './truk-ori/truk1647418154.jpg', 304, 308, './truk-od/trukOD1647418154.jpg', 'kepala_truk', 99, 112, 77, 189, 201, 'badan_truk', 98, 2, -4, 278, 233, NULL, 'active'),
(97, './truk-ori/truk1647418171.jpg', 201, 195, './truk-od/trukOD1647418171.jpg', 'kepala_truk', 99, 59, 61, 131, 112, 'badan_truk', 99, 1, 2, 177, 143, NULL, 'active'),
(98, './truk-ori/truk1647418172.jpg', 278, 311, './truk-od/trukOD1647418173.jpg', 'kepala_truk', 99, 107, 74, 200, 166, 'badan_truk', 78, -4, 5, 294, 192, NULL, 'active'),
(99, './truk-ori/truk1647418174.jpg', 204, 183, './truk-od/trukOD1647418174.jpg', 'kepala_truk', 98, 62, 71, 116, 100, 'badan_truk', 99, 3, 6, 168, 135, NULL, 'active'),
(100, './truk-ori/truk1647418175.jpg', 256, 249, './truk-od/trukOD1647418176.jpg', 'kepala_truk', 99, 84, 82, 164, 140, 'badan_truk', 92, -3, 3, 240, 179, NULL, 'active'),
(101, './truk-ori/truk1647418179.jpg', 203, 207, './truk-od/trukOD1647418180.jpg', 'kepala_truk', 99, 67, 53, 137, 115, 'badan_truk', 89, 0, 6, 191, 136, NULL, 'active'),
(102, './truk-ori/truk1647418181.jpg', 337, 353, './truk-od/trukOD1647418181.jpg', 'kepala_truk', 72, 115, 77, 232, 176, 'badan_truk', 78, 5, 5, 314, 184, NULL, 'active'),
(103, './truk-ori/truk1647418186.jpg', 201, 164, './truk-od/trukOD1647418186.jpg', 'kepala_truk', 99, 48, 70, 115, 102, 'badan_truk', 99, 2, 3, 147, 147, NULL, 'active'),
(104, './truk-ori/truk1647418187.jpg', 266, 265, './truk-od/trukOD1647418188.jpg', 'kepala_truk', 70, 93, 97, 166, 144, 'badan_truk', 99, 4, -3, 234, 204, NULL, 'active'),
(105, './truk-ori/truk1647418256.jpg', 201, 189, './truk-od/trukOD1647418256.jpg', 'kepala_truk', 99, 0, 36, 151, 130, 'badan_truk', 98, 23, 0, 161, 136, NULL, 'active'),
(106, './truk-ori/truk1647418257.jpg', 265, 301, './truk-od/trukOD1647418257.jpg', 'kepala_truk', 99, 5, 38, 224, 189, 'badan_truk', 99, 48, -3, 239, 181, NULL, 'active'),
(107, './truk-ori/truk1647418284.jpg', 203, 129, './truk-od/trukOD1647418284.jpg', 'kepala_truk', 71, 61, 76, 65, 107, 'badan_truk', 60, 8, 4, 124, 147, NULL, 'active'),
(108, './truk-ori/truk1647418285.jpg', 288, 318, './truk-od/trukOD1647418285.jpg', 'kepala_truk', 99, 111, 89, 198, 158, 'badan_truk', 99, 8, 1, 277, 210, NULL, 'active'),
(109, './truk-ori/truk1647418290.jpg', 249, 231, './truk-od/trukOD1647418291.jpg', 'kepala_truk', 97, 70, 58, 153, 139, 'badan_truk', 99, 8, 2, 196, 148, NULL, 'active'),
(110, './truk-ori/truk1647418321.jpg', 205, 132, './truk-od/trukOD1647418322.jpg', 'kepala_truk', 99, 0, 67, 110, 104, 'badan_truk', 70, 10, 4, 126, 141, NULL, 'active'),
(111, './truk-ori/truk1647418323.jpg', 324, 247, './truk-od/trukOD1647418323.jpg', 'kepala_truk', 99, 0, 102, 191, 175, 'badan_truk', 77, 23, 1, 227, 234, NULL, 'active'),
(112, './truk-ori/truk1647418349.jpg', 203, 176, './truk-od/trukOD1647418350.jpg', 'kepala_truk', 99, 1, 45, 146, 133, 'badan_truk', 71, 21, 8, 144, 131, NULL, 'active'),
(113, './truk-ori/truk1647418351.jpg', 315, 329, './truk-od/trukOD1647418351.jpg', 'kepala_truk', 98, 3, 56, 247, 231, 'badan_truk', 99, 45, -3, 277, 203, NULL, 'active'),
(114, './truk-ori/truk1647418353.jpg', 202, 186, './truk-od/trukOD1647418353.jpg', 'kepala_truk', 99, 0, 34, 155, 135, 'badan_truk', 99, 22, 1, 161, 132, NULL, 'active'),
(115, './truk-ori/truk1647418354.jpg', 333, 355, './truk-od/trukOD1647418354.jpg', 'kepala_truk', 99, -2, 44, 287, 232, 'badan_truk', 99, 45, 0, 305, 212, NULL, 'active'),
(116, './truk-ori/truk1647418360.jpg', 204, 185, './truk-od/trukOD1647418360.jpg', 'kepala_truk', 90, 8, 43, 151, 124, 'badan_truk', 98, 22, 13, 159, 125, NULL, 'active'),
(117, './truk-ori/truk1647418367.jpg', 202, 165, './truk-od/trukOD1647418368.jpg', 'kepala_truk', 99, -3, 46, 142, 127, 'badan_truk', 98, 21, 10, 141, 127, NULL, 'active'),
(118, './truk-ori/truk1647418369.jpg', 307, 356, './truk-od/trukOD1647418369.jpg', 'kepala_truk', 99, 4, 29, 276, 240, 'badan_truk', 99, 66, -1, 277, 196, NULL, 'active'),
(119, './truk-ori/truk1647418386.jpg', 203, 184, './truk-od/trukOD1647418386.jpg', 'kepala_truk', 99, 56, 68, 129, 109, 'badan_truk', 99, 2, 4, 165, 146, NULL, 'active'),
(120, './truk-ori/truk1647418387.jpg', 261, 231, './truk-od/trukOD1647418387.jpg', 'kepala_truk', 97, 97, 84, 131, 144, 'badan_truk', 99, 0, 1, 228, 189, NULL, 'active'),
(121, './truk-ori/truk1647418441.jpg', 202, 189, './truk-od/trukOD1647418441.jpg', 'kepala_truk', 99, 57, 58, 127, 108, 'badan_truk', 95, 4, 10, 167, 128, NULL, 'active'),
(122, './truk-ori/truk1647418442.jpg', 263, 269, './truk-od/trukOD1647418443.jpg', 'kepala_truk', 99, 89, 76, 177, 150, 'badan_truk', 99, 7, 5, 240, 182, NULL, 'active'),
(123, './truk-ori/truk1647418461.jpg', 216, 172, './truk-od/trukOD1647418461.jpg', 'kepala_truk', 71, 80, 121, 91, 92, 'badan_truk', 99, 1, 7, 168, 152, NULL, 'active'),
(124, './truk-ori/truk1647418462.jpg', 266, 239, './truk-od/trukOD1647418463.jpg', 'kepala_truk', 85, 72, 83, 169, 125, 'badan_truk', 80, 6, 13, 215, 166, NULL, 'active'),
(125, './truk-ori/truk1647418464.jpg', 260, 309, './truk-od/trukOD1647418464.jpg', 'kepala_truk', 99, 105, 69, 190, 152, 'badan_truk', 98, 8, 2, 267, 187, NULL, 'active'),
(126, './truk-ori/truk1647418465.jpg', 315, 328, './truk-od/trukOD1647418466.jpg', 'kepala_truk', 98, 115, 87, 214, 173, 'badan_truk', 97, 5, 9, 295, 212, NULL, 'active'),
(127, './truk-ori/truk1647418474.jpg', 202, 221, './truk-od/trukOD1647418475.jpg', 'kepala_truk', 98, 73, 48, 145, 123, 'badan_truk', 66, 8, 5, 190, 135, NULL, 'active'),
(128, './truk-ori/truk1647418476.jpg', 229, 266, './truk-od/trukOD1647418476.jpg', 'kepala_truk', 80, 95, 53, 165, 143, 'badan_truk', 99, 7, 0, 232, 153, NULL, 'active'),
(129, './truk-ori/truk1647418477.jpg', 275, 326, './truk-od/trukOD1647418478.jpg', 'kepala_truk', 98, 118, 64, 204, 174, 'badan_truk', 64, 3, 10, 277, 180, NULL, 'active'),
(130, './truk-ori/truk1647418490.jpg', 206, 266, './truk-od/trukOD1647418490.jpg', 'kepala_truk', 99, 89, 12, 179, 145, 'badan_truk', 97, -1, 0, 205, 115, NULL, 'active'),
(131, './truk-ori/truk1647418498.jpg', 219, 219, './truk-od/trukOD1647418499.jpg', 'kepala_truk', 66, 188, 67, 29, 108, 'badan_truk', 99, 5, 2, 203, 157, NULL, 'active'),
(132, './truk-ori/truk1647418501.jpg', 303, 358, './truk-od/trukOD1647418502.jpg', 'kepala_truk', 96, 245, 63, 108, 135, 'badan_truk', 83, 25, -5, 344, 182, NULL, 'active'),
(133, './truk-ori/truk1647418503.jpg', 258, 261, './truk-od/trukOD1647418503.jpg', 'kepala_truk', 99, 82, 76, 173, 139, 'badan_truk', 98, 1, 5, 217, 178, NULL, 'active'),
(134, './truk-ori/truk1647418504.jpg', 274, 316, './truk-od/trukOD1647418505.jpg', 'kepala_truk', 99, 114, 80, 198, 162, 'badan_truk', 91, 2, -3, 283, 209, NULL, 'active'),
(135, './truk-ori/truk1647418525.jpg', 216, 188, './truk-od/trukOD1647418526.jpg', 'kepala_truk', 67, 10, -2, 170, 176, 'badan_truk', 96, 5, -2, 154, 164, NULL, 'active'),
(136, './truk-ori/truk1647418530.jpg', 204, 204, './truk-od/trukOD1647418531.jpg', 'kepala_truk', 97, 63, 53, 137, 117, 'badan_truk', 78, 1, 9, 189, 129, NULL, 'active'),
(137, './truk-ori/truk1647418532.jpg', 218, 219, './truk-od/trukOD1647418532.jpg', 'kepala_truk', 78, 71, 52, 145, 134, 'badan_truk', 99, 1, 0, 206, 141, NULL, 'active'),
(138, './truk-ori/truk1647418534.jpg', 236, 242, './truk-od/trukOD1647418534.jpg', 'kepala_truk', 85, 75, 55, 163, 148, 'badan_truk', 99, 2, 0, 222, 151, NULL, 'active'),
(139, './truk-ori/truk1647418535.jpg', 250, 313, './truk-od/trukOD1647418536.jpg', 'kepala_truk', 97, 115, 56, 191, 162, 'badan_truk', 99, 9, -1, 278, 169, NULL, 'active'),
(140, './truk-ori/truk1647418537.jpg', 273, 320, './truk-od/trukOD1647418537.jpg', 'kepala_truk', 99, 109, 33, 212, 203, 'badan_truk', 99, 0, -2, 299, 178, NULL, 'active'),
(141, './truk-ori/truk1647418591.jpg', 204, 201, './truk-od/trukOD1647418591.jpg', 'kepala_truk', 82, 1, 86, 41, 111, 'badan_truk', 99, 4, -3, 177, 136, NULL, 'active'),
(142, './truk-ori/truk1647418592.jpg', 233, 224, './truk-od/trukOD1647418593.jpg', 'kepala_truk', 91, 62, 60, 161, 138, 'badan_truk', 68, -2, 6, 210, 158, NULL, 'active'),
(143, './truk-ori/truk1647418594.jpg', 254, 268, './truk-od/trukOD1647418594.jpg', 'kepala_truk', 99, 85, 68, 184, 165, 'badan_truk', 99, 0, 1, 252, 188, NULL, 'active'),
(144, './truk-ori/truk1647418617.jpg', 201, 225, './truk-od/trukOD1647418618.jpg', 'kepala_truk', 90, 75, 44, 141, 130, 'badan_truk', 99, 7, 0, 196, 132, NULL, 'active'),
(145, './truk-ori/truk1647418619.jpg', 257, 332, './truk-od/trukOD1647418619.jpg', 'kepala_truk', 99, 124, 39, 199, 182, 'badan_truk', 99, 9, 0, 288, 165, NULL, 'active'),
(146, './truk-ori/truk1647418656.jpg', 285, 360, './truk-od/trukOD1647418656.jpg', 'kepala_truk', 96, 165, 81, 196, 177, 'badan_truk', 99, 6, 4, 334, 201, NULL, 'active'),
(147, './truk-ori/truk1647418659.jpg', 203, 247, './truk-od/trukOD1647418659.jpg', 'kepala_truk', 99, 83, 26, 159, 141, 'badan_truk', 99, 10, -1, 212, 132, NULL, 'active'),
(148, './truk-ori/truk1647418660.jpg', 249, 313, './truk-od/trukOD1647418661.jpg', 'kepala_truk', 99, 114, 38, 199, 170, 'badan_truk', 99, 9, 0, 275, 161, NULL, 'active'),
(149, './truk-ori/truk1647418678.jpg', 239, 242, './truk-od/trukOD1647418679.jpg', 'kepala_truk', 99, 79, 67, 163, 130, 'badan_truk', 99, 2, 1, 218, 156, NULL, 'active'),
(150, './truk-ori/truk1647418680.jpg', 262, 318, './truk-od/trukOD1647418680.jpg', 'kepala_truk', 98, 124, 65, 197, 158, 'badan_truk', 99, 11, -3, 277, 181, NULL, 'active'),
(151, './truk-ori/truk1647418725.jpg', 225, 251, './truk-od/trukOD1647418726.jpg', 'kepala_truk', 97, 33, 9, 211, 202, 'badan_truk', 90, 0, -5, 205, 182, NULL, 'active'),
(152, './truk-ori/truk1647418728.jpg', 250, 270, './truk-od/trukOD1647418729.jpg', 'kepala_truk', 98, 101, 44, 169, 145, 'badan_truk', 99, 7, 1, 250, 162, NULL, 'active'),
(153, './truk-ori/truk1647418742.jpg', 210, 202, './truk-od/trukOD1647418742.jpg', 'kepala_truk', 99, 2, 18, 193, 165, 'badan_truk', 97, 0, 3, 169, 129, NULL, 'active'),
(154, './truk-ori/truk1647418744.jpg', 236, 315, './truk-od/trukOD1647418744.jpg', 'kepala_truk', 99, 74, -3, 233, 193, 'badan_truk', 99, 5, -4, 248, 144, NULL, 'active'),
(155, './truk-ori/truk1647418745.jpg', 341, 370, './truk-od/trukOD1647418746.jpg', 'kepala_truk', 94, 42, 28, 322, 259, 'badan_truk', 99, -1, 2, 291, 209, NULL, 'active'),
(156, './truk-ori/truk1647418761.jpg', 205, 215, './truk-od/trukOD1647418762.jpg', 'kepala_truk', 92, 62, 43, 149, 137, 'badan_truk', 97, 2, 4, 169, 139, NULL, 'active'),
(157, './truk-ori/truk1647418763.jpg', 255, 290, './truk-od/trukOD1647418764.jpg', 'kepala_truk', 99, 95, 57, 186, 165, 'badan_truk', 99, 7, 7, 221, 172, NULL, 'active'),
(158, './truk-ori/truk1647418786.jpg', 207, 199, './truk-od/trukOD1647418787.jpg', 'kepala_truk', 61, 56, 12, 139, 169, 'badan_truk', 99, 0, 3, 184, 128, NULL, 'active'),
(159, './truk-ori/truk1647418788.jpg', 254, 246, './truk-od/trukOD1647418789.jpg', 'kepala_truk', 99, 66, 27, 172, 184, 'badan_truk', 98, 6, 8, 214, 150, NULL, 'active'),
(160, './truk-ori/truk1647418810.jpg', 206, 190, './truk-od/trukOD1647418810.jpg', 'kepala_truk', 88, 60, 35, 128, 118, 'badan_truk', 64, 3, 1, 169, 114, NULL, 'active'),
(161, './truk-ori/truk1647418811.jpg', 201, 233, './truk-od/trukOD1647418812.jpg', 'kepala_truk', 99, 76, 28, 154, 147, 'badan_truk', 66, 2, 3, 180, 139, NULL, 'active'),
(162, './truk-ori/truk1647418813.jpg', 246, 305, './truk-od/trukOD1647418814.jpg', 'kepala_truk', 99, 110, 32, 189, 178, 'badan_truk', 99, 3, 1, 240, 156, NULL, 'active'),
(163, './truk-ori/truk1647418815.jpg', 298, 377, './truk-od/trukOD1647418815.jpg', 'kepala_truk', 99, 142, 38, 226, 218, 'badan_truk', 99, 1, 2, 300, 189, NULL, 'active'),
(164, './truk-ori/truk1647418858.jpg', 201, 187, './truk-od/trukOD1647418858.jpg', 'kepala_truk', 98, 61, 68, 126, 102, 'badan_truk', 99, 3, 5, 168, 144, NULL, 'active'),
(165, './truk-ori/truk1647418859.jpg', 232, 239, './truk-od/trukOD1647418860.jpg', 'kepala_truk', 99, 84, 69, 153, 124, 'badan_truk', 96, 1, 4, 217, 162, NULL, 'active'),
(166, './truk-ori/truk1647418861.jpg', 285, 308, './truk-od/trukOD1647418862.jpg', 'kepala_truk', 99, 106, 83, 195, 157, 'badan_truk', 99, 0, 5, 263, 197, NULL, 'active'),
(167, './truk-ori/truk1647418870.jpg', 227, 182, './truk-od/trukOD1647418870.jpg', 'kepala_truk', 98, 59, 96, 120, 103, 'badan_truk', 99, 4, 4, 161, 166, NULL, 'active'),
(168, './truk-ori/truk1647418872.jpg', 269, 232, './truk-od/trukOD1647418872.jpg', 'kepala_truk', 97, 84, 116, 143, 121, 'badan_truk', 99, 4, 4, 203, 200, NULL, 'active'),
(169, './truk-ori/truk1647418873.jpg', 346, 327, './truk-od/trukOD1647418874.jpg', 'kepala_truk', 93, 122, 144, 195, 162, 'badan_truk', 90, 7, 0, 285, 265, NULL, 'active'),
(170, './truk-ori/truk1647418903.jpg', 208, 145, './truk-od/trukOD1647418904.jpg', 'kepala_truk', 92, -1, 15, 135, 160, 'badan_truk', 83, 11, 1, 137, 129, NULL, 'active'),
(171, './truk-ori/truk1647418905.jpg', 212, 156, './truk-od/trukOD1647418905.jpg', 'kepala_truk', 98, 1, 9, 143, 180, 'badan_truk', 78, 20, -1, 133, 138, NULL, 'active'),
(172, './truk-ori/truk1647418906.jpg', 253, 199, './truk-od/trukOD1647418907.jpg', 'kepala_truk', 99, 9, 9, 176, 216, 'badan_truk', 99, 30, 0, 168, 163, NULL, 'active'),
(173, './truk-ori/truk1647418908.jpg', 293, 245, './truk-od/trukOD1647418909.jpg', 'kepala_truk', 98, 7, 9, 213, 252, 'badan_truk', 99, 41, 2, 206, 180, NULL, 'active'),
(174, './truk-ori/truk1647418910.jpg', 345, 307, './truk-od/trukOD1647418910.jpg', 'kepala_truk', 96, 9, 10, 263, 295, 'badan_truk', 99, 44, 0, 262, 216, NULL, 'active'),
(175, './truk-ori/truk1647419018.jpg', 201, 203, './truk-od/trukOD1647419018.jpg', 'kepala_truk', 64, 6, 40, 146, 138, 'badan_truk', 81, 23, 8, 165, 129, NULL, 'active'),
(176, './truk-ori/truk1647419019.jpg', 234, 244, './truk-od/trukOD1647419020.jpg', 'kepala_truk', 99, 3, 32, 185, 167, 'badan_truk', 99, 27, -1, 216, 152, NULL, 'active'),
(177, './truk-ori/truk1647419021.jpg', 308, 353, './truk-od/trukOD1647419021.jpg', 'kepala_truk', 99, 4, 29, 260, 225, 'badan_truk', 99, 43, -1, 310, 189, NULL, 'active'),
(178, './truk-ori/truk1647419030.jpg', 202, 203, './truk-od/trukOD1647419030.jpg', 'kepala_truk', 99, 6, 20, 173, 151, 'badan_truk', 99, 24, 2, 180, 126, NULL, 'active'),
(179, './truk-ori/truk1647419031.jpg', 269, 281, './truk-od/trukOD1647419032.jpg', 'kepala_truk', 99, -1, 21, 238, 203, 'badan_truk', 99, 39, 2, 235, 159, NULL, 'active'),
(180, './truk-ori/truk1647419345.jpg', 205, 202, './truk-od/trukOD1647419345.jpg', 'kepala_truk', 90, 1, 45, 165, 132, 'badan_truk', 94, 29, 7, 170, 135, NULL, 'active'),
(181, './truk-ori/truk1647419358.jpg', 206, 218, './truk-od/trukOD1647419358.jpg', 'kepala_truk', 99, 6, 35, 151, 138, 'badan_truk', 85, 29, 10, 186, 129, NULL, 'active'),
(182, './truk-ori/truk1647419365.jpg', 201, 194, './truk-od/trukOD1647419366.jpg', 'kepala_truk', 99, 3, 45, 140, 129, 'badan_truk', 93, 20, 4, 157, 138, NULL, 'active'),
(183, './truk-ori/truk1647419391.jpg', 207, 186, './truk-od/trukOD1647419391.jpg', 'kepala_truk', 99, 1, 45, 150, 135, 'badan_truk', 99, 28, 1, 156, 130, NULL, 'active'),
(184, './truk-ori/truk1647419448.jpg', 201, 94, './truk-od/trukOD1647419449.jpg', 'kepala_truk', 79, 6, 43, 84, 132, 'badan_truk', 94, 17, 5, 78, 123, NULL, 'active'),
(185, './truk-ori/truk1647419450.jpg', 330, 368, './truk-od/trukOD1647419450.jpg', 'kepala_truk', 98, 13, 53, 256, 255, 'badan_truk', 99, 52, 1, 311, 216, NULL, 'active'),
(186, './truk-ori/truk1647419469.jpg', 211, 222, './truk-od/trukOD1647419470.jpg', 'kepala_truk', 99, 3, 16, 156, 146, 'badan_truk', 97, 28, 0, 189, 122, NULL, 'active'),
(187, './truk-ori/truk1647419496.jpg', 201, 203, './truk-od/trukOD1647419496.jpg', 'kepala_truk', 94, 75, 48, 126, 123, 'badan_truk', 99, 6, 0, 182, 129, NULL, 'active'),
(188, './truk-ori/truk1647419520.jpg', 207, 216, './truk-od/trukOD1647419520.jpg', 'kepala_truk', 99, 6, 25, 160, 142, 'badan_truk', 96, 29, 0, 181, 131, NULL, 'active'),
(189, './truk-ori/truk1647419583.jpg', 206, 205, './truk-od/trukOD1647419584.jpg', 'kepala_truk', 99, 2, 39, 166, 145, 'badan_truk', 93, 38, 0, 160, 150, NULL, 'active'),
(190, './truk-ori/truk1647419613.jpg', 209, 209, './truk-od/trukOD1647419614.jpg', 'kepala_truk', 99, 0, 24, 158, 152, 'badan_truk', 99, 21, 1, 188, 129, NULL, 'active'),
(191, './truk-ori/truk1647419622.jpg', 203, 210, './truk-od/trukOD1647419623.jpg', 'kepala_truk', 99, 7, 23, 154, 147, 'badan_truk', 99, 29, 0, 176, 127, NULL, 'active'),
(192, './truk-ori/truk1647419658.jpg', 205, 153, './truk-od/trukOD1647419658.jpg', 'kepala_truk', 99, 0, 70, 123, 105, 'badan_truk', 93, 12, 7, 144, 135, NULL, 'active'),
(193, './truk-ori/truk1647419659.jpg', 316, 284, './truk-od/trukOD1647419660.jpg', 'kepala_truk', 99, 1, 102, 211, 179, 'badan_truk', 99, 37, 7, 243, 218, NULL, 'active'),
(194, './truk-ori/truk1647419673.jpg', 202, 184, './truk-od/trukOD1647419673.jpg', 'kepala_truk', 99, 0, 34, 144, 133, 'badan_truk', 99, 21, -3, 161, 132, NULL, 'active'),
(195, './truk-ori/truk1647419674.jpg', 344, 351, './truk-od/trukOD1647419675.jpg', 'kepala_truk', 99, -3, 53, 277, 248, 'badan_truk', 99, 50, -1, 294, 231, NULL, 'active'),
(196, './truk-ori/truk1647419698.jpg', 201, 186, './truk-od/trukOD1647419698.jpg', 'kepala_truk', 99, 1, 46, 138, 128, 'badan_truk', 93, 18, 6, 153, 134, NULL, 'active'),
(197, './truk-ori/truk1647419725.jpg', 204, 165, './truk-od/trukOD1647419725.jpg', 'kepala_truk', 99, 2, 41, 123, 139, 'badan_truk', 64, 15, 6, 139, 136, NULL, 'active'),
(198, './truk-ori/truk1647419729.jpg', 204, 173, './truk-od/trukOD1647419729.jpg', 'kepala_truk', 88, 7, 35, 141, 137, 'badan_truk', 99, 21, -1, 149, 132, NULL, 'active'),
(199, './truk-ori/truk1647419789.jpg', 204, 162, './truk-od/trukOD1647419789.jpg', 'kepala_truk', 99, 3, 59, 123, 112, 'badan_truk', 69, 12, 4, 153, 140, NULL, 'active'),
(200, './truk-ori/truk1647419790.jpg', 379, 336, './truk-od/trukOD1647419790.jpg', 'kepala_truk', 99, -1, 104, 267, 231, 'badan_truk', 99, 51, 4, 275, 270, NULL, 'active'),
(201, './truk-ori/truk1647419792.jpg', 258, 200, './truk-od/trukOD1647419792.jpg', 'kepala_truk', 97, 1, 96, 145, 135, 'badan_truk', 99, 22, -1, 177, 192, NULL, 'active'),
(202, './truk-ori/truk1647419794.jpg', 204, 185, './truk-od/trukOD1647419794.jpg', 'kepala_truk', 95, 0, 48, 139, 126, 'badan_truk', 98, 19, 7, 154, 133, NULL, 'active'),
(203, './truk-ori/truk1647419816.jpg', 230, 210, './truk-od/trukOD1647419816.jpg', 'kepala_truk', 96, -1, 40, 161, 173, 'badan_truk', 84, 5, 6, 204, 155, NULL, 'active'),
(204, './truk-ori/truk1647419836.jpg', 201, 159, './truk-od/trukOD1647419836.jpg', 'kepala_truk', 99, 2, 59, 125, 118, 'badan_truk', 91, 13, 3, 149, 141, NULL, 'active'),
(205, './truk-ori/truk1647419853.jpg', 208, 145, './truk-od/trukOD1647419853.jpg', 'kepala_truk', 99, 0, 69, 113, 106, 'badan_truk', 82, 6, 5, 147, 142, NULL, 'active'),
(206, './truk-ori/truk1647419854.jpg', 356, 282, './truk-od/trukOD1647419855.jpg', 'kepala_truk', 99, -2, 102, 218, 205, 'badan_truk', 98, 32, 7, 249, 248, NULL, 'active'),
(207, './truk-ori/truk1647419874.jpg', 202, 208, './truk-od/trukOD1647419874.jpg', 'kepala_truk', 99, 13, 18, 150, 157, 'badan_truk', 99, 28, 3, 177, 122, NULL, 'active'),
(208, './truk-ori/truk1647419895.jpg', 201, 259, './truk-od/trukOD1647419895.jpg', 'kepala_truk', 99, 102, 27, 153, 135, 'badan_truk', 99, 13, 0, 224, 127, NULL, 'active'),
(209, './truk-ori/truk1647419915.jpg', 207, 226, './truk-od/trukOD1647419915.jpg', 'kepala_truk', 99, 5, 28, 161, 153, 'badan_truk', 99, 27, 3, 195, 129, NULL, 'active'),
(210, './truk-ori/truk1647419948.jpg', 201, 152, './truk-od/trukOD1647419948.jpg', 'kepala_truk', 99, 45, 69, 107, 100, 'badan_truk', 97, -2, 1, 147, 143, NULL, 'active'),
(211, './truk-ori/truk1647419949.jpg', 355, 348, './truk-od/trukOD1647419949.jpg', 'kepala_truk', 99, 119, 115, 230, 192, 'badan_truk', 98, -1, -4, 322, 270, NULL, 'active'),
(212, './truk-ori/truk1647419967.jpg', 228, 196, './truk-od/trukOD1647419968.jpg', 'kepala_truk', 97, 76, 54, 119, 117, 'badan_truk', 99, 3, -2, 180, 138, NULL, 'active'),
(213, './truk-ori/truk1647419969.jpg', 286, 340, './truk-od/trukOD1647419969.jpg', 'kepala_truk', 99, 142, 58, 196, 181, 'badan_truk', 99, 14, -4, 286, 189, NULL, 'active'),
(214, './truk-ori/truk1647419983.jpg', 201, 264, './truk-od/trukOD1647419983.jpg', 'kepala_truk', 99, 93, 23, 161, 138, 'badan_truk', 99, 12, -1, 219, 121, NULL, 'active'),
(215, './truk-ori/truk1647419994.jpg', 211, 237, './truk-od/trukOD1647419995.jpg', 'kepala_truk', 99, 10, 27, 155, 153, 'badan_truk', 98, 28, 0, 206, 134, NULL, 'active'),
(216, './truk-ori/truk1647420046.jpg', 201, 148, './truk-od/trukOD1647420046.jpg', 'kepala_truk', 99, 2, 69, 112, 103, 'badan_truk', 90, 10, 5, 142, 136, NULL, 'active'),
(217, './truk-ori/truk1647420047.jpg', 304, 272, './truk-od/trukOD1647420047.jpg', 'kepala_truk', 99, 4, 91, 190, 187, 'badan_truk', 90, 23, 5, 239, 211, NULL, 'active'),
(218, './truk-ori/truk1647420052.jpg', 208, 175, './truk-od/trukOD1647420052.jpg', 'kepala_truk', 99, -1, 27, 142, 153, 'badan_truk', 89, 12, 0, 168, 128, NULL, 'active'),
(219, './truk-ori/truk1647420055.jpg', 203, 160, './truk-od/trukOD1647420055.jpg', 'kepala_truk', 96, 1, 54, 125, 113, 'badan_truk', 78, 14, 13, 137, 122, NULL, 'active'),
(220, './truk-ori/truk1647420056.jpg', 308, 329, './truk-od/trukOD1647420056.jpg', 'kepala_truk', 93, 9, 53, 221, 208, 'badan_truk', 99, 34, 0, 297, 193, NULL, 'active'),
(221, './truk-ori/truk1647420065.jpg', 208, 242, './truk-od/trukOD1647420066.jpg', 'kepala_truk', 99, 16, 37, 147, 132, 'badan_truk', 99, 31, -2, 205, 135, NULL, 'active'),
(222, './truk-ori/truk1647420075.jpg', 214, 238, './truk-od/trukOD1647420076.jpg', 'kepala_truk', 65, 2, 9, 169, 176, 'badan_truk', 88, 156, 13, 83, 111, NULL, 'active'),
(223, './truk-ori/truk1647420094.jpg', 257, 193, './truk-od/trukOD1647420094.jpg', 'kepala_truk', 98, 27, 106, 129, 125, 'badan_truk', 97, 6, 1, 183, 187, NULL, 'active'),
(224, './truk-ori/truk1647420101.jpg', 204, 160, './truk-od/trukOD1647420101.jpg', 'kepala_truk', 99, 3, 63, 116, 111, 'badan_truk', 95, 9, 0, 158, 149, NULL, 'active'),
(225, './truk-ori/truk1647420102.jpg', 290, 234, './truk-od/trukOD1647420102.jpg', 'kepala_truk', 99, 1, 84, 172, 161, 'badan_truk', 68, 16, 6, 225, 199, NULL, 'active'),
(226, './truk-ori/truk1647420108.jpg', 202, 214, './truk-od/trukOD1647420108.jpg', 'kepala_truk', 99, 2, 22, 153, 143, 'badan_truk', 97, 26, 2, 181, 113, NULL, 'active'),
(227, './truk-ori/truk1647420115.jpg', 212, 210, './truk-od/trukOD1647420116.jpg', 'kepala_truk', 99, 2, 37, 149, 140, 'badan_truk', 98, 21, 1, 189, 127, NULL, 'active'),
(228, './truk-ori/truk1647420130.jpg', 211, 185, './truk-od/trukOD1647420130.jpg', 'kepala_truk', 95, 15, 55, 137, 137, 'badan_truk', 99, 35, 6, 146, 145, NULL, 'active'),
(229, './truk-ori/truk1647420144.jpg', 202, 201, './truk-od/trukOD1647420145.jpg', 'kepala_truk', 99, 13, 35, 136, 129, 'badan_truk', 97, 38, 4, 157, 137, NULL, 'active'),
(230, './truk-ori/truk1647420146.jpg', 251, 262, './truk-od/trukOD1647420146.jpg', 'kepala_truk', 98, 10, 49, 172, 162, 'badan_truk', 99, 41, 4, 214, 175, NULL, 'active'),
(231, './truk-ori/truk1647420147.jpg', 328, 369, './truk-od/trukOD1647420147.jpg', 'kepala_truk', 98, 18, 56, 234, 217, 'badan_truk', 99, 64, 5, 295, 229, NULL, 'active'),
(232, './truk-ori/truk1647420152.jpg', 203, 176, './truk-od/trukOD1647420152.jpg', 'kepala_truk', 99, 3, 60, 131, 110, 'badan_truk', 98, 17, 6, 160, 136, NULL, 'active'),
(233, './truk-ori/truk1647420153.jpg', 262, 243, './truk-od/trukOD1647420154.jpg', 'kepala_truk', 99, 4, 77, 171, 143, 'badan_truk', 94, 25, 8, 220, 174, NULL, 'active'),
(234, './truk-ori/truk1647420155.jpg', 341, 355, './truk-od/trukOD1647420155.jpg', 'kepala_truk', 99, 6, 85, 247, 207, 'badan_truk', 99, 50, -2, 300, 234, NULL, 'active'),
(235, './truk-ori/truk1647420182.jpg', 201, 182, './truk-od/trukOD1647420183.jpg', 'kepala_truk', 99, 6, 40, 134, 139, 'badan_truk', 95, 23, 6, 158, 134, NULL, 'active'),
(236, './truk-ori/truk1647420184.jpg', 242, 236, './truk-od/trukOD1647420184.jpg', 'kepala_truk', 99, 4, 47, 167, 171, 'badan_truk', 89, 30, 5, 204, 166, NULL, 'active'),
(237, './truk-ori/truk1647420185.jpg', 316, 313, './truk-od/trukOD1647420185.jpg', 'kepala_truk', 99, 5, 59, 222, 231, 'badan_truk', 98, 46, 5, 262, 220, NULL, 'active'),
(238, './truk-ori/truk1647420187.jpg', 223, 201, './truk-od/trukOD1647420187.jpg', 'kepala_truk', 99, 9, 64, 132, 126, 'badan_truk', 98, 23, 6, 178, 150, NULL, 'active'),
(239, './truk-ori/truk1647420188.jpg', 272, 254, './truk-od/trukOD1647420188.jpg', 'kepala_truk', 70, 1, 75, 181, 153, 'badan_truk', 77, 28, 8, 228, 181, NULL, 'active'),
(240, './truk-ori/truk1647420190.jpg', 339, 358, './truk-od/trukOD1647420190.jpg', 'kepala_truk', 99, -1, 84, 241, 207, 'badan_truk', 73, 50, 8, 305, 229, NULL, 'active'),
(241, './truk-ori/truk1647420220.jpg', 201, 173, './truk-od/trukOD1647420220.jpg', 'kepala_truk', 99, 8, 61, 121, 103, 'badan_truk', 80, 16, 3, 159, 139, NULL, 'active'),
(242, './truk-ori/truk1647420221.jpg', 259, 236, './truk-od/trukOD1647420221.jpg', 'kepala_truk', 78, 1, 80, 169, 133, 'badan_truk', 89, 15, 6, 230, 177, NULL, 'active'),
(243, './truk-ori/truk1647420224.jpg', 202, 189, './truk-od/trukOD1647420224.jpg', 'kepala_truk', 94, 3, 52, 135, 116, 'badan_truk', 60, 16, 12, 168, 122, NULL, 'active'),
(244, './truk-ori/truk1647420225.jpg', 263, 280, './truk-od/trukOD1647420225.jpg', 'kepala_truk', 94, 1, 63, 189, 159, 'badan_truk', 99, 28, 4, 251, 166, NULL, 'active'),
(245, './truk-ori/truk1647420234.jpg', 203, 176, './truk-od/trukOD1647420234.jpg', 'kepala_truk', 92, 2, 24, 124, 140, 'badan_truk', 92, 16, 9, 143, 129, NULL, 'active'),
(246, './truk-ori/truk1647420235.jpg', 267, 249, './truk-od/trukOD1647420235.jpg', 'kepala_truk', 99, 6, 25, 172, 198, 'badan_truk', 94, 32, 8, 212, 178, NULL, 'active'),
(247, './truk-ori/truk1647420237.jpg', 207, 142, './truk-od/trukOD1647420237.jpg', 'kepala_truk', 98, 11, 68, 87, 114, 'badan_truk', 97, 13, 2, 129, 147, NULL, 'active'),
(248, './truk-ori/truk1647420238.jpg', 305, 245, './truk-od/trukOD1647420239.jpg', 'kepala_truk', 97, 6, 98, 165, 170, 'badan_truk', 99, 32, 1, 208, 221, NULL, 'active'),
(249, './truk-ori/truk1647420253.jpg', 201, 201, './truk-od/trukOD1647420253.jpg', 'kepala_truk', 99, 0, 30, 148, 131, 'badan_truk', 99, 23, 3, 175, 122, NULL, 'active'),
(250, './truk-ori/truk1647420254.jpg', 260, 282, './truk-od/trukOD1647420255.jpg', 'kepala_truk', 99, 4, 37, 199, 184, 'badan_truk', 99, 39, 3, 236, 164, NULL, 'active'),
(251, './truk-ori/truk1647420272.jpg', 203, 178, './truk-od/trukOD1647420273.jpg', 'kepala_truk', 99, 1, 58, 130, 111, 'badan_truk', 99, 21, 8, 158, 133, NULL, 'active'),
(252, './truk-ori/truk1647420274.jpg', 284, 316, './truk-od/trukOD1647420274.jpg', 'kepala_truk', 98, 8, 69, 216, 179, 'badan_truk', 86, 53, 6, 263, 194, NULL, 'active'),
(253, './truk-ori/truk1647420288.jpg', 201, 171, './truk-od/trukOD1647420289.jpg', 'kepala_truk', 93, 2, 63, 119, 103, 'badan_truk', 78, 13, 5, 164, 136, NULL, 'active'),
(254, './truk-ori/truk1647420290.jpg', 282, 306, './truk-od/trukOD1647420290.jpg', 'kepala_truk', 97, 20, 87, 185, 151, 'badan_truk', 94, 41, 4, 262, 198, NULL, 'active'),
(255, './truk-ori/truk1647420312.jpg', 203, 220, './truk-od/trukOD1647420313.jpg', 'kepala_truk', 99, 3, 35, 153, 136, 'badan_truk', 76, 24, 9, 198, 129, NULL, 'active'),
(256, './truk-ori/truk1647420325.jpg', 201, 146, './truk-od/trukOD1647420325.jpg', 'kepala_truk', 99, 2, 86, 109, 87, 'badan_truk', 99, 16, 7, 127, 146, NULL, 'active'),
(257, './truk-ori/truk1647420326.jpg', 239, 219, './truk-od/trukOD1647420326.jpg', 'kepala_truk', 79, 3, 87, 157, 129, 'badan_truk', 99, 28, -1, 187, 179, NULL, 'active'),
(258, './truk-ori/truk1647420340.jpg', 202, 204, './truk-od/trukOD1647420340.jpg', 'kepala_truk', 99, 10, 6, 132, 154, 'badan_truk', 99, 29, 1, 167, 132, NULL, 'active'),
(259, './truk-ori/truk1647420341.jpg', 289, 291, './truk-od/trukOD1647420341.jpg', 'kepala_truk', 99, 8, 6, 199, 224, 'badan_truk', 99, 44, 0, 240, 190, NULL, 'active'),
(260, './truk-ori/truk1647420346.jpg', 201, 199, './truk-od/trukOD1647420346.jpg', 'kepala_truk', 87, 8, 44, 130, 130, 'badan_truk', 94, 22, 10, 177, 126, NULL, 'active'),
(261, './truk-ori/truk1647420354.jpg', 202, 181, './truk-od/trukOD1647420354.jpg', 'kepala_truk', 99, 3, 51, 131, 119, 'badan_truk', 98, 23, 8, 157, 131, NULL, 'active'),
(262, './truk-ori/truk1647420355.jpg', 289, 319, './truk-od/trukOD1647420356.jpg', 'kepala_truk', 99, 1, 63, 215, 189, 'badan_truk', 99, 54, -1, 254, 196, NULL, 'active'),
(263, './truk-ori/truk1647420368.jpg', 204, 175, './truk-od/trukOD1647420368.jpg', 'kepala_truk', 91, 1, 58, 126, 110, 'badan_truk', 99, 17, 0, 160, 132, NULL, 'active'),
(264, './truk-ori/truk1647420369.jpg', 296, 332, './truk-od/trukOD1647420369.jpg', 'kepala_truk', 99, 2, 81, 212, 171, 'badan_truk', 99, 43, -3, 284, 201, NULL, 'active'),
(265, './truk-ori/truk1647420377.jpg', 201, 215, './truk-od/trukOD1647420378.jpg', 'kepala_truk', 93, 0, 46, 143, 125, 'badan_truk', 85, 18, 8, 189, 130, NULL, 'active'),
(266, './truk-ori/truk1647420388.jpg', 201, 221, './truk-od/trukOD1647420388.jpg', 'kepala_truk', 98, 8, 35, 144, 135, 'badan_truk', 99, 24, 2, 196, 130, NULL, 'active'),
(267, './truk-ori/truk1647420393.jpg', 202, 212, './truk-od/trukOD1647420393.jpg', 'kepala_truk', 91, 5, 49, 146, 121, 'badan_truk', 95, 32, 6, 178, 133, NULL, 'active'),
(268, './truk-ori/truk1647420394.jpg', 275, 349, './truk-od/trukOD1647420394.jpg', 'kepala_truk', 73, -1, 57, 236, 185, 'badan_truk', 99, 57, -2, 287, 188, NULL, 'active'),
(269, './truk-ori/truk1647420395.jpg', 209, 198, './truk-od/trukOD1647420395.jpg', 'kepala_truk', 99, 6, 61, 134, 123, 'badan_truk', 81, 25, 2, 174, 148, NULL, 'active'),
(270, './truk-ori/truk1647420397.jpg', 343, 315, './truk-od/trukOD1647420397.jpg', 'kepala_truk', 99, -2, 102, 211, 197, 'badan_truk', 99, 45, 4, 267, 244, NULL, 'active'),
(271, './truk-ori/truk1647420411.jpg', 201, 147, './truk-od/trukOD1647420411.jpg', 'kepala_truk', 99, 2, 76, 104, 106, 'badan_truk', 99, 15, -2, 132, 152, NULL, 'active'),
(272, './truk-ori/truk1647420412.jpg', 272, 197, './truk-od/trukOD1647420413.jpg', 'kepala_truk', 99, 3, 106, 143, 138, 'badan_truk', 99, 26, -1, 168, 204, NULL, 'active'),
(273, './truk-ori/truk1647420428.jpg', 205, 217, './truk-od/trukOD1647420428.jpg', 'kepala_truk', 99, 8, 40, 141, 129, 'badan_truk', 99, 26, 4, 188, 130, NULL, 'active'),
(274, './truk-ori/truk1647420429.jpg', 284, 341, './truk-od/trukOD1647420429.jpg', 'kepala_truk', 83, 10, 34, 228, 212, 'badan_truk', 99, 48, 0, 293, 181, NULL, 'active'),
(275, './truk-ori/truk1647420437.jpg', 201, 147, './truk-od/trukOD1647420437.jpg', 'kepala_truk', 99, -1, 75, 113, 106, 'badan_truk', 99, 17, 5, 128, 140, NULL, 'active'),
(276, './truk-ori/truk1647420438.jpg', 284, 235, './truk-od/trukOD1647420438.jpg', 'kepala_truk', 78, 0, 107, 164, 148, 'badan_truk', 99, 27, 6, 208, 196, NULL, 'active'),
(277, './truk-ori/truk1647420455.jpg', 203, 182, './truk-od/trukOD1647420456.jpg', 'kepala_truk', 99, 4, 57, 128, 120, 'badan_truk', 95, 18, 6, 165, 135, NULL, 'active'),
(278, './truk-ori/truk1647420457.jpg', 243, 245, './truk-od/trukOD1647420457.jpg', 'kepala_truk', 99, 12, 63, 160, 152, 'badan_truk', 87, 35, 6, 205, 163, NULL, 'active'),
(279, './truk-ori/truk1647420458.jpg', 310, 327, './truk-od/trukOD1647420458.jpg', 'kepala_truk', 99, 7, 72, 225, 208, 'badan_truk', 70, 50, 9, 272, 208, NULL, 'active'),
(280, './truk-ori/truk1647420475.jpg', 201, 176, './truk-od/trukOD1647420475.jpg', 'kepala_truk', 98, 5, 64, 117, 110, 'badan_truk', 97, 13, 2, 167, 143, NULL, 'active'),
(281, './truk-ori/truk1647420476.jpg', 261, 246, './truk-od/trukOD1647420477.jpg', 'kepala_truk', 73, 4, 78, 169, 146, 'badan_truk', 72, 13, 5, 232, 180, NULL, 'active'),
(282, './truk-ori/truk1647420480.jpg', 203, 199, './truk-od/trukOD1647420480.jpg', 'kepala_truk', 99, 8, 24, 132, 160, 'badan_truk', 99, 30, 13, 162, 137, NULL, 'active'),
(283, './truk-ori/truk1647420481.jpg', 282, 325, './truk-od/trukOD1647420482.jpg', 'kepala_truk', 97, 16, 14, 206, 236, 'badan_truk', 99, 48, 4, 265, 200, NULL, 'active'),
(284, './truk-ori/truk1647420494.jpg', 201, 220, './truk-od/trukOD1647420494.jpg', 'kepala_truk', 81, 0, 47, 149, 124, 'badan_truk', 71, 20, 9, 204, 127, NULL, 'active'),
(285, './truk-ori/truk1647420496.jpg', 202, 217, './truk-od/trukOD1647420496.jpg', 'kepala_truk', 99, 4, 40, 152, 139, 'badan_truk', 82, 35, 4, 175, 137, NULL, 'active'),
(286, './truk-ori/truk1647420503.jpg', 201, 147, './truk-od/trukOD1647420503.jpg', 'kepala_truk', 99, 1, 62, 110, 105, 'badan_truk', 92, 10, 3, 141, 141, NULL, 'active'),
(287, './truk-ori/truk1647420504.jpg', 281, 241, './truk-od/trukOD1647420504.jpg', 'kepala_truk', 99, 8, 75, 167, 161, 'badan_truk', 60, 22, 2, 212, 199, NULL, 'active'),
(288, './truk-ori/truk1647420514.jpg', 201, 203, './truk-od/trukOD1647420515.jpg', 'kepala_truk', 99, 75, 59, 126, 122, 'badan_truk', 92, 4, -3, 177, 156, NULL, 'active'),
(289, './truk-ori/truk1647420529.jpg', 201, 142, './truk-od/trukOD1647420529.jpg', 'kepala_truk', 94, -7, 65, 106, 129, 'badan_truk', 90, 10, 3, 135, 146, NULL, 'active'),
(290, './truk-ori/truk1647420530.jpg', 254, 212, './truk-od/trukOD1647420531.jpg', 'kepala_truk', 99, 5, 81, 146, 139, 'badan_truk', 99, 24, -1, 188, 189, NULL, 'active'),
(291, './truk-ori/truk1647420549.jpg', 201, 169, './truk-od/trukOD1647420549.jpg', 'kepala_truk', 99, 6, 69, 117, 103, 'badan_truk', 99, 21, 6, 145, 139, NULL, 'active'),
(292, './truk-ori/truk1647420550.jpg', 268, 252, './truk-od/trukOD1647420550.jpg', 'kepala_truk', 69, 7, 77, 170, 159, 'badan_truk', 97, 28, 6, 226, 184, NULL, 'active'),
(293, './truk-ori/truk1647420559.jpg', 206, 185, './truk-od/trukOD1647420560.jpg', 'kepala_truk', 97, 3, 43, 140, 139, 'badan_truk', 99, 23, 2, 164, 126, NULL, 'active'),
(294, './truk-ori/truk1647420561.jpg', 307, 323, './truk-od/trukOD1647420561.jpg', 'kepala_truk', 99, -5, 71, 203, 214, 'badan_truk', 99, 36, -2, 284, 202, NULL, 'active'),
(295, './truk-ori/truk1647420569.jpg', 206, 213, './truk-od/trukOD1647420570.jpg', 'kepala_truk', 99, 0, 40, 143, 126, 'badan_truk', 99, 21, -1, 192, 132, NULL, 'active'),
(296, './truk-ori/truk1647420572.jpg', 233, 239, './truk-od/trukOD1647420572.jpg', 'kepala_truk', 99, 1, 57, 158, 143, 'badan_truk', 99, 29, 2, 209, 146, NULL, 'active'),
(297, './truk-ori/truk1647420579.jpg', 202, 180, './truk-od/trukOD1647420579.jpg', 'kepala_truk', 82, 63, 85, 112, 89, 'badan_truk', 98, 7, -2, 149, 162, NULL, 'active'),
(298, './truk-ori/truk1647420580.jpg', 309, 319, './truk-od/trukOD1647420580.jpg', 'kepala_truk', 62, 136, 126, 175, 146, 'badan_truk', 98, 16, -5, 261, 250, NULL, 'active'),
(299, './truk-ori/truk1647420586.jpg', 202, 148, './truk-od/trukOD1647420586.jpg', 'kepala_truk', 65, 51, 86, 94, 85, 'badan_truk', 99, 6, 13, 123, 136, NULL, 'active'),
(300, './truk-ori/truk1647420587.jpg', 269, 254, './truk-od/trukOD1647420587.jpg', 'kepala_truk', 99, 93, 98, 158, 149, 'badan_truk', 95, 6, -2, 222, 213, NULL, 'active'),
(301, './truk-ori/truk1647420595.jpg', 202, 209, './truk-od/trukOD1647420596.jpg', 'kepala_truk', 99, 10, 51, 138, 117, 'badan_truk', 99, 25, -1, 181, 129, NULL, 'active'),
(302, './truk-ori/truk1647420597.jpg', 253, 267, './truk-od/trukOD1647420597.jpg', 'kepala_truk', 99, 13, 64, 175, 152, 'badan_truk', 99, 36, -1, 227, 168, NULL, 'active'),
(303, './truk-ori/truk1647420608.jpg', 244, 226, './truk-od/trukOD1647420609.jpg', 'kepala_truk', 99, 1, 69, 136, 143, 'badan_truk', 99, 19, 0, 210, 160, NULL, 'active'),
(304, './truk-ori/truk1647420610.jpg', 202, 199, './truk-od/trukOD1647420611.jpg', 'kepala_truk', 66, 7, 41, 129, 128, 'badan_truk', 92, 16, 0, 187, 129, NULL, 'active');
INSERT INTO `images` (`id_img`, `img_truk`, `w_image`, `h_image`, `img_od`, `label_kepala`, `confidence_kepala`, `x_kepala`, `y_kepala`, `w_kepala`, `h_kepala`, `label_badan`, `confidence_badan`, `x_badan`, `y_badan`, `w_badan`, `h_badan`, `od_test`, `status`) VALUES
(305, './truk-ori/truk1647420708.jpg', 203, 161, './truk-od/trukOD1647420708.jpg', 'kepala_truk', 95, 5, 56, 136, 112, 'badan_truk', 84, 8, 2, 162, 108, NULL, 'active'),
(306, './truk-ori/truk1647420710.jpg', 284, 295, './truk-od/trukOD1647420710.jpg', 'kepala_truk', 95, 2, 65, 214, 179, 'badan_truk', 99, 31, -2, 264, 187, NULL, 'active'),
(307, './truk-ori/truk1647420711.jpg', 303, 250, './truk-od/trukOD1647420712.jpg', 'kepala_truk', 94, 9, 82, 166, 180, 'badan_truk', 98, 20, 0, 235, 201, NULL, 'active'),
(308, './truk-ori/truk1647420729.jpg', 203, 197, './truk-od/trukOD1647420729.jpg', 'kepala_truk', 99, 2, 45, 142, 131, 'badan_truk', 79, 21, 6, 161, 135, NULL, 'active'),
(309, './truk-ori/truk1647420730.jpg', 207, 205, './truk-od/trukOD1647420731.jpg', 'kepala_truk', 94, 5, 50, 140, 126, 'badan_truk', 85, 16, -1, 191, 133, NULL, 'active'),
(310, './truk-ori/truk1647420771.jpg', 264, 194, './truk-od/trukOD1647420771.jpg', 'kepala_truk', 78, 4, 93, 61, 165, 'badan_truk', 98, 0, -1, 143, 176, NULL, 'active'),
(311, './truk-ori/truk1647420775.jpg', 212, 193, './truk-od/trukOD1647420775.jpg', 'kepala_truk', 93, 0, 72, 41, 127, 'badan_truk', 77, 8, 7, 141, 139, NULL, 'active'),
(312, './truk-ori/truk1647420801.jpg', 208, 235, './truk-od/trukOD1647420801.jpg', 'kepala_truk', 99, 78, 29, 150, 148, 'badan_truk', 99, 11, -3, 196, 141, NULL, 'active'),
(313, './truk-ori/truk1647420815.jpg', 202, 211, './truk-od/trukOD1647420816.jpg', 'kepala_truk', 99, 67, 31, 140, 138, 'badan_truk', 99, 6, -1, 183, 134, NULL, 'active'),
(314, './truk-ori/truk1647420827.jpg', 202, 193, './truk-od/trukOD1647420827.jpg', 'kepala_truk', 99, 65, 56, 126, 112, 'badan_truk', 95, 2, 3, 175, 141, NULL, 'active'),
(315, './truk-ori/truk1647420836.jpg', 203, 153, './truk-od/trukOD1647420836.jpg', 'kepala_truk', 98, 7, 52, 125, 120, 'badan_truk', 99, 16, 0, 135, 135, NULL, 'active'),
(316, './truk-ori/truk1647420837.jpg', 330, 281, './truk-od/trukOD1647420837.jpg', 'kepala_truk', 99, -4, 82, 231, 206, 'badan_truk', 85, 33, 8, 247, 224, NULL, 'active'),
(317, './truk-ori/truk1647420846.jpg', 201, 161, './truk-od/trukOD1647420847.jpg', 'kepala_truk', 99, 0, 54, 123, 111, 'badan_truk', 73, 9, 8, 148, 129, NULL, 'active'),
(318, './truk-ori/truk1647420859.jpg', 201, 249, './truk-od/trukOD1647420860.jpg', 'kepala_truk', 99, 75, 25, 168, 139, 'badan_truk', 71, 11, 1, 205, 127, NULL, 'active'),
(319, './truk-ori/truk1647420873.jpg', 203, 223, './truk-od/trukOD1647420873.jpg', 'kepala_truk', 99, 5, 16, 163, 152, 'badan_truk', 98, 34, -1, 180, 118, NULL, 'active'),
(320, './truk-ori/truk1647420905.jpg', 202, 259, './truk-od/trukOD1647420905.jpg', 'kepala_truk', 99, 100, 21, 157, 142, 'badan_truk', 99, 10, 2, 220, 125, NULL, 'active'),
(321, './truk-ori/truk1647420917.jpg', 206, 258, './truk-od/trukOD1647420917.jpg', 'kepala_truk', 99, 91, 21, 160, 147, 'badan_truk', 99, 9, 0, 217, 129, NULL, 'active'),
(322, './truk-ori/truk1647420922.jpg', 202, 200, './truk-od/trukOD1647420922.jpg', 'kepala_truk', 99, 41, 14, 148, 156, 'badan_truk', 94, 7, 3, 169, 124, NULL, 'active'),
(323, './truk-ori/truk1647420933.jpg', 202, 199, './truk-od/trukOD1647420934.jpg', 'kepala_truk', 99, 65, 44, 127, 133, 'badan_truk', 98, 2, 2, 177, 143, NULL, 'active'),
(324, './truk-ori/truk1647420941.jpg', 201, 193, './truk-od/trukOD1647420942.jpg', 'kepala_truk', 99, 56, 53, 136, 113, 'badan_truk', 97, 2, 3, 174, 140, NULL, 'active'),
(325, './truk-ori/truk1647420956.jpg', 204, 247, './truk-od/trukOD1647420956.jpg', 'kepala_truk', 99, 90, 29, 156, 135, 'badan_truk', 99, 8, 1, 212, 126, NULL, 'active'),
(326, './truk-ori/truk1647420977.jpg', 202, 210, './truk-od/trukOD1647420977.jpg', 'kepala_truk', 65, 80, 51, 130, 118, 'badan_truk', 80, 5, 7, 188, 132, NULL, 'active'),
(327, './truk-ori/truk1647420989.jpg', 205, 233, './truk-od/trukOD1647420990.jpg', 'kepala_truk', 99, 72, 30, 156, 142, 'badan_truk', 93, 4, 8, 186, 132, NULL, 'active'),
(328, './truk-ori/truk1647421014.jpg', 201, 224, './truk-od/trukOD1647421014.jpg', 'kepala_truk', 99, 4, 14, 157, 155, 'badan_truk', 99, 29, 3, 193, 115, NULL, 'active'),
(329, './truk-ori/truk1647421015.jpg', 270, 333, './truk-od/trukOD1647421015.jpg', 'kepala_truk', 70, 12, 14, 217, 226, 'badan_truk', 99, 39, 0, 289, 161, NULL, 'active'),
(330, './truk-ori/truk1647421017.jpg', 203, 168, './truk-od/trukOD1647421017.jpg', 'kepala_truk', 99, -2, 41, 145, 151, 'badan_truk', 78, 8, 1, 167, 146, NULL, 'active'),
(331, './truk-ori/truk1647421018.jpg', 299, 279, './truk-od/trukOD1647421019.jpg', 'kepala_truk', 99, -1, 68, 218, 198, 'badan_truk', 86, 38, 9, 241, 200, NULL, 'active'),
(332, './truk-ori/truk1647421026.jpg', 206, 257, './truk-od/trukOD1647421026.jpg', 'kepala_truk', 99, 88, 33, 164, 145, 'badan_truk', 88, 14, 5, 208, 141, NULL, 'active'),
(333, './truk-ori/truk1647421036.jpg', 203, 241, './truk-od/trukOD1647421036.jpg', 'kepala_truk', 99, 72, 37, 163, 133, 'badan_truk', 99, 4, 5, 185, 138, NULL, 'active'),
(334, './truk-ori/truk1647421049.jpg', 204, 249, './truk-od/trukOD1647421049.jpg', 'kepala_truk', 99, 87, 20, 156, 147, 'badan_truk', 99, 11, -2, 208, 132, NULL, 'active'),
(335, './truk-ori/truk1647421065.jpg', 205, 188, './truk-od/trukOD1647421065.jpg', 'kepala_truk', 99, -2, 46, 150, 135, 'badan_truk', 81, 18, 4, 173, 142, NULL, 'active'),
(336, './truk-ori/truk1647421074.jpg', 206, 259, './truk-od/trukOD1647421074.jpg', 'kepala_truk', 99, 92, 29, 161, 148, 'badan_truk', 69, 9, 6, 220, 137, NULL, 'active'),
(337, './truk-ori/truk1647421076.jpg', 204, 249, './truk-od/trukOD1647421076.jpg', 'kepala_truk', 99, 85, 23, 156, 143, 'badan_truk', 69, 2, 9, 214, 130, NULL, 'active'),
(338, './truk-ori/truk1647421079.jpg', 243, 343, './truk-od/trukOD1647421079.jpg', 'kepala_truk', 95, 105, 5, 228, 212, 'badan_truk', 99, 5, -1, 250, 155, NULL, 'active'),
(339, './truk-ori/truk1647421089.jpg', 206, 247, './truk-od/trukOD1647421089.jpg', 'kepala_truk', 97, 88, 47, 147, 130, 'badan_truk', 98, 9, 7, 190, 135, NULL, 'active'),
(340, './truk-ori/truk1647421101.jpg', 210, 257, './truk-od/trukOD1647421101.jpg', 'kepala_truk', 99, 86, 28, 161, 142, 'badan_truk', 83, 10, 0, 216, 131, NULL, 'active'),
(341, './truk-ori/truk1647421102.jpg', 209, 232, './truk-od/trukOD1647421102.jpg', 'kepala_truk', 99, 74, 25, 152, 143, 'badan_truk', 99, 8, 1, 200, 131, NULL, 'active'),
(342, './truk-ori/truk1647421112.jpg', 206, 247, './truk-od/trukOD1647421113.jpg', 'kepala_truk', 99, 76, 32, 163, 137, 'badan_truk', 66, 2, 8, 198, 133, NULL, 'active'),
(343, './truk-ori/truk1647421125.jpg', 201, 217, './truk-od/trukOD1647421126.jpg', 'kepala_truk', 99, 78, 58, 134, 116, 'badan_truk', 99, 8, 0, 192, 147, NULL, 'active'),
(344, './truk-ori/truk1647421137.jpg', 201, 164, './truk-od/trukOD1647421137.jpg', 'kepala_truk', 99, 0, 31, 129, 125, 'badan_truk', 92, 13, 2, 153, 120, NULL, 'active'),
(345, './truk-ori/truk1647421138.jpg', 328, 339, './truk-od/trukOD1647421139.jpg', 'kepala_truk', 99, 3, 45, 246, 233, 'badan_truk', 99, 39, 0, 296, 203, NULL, 'active'),
(346, './truk-ori/truk1647421152.jpg', 202, 170, './truk-od/trukOD1647421152.jpg', 'kepala_truk', 60, 5, 36, 143, 136, 'badan_truk', 99, 20, 1, 148, 128, NULL, 'active'),
(347, './truk-ori/truk1647421153.jpg', 359, 376, './truk-od/trukOD1647421153.jpg', 'kepala_truk', 98, 1, 64, 276, 264, 'badan_truk', 99, 59, -4, 307, 238, NULL, 'active'),
(348, './truk-ori/truk1647421162.jpg', 205, 220, './truk-od/trukOD1647421162.jpg', 'kepala_truk', 99, 65, 39, 150, 136, 'badan_truk', 78, 6, 7, 169, 133, NULL, 'active'),
(349, './truk-ori/truk1647421176.jpg', 202, 166, './truk-od/trukOD1647421176.jpg', 'kepala_truk', 97, 0, 47, 119, 128, 'badan_truk', 79, 17, 3, 150, 146, NULL, 'active'),
(350, './truk-ori/truk1647421177.jpg', 300, 295, './truk-od/trukOD1647421177.jpg', 'kepala_truk', 98, 15, 64, 189, 200, 'badan_truk', 98, 37, 5, 253, 210, NULL, 'active'),
(351, './truk-ori/truk1647421185.jpg', 207, 187, './truk-od/trukOD1647421185.jpg', 'kepala_truk', 89, 3, 47, 134, 131, 'badan_truk', 94, 18, -3, 170, 131, NULL, 'active'),
(352, './truk-ori/truk1647421200.jpg', 217, 178, './truk-od/trukOD1647421201.jpg', 'kepala_truk', 83, 5, 58, 76, 161, 'badan_truk', 99, 26, 2, 147, 126, NULL, 'active'),
(353, './truk-ori/truk1647421202.jpg', 304, 288, './truk-od/trukOD1647421202.jpg', 'kepala_truk', 99, 0, 69, 225, 193, 'badan_truk', 99, 50, 1, 234, 194, NULL, 'active'),
(354, './truk-ori/truk1647421217.jpg', 201, 184, './truk-od/trukOD1647421217.jpg', 'kepala_truk', 99, -1, 23, 148, 137, 'badan_truk', 98, 19, 0, 164, 117, NULL, 'active'),
(355, './truk-ori/truk1647421238.jpg', 208, 184, './truk-od/trukOD1647421238.jpg', 'kepala_truk', 99, -3, 41, 154, 146, 'badan_truk', 99, 22, 0, 159, 137, NULL, 'active'),
(356, './truk-ori/truk1647421246.jpg', 206, 209, './truk-od/trukOD1647421247.jpg', 'kepala_truk', 64, 77, 77, 130, 107, 'badan_truk', 99, 6, 0, 186, 151, NULL, 'active'),
(357, './truk-ori/truk1647421263.jpg', 205, 179, './truk-od/trukOD1647421264.jpg', 'kepala_truk', 99, 53, 69, 126, 108, 'badan_truk', 99, 2, 0, 162, 153, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `learning`
--

CREATE TABLE `learning` (
  `id_learn` int(11) NOT NULL,
  `id_img` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `class` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `peran_user` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `peran_user`) VALUES
(1, 'Developer', 'dev'),
(2, 'Police', 'pol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`id_learn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `learning`
--
ALTER TABLE `learning`
  MODIFY `id_learn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
