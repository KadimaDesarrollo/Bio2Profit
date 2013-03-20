-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-03-2013 a las 17:14:39
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bio2profit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `H12_24` varchar(2) NOT NULL DEFAULT '12'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `config`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `volcado`
--

CREATE TABLE IF NOT EXISTS `volcado` (
  `N_linea` int(11) NOT NULL,
  `Nombre_Empleado` varchar(50) NOT NULL,
  `ID_Empleado` varchar(12) NOT NULL,
  `Fecha` date NOT NULL,
  `Entrada` time NOT NULL,
  `Salida` time NOT NULL,
  `Tiempo_Trabajado` decimal(5,2) NOT NULL,
  `Estatus` int(11) NOT NULL,
  `Campos` varchar(255) NOT NULL,
  KEY `Fecha` (`Fecha`),
  KEY `ID_Usuario` (`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `volcado`
--

INSERT INTO `volcado` (`N_linea`, `Nombre_Empleado`, `ID_Empleado`, `Fecha`, `Entrada`, `Salida`, `Tiempo_Trabajado`, `Estatus`, `Campos`) VALUES
(1, 'Raul Story', '001', '2013-03-04', '08:27:55', '17:05:10', '8.63', 0, ''),
(2, 'Raul Story', '001', '2013-03-05', '08:21:22', '17:21:33', '9.00', 0, ''),
(3, 'Raul Story', '001', '2013-03-06', '08:28:43', '17:23:06', '8.91', 0, ''),
(4, 'Raul Story', '001', '2013-03-07', '08:32:01', '17:02:41', '8.50', 0, ''),
(5, 'Franklin Martnez', '', '2013-03-04', '09:44:20', '10:41:05', '0.95', 4, 'ID Vacio'),
(6, 'Franklin Martnez', '', '2013-03-06', '09:34:41', '16:15:55', '6.68', 4, 'ID Vacio'),
(7, 'Franklin Martnez', '', '2013-03-07', '09:33:41', '11:16:02', '1.72', 4, 'ID Vacio'),
(8, 'Jonathan Martnez', '', '2013-03-05', '08:15:51', '16:04:19', '7.82', 4, 'ID Vacio'),
(9, 'Jonathan Martnez', '', '2013-03-06', '08:18:36', '15:04:49', '6.77', 4, 'ID Vacio'),
(10, 'Jonathan Martnez', '', '2013-03-07', '08:49:09', '15:59:32', '7.16', 4, 'ID Vacio'),
(11, 'Magnel Gerardo', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(12, 'Yoselyn Campos', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(13, 'Andrea Pequeno', '', '2013-03-04', '09:24:28', '09:30:04', '0.10', 4, 'ID Vacio'),
(14, 'Andrea Pequeno', '', '2013-03-05', '11:48:23', '16:32:08', '4.73', 4, 'ID Vacio'),
(15, 'Andrea Pequeno', '', '2013-03-06', '14:04:34', '18:40:50', '4.60', 4, 'ID Vacio'),
(16, 'Andrea Pequeno', '', '2013-03-09', '13:32:24', '21:08:34', '7.60', 4, 'ID Vacio'),
(17, 'Natalia Pequeno', '', '2013-03-03', '10:30:18', '10:34:28', '0.07', 4, 'ID Vacio'),
(18, 'Evelin Campos', '002', '2013-03-07', '16:29:03', '16:29:29', '0.00', 0, ''),
(19, 'Maria Pequeno', '', '2013-03-06', '17:41:14', '19:40:14', '1.99', 4, 'ID Vacio'),
(20, 'Simon Martnez', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(21, '', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'Nombre VacioID VacioFecha Vacia'),
(22, 'Yohana Martnez', '', '2013-03-04', '07:48:09', '16:42:36', '8.90', 4, 'ID Vacio'),
(23, 'Yohana Martnez', '', '2013-03-05', '08:10:48', '16:57:29', '8.78', 4, 'ID Vacio'),
(24, 'Yohana Martnez', '', '2013-03-06', '08:18:55', '15:58:47', '7.67', 4, 'ID Vacio'),
(25, 'Yohana Martnez', '', '2013-03-07', '07:36:42', '16:57:21', '9.35', 4, 'ID Vacio'),
(26, 'Yesenia Miara', '', '2013-03-04', '08:15:46', '16:21:35', '8.10', 4, 'ID Vacio'),
(27, 'Yesenia Miara', '', '2013-03-05', '14:10:56', '17:02:47', '2.86', 4, 'ID Vacio'),
(28, 'Yesenia Miara', '', '2013-03-06', '09:48:23', '17:19:08', '7.52', 4, 'ID Vacio'),
(29, 'Yesenia Miara', '', '2013-03-07', '08:21:09', '18:05:04', '9.73', 4, 'ID Vacio'),
(30, 'Mirna Daz', '', '2013-03-04', '07:59:14', '10:38:49', '2.65', 4, 'ID Vacio'),
(31, 'Mirna Daz', '', '2013-03-07', '08:23:59', '10:44:47', '2.35', 4, 'ID Vacio'),
(32, 'Alfredo Franquis', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(33, 'Eduardo Ugueto', '', '2013-03-08', '14:44:29', '17:31:09', '2.79', 4, 'ID Vacio'),
(34, 'Carlos Story Jr', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(35, 'Fernando Negrin', '003', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'Fecha Vacia'),
(36, 'Servicios Fren', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(37, 'Renso Avila', '15453650', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'Fecha Vacia'),
(38, 'Jos Ramrez', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(39, 'Ivaney Marquez', '', '2013-03-04', '08:06:28', '10:48:58', '2.70', 4, 'ID Vacio'),
(40, 'Ivaney Marquez', '', '2013-03-05', '08:29:32', '10:13:44', '1.74', 4, 'ID Vacio'),
(41, 'Ivaney Marquez', '', '2013-03-06', '08:06:47', '16:45:37', '8.65', 4, 'ID Vacio'),
(42, 'Ivaney Marquez', '', '2013-03-07', '08:15:55', '14:37:29', '6.37', 4, 'ID Vacio'),
(43, 'Damian Ramon', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(44, 'Carlos Basil', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(45, 'Natacha Pequeno', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(46, 'Mariana Pequeno', '', '2013-03-06', '13:37:19', '15:01:04', '1.40', 4, 'ID Vacio'),
(47, 'Gustavo Gonzalez', '', '2013-03-04', '08:18:31', '16:32:16', '8.23', 4, 'ID Vacio'),
(48, 'Gustavo Gonzalez', '', '2013-03-05', '08:24:21', '12:39:00', '4.25', 4, 'ID Vacio'),
(49, 'Gustavo Gonzalez', '', '2013-03-06', '08:17:36', '17:10:09', '8.89', 4, 'ID Vacio'),
(50, 'Gustavo Gonzalez', '', '2013-03-07', '08:10:18', '16:56:15', '8.76', 4, 'ID Vacio'),
(51, 'Rafael Gonzalez', '', '2013-03-06', '08:19:49', '08:20:04', '0.01', 4, 'ID Vacio'),
(52, 'Rafael Gonzalez', '', '2013-03-07', '08:58:46', '11:45:09', '2.78', 4, 'ID Vacio'),
(53, 'Hector Hernandez', '', '2013-03-04', '14:55:43', '17:38:01', '2.71', 4, 'ID Vacio'),
(54, 'Ivanessa Marquez', '', '2013-03-04', '14:12:10', '16:21:58', '2.15', 4, 'ID Vacio'),
(55, 'Ivanessa Marquez', '', '2013-03-05', '08:41:14', '12:19:00', '3.64', 4, 'ID Vacio'),
(56, 'Ivanessa Marquez', '', '2013-03-06', '08:52:46', '16:46:08', '7.90', 4, 'ID Vacio'),
(57, 'Ivanessa Marquez', '', '2013-03-07', '10:47:20', '16:27:06', '5.67', 4, 'ID Vacio'),
(58, 'Luis Sardi', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(59, 'Ysis Mosqueda', '', '2013-03-04', '08:11:13', '16:16:45', '8.09', 4, 'ID Vacio'),
(60, 'Ysis Mosqueda', '', '2013-03-05', '13:50:03', '17:06:31', '3.27', 4, 'ID Vacio'),
(61, 'Angela Ojeda', '', '2013-03-05', '12:53:04', '19:53:23', '7.00', 4, 'ID Vacio'),
(62, 'Angela Ojeda', '', '2013-03-06', '09:10:52', '09:12:07', '0.03', 4, 'ID Vacio'),
(63, 'Mariana Perdomo', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(64, 'Efrain  Nicolagev', '', '2013-03-04', '18:25:13', '20:18:32', '1.88', 4, 'ID Vacio'),
(65, 'Efrain  Nicolagev', '', '2013-03-06', '18:19:11', '20:02:41', '1.71', 4, 'ID Vacio'),
(66, 'Efrain  Nicolagev', '', '2013-03-07', '13:10:06', '19:57:43', '6.78', 4, 'ID Vacio'),
(67, 'Efrain  Nicolagev', '', '2013-03-09', '12:35:02', '12:37:14', '0.04', 4, 'ID Vacio'),
(68, 'Mirihely Mendoza', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(69, 'Gerardo Mendez', '5507526', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'Fecha Vacia'),
(70, 'Eduardo Vila', '7104874', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'Fecha Vacia'),
(71, 'Nelson Geraldo Joel', '9828751', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'Fecha Vacia'),
(72, 'Fernando Arias', '', '2013-03-03', '09:15:05', '15:50:45', '6.58', 4, 'ID Vacio'),
(73, 'Fernando Arias', '', '2013-03-04', '14:38:24', '21:25:38', '6.79', 4, 'ID Vacio'),
(74, 'Fernando Arias', '', '2013-03-05', '14:28:00', '18:25:30', '3.95', 4, 'ID Vacio'),
(75, 'Fernando Arias', '', '2013-03-08', '08:05:25', '13:42:45', '5.62', 4, 'ID Vacio'),
(76, 'Fernando Arias', '', '2013-03-09', '07:44:36', '15:46:56', '8.04', 4, 'ID Vacio'),
(77, 'Freddy Linares', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(78, 'Jorge Luis Barragan', '', '2013-03-03', '15:45:16', '21:42:35', '5.95', 4, 'ID Vacio'),
(79, 'Jorge Luis Barragan', '', '2013-03-04', '09:23:21', '16:01:39', '6.64', 4, 'ID Vacio'),
(80, 'Jorge Luis Barragan', '', '2013-03-05', '09:21:09', '15:52:43', '6.52', 4, 'ID Vacio'),
(81, 'Jorge Luis Barragan', '', '2013-03-06', '09:50:01', '16:22:44', '6.54', 4, 'ID Vacio'),
(82, 'Jorge Luis Barragan', '', '2013-03-07', '11:22:33', '11:22:43', '0.00', 4, 'ID Vacio'),
(83, 'Yessimar Alvarez', '', '2013-03-04', '07:47:49', '10:58:42', '3.19', 4, 'ID Vacio'),
(84, 'Yessimar Alvarez', '', '2013-03-05', '08:16:48', '14:42:10', '6.43', 4, 'ID Vacio'),
(85, 'Yessimar Alvarez', '', '2013-03-06', '14:27:20', '18:24:11', '3.95', 4, 'ID Vacio'),
(86, 'Yessimar Alvarez', '', '2013-03-07', '14:29:42', '16:04:52', '1.59', 4, 'ID Vacio'),
(87, 'Yessimar Alvarez', '', '2013-03-08', '16:04:21', '16:31:44', '0.45', 4, 'ID Vacio'),
(88, 'Jose Alejandro Jara', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(89, 'Lenin Dario Gonzalez', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(90, 'Veronica Ramos', '', '2013-03-07', '07:55:50', '13:56:36', '6.01', 4, 'ID Vacio'),
(91, 'Veronica Ramos', '', '2013-03-09', '07:40:03', '17:34:26', '9.90', 4, 'ID Vacio'),
(92, 'Nelvis Castillo', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(93, 'Richard Teran', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(94, 'Mariam Del Carmen Story', '', '2013-03-04', '09:23:04', '09:23:27', '0.00', 4, 'ID Vacio'),
(95, 'Mariam Del Carmen Story', '', '2013-03-05', '10:00:47', '14:53:52', '4.88', 4, 'ID Vacio'),
(96, 'Mariam Del Carmen Story', '', '2013-03-06', '08:49:54', '17:00:33', '8.18', 4, 'ID Vacio'),
(97, 'Cesar Alexander Suarez', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(98, 'Carlos Enrique Story', '\0"\0k\0k\0d\0j\0g', '0000-00-00', '00:00:00', '00:00:00', '0.00', 2, 'Carlos Enrique Story,\0 \0"\0"\0,\0"\0k\0k\0d\0j\0g\0h\0k\0j\0d\0f\0g\0h\0"\0,\0"\09\08\07\05\09\03\08\02\06\07\0&\0%\0&\0%\0$\0"\0,\0 \0"\0"\0,\0 \0"\00\04\0/\00\03\0/\02\00\01\03\0"\0,\0 \0"\00\01\0:\04\01\0:\01\09\0"\0,\0 \0"\00\09\0:\02\07\0:\03\09\0"\0,\0 \0"\01\01\0:\00\08\0:\05\08\0"\0\r\0,'),
(99, 'Carlos Enrique Story', '', '2013-03-05', '08:54:05', '10:13:06', '1.32', 4, 'ID Vacio'),
(100, '', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 3, '\0"\0E\0l\0a\0i\0n\0e\0 \0C\0a\0r\0o\0l\0i\0n\0a\0 \0D\0u\0q\0u\0e\0"\0,\0 \0"\0"\0,\0 \0"\0"\0,\0 \0"\0"\0,\0 \0"\0"\0\r\0,'),
(101, 'Victor De Sousa', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(102, 'Karla Alexandra Story', '', '2013-03-04', '08:26:36', '17:15:19', '8.82', 4, 'ID Vacio'),
(103, 'Karla Alexandra Story', '', '2013-03-05', '08:08:24', '17:11:36', '9.05', 4, 'ID Vacio'),
(104, 'Karla Alexandra Story', '', '2013-03-06', '09:07:04', '09:07:24', '0.00', 4, 'ID Vacio'),
(105, 'Karla Alexandra Story', '', '2013-03-07', '08:30:35', '15:59:53', '7.48', 4, 'ID Vacio'),
(106, 'Victor Viega', '', '2013-03-04', '11:33:33', '12:56:56', '1.38', 4, 'ID Vacio'),
(107, 'Mariza Betancourt', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(108, 'Pedro Ojeda', '', '2013-03-04', '09:24:54', '09:34:46', '0.17', 4, 'ID Vacio'),
(109, 'Pedro Ojeda', '', '2013-03-05', '09:28:15', '09:45:32', '0.28', 4, 'ID Vacio'),
(110, 'Pedro Ojeda', '', '2013-03-06', '15:06:59', '19:25:02', '4.32', 4, 'ID Vacio'),
(111, 'Pedro Ojeda', '', '2013-03-07', '10:09:35', '18:34:35', '8.42', 4, 'ID Vacio'),
(112, 'Laura  Hernandez', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(113, 'Nicole Andrea Story', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(114, 'Tania Macias', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(115, 'Mariana Bolivar', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(116, 'Miguel Bolivar', '', '2013-03-04', '18:58:42', '19:34:29', '0.60', 4, 'ID Vacio'),
(117, 'Miguel Bolivar', '', '2013-03-05', '16:08:33', '16:23:01', '0.25', 4, 'ID Vacio'),
(118, 'Miguel Bolivar', '', '2013-03-06', '19:10:21', '19:22:46', '0.20', 4, 'ID Vacio'),
(119, 'Miguel Bolivar', '', '2013-03-07', '16:59:52', '17:36:09', '0.62', 4, 'ID Vacio'),
(120, 'Miguel Bolivar', '', '2013-03-09', '08:03:40', '13:36:29', '5.55', 4, 'ID Vacio'),
(121, 'Dimargy Medina', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 4, 'ID VacioFecha Vacia'),
(122, 'Jennifer Cardenas', '', '2013-03-05', '10:02:54', '17:32:03', '7.50', 4, 'ID Vacio'),
(123, 'Jennifer Cardenas', '', '2013-03-06', '15:06:14', '17:55:06', '2.82', 4, 'ID Vacio'),
(124, 'Jennifer Cardenas', '', '2013-03-07', '10:09:05', '10:09:07', '0.00', 4, 'ID Vacio'),
(125, '', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 1, 'Linea Vacia'),
(126, '', '', '0000-00-00', '00:00:00', '00:00:00', '0.00', 1, 'Linea Vacia');
