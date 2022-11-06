-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2022 pada 07.33
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

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
-- Struktur dari tabel `images`
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
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id_img`, `img_truk`, `w_image`, `h_image`, `img_od`, `label_kepala`, `confidence_kepala`, `x_kepala`, `y_kepala`, `w_kepala`, `h_kepala`, `label_badan`, `confidence_badan`, `x_badan`, `y_badan`, `w_badan`, `h_badan`, `od_test`, `status`) VALUES
(14, './truk-ori/truk1647498762.jpg', 201, 180, './truk-od/trukOD1647498762.jpg', 'kepala_truk', 99, 7, 46, 140, 127, 'badan_truk', 99, 26, 1, 153, 129, NULL, 'active'),
(15, './truk-ori/truk1647498763.jpg', 286, 283, './truk-od/trukOD1647498764.jpg', 'kepala_truk', 99, 6, 46, 226, 199, 'badan_truk', 99, 39, 0, 246, 179, NULL, 'active'),
(16, './truk-ori/truk1647498789.jpg', 202, 173, './truk-od/trukOD1647498789.jpg', 'kepala_truk', 98, 2, 50, 138, 119, 'badan_truk', 99, 18, -2, 153, 133, NULL, 'active'),
(17, './truk-ori/truk1647498815.jpg', 210, 129, './truk-od/trukOD1647498815.jpg', 'kepala_truk', 71, 1, 76, 115, 100, 'badan_truk', 82, 6, 1, 128, 153, NULL, 'active'),
(18, './truk-ori/truk1647498816.jpg', 255, 188, './truk-od/trukOD1647498816.jpg', 'kepala_truk', 99, 1, 81, 155, 133, 'badan_truk', 98, 19, 4, 169, 178, NULL, 'active'),
(19, './truk-ori/truk1647498819.jpg', 201, 177, './truk-od/trukOD1647498819.jpg', 'kepala_truk', 99, 2, 49, 142, 121, 'badan_truk', 95, 19, 9, 157, 130, NULL, 'active'),
(20, './truk-ori/truk1647498820.jpg', 298, 336, './truk-od/trukOD1647498820.jpg', 'kepala_truk', 99, 1, 35, 257, 206, 'badan_truk', 99, 48, 1, 283, 178, NULL, 'active'),
(21, './truk-ori/truk1647498825.jpg', 204, 183, './truk-od/trukOD1647498825.jpg', 'kepala_truk', 99, 56, 70, 127, 106, 'badan_truk', 99, 0, 2, 172, 147, NULL, 'active'),
(22, './truk-ori/truk1647498839.jpg', 206, 203, './truk-od/trukOD1647498840.jpg', 'kepala_truk', 72, 72, 76, 124, 109, 'badan_truk', 99, 4, 2, 180, 151, NULL, 'active'),
(23, './truk-ori/truk1647498850.jpg', 201, 199, './truk-od/trukOD1647498850.jpg', 'kepala_truk', 99, 3, 27, 150, 147, 'badan_truk', 97, 25, -1, 171, 127, NULL, 'active'),
(24, './truk-ori/truk1647498869.jpg', 206, 140, './truk-od/trukOD1647498869.jpg', 'kepala_truk', 96, 0, 82, 109, 98, 'badan_truk', 81, 15, 2, 124, 153, NULL, 'active'),
(25, './truk-ori/truk1647498870.jpg', 378, 337, './truk-od/trukOD1647498870.jpg', 'kepala_truk', 99, 7, 124, 246, 200, 'badan_truk', 99, 58, 9, 263, 262, NULL, 'active'),
(26, './truk-ori/truk1647498891.jpg', 202, 201, './truk-od/trukOD1647498891.jpg', 'kepala_truk', 99, 78, 56, 122, 115, 'badan_truk', 68, 3, 4, 188, 137, NULL, 'active'),
(27, './truk-ori/truk1647498892.jpg', 330, 274, './truk-od/trukOD1647498892.jpg', 'kepala_truk', 84, 74, 89, 200, 193, 'badan_truk', 91, 6, 3, 240, 214, NULL, 'active'),
(28, './truk-ori/truk1647498908.jpg', 201, 166, './truk-od/trukOD1647498909.jpg', 'kepala_truk', 99, 1, 50, 121, 134, 'badan_truk', 97, 20, 5, 141, 141, NULL, 'active'),
(29, './truk-ori/truk1647498915.jpg', 210, 204, './truk-od/trukOD1647498915.jpg', 'kepala_truk', 99, 4, 28, 148, 137, 'badan_truk', 98, 23, 5, 180, 124, NULL, 'active'),
(30, './truk-ori/truk1647498928.jpg', 204, 231, './truk-od/trukOD1647498928.jpg', 'kepala_truk', 99, 8, 23, 174, 144, 'badan_truk', 99, 36, 3, 187, 129, NULL, 'active'),
(31, './truk-ori/truk1647498935.jpg', 202, 138, './truk-od/trukOD1647498935.jpg', 'kepala_truk', 99, 6, 87, 100, 93, 'badan_truk', 92, 10, -8, 131, 170, NULL, 'active'),
(32, './truk-ori/truk1647498936.jpg', 373, 266, './truk-od/trukOD1647498937.jpg', 'kepala_truk', 99, 2, 156, 196, 178, 'badan_truk', 99, 30, -8, 235, 300, NULL, 'active'),
(33, './truk-ori/truk1647498954.jpg', 203, 224, './truk-od/trukOD1647498955.jpg', 'kepala_truk', 99, 8, 27, 150, 134, 'badan_truk', 99, 34, 1, 188, 115, NULL, 'active'),
(34, './truk-ori/truk1647498963.jpg', 202, 171, './truk-od/trukOD1647498963.jpg', 'kepala_truk', 92, 0, 54, 133, 111, 'badan_truk', 96, 14, 1, 159, 129, NULL, 'active'),
(35, './truk-ori/truk1647498968.jpg', 202, 190, './truk-od/trukOD1647498968.jpg', 'kepala_truk', 87, 5, 76, 130, 105, 'badan_truk', 99, 22, 1, 166, 148, NULL, 'active'),
(36, './truk-ori/truk1647498971.jpg', 202, 182, './truk-od/trukOD1647498972.jpg', 'kepala_truk', 99, 4, 44, 126, 132, 'badan_truk', 99, 15, 0, 169, 132, NULL, 'active'),
(37, './truk-ori/truk1647498973.jpg', 367, 366, './truk-od/trukOD1647498973.jpg', 'kepala_truk', 78, 12, 75, 242, 255, 'badan_truk', 74, 35, 16, 338, 234, NULL, 'active'),
(38, './truk-ori/truk1647498982.jpg', 201, 157, './truk-od/trukOD1647498982.jpg', 'kepala_truk', 99, -1, 67, 118, 99, 'badan_truk', 92, 6, 6, 152, 133, NULL, 'active'),
(39, './truk-ori/truk1647499014.jpg', 201, 173, './truk-od/trukOD1647499014.jpg', 'kepala_truk', 99, 0, 40, 132, 139, 'badan_truk', 95, 18, 3, 155, 139, NULL, 'active'),
(40, './truk-ori/truk1647499015.jpg', 253, 257, './truk-od/trukOD1647499015.jpg', 'kepala_truk', 99, 11, 29, 171, 187, 'badan_truk', 99, 36, -3, 216, 166, NULL, 'active'),
(41, './truk-ori/truk1647499017.jpg', 205, 139, './truk-od/trukOD1647499018.jpg', 'kepala_truk', 99, 3, 39, 88, 121, 'badan_truk', 74, 10, 5, 131, 122, NULL, 'active'),
(42, './truk-ori/truk1647499019.jpg', 282, 351, './truk-od/trukOD1647499019.jpg', 'kepala_truk', 99, 3, 42, 228, 190, 'badan_truk', 99, 64, 1, 276, 183, NULL, 'active'),
(43, './truk-ori/truk1647499022.jpg', 201, 217, './truk-od/trukOD1647499022.jpg', 'kepala_truk', 97, 5, 28, 148, 138, 'badan_truk', 99, 24, 1, 192, 121, NULL, 'active'),
(44, './truk-ori/truk1647499023.jpg', 281, 335, './truk-od/trukOD1647499023.jpg', 'kepala_truk', 99, -4, 37, 225, 204, 'badan_truk', 99, 34, 5, 304, 171, NULL, 'active'),
(45, './truk-ori/truk1647499037.jpg', 201, 218, './truk-od/trukOD1647499037.jpg', 'kepala_truk', 99, 3, 21, 163, 150, 'badan_truk', 99, 27, 1, 190, 125, NULL, 'active'),
(46, './truk-ori/truk1647499045.jpg', 202, 160, './truk-od/trukOD1647499046.jpg', 'kepala_truk', 97, 5, 77, 117, 103, 'badan_truk', 99, 17, 0, 143, 153, NULL, 'active'),
(47, './truk-ori/truk1647499062.jpg', 201, 247, './truk-od/trukOD1647499062.jpg', 'kepala_truk', 98, 76, 13, 161, 158, 'badan_truk', 98, 9, -1, 209, 122, NULL, 'active'),
(48, './truk-ori/truk1647499063.jpg', 222, 200, './truk-od/trukOD1647499063.jpg', 'kepala_truk', 99, 63, 64, 135, 128, 'badan_truk', 99, 5, 1, 177, 160, NULL, 'active'),
(49, './truk-ori/truk1647499064.jpg', 339, 334, './truk-od/trukOD1647499064.jpg', 'kepala_truk', 99, 116, 101, 220, 202, 'badan_truk', 99, 0, 0, 310, 250, NULL, 'active'),
(50, './truk-ori/truk1647499081.jpg', 202, 230, './truk-od/trukOD1647499081.jpg', 'kepala_truk', 99, 87, 54, 142, 124, 'badan_truk', 98, 4, 2, 207, 143, NULL, 'active'),
(51, './truk-ori/truk1647499082.jpg', 222, 198, './truk-od/trukOD1647499082.jpg', 'kepala_truk', 78, 47, 80, 145, 122, 'badan_truk', 99, 5, 3, 178, 157, NULL, 'active'),
(52, './truk-ori/truk1647499093.jpg', 205, 208, './truk-od/trukOD1647499093.jpg', 'kepala_truk', 99, 77, 52, 126, 128, 'badan_truk', 99, 7, 1, 182, 147, NULL, 'active'),
(53, './truk-ori/truk1647499233.jpg', 201, 154, './truk-od/trukOD1647499234.jpg', 'kepala_truk', 99, 0, 61, 123, 107, 'badan_truk', 99, 15, 5, 140, 137, NULL, 'active'),
(54, './truk-ori/truk1647499235.jpg', 265, 224, './truk-od/trukOD1647499235.jpg', 'kepala_truk', 99, 0, 71, 183, 151, 'badan_truk', 99, 24, 8, 200, 178, NULL, 'active'),
(57, './truk-ori/truk1647499245.jpg', 362, 362, './truk-od/trukOD1647499245.jpg', 'kepala_truk', 97, 2, 71, 302, 256, 'badan_truk', 89, 186, -2, 173, 289, NULL, 'active'),
(58, './truk-ori/truk1647499256.jpg', 209, 240, './truk-od/trukOD1647499256.jpg', 'kepala_truk', 99, -3, 10, 190, 155, 'badan_truk', 99, 42, 1, 196, 123, NULL, 'active'),
(59, './truk-ori/truk1647499281.jpg', 204, 163, './truk-od/trukOD1647499282.jpg', 'kepala_truk', 99, 2, 61, 129, 104, 'badan_truk', 96, 18, 6, 145, 135, NULL, 'active'),
(60, './truk-ori/truk1647499283.jpg', 364, 330, './truk-od/trukOD1647499283.jpg', 'kepala_truk', 99, -2, 107, 251, 198, 'badan_truk', 99, 53, 10, 272, 245, NULL, 'active'),
(61, './truk-ori/truk1647499301.jpg', 201, 126, './truk-od/trukOD1647499301.jpg', 'kepala_truk', 87, 6, 51, 101, 117, 'badan_truk', 96, 5, 9, 117, 128, NULL, 'active'),
(62, './truk-ori/truk1647499344.jpg', 202, 173, './truk-od/trukOD1647499344.jpg', 'kepala_truk', 66, 6, 53, 132, 113, 'badan_truk', 89, 16, 7, 159, 132, NULL, 'active'),
(63, './truk-ori/truk1647499345.jpg', 285, 246, './truk-od/trukOD1647499346.jpg', 'kepala_truk', 71, 0, 71, 187, 168, 'badan_truk', 90, 27, 11, 204, 185, NULL, 'active'),
(64, './truk-ori/truk1647499378.jpg', 204, 164, './truk-od/trukOD1647499378.jpg', 'kepala_truk', 99, 15, 58, 123, 107, 'badan_truk', 82, 16, 1, 148, 133, NULL, 'active'),
(65, './truk-ori/truk1647499379.jpg', 294, 233, './truk-od/trukOD1647499380.jpg', 'kepala_truk', 99, 1, 79, 192, 164, 'badan_truk', 94, 20, -5, 215, 206, NULL, 'active'),
(66, './truk-ori/truk1647499386.jpg', 202, 208, './truk-od/trukOD1647499386.jpg', 'kepala_truk', 99, 6, 29, 152, 143, 'badan_truk', 99, 30, -2, 169, 136, NULL, 'active'),
(67, './truk-ori/truk1647499390.jpg', 201, 161, './truk-od/trukOD1647499390.jpg', 'kepala_truk', 99, 0, 58, 130, 112, 'badan_truk', 87, 13, 5, 142, 135, NULL, 'active'),
(68, './truk-ori/truk1647499391.jpg', 314, 294, './truk-od/trukOD1647499391.jpg', 'kepala_truk', 99, 0, 91, 221, 180, 'badan_truk', 99, 43, 7, 246, 216, NULL, 'active'),
(69, './truk-ori/truk1647499404.jpg', 204, 146, './truk-od/trukOD1647499404.jpg', 'kepala_truk', 98, -1, 75, 109, 97, 'badan_truk', 99, 6, 4, 132, 148, NULL, 'active'),
(70, './truk-ori/truk1647499405.jpg', 286, 227, './truk-od/trukOD1647499405.jpg', 'kepala_truk', 99, 2, 102, 164, 146, 'badan_truk', 99, 24, -3, 201, 226, NULL, 'active'),
(71, './truk-ori/truk1647499408.jpg', 203, 174, './truk-od/trukOD1647499408.jpg', 'kepala_truk', 98, 3, 48, 138, 125, 'badan_truk', 99, 24, 1, 145, 132, NULL, 'active'),
(72, './truk-ori/truk1647499409.jpg', 310, 293, './truk-od/trukOD1647499409.jpg', 'kepala_truk', 97, -1, 68, 229, 202, 'badan_truk', 99, 53, 2, 234, 204, NULL, 'active'),
(73, './truk-ori/truk1647499424.jpg', 203, 158, './truk-od/trukOD1647499424.jpg', 'kepala_truk', 99, -3, 42, 132, 125, 'badan_truk', 97, 10, 9, 141, 132, NULL, 'active'),
(74, './truk-ori/truk1647499446.jpg', 201, 160, './truk-od/trukOD1647499446.jpg', 'kepala_truk', 98, 8, 52, 130, 116, 'badan_truk', 65, 16, 4, 146, 137, NULL, 'active'),
(75, './truk-ori/truk1647499447.jpg', 311, 243, './truk-od/trukOD1647499447.jpg', 'kepala_truk', 83, -3, 86, 210, 165, 'badan_truk', 99, 28, -2, 212, 210, NULL, 'active'),
(76, './truk-ori/truk1647499477.jpg', 201, 176, './truk-od/trukOD1647499477.jpg', 'kepala_truk', 99, 4, 65, 129, 110, 'badan_truk', 89, 13, 2, 168, 143, NULL, 'active'),
(77, './truk-ori/truk1647499480.jpg', 202, 150, './truk-od/trukOD1647499480.jpg', 'kepala_truk', 99, 1, 64, 116, 102, 'badan_truk', 79, 12, 4, 140, 141, NULL, 'active'),
(78, './truk-ori/truk1647499481.jpg', 316, 255, './truk-od/trukOD1647499481.jpg', 'kepala_truk', 99, -3, 94, 200, 176, 'badan_truk', 98, 26, 3, 229, 225, NULL, 'active'),
(79, './truk-ori/truk1647499506.jpg', 213, 145, './truk-od/trukOD1647499506.jpg', 'kepala_truk', 98, 2, 65, 127, 108, 'badan_truk', 92, 9, 7, 140, 143, NULL, 'active'),
(80, './truk-ori/truk1647499507.jpg', 297, 271, './truk-od/trukOD1647499508.jpg', 'kepala_truk', 99, -2, 80, 214, 172, 'badan_truk', 90, 25, 6, 247, 205, NULL, 'active'),
(81, './truk-ori/truk1647499526.jpg', 204, 150, './truk-od/trukOD1647499527.jpg', 'kepala_truk', 96, 43, 78, 106, 104, 'badan_truk', 99, 4, 1, 132, 148, NULL, 'active'),
(82, './truk-ori/truk1647499534.jpg', 209, 173, './truk-od/trukOD1647499534.jpg', 'kepala_truk', 70, 56, 70, 114, 126, 'badan_truk', 99, 2, 1, 160, 158, NULL, 'active'),
(83, './truk-ori/truk1647499548.jpg', 201, 195, './truk-od/trukOD1647499549.jpg', 'kepala_truk', 99, 59, 61, 131, 112, 'badan_truk', 99, 1, 2, 177, 143, NULL, 'active'),
(84, './truk-ori/truk1647499550.jpg', 300, 350, './truk-od/trukOD1647499550.jpg', 'kepala_truk', 99, 121, 79, 227, 182, 'badan_truk', 93, 0, 5, 304, 207, NULL, 'active'),
(85, './truk-ori/truk1647499551.jpg', 212, 185, './truk-od/trukOD1647499551.jpg', 'kepala_truk', 99, 58, 79, 123, 102, 'badan_truk', 99, 1, 4, 172, 148, NULL, 'active'),
(86, './truk-ori/truk1647499552.jpg', 321, 366, './truk-od/trukOD1647499552.jpg', 'kepala_truk', 99, 129, 105, 220, 174, 'badan_truk', 82, 1, 2, 333, 230, NULL, 'active'),
(87, './truk-ori/truk1647499555.jpg', 203, 207, './truk-od/trukOD1647499555.jpg', 'kepala_truk', 99, 67, 53, 137, 115, 'badan_truk', 89, 0, 6, 191, 136, NULL, 'active'),
(88, './truk-ori/truk1647499560.jpg', 201, 164, './truk-od/trukOD1647499560.jpg', 'kepala_truk', 99, 48, 70, 115, 102, 'badan_truk', 99, 2, 3, 147, 147, NULL, 'active'),
(89, './truk-ori/truk1647499561.jpg', 284, 296, './truk-od/trukOD1647499561.jpg', 'kepala_truk', 77, 110, 104, 180, 154, 'badan_truk', 99, 4, -2, 266, 219, NULL, 'active'),
(90, './truk-ori/truk1647499613.jpg', 201, 189, './truk-od/trukOD1647499613.jpg', 'kepala_truk', 99, 0, 36, 151, 130, 'badan_truk', 98, 23, 0, 161, 136, NULL, 'active'),
(91, './truk-ori/truk1647499614.jpg', 306, 366, './truk-od/trukOD1647499614.jpg', 'kepala_truk', 99, 7, 40, 263, 224, 'badan_truk', 99, 60, -2, 292, 207, NULL, 'active'),
(92, './truk-ori/truk1647499634.jpg', 203, 129, './truk-od/trukOD1647499635.jpg', 'kepala_truk', 71, 61, 76, 65, 107, 'badan_truk', 60, 8, 4, 124, 147, NULL, 'active'),
(93, './truk-ori/truk1647499636.jpg', 339, 377, './truk-od/trukOD1647499636.jpg', 'kepala_truk', 99, 138, 104, 241, 192, 'badan_truk', 99, 8, 0, 332, 249, NULL, 'active'),
(94, './truk-ori/truk1647499639.jpg', 249, 231, './truk-od/trukOD1647499640.jpg', 'kepala_truk', 97, 70, 58, 153, 139, 'badan_truk', 99, 8, 2, 196, 148, NULL, 'active'),
(95, './truk-ori/truk1647499663.jpg', 205, 132, './truk-od/trukOD1647499663.jpg', 'kepala_truk', 99, 0, 67, 110, 104, 'badan_truk', 70, 10, 4, 126, 141, NULL, 'active'),
(96, './truk-ori/truk1647499683.jpg', 203, 176, './truk-od/trukOD1647499684.jpg', 'kepala_truk', 99, 1, 45, 146, 133, 'badan_truk', 71, 21, 8, 144, 131, NULL, 'active'),
(97, './truk-ori/truk1647499686.jpg', 202, 186, './truk-od/trukOD1647499686.jpg', 'kepala_truk', 99, 0, 34, 155, 135, 'badan_truk', 99, 22, 1, 161, 132, NULL, 'active'),
(98, './truk-ori/truk1647499690.jpg', 204, 185, './truk-od/trukOD1647499691.jpg', 'kepala_truk', 90, 8, 43, 151, 124, 'badan_truk', 98, 22, 13, 159, 125, NULL, 'active'),
(99, './truk-ori/truk1647499696.jpg', 202, 165, './truk-od/trukOD1647499696.jpg', 'kepala_truk', 99, -3, 46, 142, 127, 'badan_truk', 98, 21, 10, 141, 127, NULL, 'active'),
(100, './truk-ori/truk1647499710.jpg', 203, 184, './truk-od/trukOD1647499710.jpg', 'kepala_truk', 99, 56, 68, 129, 109, 'badan_truk', 99, 2, 4, 165, 146, NULL, 'active'),
(101, './truk-ori/truk1647499711.jpg', 325, 345, './truk-od/trukOD1647499711.jpg', 'kepala_truk', 98, 133, 106, 212, 172, 'badan_truk', 96, 5, 1, 306, 235, NULL, 'active'),
(102, './truk-ori/truk1647499751.jpg', 202, 189, './truk-od/trukOD1647499751.jpg', 'kepala_truk', 99, 57, 58, 127, 108, 'badan_truk', 95, 4, 10, 167, 128, NULL, 'active'),
(103, './truk-ori/truk1647499752.jpg', 268, 290, './truk-od/trukOD1647499753.jpg', 'kepala_truk', 99, 98, 76, 188, 158, 'badan_truk', 98, 6, 3, 257, 190, NULL, 'active'),
(104, './truk-ori/truk1647499766.jpg', 216, 172, './truk-od/trukOD1647499767.jpg', 'kepala_truk', 71, 80, 121, 91, 92, 'badan_truk', 99, 1, 7, 168, 152, NULL, 'active'),
(105, './truk-ori/truk1647499768.jpg', 305, 318, './truk-od/trukOD1647499768.jpg', 'kepala_truk', 98, 113, 87, 206, 165, 'badan_truk', 99, 7, 7, 283, 209, NULL, 'active'),
(106, './truk-ori/truk1647499771.jpg', 202, 221, './truk-od/trukOD1647499771.jpg', 'kepala_truk', 98, 73, 48, 145, 123, 'badan_truk', 66, 8, 5, 190, 135, NULL, 'active'),
(107, './truk-ori/truk1647499776.jpg', 206, 266, './truk-od/trukOD1647499776.jpg', 'kepala_truk', 99, 89, 12, 179, 145, 'badan_truk', 97, -1, 0, 205, 115, NULL, 'active'),
(108, './truk-ori/truk1647499780.jpg', 293, 375, './truk-od/trukOD1647499780.jpg', 'kepala_truk', 95, 256, 67, 118, 135, 'badan_truk', 98, 39, -4, 337, 181, NULL, 'active'),
(109, './truk-ori/truk1647499781.jpg', 291, 364, './truk-od/trukOD1647499782.jpg', 'kepala_truk', 99, 139, 78, 218, 173, 'badan_truk', 93, 6, 1, 296, 209, NULL, 'active'),
(110, './truk-ori/truk1647499792.jpg', 204, 204, './truk-od/trukOD1647499792.jpg', 'kepala_truk', 97, 63, 53, 137, 117, 'badan_truk', 78, 1, 9, 189, 129, NULL, 'active'),
(111, './truk-ori/truk1647499793.jpg', 273, 299, './truk-od/trukOD1647499793.jpg', 'kepala_truk', 99, 104, 66, 190, 169, 'badan_truk', 97, 5, 11, 268, 177, NULL, 'active'),
(112, './truk-ori/truk1647499815.jpg', 204, 201, './truk-od/trukOD1647499816.jpg', 'kepala_truk', 82, 1, 86, 41, 111, 'badan_truk', 99, 4, -3, 177, 136, NULL, 'active'),
(113, './truk-ori/truk1647499817.jpg', 307, 369, './truk-od/trukOD1647499817.jpg', 'kepala_truk', 98, 133, 76, 229, 184, 'badan_truk', 99, 14, -5, 311, 210, NULL, 'active'),
(114, './truk-ori/truk1647499826.jpg', 201, 225, './truk-od/trukOD1647499826.jpg', 'kepala_truk', 90, 75, 44, 141, 130, 'badan_truk', 99, 7, 0, 196, 132, NULL, 'active'),
(115, './truk-ori/truk1647499842.jpg', 285, 360, './truk-od/trukOD1647499842.jpg', 'kepala_truk', 96, 165, 81, 196, 177, 'badan_truk', 99, 6, 4, 334, 201, NULL, 'active'),
(116, './truk-ori/truk1647499843.jpg', 214, 257, './truk-od/trukOD1647499843.jpg', 'kepala_truk', 99, 91, 30, 166, 147, 'badan_truk', 99, 6, 0, 229, 138, NULL, 'active'),
(117, './truk-ori/truk1647499868.jpg', 225, 251, './truk-od/trukOD1647499869.jpg', 'kepala_truk', 97, 33, 9, 211, 202, 'badan_truk', 90, 0, -5, 205, 182, NULL, 'active'),
(118, './truk-ori/truk1647499870.jpg', 245, 318, './truk-od/trukOD1647499870.jpg', 'kepala_truk', 99, 116, 38, 199, 150, 'badan_truk', 99, 9, -1, 279, 160, NULL, 'active'),
(119, './truk-ori/truk1647499875.jpg', 210, 202, './truk-od/trukOD1647499875.jpg', 'kepala_truk', 99, 2, 18, 193, 165, 'badan_truk', 97, 0, 3, 169, 129, NULL, 'active'),
(120, './truk-ori/truk1647499883.jpg', 205, 215, './truk-od/trukOD1647499883.jpg', 'kepala_truk', 92, 62, 43, 149, 137, 'badan_truk', 97, 2, 4, 169, 139, NULL, 'active'),
(121, './truk-ori/truk1647499892.jpg', 207, 199, './truk-od/trukOD1647499892.jpg', 'kepala_truk', 61, 56, 12, 139, 169, 'badan_truk', 99, 0, 3, 184, 128, NULL, 'active'),
(122, './truk-ori/truk1647499901.jpg', 206, 190, './truk-od/trukOD1647499901.jpg', 'kepala_truk', 88, 60, 35, 128, 118, 'badan_truk', 64, 3, 1, 169, 114, NULL, 'active'),
(123, './truk-ori/truk1647499902.jpg', 260, 323, './truk-od/trukOD1647499902.jpg', 'kepala_truk', 99, 119, 32, 202, 191, 'badan_truk', 99, 3, 1, 253, 166, NULL, 'active'),
(124, './truk-ori/truk1647499919.jpg', 201, 187, './truk-od/trukOD1647499919.jpg', 'kepala_truk', 98, 61, 68, 126, 102, 'badan_truk', 99, 3, 5, 168, 144, NULL, 'active'),
(125, './truk-ori/truk1647499924.jpg', 301, 299, './truk-od/trukOD1647499924.jpg', 'kepala_truk', 92, 115, 121, 176, 147, 'badan_truk', 98, 12, 1, 250, 225, NULL, 'active'),
(126, './truk-ori/truk1647499936.jpg', 208, 145, './truk-od/trukOD1647499936.jpg', 'kepala_truk', 92, -1, 15, 135, 160, 'badan_truk', 83, 11, 1, 137, 129, NULL, 'active'),
(127, './truk-ori/truk1647499937.jpg', 284, 228, './truk-od/trukOD1647499938.jpg', 'kepala_truk', 98, 8, 8, 200, 243, 'badan_truk', 99, 38, 0, 191, 177, NULL, 'active'),
(128, './truk-ori/truk1647499980.jpg', 201, 203, './truk-od/trukOD1647499980.jpg', 'kepala_truk', 64, 6, 40, 146, 138, 'badan_truk', 81, 23, 8, 165, 129, NULL, 'active'),
(129, './truk-ori/truk1647499984.jpg', 202, 203, './truk-od/trukOD1647499984.jpg', 'kepala_truk', 99, 6, 20, 173, 151, 'badan_truk', 99, 24, 2, 180, 126, NULL, 'active'),
(130, './truk-ori/truk1647500113.jpg', 205, 202, './truk-od/trukOD1647500113.jpg', 'kepala_truk', 90, 1, 45, 165, 132, 'badan_truk', 94, 29, 7, 170, 135, NULL, 'active'),
(131, './truk-ori/truk1647500126.jpg', 206, 218, './truk-od/trukOD1647500126.jpg', 'kepala_truk', 99, 6, 35, 151, 138, 'badan_truk', 85, 29, 10, 186, 129, NULL, 'active'),
(132, './truk-ori/truk1647500133.jpg', 201, 194, './truk-od/trukOD1647500133.jpg', 'kepala_truk', 99, 3, 45, 140, 129, 'badan_truk', 93, 20, 4, 157, 138, NULL, 'active'),
(133, './truk-ori/truk1647500157.jpg', 207, 186, './truk-od/trukOD1647500157.jpg', 'kepala_truk', 99, 1, 45, 150, 135, 'badan_truk', 99, 28, 1, 156, 130, NULL, 'active'),
(134, './truk-ori/truk1647500205.jpg', 201, 94, './truk-od/trukOD1647500205.jpg', 'kepala_truk', 79, 6, 43, 84, 132, 'badan_truk', 94, 17, 5, 78, 123, NULL, 'active'),
(135, './truk-ori/truk1647500222.jpg', 211, 222, './truk-od/trukOD1647500222.jpg', 'kepala_truk', 99, 3, 16, 156, 146, 'badan_truk', 97, 28, 0, 189, 122, NULL, 'active'),
(136, './truk-ori/truk1647500242.jpg', 201, 203, './truk-od/trukOD1647500243.jpg', 'kepala_truk', 94, 75, 48, 126, 123, 'badan_truk', 99, 6, 0, 182, 129, NULL, 'active'),
(137, './truk-ori/truk1647500261.jpg', 207, 216, './truk-od/trukOD1647500262.jpg', 'kepala_truk', 99, 6, 25, 160, 142, 'badan_truk', 96, 29, 0, 181, 131, NULL, 'active'),
(138, './truk-ori/truk1647500313.jpg', 206, 205, './truk-od/trukOD1647500313.jpg', 'kepala_truk', 99, 2, 39, 166, 145, 'badan_truk', 93, 38, 0, 160, 150, NULL, 'active'),
(139, './truk-ori/truk1647500337.jpg', 209, 209, './truk-od/trukOD1647500337.jpg', 'kepala_truk', 99, 0, 24, 158, 152, 'badan_truk', 99, 21, 1, 188, 129, NULL, 'active'),
(140, './truk-ori/truk1647500344.jpg', 203, 210, './truk-od/trukOD1647500344.jpg', 'kepala_truk', 99, 7, 23, 154, 147, 'badan_truk', 99, 29, 0, 176, 127, NULL, 'active'),
(141, './truk-ori/truk1647500370.jpg', 205, 153, './truk-od/trukOD1647500370.jpg', 'kepala_truk', 99, 0, 70, 123, 105, 'badan_truk', 93, 12, 7, 144, 135, NULL, 'active'),
(142, './truk-ori/truk1647500380.jpg', 202, 184, './truk-od/trukOD1647500380.jpg', 'kepala_truk', 99, 0, 34, 144, 133, 'badan_truk', 99, 21, -3, 161, 132, NULL, 'active'),
(143, './truk-ori/truk1647500398.jpg', 201, 186, './truk-od/trukOD1647500399.jpg', 'kepala_truk', 99, 1, 46, 138, 128, 'badan_truk', 93, 18, 6, 153, 134, NULL, 'active'),
(144, './truk-ori/truk1647500420.jpg', 204, 165, './truk-od/trukOD1647500420.jpg', 'kepala_truk', 99, 2, 41, 123, 139, 'badan_truk', 64, 15, 6, 139, 136, NULL, 'active'),
(145, './truk-ori/truk1647500423.jpg', 204, 173, './truk-od/trukOD1647500424.jpg', 'kepala_truk', 88, 7, 35, 141, 137, 'badan_truk', 99, 21, -1, 149, 132, NULL, 'active'),
(146, './truk-ori/truk1647500478.jpg', 204, 162, './truk-od/trukOD1647500478.jpg', 'kepala_truk', 99, 3, 59, 123, 112, 'badan_truk', 69, 12, 4, 153, 140, NULL, 'active'),
(147, './truk-ori/truk1647500480.jpg', 202, 142, './truk-od/trukOD1647500480.jpg', 'kepala_truk', 99, 0, 65, 106, 103, 'badan_truk', 76, 10, 3, 127, 139, NULL, 'active'),
(148, './truk-ori/truk1647500482.jpg', 204, 185, './truk-od/trukOD1647500483.jpg', 'kepala_truk', 95, 0, 48, 139, 126, 'badan_truk', 98, 19, 7, 154, 133, NULL, 'active'),
(149, './truk-ori/truk1647500503.jpg', 230, 210, './truk-od/trukOD1647500503.jpg', 'kepala_truk', 96, -1, 40, 161, 173, 'badan_truk', 84, 5, 6, 204, 155, NULL, 'active'),
(150, './truk-ori/truk1647500521.jpg', 201, 159, './truk-od/trukOD1647500521.jpg', 'kepala_truk', 99, 2, 59, 125, 118, 'badan_truk', 91, 13, 3, 149, 141, NULL, 'active'),
(151, './truk-ori/truk1647500537.jpg', 208, 145, './truk-od/trukOD1647500537.jpg', 'kepala_truk', 99, 0, 69, 113, 106, 'badan_truk', 82, 6, 5, 147, 142, NULL, 'active'),
(152, './truk-ori/truk1647500538.jpg', 374, 305, './truk-od/trukOD1647500538.jpg', 'kepala_truk', 99, -2, 110, 234, 221, 'badan_truk', 99, 35, 3, 269, 270, NULL, 'active'),
(153, './truk-ori/truk1647500556.jpg', 202, 208, './truk-od/trukOD1647500556.jpg', 'kepala_truk', 99, 13, 18, 150, 157, 'badan_truk', 99, 28, 3, 177, 122, NULL, 'active'),
(154, './truk-ori/truk1647500576.jpg', 201, 259, './truk-od/trukOD1647500576.jpg', 'kepala_truk', 99, 102, 27, 153, 135, 'badan_truk', 99, 13, 0, 224, 127, NULL, 'active'),
(155, './truk-ori/truk1647500594.jpg', 207, 226, './truk-od/trukOD1647500594.jpg', 'kepala_truk', 99, 5, 28, 161, 153, 'badan_truk', 99, 27, 3, 195, 129, NULL, 'active'),
(156, './truk-ori/truk1647500623.jpg', 201, 152, './truk-od/trukOD1647500623.jpg', 'kepala_truk', 99, 45, 69, 107, 100, 'badan_truk', 97, -2, 1, 147, 143, NULL, 'active'),
(157, './truk-ori/truk1647500637.jpg', 228, 196, './truk-od/trukOD1647500637.jpg', 'kepala_truk', 97, 76, 54, 119, 117, 'badan_truk', 99, 3, -2, 180, 138, NULL, 'active'),
(158, './truk-ori/truk1647500649.jpg', 201, 264, './truk-od/trukOD1647500649.jpg', 'kepala_truk', 99, 93, 23, 161, 138, 'badan_truk', 99, 12, -1, 219, 121, NULL, 'active'),
(159, './truk-ori/truk1647500657.jpg', 211, 237, './truk-od/trukOD1647500657.jpg', 'kepala_truk', 99, 10, 27, 155, 153, 'badan_truk', 98, 28, 0, 206, 134, NULL, 'active'),
(160, './truk-ori/truk1647500702.jpg', 201, 148, './truk-od/trukOD1647500702.jpg', 'kepala_truk', 99, 2, 69, 112, 103, 'badan_truk', 90, 10, 5, 142, 136, NULL, 'active'),
(161, './truk-ori/truk1647500703.jpg', 347, 292, './truk-od/trukOD1647500703.jpg', 'kepala_truk', 99, -4, 97, 224, 208, 'badan_truk', 99, 34, -5, 254, 234, NULL, 'active'),
(162, './truk-ori/truk1647500707.jpg', 208, 175, './truk-od/trukOD1647500707.jpg', 'kepala_truk', 99, -1, 27, 142, 153, 'badan_truk', 89, 12, 0, 168, 128, NULL, 'active'),
(163, './truk-ori/truk1647500709.jpg', 203, 160, './truk-od/trukOD1647500709.jpg', 'kepala_truk', 96, 1, 54, 125, 113, 'badan_truk', 78, 14, 13, 137, 122, NULL, 'active'),
(164, './truk-ori/truk1647500717.jpg', 208, 242, './truk-od/trukOD1647500718.jpg', 'kepala_truk', 99, 16, 37, 147, 132, 'badan_truk', 99, 31, -2, 205, 135, NULL, 'active'),
(165, './truk-ori/truk1647500726.jpg', 214, 238, './truk-od/trukOD1647500726.jpg', 'kepala_truk', 65, 2, 9, 169, 176, 'badan_truk', 88, 156, 13, 83, 111, NULL, 'active'),
(166, './truk-ori/truk1647500740.jpg', 257, 193, './truk-od/trukOD1647500740.jpg', 'kepala_truk', 98, 27, 106, 129, 125, 'badan_truk', 97, 6, 1, 183, 187, NULL, 'active'),
(167, './truk-ori/truk1647500745.jpg', 204, 160, './truk-od/trukOD1647500745.jpg', 'kepala_truk', 99, 3, 63, 116, 111, 'badan_truk', 95, 9, 0, 158, 149, NULL, 'active'),
(168, './truk-ori/truk1647500746.jpg', 347, 306, './truk-od/trukOD1647500746.jpg', 'kepala_truk', 97, 1, 99, 222, 200, 'badan_truk', 74, 29, 12, 280, 229, NULL, 'active'),
(169, './truk-ori/truk1647500750.jpg', 202, 214, './truk-od/trukOD1647500750.jpg', 'kepala_truk', 99, 2, 22, 153, 143, 'badan_truk', 97, 26, 2, 181, 113, NULL, 'active'),
(170, './truk-ori/truk1647500756.jpg', 212, 210, './truk-od/trukOD1647500756.jpg', 'kepala_truk', 99, 2, 37, 149, 140, 'badan_truk', 98, 21, 1, 189, 127, NULL, 'active'),
(171, './truk-ori/truk1647500767.jpg', 211, 185, './truk-od/trukOD1647500767.jpg', 'kepala_truk', 95, 15, 55, 137, 137, 'badan_truk', 99, 35, 6, 146, 145, NULL, 'active'),
(172, './truk-ori/truk1647500777.jpg', 202, 201, './truk-od/trukOD1647500777.jpg', 'kepala_truk', 99, 13, 35, 136, 129, 'badan_truk', 97, 38, 4, 157, 137, NULL, 'active'),
(173, './truk-ori/truk1647500778.jpg', 269, 294, './truk-od/trukOD1647500779.jpg', 'kepala_truk', 99, 5, 43, 188, 175, 'badan_truk', 84, 42, 8, 245, 180, NULL, 'active'),
(174, './truk-ori/truk1647500782.jpg', 203, 176, './truk-od/trukOD1647500783.jpg', 'kepala_truk', 99, 3, 60, 131, 110, 'badan_truk', 98, 17, 6, 160, 136, NULL, 'active'),
(175, './truk-ori/truk1647500784.jpg', 276, 287, './truk-od/trukOD1647500784.jpg', 'kepala_truk', 99, 13, 77, 188, 158, 'badan_truk', 99, 40, -2, 241, 190, NULL, 'active'),
(176, './truk-ori/truk1647500804.jpg', 201, 182, './truk-od/trukOD1647500804.jpg', 'kepala_truk', 99, 6, 40, 134, 139, 'badan_truk', 95, 23, 6, 158, 134, NULL, 'active'),
(177, './truk-ori/truk1647500806.jpg', 261, 269, './truk-od/trukOD1647500806.jpg', 'kepala_truk', 99, 6, 48, 185, 196, 'badan_truk', 99, 34, 1, 232, 189, NULL, 'active'),
(178, './truk-ori/truk1647500807.jpg', 223, 201, './truk-od/trukOD1647500808.jpg', 'kepala_truk', 99, 9, 64, 132, 126, 'badan_truk', 98, 23, 6, 178, 150, NULL, 'active'),
(179, './truk-ori/truk1647500809.jpg', 295, 287, './truk-od/trukOD1647500809.jpg', 'kepala_truk', 79, 8, 71, 192, 183, 'badan_truk', 99, 39, -1, 243, 198, NULL, 'active'),
(180, './truk-ori/truk1647500831.jpg', 201, 173, './truk-od/trukOD1647500832.jpg', 'kepala_truk', 99, 8, 61, 121, 103, 'badan_truk', 80, 16, 3, 159, 139, NULL, 'active'),
(181, './truk-ori/truk1647500833.jpg', 290, 292, './truk-od/trukOD1647500833.jpg', 'kepala_truk', 73, 13, 86, 187, 147, 'badan_truk', 99, 36, -1, 249, 198, NULL, 'active'),
(182, './truk-ori/truk1647500835.jpg', 202, 189, './truk-od/trukOD1647500835.jpg', 'kepala_truk', 94, 3, 52, 135, 116, 'badan_truk', 60, 16, 12, 168, 122, NULL, 'active'),
(183, './truk-ori/truk1647500836.jpg', 316, 346, './truk-od/trukOD1647500836.jpg', 'kepala_truk', 99, 9, 61, 236, 198, 'badan_truk', 99, 43, 1, 299, 201, NULL, 'active'),
(184, './truk-ori/truk1647500842.jpg', 203, 176, './truk-od/trukOD1647500842.jpg', 'kepala_truk', 92, 2, 24, 124, 140, 'badan_truk', 92, 16, 9, 143, 129, NULL, 'active'),
(185, './truk-ori/truk1647500843.jpg', 300, 288, './truk-od/trukOD1647500843.jpg', 'kepala_truk', 99, 6, 25, 200, 227, 'badan_truk', 96, 39, 12, 244, 193, NULL, 'active'),
(186, './truk-ori/truk1647500844.jpg', 207, 142, './truk-od/trukOD1647500844.jpg', 'kepala_truk', 98, 11, 68, 87, 114, 'badan_truk', 97, 13, 2, 129, 147, NULL, 'active'),
(187, './truk-ori/truk1647500845.jpg', 340, 298, './truk-od/trukOD1647500846.jpg', 'kepala_truk', 93, 2, 118, 188, 196, 'badan_truk', 99, 40, -2, 254, 259, NULL, 'active'),
(188, './truk-ori/truk1647500856.jpg', 201, 201, './truk-od/trukOD1647500856.jpg', 'kepala_truk', 99, 0, 30, 148, 131, 'badan_truk', 99, 23, 3, 175, 122, NULL, 'active'),
(189, './truk-ori/truk1647500857.jpg', 285, 325, './truk-od/trukOD1647500857.jpg', 'kepala_truk', 99, 4, 34, 231, 206, 'badan_truk', 99, 51, 0, 262, 180, NULL, 'active'),
(190, './truk-ori/truk1647500870.jpg', 203, 178, './truk-od/trukOD1647500870.jpg', 'kepala_truk', 99, 1, 58, 130, 111, 'badan_truk', 99, 21, 8, 158, 133, NULL, 'active'),
(191, './truk-ori/truk1647500881.jpg', 201, 171, './truk-od/trukOD1647500882.jpg', 'kepala_truk', 93, 2, 63, 119, 103, 'badan_truk', 78, 13, 5, 164, 136, NULL, 'active'),
(192, './truk-ori/truk1647500883.jpg', 306, 313, './truk-od/trukOD1647500883.jpg', 'kepala_truk', 69, 13, 90, 201, 174, 'badan_truk', 92, 40, 5, 273, 211, NULL, 'active'),
(193, './truk-ori/truk1647500899.jpg', 203, 220, './truk-od/trukOD1647500899.jpg', 'kepala_truk', 99, 3, 35, 153, 136, 'badan_truk', 76, 24, 9, 198, 129, NULL, 'active'),
(194, './truk-ori/truk1647500908.jpg', 201, 146, './truk-od/trukOD1647500908.jpg', 'kepala_truk', 99, 2, 86, 109, 87, 'badan_truk', 99, 16, 7, 127, 146, NULL, 'active'),
(195, './truk-ori/truk1647500909.jpg', 290, 252, './truk-od/trukOD1647500909.jpg', 'kepala_truk', 95, 0, 113, 171, 144, 'badan_truk', 98, 21, -2, 234, 218, NULL, 'active'),
(196, './truk-ori/truk1647500919.jpg', 202, 204, './truk-od/trukOD1647500919.jpg', 'kepala_truk', 99, 10, 6, 132, 154, 'badan_truk', 99, 29, 1, 167, 132, NULL, 'active'),
(197, './truk-ori/truk1647500923.jpg', 201, 199, './truk-od/trukOD1647500923.jpg', 'kepala_truk', 87, 8, 44, 130, 130, 'badan_truk', 94, 22, 10, 177, 126, NULL, 'active'),
(198, './truk-ori/truk1647500929.jpg', 202, 181, './truk-od/trukOD1647500929.jpg', 'kepala_truk', 99, 3, 51, 131, 119, 'badan_truk', 98, 23, 8, 157, 131, NULL, 'active'),
(199, './truk-ori/truk1647500939.jpg', 204, 175, './truk-od/trukOD1647500939.jpg', 'kepala_truk', 91, 1, 58, 126, 110, 'badan_truk', 99, 17, 0, 160, 132, NULL, 'active'),
(200, './truk-ori/truk1647500946.jpg', 201, 215, './truk-od/trukOD1647500946.jpg', 'kepala_truk', 93, 0, 46, 143, 125, 'badan_truk', 85, 18, 8, 189, 130, NULL, 'active'),
(201, './truk-ori/truk1647500954.jpg', 201, 221, './truk-od/trukOD1647500954.jpg', 'kepala_truk', 98, 8, 35, 144, 135, 'badan_truk', 99, 24, 2, 196, 130, NULL, 'active'),
(202, './truk-ori/truk1647500957.jpg', 202, 212, './truk-od/trukOD1647500957.jpg', 'kepala_truk', 91, 5, 49, 146, 121, 'badan_truk', 95, 32, 6, 178, 133, NULL, 'active'),
(203, './truk-ori/truk1647500958.jpg', 209, 198, './truk-od/trukOD1647500959.jpg', 'kepala_truk', 99, 6, 61, 134, 123, 'badan_truk', 81, 25, 2, 174, 148, NULL, 'active'),
(204, './truk-ori/truk1647500970.jpg', 201, 147, './truk-od/trukOD1647500970.jpg', 'kepala_truk', 99, 2, 76, 104, 106, 'badan_truk', 99, 15, -2, 132, 152, NULL, 'active'),
(205, './truk-ori/truk1647500971.jpg', 319, 232, './truk-od/trukOD1647500971.jpg', 'kepala_truk', 99, 2, 124, 167, 159, 'badan_truk', 99, 32, 1, 196, 234, NULL, 'active'),
(206, './truk-ori/truk1647500982.jpg', 205, 217, './truk-od/trukOD1647500982.jpg', 'kepala_truk', 99, 8, 40, 141, 129, 'badan_truk', 99, 26, 4, 188, 130, NULL, 'active'),
(207, './truk-ori/truk1647500988.jpg', 201, 147, './truk-od/trukOD1647500988.jpg', 'kepala_truk', 99, -1, 75, 113, 106, 'badan_truk', 99, 17, 5, 128, 140, NULL, 'active'),
(208, './truk-ori/truk1647500989.jpg', 315, 299, './truk-od/trukOD1647500990.jpg', 'kepala_truk', 99, 5, 92, 208, 190, 'badan_truk', 93, 43, 5, 254, 217, NULL, 'active'),
(209, './truk-ori/truk1647501002.jpg', 203, 182, './truk-od/trukOD1647501002.jpg', 'kepala_truk', 99, 4, 57, 128, 120, 'badan_truk', 95, 18, 6, 165, 135, NULL, 'active'),
(210, './truk-ori/truk1647501003.jpg', 267, 268, './truk-od/trukOD1647501003.jpg', 'kepala_truk', 99, 15, 72, 171, 161, 'badan_truk', 94, 38, 9, 226, 176, NULL, 'active'),
(211, './truk-ori/truk1647501016.jpg', 201, 176, './truk-od/trukOD1647501016.jpg', 'kepala_truk', 98, 5, 64, 117, 110, 'badan_truk', 97, 13, 2, 167, 143, NULL, 'active'),
(212, './truk-ori/truk1647501017.jpg', 299, 296, './truk-od/trukOD1647501017.jpg', 'kepala_truk', 82, 16, 92, 184, 175, 'badan_truk', 98, 27, 4, 273, 212, NULL, 'active'),
(213, './truk-ori/truk1647501020.jpg', 203, 199, './truk-od/trukOD1647501020.jpg', 'kepala_truk', 99, 8, 24, 132, 160, 'badan_truk', 99, 30, 13, 162, 137, NULL, 'active'),
(214, './truk-ori/truk1647501029.jpg', 201, 220, './truk-od/trukOD1647501030.jpg', 'kepala_truk', 81, 0, 47, 149, 124, 'badan_truk', 71, 20, 9, 204, 127, NULL, 'active'),
(215, './truk-ori/truk1647501031.jpg', 202, 217, './truk-od/trukOD1647501031.jpg', 'kepala_truk', 99, 4, 40, 152, 139, 'badan_truk', 82, 35, 4, 175, 137, NULL, 'active'),
(216, './truk-ori/truk1647501036.jpg', 201, 147, './truk-od/trukOD1647501036.jpg', 'kepala_truk', 99, 1, 62, 110, 105, 'badan_truk', 92, 10, 3, 141, 141, NULL, 'active'),
(217, './truk-ori/truk1647501037.jpg', 334, 277, './truk-od/trukOD1647501037.jpg', 'kepala_truk', 99, 0, 86, 207, 198, 'badan_truk', 91, 31, 4, 248, 235, NULL, 'active'),
(218, './truk-ori/truk1647501044.jpg', 201, 203, './truk-od/trukOD1647501044.jpg', 'kepala_truk', 99, 75, 59, 126, 122, 'badan_truk', 92, 4, -3, 177, 156, NULL, 'active'),
(219, './truk-ori/truk1647501055.jpg', 201, 142, './truk-od/trukOD1647501055.jpg', 'kepala_truk', 94, -7, 65, 106, 129, 'badan_truk', 90, 10, 3, 135, 146, NULL, 'active'),
(220, './truk-ori/truk1647501056.jpg', 293, 258, './truk-od/trukOD1647501057.jpg', 'kepala_truk', 99, 8, 93, 178, 164, 'badan_truk', 99, 38, -2, 213, 220, NULL, 'active'),
(221, './truk-ori/truk1647501070.jpg', 201, 169, './truk-od/trukOD1647501070.jpg', 'kepala_truk', 99, 6, 69, 117, 103, 'badan_truk', 99, 21, 6, 145, 139, NULL, 'active'),
(222, './truk-ori/truk1647501071.jpg', 329, 332, './truk-od/trukOD1647501071.jpg', 'kepala_truk', 99, -2, 98, 217, 191, 'badan_truk', 99, 45, 4, 283, 231, NULL, 'active'),
(223, './truk-ori/truk1647501078.jpg', 206, 185, './truk-od/trukOD1647501078.jpg', 'kepala_truk', 97, 3, 43, 140, 139, 'badan_truk', 99, 23, 2, 164, 126, NULL, 'active'),
(224, './truk-ori/truk1647501085.jpg', 206, 213, './truk-od/trukOD1647501085.jpg', 'kepala_truk', 99, 0, 40, 143, 126, 'badan_truk', 99, 21, -1, 192, 132, NULL, 'active'),
(225, './truk-ori/truk1647501087.jpg', 233, 239, './truk-od/trukOD1647501087.jpg', 'kepala_truk', 99, 1, 57, 158, 143, 'badan_truk', 99, 29, 2, 209, 146, NULL, 'active'),
(226, './truk-ori/truk1647501092.jpg', 202, 180, './truk-od/trukOD1647501092.jpg', 'kepala_truk', 82, 63, 85, 112, 89, 'badan_truk', 98, 7, -2, 149, 162, NULL, 'active'),
(227, './truk-ori/truk1647501096.jpg', 202, 148, './truk-od/trukOD1647501096.jpg', 'kepala_truk', 65, 51, 86, 94, 85, 'badan_truk', 99, 6, 13, 123, 136, NULL, 'active'),
(228, './truk-ori/truk1647501097.jpg', 347, 375, './truk-od/trukOD1647501098.jpg', 'kepala_truk', 99, 152, 100, 220, 215, 'badan_truk', 99, 6, -6, 294, 273, NULL, 'active'),
(229, './truk-ori/truk1647501103.jpg', 202, 209, './truk-od/trukOD1647501103.jpg', 'kepala_truk', 99, 10, 51, 138, 117, 'badan_truk', 99, 25, -1, 181, 129, NULL, 'active'),
(230, './truk-ori/truk1647501104.jpg', 291, 295, './truk-od/trukOD1647501105.jpg', 'kepala_truk', 99, 15, 75, 197, 172, 'badan_truk', 99, 40, 2, 254, 187, NULL, 'active'),
(231, './truk-ori/truk1647501113.jpg', 244, 226, './truk-od/trukOD1647501113.jpg', 'kepala_truk', 99, 1, 69, 136, 143, 'badan_truk', 99, 19, 0, 210, 160, NULL, 'active'),
(232, './truk-ori/truk1647501114.jpg', 202, 199, './truk-od/trukOD1647501114.jpg', 'kepala_truk', 66, 7, 41, 129, 128, 'badan_truk', 92, 16, 0, 187, 129, NULL, 'active'),
(233, './truk-ori/truk1647501139.jpg', 203, 161, './truk-od/trukOD1647501139.jpg', 'kepala_truk', 95, 5, 56, 136, 112, 'badan_truk', 84, 8, 2, 162, 108, NULL, 'active'),
(234, './truk-ori/truk1647501140.jpg', 351, 379, './truk-od/trukOD1647501140.jpg', 'kepala_truk', 62, 5, 83, 267, 217, 'badan_truk', 99, 47, -1, 327, 229, NULL, 'active'),
(235, './truk-ori/truk1647501141.jpg', 303, 250, './truk-od/trukOD1647501142.jpg', 'kepala_truk', 94, 9, 82, 166, 180, 'badan_truk', 98, 20, 0, 235, 201, NULL, 'active'),
(236, './truk-ori/truk1647501156.jpg', 203, 197, './truk-od/trukOD1647501156.jpg', 'kepala_truk', 99, 2, 45, 142, 131, 'badan_truk', 79, 21, 6, 161, 135, NULL, 'active'),
(237, './truk-ori/truk1647501157.jpg', 239, 211, './truk-od/trukOD1647501157.jpg', 'kepala_truk', 61, 0, 63, 153, 134, 'badan_truk', 97, 21, 0, 189, 150, NULL, 'active'),
(238, './truk-ori/truk1647501187.jpg', 264, 194, './truk-od/trukOD1647501187.jpg', 'kepala_truk', 78, 4, 93, 61, 165, 'badan_truk', 98, 0, -1, 143, 176, NULL, 'active'),
(239, './truk-ori/truk1647501190.jpg', 212, 193, './truk-od/trukOD1647501190.jpg', 'kepala_truk', 93, 0, 72, 41, 127, 'badan_truk', 77, 8, 7, 141, 139, NULL, 'active'),
(240, './truk-ori/truk1647501209.jpg', 208, 235, './truk-od/trukOD1647501209.jpg', 'kepala_truk', 99, 78, 29, 150, 148, 'badan_truk', 99, 11, -3, 196, 141, NULL, 'active'),
(241, './truk-ori/truk1647501220.jpg', 202, 211, './truk-od/trukOD1647501220.jpg', 'kepala_truk', 99, 67, 31, 140, 138, 'badan_truk', 99, 6, -1, 183, 134, NULL, 'active'),
(242, './truk-ori/truk1647501228.jpg', 202, 193, './truk-od/trukOD1647501228.jpg', 'kepala_truk', 99, 65, 56, 126, 112, 'badan_truk', 95, 2, 3, 175, 141, NULL, 'active'),
(243, './truk-ori/truk1647501234.jpg', 203, 153, './truk-od/trukOD1647501235.jpg', 'kepala_truk', 98, 7, 52, 125, 120, 'badan_truk', 99, 16, 0, 135, 135, NULL, 'active'),
(244, './truk-ori/truk1647501242.jpg', 201, 161, './truk-od/trukOD1647501243.jpg', 'kepala_truk', 99, 0, 54, 123, 111, 'badan_truk', 73, 9, 8, 148, 129, NULL, 'active'),
(245, './truk-ori/truk1647501252.jpg', 201, 249, './truk-od/trukOD1647501252.jpg', 'kepala_truk', 99, 75, 25, 168, 139, 'badan_truk', 71, 11, 1, 205, 127, NULL, 'active'),
(246, './truk-ori/truk1647501262.jpg', 203, 223, './truk-od/trukOD1647501262.jpg', 'kepala_truk', 99, 5, 16, 163, 152, 'badan_truk', 98, 34, -1, 180, 118, NULL, 'active'),
(247, './truk-ori/truk1647501286.jpg', 202, 259, './truk-od/trukOD1647501286.jpg', 'kepala_truk', 99, 100, 21, 157, 142, 'badan_truk', 99, 10, 2, 220, 125, NULL, 'active'),
(248, './truk-ori/truk1647501294.jpg', 206, 258, './truk-od/trukOD1647501295.jpg', 'kepala_truk', 99, 91, 21, 160, 147, 'badan_truk', 99, 9, 0, 217, 129, NULL, 'active'),
(249, './truk-ori/truk1647501297.jpg', 202, 200, './truk-od/trukOD1647501298.jpg', 'kepala_truk', 99, 41, 14, 148, 156, 'badan_truk', 94, 7, 3, 169, 124, NULL, 'active'),
(250, './truk-ori/truk1647501307.jpg', 202, 199, './truk-od/trukOD1647501307.jpg', 'kepala_truk', 99, 65, 44, 127, 133, 'badan_truk', 98, 2, 2, 177, 143, NULL, 'active'),
(251, './truk-ori/truk1647501313.jpg', 201, 193, './truk-od/trukOD1647501313.jpg', 'kepala_truk', 99, 56, 53, 136, 113, 'badan_truk', 97, 2, 3, 174, 140, NULL, 'active'),
(252, './truk-ori/truk1647501323.jpg', 204, 247, './truk-od/trukOD1647501323.jpg', 'kepala_truk', 99, 90, 29, 156, 135, 'badan_truk', 99, 8, 1, 212, 126, NULL, 'active'),
(253, './truk-ori/truk1647501338.jpg', 202, 210, './truk-od/trukOD1647501339.jpg', 'kepala_truk', 65, 80, 51, 130, 118, 'badan_truk', 80, 5, 7, 188, 132, NULL, 'active'),
(254, './truk-ori/truk1647501347.jpg', 205, 233, './truk-od/trukOD1647501348.jpg', 'kepala_truk', 99, 72, 30, 156, 142, 'badan_truk', 93, 4, 8, 186, 132, NULL, 'active'),
(255, './truk-ori/truk1647501366.jpg', 201, 224, './truk-od/trukOD1647501366.jpg', 'kepala_truk', 99, 4, 14, 157, 155, 'badan_truk', 99, 29, 3, 193, 115, NULL, 'active'),
(256, './truk-ori/truk1647501368.jpg', 203, 168, './truk-od/trukOD1647501368.jpg', 'kepala_truk', 99, -2, 41, 145, 151, 'badan_truk', 78, 8, 1, 167, 146, NULL, 'active'),
(257, './truk-ori/truk1647501369.jpg', 348, 335, './truk-od/trukOD1647501369.jpg', 'kepala_truk', 99, -3, 71, 259, 244, 'badan_truk', 99, 48, 2, 286, 228, NULL, 'active'),
(258, './truk-ori/truk1647501375.jpg', 206, 257, './truk-od/trukOD1647501375.jpg', 'kepala_truk', 99, 88, 33, 164, 145, 'badan_truk', 88, 14, 5, 208, 141, NULL, 'active'),
(259, './truk-ori/truk1647501381.jpg', 203, 241, './truk-od/trukOD1647501381.jpg', 'kepala_truk', 99, 72, 37, 163, 133, 'badan_truk', 99, 4, 5, 185, 138, NULL, 'active'),
(260, './truk-ori/truk1647501391.jpg', 204, 249, './truk-od/trukOD1647501391.jpg', 'kepala_truk', 99, 87, 20, 156, 147, 'badan_truk', 99, 11, -2, 208, 132, NULL, 'active'),
(261, './truk-ori/truk1647501403.jpg', 205, 188, './truk-od/trukOD1647501403.jpg', 'kepala_truk', 99, -2, 46, 150, 135, 'badan_truk', 81, 18, 4, 173, 142, NULL, 'active'),
(262, './truk-ori/truk1647501409.jpg', 206, 259, './truk-od/trukOD1647501409.jpg', 'kepala_truk', 99, 92, 29, 161, 148, 'badan_truk', 69, 9, 6, 220, 137, NULL, 'active'),
(263, './truk-ori/truk1647501411.jpg', 204, 249, './truk-od/trukOD1647501411.jpg', 'kepala_truk', 99, 85, 23, 156, 143, 'badan_truk', 69, 2, 9, 214, 130, NULL, 'active'),
(264, './truk-ori/truk1647501413.jpg', 243, 343, './truk-od/trukOD1647501413.jpg', 'kepala_truk', 95, 105, 5, 228, 212, 'badan_truk', 99, 5, -1, 250, 155, NULL, 'active'),
(265, './truk-ori/truk1647501420.jpg', 206, 247, './truk-od/trukOD1647501420.jpg', 'kepala_truk', 97, 88, 47, 147, 130, 'badan_truk', 98, 9, 7, 190, 135, NULL, 'active'),
(266, './truk-ori/truk1647501429.jpg', 210, 257, './truk-od/trukOD1647501429.jpg', 'kepala_truk', 99, 86, 28, 161, 142, 'badan_truk', 83, 10, 0, 216, 131, NULL, 'active'),
(267, './truk-ori/truk1647501430.jpg', 236, 322, './truk-od/trukOD1647501431.jpg', 'kepala_truk', 95, 121, 22, 184, 169, 'badan_truk', 98, 18, -2, 261, 147, NULL, 'active'),
(268, './truk-ori/truk1647501438.jpg', 206, 247, './truk-od/trukOD1647501438.jpg', 'kepala_truk', 99, 76, 32, 163, 137, 'badan_truk', 66, 2, 8, 198, 133, NULL, 'active'),
(269, './truk-ori/truk1647501447.jpg', 201, 217, './truk-od/trukOD1647501447.jpg', 'kepala_truk', 99, 78, 58, 134, 116, 'badan_truk', 99, 8, 0, 192, 147, NULL, 'active'),
(270, './truk-ori/truk1647501456.jpg', 201, 164, './truk-od/trukOD1647501456.jpg', 'kepala_truk', 99, 0, 31, 129, 125, 'badan_truk', 92, 13, 2, 153, 120, NULL, 'active'),
(271, './truk-ori/truk1647501466.jpg', 202, 170, './truk-od/trukOD1647501466.jpg', 'kepala_truk', 60, 5, 36, 143, 136, 'badan_truk', 99, 20, 1, 148, 128, NULL, 'active'),
(272, './truk-ori/truk1647501474.jpg', 205, 220, './truk-od/trukOD1647501474.jpg', 'kepala_truk', 99, 65, 39, 150, 136, 'badan_truk', 78, 6, 7, 169, 133, NULL, 'active'),
(273, './truk-ori/truk1647501484.jpg', 202, 166, './truk-od/trukOD1647501484.jpg', 'kepala_truk', 97, 0, 47, 119, 128, 'badan_truk', 79, 17, 3, 150, 146, NULL, 'active'),
(274, './truk-ori/truk1647501490.jpg', 207, 187, './truk-od/trukOD1647501490.jpg', 'kepala_truk', 89, 3, 47, 134, 131, 'badan_truk', 94, 18, -3, 170, 131, NULL, 'active'),
(275, './truk-ori/truk1647501502.jpg', 217, 178, './truk-od/trukOD1647501502.jpg', 'kepala_truk', 83, 5, 58, 76, 161, 'badan_truk', 99, 26, 2, 147, 126, NULL, 'active'),
(276, './truk-ori/truk1647501514.jpg', 201, 184, './truk-od/trukOD1647501514.jpg', 'kepala_truk', 99, -1, 23, 148, 137, 'badan_truk', 98, 19, 0, 164, 117, NULL, 'active'),
(277, './truk-ori/truk1647501529.jpg', 208, 184, './truk-od/trukOD1647501529.jpg', 'kepala_truk', 99, -3, 41, 154, 146, 'badan_truk', 99, 22, 0, 159, 137, NULL, 'active'),
(278, './truk-ori/truk1647501535.jpg', 206, 209, './truk-od/trukOD1647501535.jpg', 'kepala_truk', 64, 77, 77, 130, 107, 'badan_truk', 99, 6, 0, 186, 151, NULL, 'active'),
(279, './truk-ori/truk1647501548.jpg', 205, 179, './truk-od/trukOD1647501548.jpg', 'kepala_truk', 99, 53, 69, 126, 108, 'badan_truk', 99, 2, 0, 162, 153, NULL, 'active'),
(316, './truk-ori/truk1647506615.jpg', 210, 141, './truk-od/trukOD1647506616.jpg', 'kepala_truk', 99, 7, 93, 96, 91, 'badan_truk', 99, 4, 3, 130, 160, NULL, 'active'),
(317, './truk-ori/truk1647506617.jpg', 320, 225, './truk-od/trukOD1647506617.jpg', 'kepala_truk', 97, 8, 134, 158, 149, 'badan_truk', 99, 12, 3, 198, 243, NULL, 'active'),
(318, './truk-ori/truk1647506639.jpg', 201, 216, './truk-od/trukOD1647506639.jpg', 'kepala_truk', 99, -1, 26, 153, 137, 'badan_truk', 99, 19, 4, 198, 116, NULL, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `learning`
--

CREATE TABLE `learning` (
  `id_learn` int(11) NOT NULL,
  `id_img` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `class` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `peran_user` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `peran_user`) VALUES
(1, 'Developer', 'dev'),
(2, 'Police', 'pol');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`);

--
-- Indeks untuk tabel `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`id_learn`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT untuk tabel `learning`
--
ALTER TABLE `learning`
  MODIFY `id_learn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
