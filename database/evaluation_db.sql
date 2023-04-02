-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql203.epizy.com
-- Generation Time: Mar 11, 2023 at 11:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_33454235_Evaluation_dbIBSMA`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_list`
--

CREATE TABLE `academic_list` (
  `id` int(30) NOT NULL,
  `year` text NOT NULL,
  `semester` int(30) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0=Pending,1=Start,2=Closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_list`
--

INSERT INTO `academic_list` (`id`, `year`, `semester`, `is_default`, `status`) VALUES
(10, '2022-2023', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_users`
--

CREATE TABLE `all_users` (
  `id` int(30) NOT NULL,
  `school_id` varchar(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `code` int(30) NOT NULL DEFAULT 0,
  `typeofuser` varchar(255) NOT NULL,
  `class_id` int(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `datetimeSL` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_users`
--

INSERT INTO `all_users` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`, `code`, `typeofuser`, `class_id`, `Status`, `count`, `datetimeSL`) VALUES
(38, '1609983', 'Ronsell John', 'Fortu', 'ronselljohnfortu@gmail.com', 'b7ac799ba3727d5a65ac5c66c751fbc4', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(39, '321', 'Aaron Josua', 'Taparan', 'aaronjosuataparan@gmail.com', '202cb962ac59075b964b07152d234b70', '1674663780_brgame_screenshot_20230119173554.jpg', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(40, '1241355', 'Danna Mary', 'Del Mundo', 'dannamarydelmundo@gmail.com', 'dannamarydel mundo', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(41, '3219-03905', 'Jasmin', 'Geronaga', 'jasminjasmingeronaga@gmail.com', 'jasminjasmingeronaga', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(42, '1243352', 'Dempol', 'Aliwalas', 'dempoldempolaliwalas@gmail.com', 'dempoldempolaliwalas', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(43, '54', 'Abegail', 'Fernando', 'abegailabegailfernando@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(44, '1453212', 'Jose Maria', 'Pajila', 'josemariapajila@gmail.com', 'josemariapajila', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(45, '', 'Dennis', 'Mambil', 'dennisdennismambil@gmail.com', 'dennisdennismambil', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(46, '13124', 'Faustiono', 'Cortas', 'faustionofaustionocortas@gmail.com', 'faustionofaustionocortas', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(47, '12432', 'Eden ', 'Gonzales', 'edenedengonzales@gmail.com', 'edenedengonzales', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(48, '9099', 'Ann Jubyl', 'Aguiflor', 'annjubylaguiflor@gmail.com', 'annjubylaguiflor', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(49, '19220', 'Dessa Diana', 'Madrid', 'dessadianamadrid@gmail.com', 'dessadianamadrid', 'no-image-available.png', '2022-12-04 23:22:44', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(85, '1423252', 'Janskie', 'Dawal', 'janskiedawal@gmail.com', 'janskiedawal', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(86, '1412312', 'Christian', 'Bondoy', 'christianbondoy@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(87, '52351', 'Roxanne', 'Dela Cruz', 'roxannedelacruz@gmail.com', 'roxannedelacruz', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(88, '23525', 'Christian Paul', 'Ereno', 'christianpaulereno@gmail.com', 'christianpaulereno', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(89, '232241223', 'Tyran Hugh', 'Grangos', 'tyranhughgrangos@gmail.com', 'tyranhughgrangos', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(90, '12131241', 'Leo', 'Lolong', 'leololong@gmail.com', 'leololong', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(91, '231421', 'Sadel', 'Malangis', 'sadelmalangis@gmail.com', 'sadelmalangis', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(92, '3124214', 'Clark Miguel', 'Malanog', 'clarkmiguelmalanog@gmail.com', 'clarkmiguelmalanog', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(93, '314321', 'Lloyd Angelo', 'Maranan', 'lloydangelomaranan@gmail.com', 'lloydangelomaranan', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(94, '13212314', 'Kenjie', 'Medina', 'kenjiemedina@gmail.com', 'kenjiemedina', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(95, '1234212', 'Nino', 'Muje', 'ninomuje@gmail.com', 'ninomuje', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(96, '13221111', 'Christian Angelo', 'Murillo', 'christianangelomurillo@gmail.com', 'christianangelomurillo', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(97, '1432142', 'Clifferd', 'Ogbac', 'clifferdogbac@gmail.com', 'clifferdogbac', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(98, '312421', 'Danica', 'Olivar', 'danicaolivar@gmail.com', 'danicaolivar', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(99, '123141', 'Mark James', 'Pascual', 'markjamespascual@gmail.com', 'markjamespascual', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(100, '12313', 'Ralph John', 'Pietas', 'ralphjohnpietas@gmail.com', 'ralphjohnpietas', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(101, '21414', 'John Lester', 'Perlas', 'johnlesterperlas@gmail.com', 'johnlesterperlas', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(102, '11111', 'Aldrian', 'Salazar', 'aldriansalazar@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(103, '132131', 'Jayryl', 'Salazar', 'jayrylsalazar@gmail.com', 'jayrylsalazar', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(104, '342532', 'Lexter', 'Sallutan', 'lextersallutan@gmail.com', 'lextersallutan', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(105, '124314', 'Juliana Trisha', 'Valles', 'julianatrishavalles@gmail.com', 'julianatrishavalles', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(106, '214142', 'Jewel', 'Villavicencio', 'jewelvillavicencio@gmail.com', 'jewelvillavicencio', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(107, '123521', 'Melber', 'Zoleta', 'melberzoleta@gmail.com', 'melberzoleta', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 5, 'Regular', 0, '2023-03-11 22:31:02'),
(108, '31453', 'Nikko Aga Vince', 'Cahilig', 'nikkoagavincecahilig@gmail.com', 'nikkoagavincecahilig', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(109, '13213', 'Hector', 'Ilagan', 'hectorilagan@gmail.com', 'hectorilagan', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(110, '31442141', 'Obet', 'Lanyungman', 'obetlanyungman@gmail.com', 'obetlanyungman', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(111, '2341412', 'John Lester', 'Loro', 'johnlesterloro@gmail.com', 'johnlesterloro', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(112, '213421', 'Elmer', 'Mahaguay', 'elmermahaguay@gmail.com', 'elmermahaguay', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(113, '13453132', 'Lowell', 'Malarayap', 'lowellmalarayap@gmail.com', 'lowellmalarayap', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Irregular', 0, '2023-03-11 22:31:02'),
(114, '3125421', 'Clent James', 'Molina', 'clentjamesmolina@gmail.com', 'clentjamesmolina', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(115, '19196', 'Edward Nelson', 'Pagcaliwagan', 'edwardnelsonpagcaliwagan@gmail.com', 'edwardnelsonpagcaliwagan', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(116, '1513421', 'Alvin Chris', 'Panganiban', 'alvinchrispanganiban@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(117, '321414', 'Vernice', 'Abanico', 'verniceabanico@gmail.com', 'verniceabanico', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(118, '2314214', 'Rose Ann', 'Ganibo', 'roseannganibo@gmail.com', 'roseannganibo', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(119, '31513', 'Jowelyn', 'Hernandez', 'jowelynhernandez@gmail.com', 'jowelynhernandez', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(120, '23142132', 'Maurine', 'Macasadia', 'maurinemacasadia@gmail.com', 'maurinemacasadia', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(121, '1241241', 'Mark Jofel', 'Magtibay', 'markjofelmagtibay@gmail.com', 'markjofelmagtibay', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(122, '142141', 'Anie Jean', 'Manojo', 'aniejeanmanojo@gmail.com', 'aniejeanmanojo', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(123, '142114', 'Aaron', 'Marticio', 'aaronmarticio@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(124, '124141', 'Shoultz', 'Nunao', 'shoultznunao@gmail.com', 'shoultznunao', 'no-image-available.png', '2022-12-04 23:54:10', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(125, '14214112', 'Jouan', 'Reyes', 'jouanreyes@gmail.com', 'jouanreyes', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(126, '134141', 'John Jay', 'Villarba', 'johnjayvillarba@gmail.com', 'johnjayvillarba', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 7, 'Regular', 0, '2023-03-11 22:31:02'),
(127, '13643163147', 'Shien Mhaco', 'Agbay', 'shienmhacoagbay@gmail.com', 'shienmhacoagbay', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(128, '24241', 'Donna Jane', 'Cano', 'donnajanecano@gmail.com', 'donnajanecano', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(129, '141231', 'Melody', 'Conde', 'melodyconde@gmail.com', 'melodyconde', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(130, '21342142', 'Christian Jeremy', 'Del Mundo', 'christianjeremydelmundo@gmail.com', 'christianjeremydelmundo', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(131, '2341322431', 'Judy Ann', 'Dela Fuente', 'judyanndelafuente@gmail.com', 'judyanndelafuente', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(132, '21343211412', 'Kathleen', 'Fabello', 'kathleenfabello@gmail.com', 'kathleenfabello', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(133, '32142112', 'Joan', 'Guimera', 'joanguimera@gmail.com', 'joanguimera', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(134, '34532532', 'Christian Harold', 'Halimbawa', 'christianharoldhalimbawa@gmail.com', 'christianharoldhalimbawa', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(135, '12342', 'Jessa Mae', 'Janda', 'jessamaejanda@gmail.com', 'jessamaejanda', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(136, '21342121', 'Milissa', 'Kasamungan', 'milissakasamungan@gmail.com', 'milissakasamungan', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(137, '2342121', 'Hannah Louise', 'Lagapa', 'hannahlouiselagapa@gmail.com', 'hannahlouiselagapa', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(138, '21321321', 'Novel Jay', 'Lagrana', 'noveljaylagrana@gmail.com', 'noveljaylagrana', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(139, '31432342', 'Ron Ivan', 'Lasac', 'ronivanlasac@gmail.com', 'ronivanlasac', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(140, '213122', 'Rosalinda', 'Lingon', 'rosalindalingon@gmail.com', 'rosalindalingon', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(141, '160897211', 'Joshua', 'Lunar', 'joshualunar@gmail.com', 'c5e770efffd018bebbccefcd17e2ba7e', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(142, '3212142', 'Jan Roy', 'Macatangay', 'janroymacatangay@gmail.com', 'janroymacatangay', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(143, '123777', 'Andrea', 'Magcamit', 'andreamagcamit@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Irregular', 0, '2023-03-11 22:31:02'),
(144, '199901241', 'Eunice', 'Mangaoang', 'eunicemangaoang@gmail.com', 'eunicemangaoang', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(145, '34115312', 'Oliver', 'Manzano', 'olivermanzano@gmail.com', 'f16f67a74f5dc708ec5c7e16e3fb71d7', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(146, '2143124', 'John Paul', 'Mawac', 'johnpaulmawac@gmail.com', 'johnpaulmawac', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(147, '31432327', 'Vannesa May', 'Mendez', 'vannesamaymendez@gmail.com', 'vannesamaymendez', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(148, '3253212', 'Monica', 'Mendoza', 'monicamendoza@gmail.com', 'b9b0365044c310d996633c2c29a30934', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(149, '234224', 'Mark Joshua', 'Morente', 'markjoshuamorente@gmail.com', '2cba4a644db34620fd991c39d4e21677', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(150, '321421', 'Jemuel', 'Morillo', 'jemuelmorillo@gmail.com', 'jemuelmorillo', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(151, '31242142', 'Joycie Ann', 'Ogbac', 'joycieannogbac@gmail.com', 'd7a76905f89327e1a4b3ee05110c56db', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(152, '5314513', 'Mariel', 'Ollangangi', 'marielollangangi@gmail.com', '1687655d28d02e2df0679890deb23fd2', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(153, '234214', 'John Vincent', 'Panaligan', 'johnvincentpanaligan@gmail.com', 'johnvincentpanaligan', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(154, '2141421', 'Arah Mae', 'Sadicon', 'arahmaesadicon@gmail.com', '8d85052636b26f616eae8da5bcae2cd4', 'no-image-available.png', '2022-12-04 23:54:11', 0, 'ibs2', 8, 'Irregular', 0, '2023-03-11 22:31:02'),
(7, '', 'Admin', '3', 'admin3@admin.com', '202cb962ac59075b964b07152d234b70', '1676898720_jabile.webp', '2023-01-29 09:39:57', 995130, 'ibsmain', NULL, NULL, 0, '2023-03-11 22:31:02'),
(50, '1992', 'Pinkie ', 'Geronaga', 'pinkiegeronaga@gmail.com', 'ad8cf6cd5e0fb6cbd06b9de34d69fdc7', 'no-image-available.png', '2023-02-07 05:44:02', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(8, '', 'Admin', '2', 'admin2@admin.com', '202cb962ac59075b964b07152d234b70', '1676973780_ctes icon.jpg', '2023-02-07 06:53:46', 0, 'ibsmain', NULL, NULL, 0, '2023-03-11 22:31:02'),
(9, '', 'admin', 'admin', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '1676899080_anya.png', '2023-02-07 06:54:20', 0, 'ibsmain', NULL, NULL, 0, '2023-03-11 22:31:02'),
(52, '21414114', 'Teacher ', '1', 'teacher1@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2023-02-17 08:38:38', 0, 'ibs1', NULL, NULL, 0, '2023-03-11 22:31:02'),
(159, ']42701', 'Joshua', 'Lunar', 'aushoj29@gmail.com', '05e9e774829c379b4e3beda7234deb35', 'no-image-available.png', '2023-03-11 20:05:33', 263523, 'ibs2', 8, 'Regular', 0, '2023-03-11 22:31:02'),
(160, '19000232', 'Callme', 'Sauce', 'zemigz007@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2023-03-11 20:16:39', 633353, 'ibs2', 6, 'Regular', 0, '2023-03-11 22:31:02'),
(161, '203', 'J-J', 'Yow', 'jundhelferranco@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2023-03-11 21:10:23', 902073, 'ibs2', 9, 'Regular', 2, '2023-03-12 12:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `assignedsubjects`
--

CREATE TABLE `assignedsubjects` (
  `AS_ID` int(8) NOT NULL,
  `instructor_ID` int(8) NOT NULL,
  `subject_ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignedsubjects`
--

INSERT INTO `assignedsubjects` (`AS_ID`, `instructor_ID`, `subject_ID`) VALUES
(90, 48, 75),
(92, 47, 81),
(93, 44, 83),
(94, 42, 84),
(95, 42, 76),
(106, 43, 63),
(107, 41, 65),
(108, 41, 68),
(109, 41, 71),
(110, 41, 74),
(111, 41, 87),
(116, 40, 67),
(117, 40, 66),
(118, 40, 73),
(119, 40, 80),
(120, 40, 86),
(121, 46, 70),
(122, 46, 77),
(123, 38, 72),
(124, 38, 78),
(125, 38, 79),
(126, 38, 82),
(127, 38, 85),
(131, 49, 69),
(132, 50, 64);

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `id` int(30) NOT NULL,
  `curriculum` text NOT NULL,
  `level` text NOT NULL,
  `section` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_list`
--

INSERT INTO `class_list` (`id`, `curriculum`, `level`, `section`) VALUES
(6, 'BSIT', '2', ''),
(7, 'BSIT', '3', ''),
(8, 'BSIT', '4', ''),
(9, 'BSIT', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_list`
--

CREATE TABLE `criteria_list` (
  `id` int(30) NOT NULL,
  `criteria` text NOT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `criteria_list`
--

INSERT INTO `criteria_list` (`id`, `criteria`, `order_by`) VALUES
(27, 'Commitment', 0),
(28, 'Teaching for Independent Learning', 2),
(29, 'Management of Learning', 3),
(30, 'Knowledge of Subject', 1);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_answers`
--

CREATE TABLE `evaluation_answers` (
  `evaluation_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `rate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_answers`
--

INSERT INTO `evaluation_answers` (`evaluation_id`, `question_id`, `rate`) VALUES
(27, 23, 3),
(27, 24, 3),
(27, 26, 1),
(27, 27, 2),
(27, 46, 4),
(27, 28, 1),
(27, 29, 5),
(27, 30, 5),
(27, 31, 3),
(27, 32, 3),
(27, 33, 1),
(27, 34, 1),
(27, 35, 4),
(27, 36, 5),
(27, 37, 5),
(27, 39, 5),
(27, 40, 3),
(27, 41, 5),
(27, 42, 2),
(30, 23, 1),
(33, 27, 5),
(36, 42, 5),
(37, 52, 1),
(37, 53, 1),
(37, 54, 1),
(37, 55, 2),
(37, 56, 2),
(37, 57, 5),
(37, 58, 4),
(37, 59, 5),
(37, 60, 4),
(37, 61, 4),
(37, 62, 4),
(37, 63, 5),
(37, 64, 3),
(37, 65, 4),
(37, 66, 3),
(37, 67, 2),
(37, 68, 2),
(37, 69, 3),
(37, 71, 2),
(37, 72, 1),
(38, 52, 3),
(38, 53, 2),
(38, 54, 2),
(38, 55, 2),
(38, 56, 5),
(38, 57, 1),
(38, 58, 4),
(38, 59, 4),
(38, 60, 2),
(38, 61, 2),
(38, 62, 2),
(38, 63, 5),
(38, 64, 5),
(38, 65, 2),
(38, 66, 2),
(38, 67, 3),
(38, 68, 5),
(38, 69, 4),
(38, 71, 5),
(38, 72, 4),
(39, 52, 2),
(39, 53, 2),
(39, 54, 3),
(39, 55, 2),
(39, 56, 3),
(39, 57, 2),
(39, 58, 5),
(39, 59, 5),
(39, 60, 4),
(39, 61, 5),
(39, 62, 2),
(39, 63, 2),
(39, 64, 5),
(39, 65, 3),
(39, 66, 2),
(39, 67, 5),
(39, 68, 2),
(39, 69, 2),
(39, 71, 2),
(39, 72, 2),
(40, 98, 2),
(40, 99, 2),
(40, 100, 3),
(40, 101, 3),
(40, 102, 5),
(40, 103, 2),
(40, 104, 1),
(40, 105, 1),
(40, 106, 4),
(40, 107, 3),
(40, 108, 2),
(40, 109, 3),
(40, 110, 3),
(40, 111, 1),
(40, 112, 3),
(40, 113, 3),
(40, 114, 2),
(40, 115, 5),
(40, 116, 5),
(40, 117, 1),
(41, 98, 1),
(41, 99, 2),
(41, 100, 4),
(41, 101, 5),
(41, 102, 3),
(41, 103, 1),
(41, 104, 2),
(41, 105, 3),
(41, 106, 3),
(41, 107, 2),
(41, 108, 3),
(41, 109, 4),
(41, 110, 2),
(41, 111, 3),
(41, 112, 2),
(41, 113, 1),
(41, 114, 2),
(41, 115, 5),
(41, 116, 4),
(41, 117, 3),
(42, 98, 1),
(42, 99, 2),
(42, 100, 5),
(42, 101, 3),
(42, 102, 1),
(42, 103, 3),
(42, 104, 2),
(42, 105, 5),
(42, 106, 3),
(42, 107, 2),
(42, 108, 1),
(42, 109, 3),
(42, 110, 1),
(42, 111, 2),
(42, 112, 3),
(42, 113, 3),
(42, 114, 1),
(42, 115, 5),
(42, 116, 4),
(42, 117, 2);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_list`
--

CREATE TABLE `evaluation_list` (
  `evaluation_id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `restriction_id` int(30) NOT NULL,
  `date_taken` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_list`
--

INSERT INTO `evaluation_list` (`evaluation_id`, `academic_id`, `class_id`, `student_id`, `subject_id`, `faculty_id`, `restriction_id`, `date_taken`) VALUES
(27, 4, 8, 145, 86, 40, 58, '2023-02-11 00:44:12'),
(28, 4, 8, 145, 87, 41, 59, '2023-02-11 00:48:29'),
(29, 4, 7, 123, 78, 38, 50, '2023-02-11 08:01:03'),
(30, 4, 7, 123, 79, 38, 51, '2023-02-11 12:04:08'),
(31, 4, 7, 123, 80, 40, 52, '2023-02-11 12:04:16'),
(32, 4, 7, 123, 81, 47, 53, '2023-02-12 07:46:14'),
(33, 4, 7, 123, 82, 38, 54, '2023-02-12 07:46:30'),
(34, 4, 7, 123, 82, 38, 54, '2023-02-12 07:47:25'),
(35, 4, 7, 123, 82, 38, 54, '2023-02-12 07:48:15'),
(36, 4, 7, 123, 82, 38, 54, '2023-02-12 07:48:22'),
(37, 9, 8, 157, 90, 51, 31, '2023-02-17 08:44:59'),
(38, 9, 8, 157, 89, 51, 31, '2023-02-17 08:45:33'),
(39, 9, 8, 157, 88, 51, 31, '2023-02-17 08:46:35'),
(40, 11, 8, 158, 90, 51, 34, '2023-02-17 21:55:23'),
(41, 11, 8, 158, 89, 51, 34, '2023-02-17 21:56:11'),
(42, 11, 8, 158, 88, 51, 34, '2023-02-17 21:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_list`
--

CREATE TABLE `faculty_list` (
  `id` int(30) NOT NULL,
  `school_id` varchar(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_list`
--

INSERT INTO `faculty_list` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(38, '1609983', 'Ronsell John', 'Fortu', 'ronselljohnfortu@gmail.com', 'b7ac799ba3727d5a65ac5c66c751fbc4', 'no-image-available.png', '2022-12-04 22:26:51'),
(39, '321', 'Aaron Josua', 'Taparan', 'aaronjosuataparan@gmail.com', '202cb962ac59075b964b07152d234b70', '1674663780_brgame_screenshot_20230119173554.jpg', '2022-12-04 22:26:51'),
(40, '1241355', 'Danna Mary', 'Del Mundo', 'dannamarydelmundo@gmail.com', 'dannamarydel mundo', 'no-image-available.png', '2022-12-04 22:26:51'),
(41, '3219-03905', 'Jasmin', 'Geronaga', 'jasminjasmingeronaga@gmail.com', 'jasminjasmingeronaga', 'no-image-available.png', '2022-12-04 22:26:51'),
(42, '1243352', 'Dempol', 'Aliwalas', 'dempoldempolaliwalas@gmail.com', 'dempoldempolaliwalas', 'no-image-available.png', '2022-12-04 22:26:51'),
(43, '54', 'Abegail', 'Fernando', 'abegailabegailfernando@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-12-04 22:26:51'),
(44, '1453212', 'Jose Maria', 'Pajila', 'josemariapajila@gmail.com', 'josemariapajila', 'no-image-available.png', '2022-12-04 22:26:51'),
(45, '', 'Dennis', 'Mambil', 'dennisdennismambil@gmail.com', 'dennisdennismambil', 'no-image-available.png', '2022-12-04 22:26:51'),
(46, '13124', 'Faustiono', 'Cortas', 'faustionofaustionocortas@gmail.com', 'faustionofaustionocortas', 'no-image-available.png', '2022-12-04 22:26:51'),
(47, '12432', 'Eden ', 'Gonzales', 'edenedengonzales@gmail.com', 'edenedengonzales', 'no-image-available.png', '2022-12-04 22:26:51'),
(48, '9099', 'Ann Jubyl', 'Aguiflor', 'annjubylaguiflor@gmail.com', 'annjubylaguiflor', 'no-image-available.png', '2022-12-04 22:26:51'),
(49, '19220', 'Dessa Diana', 'Madrid', 'dessadianamadrid@gmail.com', 'dessadianamadrid', 'no-image-available.png', '2022-12-04 22:26:51'),
(50, '1992', 'Pinkie ', 'Geronaga', 'pinkiegeronaga@gmail.com', 'ad8cf6cd5e0fb6cbd06b9de34d69fdc7', 'no-image-available.png', '2023-02-07 05:44:02'),
(52, '21414114', 'Teacher ', '1', 'teacher1@gmail.com', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2023-02-17 08:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `question_list`
--

CREATE TABLE `question_list` (
  `id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `question` text NOT NULL,
  `order_by` int(30) NOT NULL,
  `criteria_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_list`
--

INSERT INTO `question_list` (`id`, `academic_id`, `question`, `order_by`, `criteria_id`) VALUES
(28, 4, 'Demonstrate mastery of the subject matter (explain the subject matter without relying solely on the prescribed textbook).', 5, 22),
(29, 4, 'Draws and shares information on the state of the art of theory and pratice in his/her discpline. ', 6, 22),
(30, 4, 'Intergrates subject to practical circumtances and learning intents/purpose of student.', 7, 22),
(31, 4, 'Explain the relevance of present topics to the previous lesson and relates the subject matter to relevant current issues. and/or daily life activities. ', 8, 22),
(32, 4, 'Demonstrates up-to-date knowledge and/or awareness on current trends and issues of the subject.', 9, 22),
(33, 4, 'Creates teaching strategies that allow students to practice using concepts they need to understand (interactive discussion) ', 10, 23),
(34, 4, 'Enhances student self-esteem and/or gives due recognation to students\' performance/potentials.', 11, 23),
(35, 4, ' Allows students to create their own course with objectives and realistically defined students-professor rules and make them accountable for their performance. ', 12, 23),
(36, 4, 'Allows students to think independently and make thier own decision and holding them accountable for their performance based largely on their success in executing decisions. ', 13, 23),
(37, 4, 'Encourages students to learn beyond what is required and help/guide the students how to apply the concepts learned.', 14, 23),
(38, 4, 'Creates opportunities for intensive and/or extensive contribution of students in the class activities (e.g., breaks class into dyads, triads or buzz/task groups). ', 15, 24),
(39, 4, 'Assumes roles as facilitator, resource person, coach inquisitor. integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands. ', 16, 24),
(40, 4, 'Design and Implements learning conditions and experience that promotes healthy exchange and/or confrontations. ', 17, 24),
(41, 4, 'Structures/re-structures learning and teaching-learning context to enhance attainment of collective learning objects. ', 18, 24),
(42, 4, 'Use of instruction materials (audio/video materials, fieldtrips, film showing, computer-aided instruction, etc.) to reinforce learning processes.', 19, 24),
(45, 4, 'Blabla', 20, 25),
(47, 4, 'Demonstrate sensitivity to students\' ability to attend and absorb content information. \r\n', 0, 26),
(48, 4, 'Integrates sensitively his/her learning objectives with those of the students in a collaborative process.\r\n', 1, 26),
(49, 4, 'Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities. \r\n', 2, 26),
(50, 4, '\r\nKeeps accurate records of student\'s performance and prompt submission of the same.\r\n', 3, 26),
(51, 4, 'Makes self-available to students beyond official time.\r\n', 4, 26),
(52, 9, 'Demonstrate sensitivity to students\' ability to attend and absorb content information. \r\n', 0, 26),
(53, 9, 'Integrates sensitively his/her learning objectives with those of the students in a collaborative process.\r\n', 1, 26),
(54, 9, 'Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities. \r\n', 2, 26),
(55, 9, 'Keeps accurate records of student\'s performance and prompt submission of the same.\r\n', 3, 26),
(56, 9, 'Makes self-available to students beyond official time.\r\n', 4, 26),
(57, 9, 'Demonstrate mastery of the subject matter (explain the subject matter without relying solely on the prescribed textbook). ', 5, 22),
(58, 9, 'Draws and share information on the state on the art of theory and pratice in his/her discpline. ', 6, 22),
(59, 9, 'Integrates subject to practical circumtances and learning intents/purpose of students. ', 7, 22),
(60, 9, 'Explain the relevance of present topics to the previous lesson and relates the subject matter to relevant current issues. and/or daily life activities. ', 8, 22),
(61, 9, 'Demonstrates up-to-date knowledge and/or awareness on current trends and issues of the subject.', 9, 22),
(62, 9, 'Creates teaching strategies that allow students to practice using concepts they need to understand (interactive discussion) ', 10, 23),
(63, 9, 'Enhances student self-esteem and/or gives due recognations to student\'s performance/potentials. ', 11, 23),
(64, 9, 'Allows students to create their own course with objectives and realistically defined students-professor rules and make them accountable for their performance. ', 12, 23),
(65, 9, 'Allows students to think independently and make their own decision and holding them accountable for their performance based largely on their success in executing decisions. ', 13, 23),
(66, 9, 'Encourages students to learn beyond what is required and help/guide the students how to apply the concepts learned.', 14, 23),
(67, 9, 'Creates opportunities for intensive and/or extensive contribution of students in the class activities (e.g., breaks class into dyads, triads or buzz/task groups). ', 15, 24),
(68, 9, 'Assumes roles as facilitator, resource person, coach inquisitor. integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands. ', 16, 24),
(69, 9, 'Design and Implements learning conditions and experience that promotes healthy exchange and/or confrontations. ', 17, 24),
(71, 9, 'Structures/re-structures learning and teaching-learning context to enhance attainment of collective learning objects. ', 18, 24),
(72, 9, 'Use of instruction materials (audio/video materials, fieldtrips, film showing, computer-aided instruction, etc.) to reinforce learning processes.', 19, 24),
(73, 10, 'Demonstrate sensitivity to students\' ability to attend and absorb content information. \r\n', 0, 26),
(74, 10, 'Integrates sensitively his/her learning objectives with those of the students in a collaborative process.\r\n\r\n', 1, 26),
(75, 10, 'Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities. \r\n', 2, 26),
(76, 10, 'Keeps accurate records of student\'s performance and prompt submission of the same.\r\n', 3, 26),
(77, 10, 'Makes self-available to students beyond official time.\r\n', 4, 26),
(78, 10, 'Demonstrate mastery of the subject matter (explain the subject matter without relying solely on the prescribed textbook). \r\n\r\n', 5, 22),
(79, 10, 'Draws and share information on the state on the art of theory and pratice in his/her discpline. \r\n', 6, 22),
(80, 10, 'Integrates subject to practical circumtances and learning intents/purpose of students. \r\n', 7, 22),
(81, 10, 'Explain the relevance of present topics to the previous lesson and relates the subject matter to relevant current issues. and/or daily life activities. \r\n', 8, 22),
(82, 10, 'Demonstrates up-to-date knowledge and/or awareness on current trends and issues of the subject.\r\n', 9, 22),
(83, 10, 'Creates teaching strategies that allow students to practice using concepts they need to understand (interactive discussion)\r\n\r\n', 10, 23),
(84, 10, 'Enhances student self-esteem and/or gives due recognations to student\'s performance/potentials. \r\n\r\n', 11, 23),
(85, 10, 'Allows students to create their own course with objectives and realistically defined students-professor rules and make them accountable for their performance. \r\n', 12, 23),
(86, 10, 'Allows students to think independently and make their own decision and holding them accountable for their performance based largely on their success in executing decisions. \r\n\r\n', 13, 23),
(87, 10, 'Encourages students to learn beyond what is required and help/guide the students how to apply the concepts learned. \r\n', 14, 23),
(88, 10, 'Creates opportunities for intensive and/or extensive contribution of students in the class activities (e.g., breaks class into dyads, triads or buzz/task groups). \r\n', 15, 24),
(89, 10, 'Assumes roles as facilitator, resource person, coach inquisitor. integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands. \r\n\r\n', 16, 24),
(90, 10, 'Design and Implements learning conditions and experience that promotes healthy exchange and/or confrontations. \r\n\r\n', 17, 24),
(91, 10, 'Structures/re-structures learning and teaching-learning context to enhance attainment of collective learning objects. \r\n', 18, 24),
(92, 10, 'Use of instruction materials (audio/video materials, fieldtrips, film showing, computer-aided instruction, etc.) to reinforce learning processes.\r\n', 19, 24),
(98, 11, 'Demonstrate sensitivity to students\' ability to attend and absorb content information. \r\n\r\n', 0, 27),
(99, 11, 'Integrates sensitively his/her learning objectives with those of the students in a collaborative process.\r\n\r\n', 1, 27),
(100, 11, 'Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities. \r\n\r\n', 2, 27),
(101, 11, 'Keeps accurate records of student\'s performance and prompt submission of the same.\r\n\r\n', 3, 27),
(102, 11, 'Makes self-available to students beyond official time.\r\n', 4, 27),
(103, 11, 'Demonstrate mastery of the subject matter (explain the subject matter without relying solely on the prescribed textbook). \r\n', 5, 30),
(104, 11, 'Draws and share information on the state on the art of theory and pratice in his/her discpline. \r\n', 6, 30),
(105, 11, 'Integrates subject to practical circumtances and learning intents/purpose of students. \r\n', 7, 30),
(106, 11, 'Explain the relevance of present topics to the previous lesson and relates the subject matter to relevant current issues. and/or daily life activities. \r\n', 8, 30),
(107, 11, 'Demonstrates up-to-date knowledge and/or awareness on current trends and issues of the subject.\r\n', 9, 30),
(108, 11, 'Creates teaching strategies that allow students to practice using concepts they need to understand (interactive discussion)\r\n', 10, 28),
(109, 11, 'Enhances student self-esteem and/or gives due recognations to student\'s performance/potentials. \r\n', 11, 28),
(110, 11, 'Allows students to create their own course with objectives and realistically defined students-professor rules and make them accountable for their performance. \r\n', 12, 28),
(111, 11, 'Allows students to think independently and make their own decision and holding them accountable for their performance based largely on their success in executing decisions. \r\n', 13, 28),
(112, 11, 'Encourages students to learn beyond what is required and help/guide the students how to apply the concepts learned. \r\n', 14, 28),
(113, 11, 'Creates opportunities for intensive and/or extensive contribution of students in the class activities (e.g., breaks class into dyads, triads or buzz/task groups). \r\n', 15, 29),
(114, 11, 'Assumes roles as facilitator, resource person, coach inquisitor. integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands. \r\n', 16, 29),
(115, 11, 'Design and Implements learning conditions and experience that promotes healthy exchange and/or confrontations. \r\n', 17, 29),
(116, 11, 'Structures/re-structures learning and teaching-learning context to enhance attainment of collective learning objects. \r\n', 18, 29),
(117, 11, 'Use of instruction materials (audio/video materials, fieldtrips, film showing, computer-aided instruction, etc.) to reinforce learning processes.\r\n', 19, 29),
(118, 10, 'Demonstrate sensitivity to students\' ability to attend and absorb content information. \r\n', 0, 27),
(119, 10, 'Integrates sensitively his/her learning objectives with those of the students in a collaborative process.\r\n', 1, 27),
(120, 10, 'Regularly comes to class on time, well-groomed and well prepared to complete assigned responsibilities. ', 2, 27),
(121, 10, 'Keeps accurate records of student\'s performance and prompt submission of the same.\r\n', 3, 27),
(122, 10, 'Makes self-available to students beyond official time.\r\n', 4, 27),
(123, 10, 'Demonstrate mastery of the subject matter (explain the subject matter without relying solely on the prescribed textbook). \r\n', 5, 30),
(124, 10, 'Draws and share information on the state on the art of theory and pratice in his/her discpline. \r\n', 6, 30),
(125, 10, 'Integrates subject to practical circumtances and learning intents/purpose of students. \r\n', 7, 30),
(126, 10, 'Explain the relevance of present topics to the previous lesson and relates the subject matter to relevant current issues. and/or daily life activities. \r\n', 8, 30),
(127, 10, '\r\nDemonstrates up-to-date knowledge and/or awareness on current trends and issues of the subject.\r\n', 9, 30),
(128, 10, 'Creates teaching strategies that allow students to practice using concepts they need to understand (interactive discussion)\r\n', 10, 28),
(129, 10, 'Enhances student self-esteem and/or gives due recognations to student\'s performance/potentials. \r\n', 11, 28),
(130, 10, 'Allows students to create their own course with objectives and realistically defined students-professor rules and make them accountable for their performance. \r\n', 12, 28),
(131, 10, 'Allows students to think independently and make their own decision and holding them accountable for their performance based largely on their success in executing decisions. \r\n', 13, 28),
(132, 10, 'Encourages students to learn beyond what is required and help/guide the students how to apply the concepts learned. \r\n', 14, 28),
(133, 10, 'Creates opportunities for intensive and/or extensive contribution of students in the class activities (e.g., breaks class into dyads, triads or buzz/task groups). \r\n', 15, 29),
(134, 10, 'Assumes roles as facilitator, resource person, coach inquisitor. integrator, referee in drawing students to contribute to knowledge and understanding of the concepts at hands. \r\n', 16, 29),
(135, 10, 'Design and Implements learning conditions and experience that promotes healthy exchange and/or confrontations. \r\n', 17, 29),
(136, 10, 'Structures/re-structures learning and teaching-learning context to enhance attainment of collective learning objects. \r\n', 18, 29),
(137, 10, 'Use of instruction materials (audio/video materials, fieldtrips, film showing, computer-aided instruction, etc.) to reinforce learning processes.\r\n', 19, 29);

-- --------------------------------------------------------

--
-- Table structure for table `restriction_list`
--

CREATE TABLE `restriction_list` (
  `id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restriction_list`
--

INSERT INTO `restriction_list` (`id`, `academic_id`, `faculty_id`, `class_id`, `subject_id`) VALUES
(85, 10, 43, 9, 63),
(86, 10, 50, 9, 64),
(87, 10, 41, 9, 65),
(88, 10, 40, 9, 66),
(89, 10, 40, 9, 67),
(90, 10, 41, 9, 68),
(91, 10, 49, 9, 69),
(92, 10, 46, 9, 70),
(93, 10, 41, 6, 71),
(94, 10, 38, 6, 72),
(95, 10, 40, 6, 73),
(96, 10, 41, 6, 74),
(97, 10, 48, 6, 75),
(98, 10, 42, 6, 76),
(99, 10, 46, 6, 77),
(100, 10, 38, 7, 78),
(101, 10, 38, 7, 79),
(102, 10, 40, 7, 80),
(103, 10, 47, 7, 81),
(104, 10, 38, 7, 82),
(105, 10, 44, 7, 83),
(106, 10, 42, 7, 84),
(107, 10, 40, 8, 86),
(108, 10, 38, 7, 85),
(109, 10, 41, 8, 87);

-- --------------------------------------------------------

--
-- Table structure for table `restriction_list2`
--

CREATE TABLE `restriction_list2` (
  `id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_ids` varchar(255) NOT NULL,
  `student_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restriction_list2`
--

INSERT INTO `restriction_list2` (`id`, `academic_id`, `class_id`, `subject_ids`, `student_id`) VALUES
(36, 10, 8, '76,87,86', 154);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `school_id` varchar(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `class_id` int(30) NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `class_id`, `avatar`, `date_created`, `Status`) VALUES
(85, '1423252', 'Janskie', 'Dawal', 'janskiedawal@gmail.com', 'janskiedawal', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(86, '1412312', 'Christian', 'Bondoy', 'christianbondoy@gmail.com', '202cb962ac59075b964b07152d234b70', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(87, '52351', 'Roxanne', 'Dela Cruz', 'roxannedelacruz@gmail.com', 'roxannedelacruz', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(88, '23525', 'Christian Paul', 'Ereno', 'christianpaulereno@gmail.com', 'christianpaulereno', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(89, '232241223', 'Tyran Hugh', 'Grangos', 'tyranhughgrangos@gmail.com', 'tyranhughgrangos', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(90, '12131241', 'Leo', 'Lolong', 'leololong@gmail.com', 'leololong', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(91, '231421', 'Sadel', 'Malangis', 'sadelmalangis@gmail.com', 'sadelmalangis', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(92, '3124214', 'Clark Miguel', 'Malanog', 'clarkmiguelmalanog@gmail.com', 'clarkmiguelmalanog', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(93, '314321', 'Lloyd Angelo', 'Maranan', 'lloydangelomaranan@gmail.com', 'lloydangelomaranan', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(94, '13212314', 'Kenjie', 'Medina', 'kenjiemedina@gmail.com', 'kenjiemedina', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(95, '1234212', 'Nino', 'Muje', 'ninomuje@gmail.com', 'ninomuje', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(96, '13221111', 'Christian Angelo', 'Murillo', 'christianangelomurillo@gmail.com', 'christianangelomurillo', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(97, '1432142', 'Clifferd', 'Ogbac', 'clifferdogbac@gmail.com', 'clifferdogbac', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(98, '312421', 'Danica', 'Olivar', 'danicaolivar@gmail.com', 'danicaolivar', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(99, '123141', 'Mark James', 'Pascual', 'markjamespascual@gmail.com', 'markjamespascual', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(100, '12313', 'Ralph John', 'Pietas', 'ralphjohnpietas@gmail.com', 'ralphjohnpietas', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(101, '21414', 'John Lester', 'Perlas', 'johnlesterperlas@gmail.com', 'johnlesterperlas', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(102, '11111', 'Aldrian', 'Salazar', 'aldriansalazar@gmail.com', '202cb962ac59075b964b07152d234b70', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(103, '132131', 'Jayryl', 'Salazar', 'jayrylsalazar@gmail.com', 'jayrylsalazar', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(104, '342532', 'Lexter', 'Sallutan', 'lextersallutan@gmail.com', 'lextersallutan', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(105, '124314', 'Juliana Trisha', 'Valles', 'julianatrishavalles@gmail.com', 'julianatrishavalles', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(106, '214142', 'Jewel', 'Villavicencio', 'jewelvillavicencio@gmail.com', 'jewelvillavicencio', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(107, '123521', 'Melber', 'Zoleta', 'melberzoleta@gmail.com', 'melberzoleta', 5, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(108, '31453', 'Nikko Aga Vince', 'Cahilig', 'nikkoagavincecahilig@gmail.com', 'nikkoagavincecahilig', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(109, '13213', 'Hector', 'Ilagan', 'hectorilagan@gmail.com', 'hectorilagan', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(110, '31442141', 'Obet', 'Lanyungman', 'obetlanyungman@gmail.com', 'obetlanyungman', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(111, '2341412', 'John Lester', 'Loro', 'johnlesterloro@gmail.com', 'johnlesterloro', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(112, '213421', 'Elmer', 'Mahaguay', 'elmermahaguay@gmail.com', 'elmermahaguay', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(113, '13453132', 'Lowell', 'Malarayap', 'lowellmalarayap@gmail.com', 'lowellmalarayap', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Irregular'),
(114, '3125421', 'Clent James', 'Molina', 'clentjamesmolina@gmail.com', 'clentjamesmolina', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(115, '19196', 'Edward Nelson', 'Pagcaliwagan', 'edwardnelsonpagcaliwagan@gmail.com', 'edwardnelsonpagcaliwagan', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(116, '1513421', 'Alvin Chris', 'Panganiban', 'alvinchrispanganiban@gmail.com', '202cb962ac59075b964b07152d234b70', 6, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(117, '321414', 'Vernice', 'Abanico', 'verniceabanico@gmail.com', 'verniceabanico', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(118, '2314214', 'Rose Ann', 'Ganibo', 'roseannganibo@gmail.com', 'roseannganibo', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(119, '31513', 'Jowelyn', 'Hernandez', 'jowelynhernandez@gmail.com', 'jowelynhernandez', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(120, '23142132', 'Maurine', 'Macasadia', 'maurinemacasadia@gmail.com', 'maurinemacasadia', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(121, '1241241', 'Mark Jofel', 'Magtibay', 'markjofelmagtibay@gmail.com', 'markjofelmagtibay', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(122, '142141', 'Anie Jean', 'Manojo', 'aniejeanmanojo@gmail.com', 'aniejeanmanojo', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(123, '142114', 'Aaron', 'Marticio', 'aaronmarticio@gmail.com', '202cb962ac59075b964b07152d234b70', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(124, '124141', 'Shoultz', 'Nunao', 'shoultznunao@gmail.com', 'shoultznunao', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(125, '14214112', 'Jouan', 'Reyes', 'jouanreyes@gmail.com', 'jouanreyes', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(126, '134141', 'John Jay', 'Villarba', 'johnjayvillarba@gmail.com', 'johnjayvillarba', 7, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(127, '13643163147', 'Shien Mhaco', 'Agbay', 'shienmhacoagbay@gmail.com', 'shienmhacoagbay', 8, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(128, '24241', 'Donna Jane', 'Cano', 'donnajanecano@gmail.com', 'donnajanecano', 8, 'no-image-available.png', '2022-12-04 22:53:34', 'Regular'),
(129, '141231', 'Melody', 'Conde', 'melodyconde@gmail.com', 'melodyconde', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(130, '21342142', 'Christian Jeremy', 'Del Mundo', 'christianjeremydelmundo@gmail.com', 'christianjeremydelmundo', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(131, '2341322431', 'Judy Ann', 'Dela Fuente', 'judyanndelafuente@gmail.com', 'judyanndelafuente', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(132, '21343211412', 'Kathleen', 'Fabello', 'kathleenfabello@gmail.com', 'kathleenfabello', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(133, '32142112', 'Joan', 'Guimera', 'joanguimera@gmail.com', 'joanguimera', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(134, '34532532', 'Christian Harold', 'Halimbawa', 'christianharoldhalimbawa@gmail.com', 'christianharoldhalimbawa', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(135, '12342', 'Jessa Mae', 'Janda', 'jessamaejanda@gmail.com', 'jessamaejanda', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(136, '21342121', 'Milissa', 'Kasamungan', 'milissakasamungan@gmail.com', 'milissakasamungan', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(137, '2342121', 'Hannah Louise', 'Lagapa', 'hannahlouiselagapa@gmail.com', 'hannahlouiselagapa', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(138, '21321321', 'Novel Jay', 'Lagrana', 'noveljaylagrana@gmail.com', 'noveljaylagrana', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(139, '31432342', 'Ron Ivan', 'Lasac', 'ronivanlasac@gmail.com', 'ronivanlasac', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(140, '213122', 'Rosalinda', 'Lingon', 'rosalindalingon@gmail.com', 'rosalindalingon', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(141, '160897211', 'Joshua', 'Lunar', 'joshualunar@gmail.com', 'c5e770efffd018bebbccefcd17e2ba7e', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(142, '3212142', 'Jan Roy', 'Macatangay', 'janroymacatangay@gmail.com', 'janroymacatangay', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(143, '123777', 'Andrea', 'Magcamit', 'andreamagcamit@gmail.com', '202cb962ac59075b964b07152d234b70', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Irregular'),
(144, '199901241', 'Eunice', 'Mangaoang', 'eunicemangaoang@gmail.com', 'eunicemangaoang', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(145, '34115312', 'Oliver', 'Manzano', 'olivermanzano@gmail.com', 'f16f67a74f5dc708ec5c7e16e3fb71d7', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(146, '2143124', 'John Paul', 'Mawac', 'johnpaulmawac@gmail.com', 'johnpaulmawac', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(147, '31432327', 'Vannesa May', 'Mendez', 'vannesamaymendez@gmail.com', 'vannesamaymendez', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(148, '3253212', 'Monica', 'Mendoza', 'monicamendoza@gmail.com', 'b9b0365044c310d996633c2c29a30934', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(149, '234224', 'Mark Joshua', 'Morente', 'markjoshuamorente@gmail.com', '2cba4a644db34620fd991c39d4e21677', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(150, '321421', 'Jemuel', 'Morillo', 'jemuelmorillo@gmail.com', 'jemuelmorillo', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(151, '31242142', 'Joycie Ann', 'Ogbac', 'joycieannogbac@gmail.com', 'd7a76905f89327e1a4b3ee05110c56db', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(152, '5314513', 'Mariel', 'Ollangangi', 'marielollangangi@gmail.com', '1687655d28d02e2df0679890deb23fd2', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(153, '234214', 'John Vincent', 'Panaligan', 'johnvincentpanaligan@gmail.com', 'johnvincentpanaligan', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Regular'),
(154, '2141421', 'Arah Mae', 'Sadicon', 'arahmaesadicon@gmail.com', '8d85052636b26f616eae8da5bcae2cd4', 8, 'no-image-available.png', '2022-12-04 22:53:35', 'Irregular'),
(159, ']42701', 'Joshua', 'Lunar', 'aushoj29@gmail.com', '05e9e774829c379b4e3beda7234deb35', 8, 'no-image-available.png', '2023-03-11 20:05:33', 'Regular'),
(160, '19000232', 'Callme', 'Sauce', 'zemigz007@gmail.com', '202cb962ac59075b964b07152d234b70', 6, 'no-image-available.png', '2023-03-11 20:16:39', 'Regular'),
(161, '203', 'J-J', 'Yow', 'jundhelferranco@gmail.com', '202cb962ac59075b964b07152d234b70', 9, 'no-image-available.png', '2023-03-11 21:10:23', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE `subject_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`id`, `code`, `subject`, `description`) VALUES
(63, 'GE5', 'Purposive Communication', ''),
(64, 'GE6', 'Art Appreciation', ''),
(65, 'GE7', 'Science, Technology and Society', ''),
(66, 'MS101', 'Discrete Mathematics', ''),
(67, 'HC102', 'Introduction to Human Computer Interaction', ''),
(68, 'CC103', 'Computer Programming 2', ''),
(69, 'NSTP2', 'National Service Training Program', ''),
(70, 'PE2', 'Badminton', ''),
(71, 'CC105', 'Information Management', ''),
(72, 'MS102', 'Quantitative Methods', ''),
(73, 'NET101', 'Networking 1', ''),
(74, 'IPT101', 'Integrative Programming and Technologies 1', ''),
(75, 'Eco', 'Economics with LRT', ''),
(76, 'Fil2', 'Pagbasa at Pagsulat', ''),
(77, 'PE4', 'Volleyball', ''),
(78, 'IAS101', 'Information Assurance and Security 1', ''),
(79, 'CC106', 'Application Development and Emerging Technologies', ''),
(80, 'CAP101', 'Capstone Project 1', ''),
(81, 'GE8', 'Professional Ethics', ''),
(82, 'GE10', 'Technical Writing', ''),
(83, 'SP101', 'Social and Professional Issues', ''),
(84, 'Lit', 'Philippine Literature', ''),
(85, 'SIA101', 'System Integration and Architecture', ''),
(86, 'Prac101', 'Practicum', ''),
(87, 'SA101', 'System Administration and Maintenance', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Teacher Evaluation System', 'info@sample.comm', '+6948 8542 623', 'Bulalayo Oriental Mindoro', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(7, 'Admin', '3', 'admin3@admin.com', '202cb962ac59075b964b07152d234b70', '1676898720_jabile.webp', '2023-01-29 09:39:57'),
(8, 'Admin', '2', 'admin2@admin.com', '202cb962ac59075b964b07152d234b70', '1676973780_ctes icon.jpg', '2023-02-07 06:53:46'),
(9, 'admin', 'admin', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '1676899080_anya.png', '2023-02-07 06:54:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_list`
--
ALTER TABLE `academic_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignedsubjects`
--
ALTER TABLE `assignedsubjects`
  ADD PRIMARY KEY (`AS_ID`);

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria_list`
--
ALTER TABLE `criteria_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_list`
--
ALTER TABLE `evaluation_list`
  ADD PRIMARY KEY (`evaluation_id`);

--
-- Indexes for table `faculty_list`
--
ALTER TABLE `faculty_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_list`
--
ALTER TABLE `question_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restriction_list`
--
ALTER TABLE `restriction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restriction_list2`
--
ALTER TABLE `restriction_list2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_list`
--
ALTER TABLE `academic_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assignedsubjects`
--
ALTER TABLE `assignedsubjects`
  MODIFY `AS_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `class_list`
--
ALTER TABLE `class_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `criteria_list`
--
ALTER TABLE `criteria_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `evaluation_list`
--
ALTER TABLE `evaluation_list`
  MODIFY `evaluation_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `faculty_list`
--
ALTER TABLE `faculty_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `question_list`
--
ALTER TABLE `question_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `restriction_list`
--
ALTER TABLE `restriction_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `restriction_list2`
--
ALTER TABLE `restriction_list2`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `subject_list`
--
ALTER TABLE `subject_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
