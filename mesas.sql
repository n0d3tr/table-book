-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 11-11-2019 a las 21:12:22
-- Versión del servidor: 8.0.1-dmr
-- Versión de PHP: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `table_book`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--
CREATE DATABASE table_book;
USE table_book;

CREATE TABLE `mesas` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal_id` int(10) UNSIGNED NOT NULL,
  `identificador` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacidad` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libre',
  `table_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `sucursal_id`, `identificador`, `capacidad`, `status`, `table_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', 10, 'libre', 1, '2019-11-08 15:18:08', NULL),
(2, 1, 'A2', 8, 'libre', 1, '2019-11-08 15:18:08', '2019-11-08 15:20:04'),
(3, 1, 'A3', 10, 'reservada', 0, '2019-11-08 15:18:08', NULL),
(4, 1, 'B1', 6, 'libre', 1, '2019-11-08 15:18:08', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesas_sucursal_id_foreign` (`sucursal_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD CONSTRAINT `mesas_sucursal_id_foreign` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
