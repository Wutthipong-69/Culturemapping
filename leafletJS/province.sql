-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2026 at 05:25 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetgis`
--

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `PROVINCE_ID` int(2) NOT NULL,
  `PROVINCE_CODE` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCE_NAME` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCE_NAME_ENG` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCE_latitude` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PROVINCE_longitude` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PROVINCE_zoom` int(2) NOT NULL,
  `GEO_ID` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`PROVINCE_ID`, `PROVINCE_CODE`, `PROVINCE_NAME`, `PROVINCE_NAME_ENG`, `PROVINCE_latitude`, `PROVINCE_longitude`, `PROVINCE_zoom`, `GEO_ID`) VALUES
(1, '10', 'กรุงเทพมหานคร   ', 'Bangkok', '', '', 0, 2),
(2, '11', 'สมุทรปราการ   ', 'Samut Prakan', '', '', 0, 2),
(3, '12', 'นนทบุรี   ', 'Nonthaburi', '', '', 0, 2),
(4, '13', 'ปทุมธานี   ', 'Pathum Thani', '', '', 0, 2),
(5, '14', 'พระนครศรีอยุธยา   ', 'Phra Nakhon Si Ayutthaya', '', '', 0, 2),
(6, '15', 'อ่างทอง   ', 'Ang Thong', '', '', 0, 2),
(7, '16', 'ลพบุรี   ', 'Loburi', '', '', 0, 2),
(8, '17', 'สิงห์บุรี   ', 'Sing Buri', '', '', 0, 2),
(9, '18', 'ชัยนาท   ', 'Chai Nat', '', '', 0, 2),
(10, '19', 'สระบุรี', 'Saraburi', '', '', 0, 2),
(11, '20', 'ชลบุรี   ', 'Chon Buri', '', '', 0, 5),
(12, '21', 'ระยอง   ', 'Rayong', '', '', 0, 5),
(13, '22', 'จันทบุรี   ', 'Chanthaburi', '', '', 0, 5),
(14, '23', 'ตราด   ', 'Trat', '', '', 0, 5),
(15, '24', 'ฉะเชิงเทรา   ', 'Chachoengsao', '', '', 0, 5),
(16, '25', 'ปราจีนบุรี   ', 'Prachin Buri', '', '', 0, 5),
(17, '26', 'นครนายก   ', 'Nakhon Nayok', '', '', 0, 2),
(18, '27', 'สระแก้ว   ', 'Sa Kaeo', '', '', 0, 5),
(19, '30', 'นครราชสีมา   ', 'Nakhon Ratchasima', '', '', 0, 3),
(20, '31', 'บุรีรัมย์   ', 'Buri Ram', '', '', 0, 3),
(21, '32', 'สุรินทร์   ', 'Surin', '', '', 0, 3),
(22, '33', 'ศรีสะเกษ   ', 'Si Sa Ket', '', '', 0, 3),
(23, '34', 'อุบลราชธานี   ', 'Ubon Ratchathani', '', '', 0, 3),
(24, '35', 'ยโสธร   ', 'Yasothon', '', '', 0, 3),
(25, '36', 'ชัยภูมิ   ', 'Chaiyaphum', '', '', 0, 3),
(26, '37', 'อำนาจเจริญ   ', 'Amnat Charoen', '', '', 0, 3),
(27, '39', 'หนองบัวลำภู   ', 'Nong Bua Lam Phu', '', '', 0, 3),
(28, '40', 'ขอนแก่น   ', 'Khon Kaen', '', '', 0, 3),
(29, '41', 'อุดรธานี   ', 'Udon Thani', '', '', 0, 3),
(30, '42', 'เลย   ', 'Loei', '', '', 0, 3),
(31, '43', 'หนองคาย   ', 'Nong Khai', '', '', 0, 3),
(32, '44', 'มหาสารคาม   ', 'Maha Sarakham', '', '', 0, 3),
(33, '45', 'ร้อยเอ็ด   ', 'Roi Et', '', '', 0, 3),
(34, '46', 'กาฬสินธุ์   ', 'Kalasin', '', '', 0, 3),
(35, '47', 'สกลนคร   ', 'Sakon Nakhon', '', '', 0, 3),
(36, '48', 'นครพนม   ', 'Nakhon Phanom', '', '', 0, 3),
(37, '49', 'มุกดาหาร   ', 'Mukdahan', '', '', 0, 3),
(38, '50', 'เชียงใหม่   ', 'Chiang Mai', '', '', 0, 1),
(39, '51', 'ลำพูน   ', 'Lamphun', '', '', 0, 1),
(40, '52', 'ลำปาง   ', 'Lampang', '', '', 0, 1),
(41, '53', 'อุตรดิตถ์   ', 'Uttaradit', '', '', 0, 1),
(42, '54', 'แพร่   ', 'Phrae', '', '', 0, 1),
(43, '55', 'น่าน   ', 'Nan', '', '', 0, 1),
(44, '56', 'พะเยา   ', 'Phayao', '', '', 0, 1),
(45, '57', 'เชียงราย   ', 'Chiang Rai', '', '', 0, 1),
(46, '58', 'แม่ฮ่องสอน   ', 'Mae Hong Son', '', '', 0, 1),
(47, '60', 'นครสวรรค์   ', 'Nakhon Sawan', '', '', 0, 2),
(48, '61', 'อุทัยธานี   ', 'Uthai Thani', '', '', 0, 2),
(49, '62', 'กำแพงเพชร   ', 'Kamphaeng Phet', '', '', 0, 2),
(50, '63', 'ตาก   ', 'Tak', '', '', 0, 4),
(51, '64', 'สุโขทัย   ', 'Sukhothai', '', '', 0, 2),
(52, '65', 'พิษณุโลก   ', 'Phitsanulok', '', '', 0, 2),
(53, '66', 'พิจิตร   ', 'Phichit', '', '', 0, 2),
(54, '67', 'เพชรบูรณ์   ', 'Phetchabun', '', '', 0, 2),
(55, '70', 'ราชบุรี   ', 'Ratchaburi', '', '', 0, 4),
(56, '71', 'กาญจนบุรี   ', 'Kanchanaburi', '', '', 0, 4),
(57, '72', 'สุพรรณบุรี   ', 'Suphan Buri', '', '', 0, 2),
(58, '73', 'นครปฐม   ', 'Nakhon Pathom', '', '', 0, 2),
(59, '74', 'สมุทรสาคร   ', 'Samut Sakhon', '', '', 0, 2),
(60, '75', 'สมุทรสงคราม   ', 'Samut Songkhram', '', '', 0, 2),
(61, '76', 'เพชรบุรี   ', 'Phetchaburi', '', '', 0, 4),
(62, '77', 'ประจวบคีรีขันธ์   ', 'Prachuap Khiri Khan', '', '', 0, 4),
(63, '80', 'นครศรีธรรมราช   ', 'Nakhon Si Thammarat', '', '', 0, 6),
(64, '81', 'กระบี่   ', 'Krabi', '', '', 0, 6),
(65, '82', 'พังงา   ', 'Phangnga', '', '', 0, 6),
(66, '83', 'ภูเก็ต   ', 'Phuket', '', '', 0, 6),
(67, '84', 'สุราษฎร์ธานี   ', 'Surat Thani', '', '', 0, 6),
(68, '85', 'ระนอง   ', 'Ranong', '', '', 0, 6),
(69, '86', 'ชุมพร   ', 'Chumphon', '', '', 0, 6),
(70, '90', 'สงขลา   ', 'Songkhla', '', '', 0, 6),
(71, '91', 'สตูล   ', 'Satun', '', '', 0, 6),
(72, '92', 'ตรัง   ', 'Trang', '', '', 0, 6),
(73, '93', 'พัทลุง   ', 'Phatthalung', '', '', 0, 6),
(74, '94', 'ปัตตานี   ', 'Pattani', '', '', 0, 6),
(75, '95', 'ยะลา   ', 'Yala', '', '', 0, 6),
(76, '96', 'นราธิวาส   ', 'Narathiwat', '', '', 0, 6),
(77, '38', 'บึงกาฬ', 'buogkan', '', '', 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`PROVINCE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `PROVINCE_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
