-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2019 a las 04:16:41
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `horaInicio` varchar(8) DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL,
  `horaFin` varchar(8) DEFAULT NULL,
  `diaCompleto` tinyint(1) DEFAULT NULL,
  `id_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `titulo`, `fechaInicio`, `horaInicio`, `fechaFin`, `horaFin`, `diaCompleto`, `id_usuario`) VALUES
(2, '', '0000-00-00 00:00:00', '07:00', '0000-00-00 00:00:00', '07:00', 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fechaNacimiento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `nombreCompleto`, `password`, `fechaNacimiento`) VALUES
(4, 'mflores@gmail.com', 'Mandy Flores', '$2y$10$6nu8XP632Ejy5NIXRc.YLuP.7heOFMg26z91/rQKOGOJAVg6.Z3oi', '1998-06-19 00:00:00'),
(5, 'mhernan157@hotmail.com', 'Miguel Mendoza', '$2y$10$VskS6jiKTzEpjyhoZ8GYXusVywv693W38ZcsjpOVQCVAQtoqdi3s.', '1978-12-10 00:00:00'),
(6, 'mhmendozat@gmail.com', 'Mijail Mendoza', '$2y$10$AnzavbcZItPn3mbesaaRdutFDsi0HfaZALNDtpJxSFn6OsN.li5.i', '2011-09-07 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
