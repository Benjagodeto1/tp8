-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2022 a las 21:17:53
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tablas`
--
CREATE DATABASE IF NOT EXISTS `tablas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tablas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `marca` varchar(250) NOT NULL,
  `modelo` varchar(250) NOT NULL,
  `precio` varchar(250) NOT NULL,
  `año` date NOT NULL,
  `foto` text NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `fechapublicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `marca`, `modelo`, `precio`, `año`, `foto`, `descripcion`, `fechapublicacion`) VALUES
(44, 'Renault', '12', '100000', '2022-11-03', 'https://www.renault.com.ar/agg/vn/unique/ONE_DACIA_PP_LARGE_DENSITY1/r_brandSite_carPicker_1.png?uri=https%3A%2F%2Far.co.rplug.renault.com%2Fproduct%2Fmodel%2FL4M%2Flogan%2Fc%2FA', 'renault', '2022-11-08'),
(45, 'Peugeot ', '205', '1000050', '2002-10-10', 'https://fotos.perfil.com/2021/05/02/trim/1280/720/peugeot-205-gld-1167001.jpg', 'autazo', '0000-00-00'),
(46, 'Chevrolet', 'Agile', '2200000', '2013-09-17', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQLap1UwF4nMQzTDmNzie5LEM5N2pCpE9DnJAvuSmR&s', 'otro autazo', '2022-11-08'),
(47, 'Chrevrolet', 'Classsic', '1500000', '2010-12-12', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBCSl8ZqsWZ5wh1C_mNJPVC5iICzPiyFi7Fpra_ryl&s', 'otro otro autazo', '2022-11-08'),
(48, 'audi', 'tt', '20000000', '2021-10-10', 'data:image/jpeg;base64,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', 'otro otro otro autazo', '2022-11-08'),
(49, 'fiat', '600', '600000', '1978-05-12', 'https://cdn.eldoce.tv/sites/default/files/styles/site_nota_slider_contenido/public/nota/2022/01/19/fiat6001.jpeg?itok=NNY2wPY6', 'nave nave nave', '2022-11-08'),
(50, 'Mc', 'RAYO', '999999999999999', '0001-01-01', 'data:image/jpeg;base64,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', 'MUYNAIS', '2022-11-08'),
(51, 'Ferrari', '123', '8990', '6675-05-05', 'si', 'epico', '2022-11-08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
