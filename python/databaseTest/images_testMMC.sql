-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2022 pada 05.54
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
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `images_test`
--

INSERT INTO `images_test` (`id_img_test`, `id_weight`, `img_truk`, `w_image`, `h_image`, `img_od`, `label_kepala`, `confidence_kepala`, `x_kepala`, `y_kepala`, `w_kepala`, `h_kepala`, `label_badan`, `confidence_badan`, `x_badan`, `y_badan`, `w_badan`, `h_badan`, `od_test`, `result_a`, `result_b`, `datetime`) VALUES
(413, 21, './test-truk-ori/truk1649302116.jpg', 201, 180, './test-truk-od/trukOD1649302117.jpg', 'kepala_truk', 99, 7, 46, 140, 127, 'badan_truk', 99, 26, 1, 153, 129, '0', 47.73948946335768, 30.79079523979956, '2022-04-07 10:28:37'),
(414, 21, './test-truk-ori/truk1649302118.jpg', 302, 308, './test-truk-od/trukOD1649302118.jpg', 'kepala_truk', 99, 5, 43, 241, 214, 'badan_truk', 99, 40, -1, 267, 188, '0', 165.88951622478686, 163.71989135481633, '2022-04-07 10:28:38'),
(415, 21, './test-truk-ori/truk1649302140.jpg', 202, 173, './test-truk-od/trukOD1649302141.jpg', 'kepala_truk', 98, 2, 50, 138, 119, 'badan_truk', 99, 18, -2, 153, 133, '0', 43.93946876647781, 38.74872870963618, '2022-04-07 10:29:01'),
(416, 21, './test-truk-ori/truk1649302142.jpg', 340, 325, './test-truk-od/trukOD1649302142.jpg', 'kepala_truk', 99, -6, 42, 269, 228, 'badan_truk', 99, 41, 0, 280, 195, '0', 199.33178318976772, 195.90947756961612, '2022-04-07 10:29:02'),
(417, 21, './test-truk-ori/truk1649302168.jpg', 210, 129, './test-truk-od/trukOD1649302168.jpg', 'kepala_truk', 71, 1, 76, 115, 100, 'badan_truk', 82, 6, 1, 128, 153, '1', 63.422241771176125, 80.81346137113967, '2022-04-07 10:29:28'),
(418, 21, './test-truk-ori/truk1649302169.jpg', 280, 244, './test-truk-od/trukOD1649302169.jpg', 'kepala_truk', 99, 2, 83, 182, 154, 'badan_truk', 98, 26, 2, 217, 199, '1', 74.94231067173642, 98.86522899734993, '2022-04-07 10:29:29'),
(419, 21, './test-truk-ori/truk1649302171.jpg', 201, 177, './test-truk-od/trukOD1649302171.jpg', 'kepala_truk', 99, 2, 49, 142, 121, 'badan_truk', 95, 19, 9, 157, 130, '0', 43.987915397759856, 33.25578540751404, '2022-04-07 10:29:31'),
(420, 21, './test-truk-ori/truk1649302172.jpg', 264, 242, './test-truk-od/trukOD1649302172.jpg', 'kepala_truk', 99, -1, 40, 203, 166, 'badan_truk', 99, 29, 0, 212, 161, '0', 86.4915893005402, 81.47848864809657, '2022-04-07 10:29:32'),
(421, 21, './test-truk-ori/truk1649302178.jpg', 204, 183, './test-truk-od/trukOD1649302178.jpg', 'kepala_truk', 99, 56, 70, 127, 106, 'badan_truk', 99, 0, 2, 172, 147, '1', 26.36576121863426, 56.62895333379422, '2022-04-07 10:29:38'),
(422, 21, './test-truk-ori/truk1649302194.jpg', 206, 203, './test-truk-od/trukOD1649302194.jpg', 'kepala_truk', 72, 72, 76, 124, 109, 'badan_truk', 99, 4, 2, 180, 151, '1', 21.227555669409004, 58.9657282572686, '2022-04-07 10:29:54'),
(423, 21, './test-truk-ori/truk1649302206.jpg', 201, 199, './test-truk-od/trukOD1649302206.jpg', 'kepala_truk', 99, 3, 27, 150, 147, 'badan_truk', 97, 25, -1, 171, 127, '0', 50.558444291864824, 9.090970791944223, '2022-04-07 10:30:06'),
(424, 21, './test-truk-ori/truk1649302227.jpg', 206, 140, './test-truk-od/trukOD1649302227.jpg', 'kepala_truk', 96, 0, 82, 109, 98, 'badan_truk', 81, 15, 2, 124, 153, '1', 69.68160343340527, 86.86508788759569, '2022-04-07 10:30:27'),
(425, 21, './test-truk-ori/truk1649302228.jpg', 343, 272, './test-truk-od/trukOD1649302228.jpg', 'kepala_truk', 99, -5, 116, 212, 176, 'badan_truk', 98, 38, 7, 226, 239, '1', 127.71531019389475, 149.13940801201198, '2022-04-07 10:30:28'),
(426, 21, './test-truk-ori/truk1649302251.jpg', 202, 201, './test-truk-od/trukOD1649302252.jpg', 'kepala_truk', 99, 78, 56, 122, 115, 'badan_truk', 68, 3, 4, 188, 137, '1', 31.82905979687208, 51.7653911159412, '2022-04-07 10:30:52'),
(427, 21, './test-truk-ori/truk1649302253.jpg', 330, 274, './test-truk-od/trukOD1649302253.jpg', 'kepala_truk', 84, 74, 89, 200, 193, 'badan_truk', 91, 6, 3, 240, 214, '1', 123.2098444282028, 136.22450187992865, '2022-04-07 10:30:53'),
(428, 21, './test-truk-ori/truk1649302272.jpg', 201, 166, './test-truk-od/trukOD1649302272.jpg', 'kepala_truk', 99, 1, 50, 121, 134, 'badan_truk', 97, 20, 5, 141, 141, '0', 53.275612813508, 49.27276419553772, '2022-04-07 10:31:12'),
(429, 21, './test-truk-ori/truk1649302273.jpg', 317, 286, './test-truk-od/trukOD1649302273.jpg', 'kepala_truk', 99, 1, 58, 208, 238, 'badan_truk', 99, 36, 5, 244, 227, '1', 163.99567855232564, 169.4122741934419, '2022-04-07 10:31:13'),
(430, 21, './test-truk-ori/truk1649302280.jpg', 210, 204, './test-truk-od/trukOD1649302280.jpg', 'kepala_truk', 99, 4, 28, 148, 137, 'badan_truk', 98, 23, 5, 180, 124, '0', 46.17631299358686, 17.0241626299646, '2022-04-07 10:31:20'),
(431, 21, './test-truk-ori/truk1649302293.jpg', 204, 231, './test-truk-od/trukOD1649302293.jpg', 'kepala_truk', 99, 8, 23, 174, 144, 'badan_truk', 99, 36, 3, 187, 129, '0', 57.6757546843297, 30.985642373510395, '2022-04-07 10:31:33'),
(432, 21, './test-truk-ori/truk1649302300.jpg', 202, 138, './test-truk-od/trukOD1649302300.jpg', 'kepala_truk', 99, 6, 87, 100, 93, 'badan_truk', 92, 10, -8, 131, 170, '1', 69.09479737246183, 99.02064690879284, '2022-04-07 10:31:40'),
(433, 21, './test-truk-ori/truk1649302301.jpg', 367, 265, './test-truk-od/trukOD1649302301.jpg', 'kepala_truk', 99, 6, 155, 189, 173, 'badan_truk', 99, 32, -9, 231, 298, '1', 160.4336389315571, 195.30891638078813, '2022-04-07 10:31:41'),
(434, 21, './test-truk-ori/truk1649302319.jpg', 203, 224, './test-truk-od/trukOD1649302320.jpg', 'kepala_truk', 99, 8, 27, 150, 134, 'badan_truk', 99, 34, 1, 188, 115, '0', 53.88149647153426, 23.980007262754178, '2022-04-07 10:32:00'),
(435, 21, './test-truk-ori/truk1649302327.jpg', 202, 171, './test-truk-od/trukOD1649302327.jpg', 'kepala_truk', 92, 0, 54, 133, 111, 'badan_truk', 96, 14, 1, 159, 129, '0', 44.051661991759616, 43.98739558708658, '2022-04-07 10:32:07'),
(436, 21, './test-truk-ori/truk1649302332.jpg', 202, 190, './test-truk-od/trukOD1649302333.jpg', 'kepala_truk', 87, 5, 76, 130, 105, 'badan_truk', 99, 22, 1, 166, 148, '1', 28.489222349283917, 56.67341576756182, '2022-04-07 10:32:13'),
(437, 21, './test-truk-ori/truk1649302336.jpg', 202, 182, './test-truk-od/trukOD1649302336.jpg', 'kepala_truk', 99, 4, 44, 126, 132, 'badan_truk', 99, 15, 0, 169, 132, '0', 39.566513754678695, 33.14487174002403, '2022-04-07 10:32:16'),
(438, 21, './test-truk-ori/truk1649302337.jpg', 366, 358, './test-truk-od/trukOD1649302337.jpg', 'kepala_truk', 80, 12, 78, 236, 249, 'badan_truk', 86, 34, 13, 329, 240, '1', 231.81164090234415, 240.2460120835556, '2022-04-07 10:32:17'),
(439, 21, './test-truk-ori/truk1649302346.jpg', 201, 157, './test-truk-od/trukOD1649302347.jpg', 'kepala_truk', 99, -1, 67, 118, 99, 'badan_truk', 92, 6, 6, 152, 133, '1', 52.180461402737116, 63.567767568564214, '2022-04-07 10:32:27'),
(440, 21, './test-truk-ori/truk1649302348.jpg', 348, 335, './test-truk-od/trukOD1649302348.jpg', 'kepala_truk', 99, -1, 104, 222, 186, 'badan_truk', 71, 31, 10, 311, 233, '1', 181.03445457328718, 199.29081712595772, '2022-04-07 10:32:28'),
(441, 21, './test-truk-ori/truk1649302378.jpg', 201, 173, './test-truk-od/trukOD1649302378.jpg', 'kepala_truk', 99, 0, 40, 132, 139, 'badan_truk', 95, 18, 3, 155, 139, '0', 43.60607482300234, 32.96750934173498, '2022-04-07 10:32:58'),
(442, 21, './test-truk-ori/truk1649302379.jpg', 249, 250, './test-truk-od/trukOD1649302380.jpg', 'kepala_truk', 99, 7, 29, 171, 186, 'badan_truk', 99, 34, -3, 211, 164, '0', 80.49231632424737, 75.25904001610347, '2022-04-07 10:33:00'),
(443, 21, './test-truk-ori/truk1649302381.jpg', 339, 367, './test-truk-od/trukOD1649302381.jpg', 'kepala_truk', 98, 3, 66, 235, 240, 'badan_truk', 92, 43, 7, 323, 233, '1', 220.35707174118832, 228.64161407660328, '2022-04-07 10:33:01'),
(444, 21, './test-truk-ori/truk1649302382.jpg', 205, 139, './test-truk-od/trukOD1649302383.jpg', 'kepala_truk', 99, 3, 39, 88, 121, 'badan_truk', 74, 10, 5, 131, 122, '0', 83.28065072206122, 78.91778606431876, '2022-04-07 10:33:03'),
(445, 21, './test-truk-ori/truk1649302384.jpg', 282, 351, './test-truk-od/trukOD1649302384.jpg', 'kepala_truk', 99, 3, 42, 228, 190, 'badan_truk', 99, 64, 1, 276, 183, '1', 149.5016820233917, 152.43049251293976, '2022-04-07 10:33:04'),
(446, 21, './test-truk-ori/truk1649302386.jpg', 201, 217, './test-truk-od/trukOD1649302387.jpg', 'kepala_truk', 97, 5, 28, 148, 138, 'badan_truk', 99, 24, 1, 192, 121, '0', 49.8481795715346, 25.539262951471862, '2022-04-07 10:33:07'),
(447, 21, './test-truk-ori/truk1649302388.jpg', 286, 350, './test-truk-od/trukOD1649302388.jpg', 'kepala_truk', 99, -1, 35, 231, 208, 'badan_truk', 99, 39, 2, 311, 174, '0', 182.36471267254402, 182.121738008923, '2022-04-07 10:33:08'),
(448, 21, './test-truk-ori/truk1649302401.jpg', 201, 218, './test-truk-od/trukOD1649302401.jpg', 'kepala_truk', 99, 3, 21, 163, 150, 'badan_truk', 99, 27, 1, 190, 125, '0', 57.41448605631021, 24.926092755322138, '2022-04-07 10:33:21'),
(449, 21, './test-truk-ori/truk1649302410.jpg', 202, 160, './test-truk-od/trukOD1649302410.jpg', 'kepala_truk', 97, 5, 77, 117, 103, 'badan_truk', 99, 17, 0, 143, 153, '1', 48.983473485096965, 71.44710722965209, '2022-04-07 10:33:30'),
(450, 21, './test-truk-ori/truk1649302426.jpg', 201, 247, './test-truk-od/trukOD1649302426.jpg', 'kepala_truk', 98, 76, 13, 161, 158, 'badan_truk', 98, 9, -1, 209, 122, '0', 67.95726741922529, 42.455766404813644, '2022-04-07 10:33:46'),
(451, 21, './test-truk-ori/truk1649302427.jpg', 235, 200, './test-truk-od/trukOD1649302427.jpg', 'kepala_truk', 99, 57, 74, 142, 125, 'badan_truk', 99, 1, 3, 182, 166, '1', 8.553634851181002, 55.37527427989972, '2022-04-07 10:33:47'),
(452, 21, './test-truk-ori/truk1649302428.jpg', 365, 326, './test-truk-od/trukOD1649302428.jpg', 'kepala_truk', 98, 102, 116, 228, 197, 'badan_truk', 99, 2, 4, 297, 262, '1', 192.0014936279828, 212.75089455820395, '2022-04-07 10:33:48'),
(453, 21, './test-truk-ori/truk1649302445.jpg', 202, 230, './test-truk-od/trukOD1649302445.jpg', 'kepala_truk', 99, 87, 54, 142, 124, 'badan_truk', 98, 4, 2, 207, 143, '1', 32.914020061180295, 52.21878077823614, '2022-04-07 10:34:05'),
(454, 21, './test-truk-ori/truk1649302446.jpg', 250, 221, './test-truk-od/trukOD1649302446.jpg', 'kepala_truk', 77, 62, 90, 158, 138, 'badan_truk', 99, 4, 3, 203, 180, '1', 38.08417016141245, 71.43838602817566, '2022-04-07 10:34:06'),
(455, 21, './test-truk-ori/truk1649302457.jpg', 205, 208, './test-truk-od/trukOD1649302457.jpg', 'kepala_truk', 99, 77, 52, 126, 128, 'badan_truk', 99, 7, 1, 182, 147, '1', 22.664954389102977, 45.25388926199983, '2022-04-07 10:34:17');

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
  MODIFY `id_img_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
