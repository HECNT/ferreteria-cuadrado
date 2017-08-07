-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-08-2017 a las 04:48:34
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `compra_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `estatus_compra_id` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`compra_id`, `producto_id`, `estatus_compra_id`, `fecha_alta`) VALUES
(1, 1, 1, '2017-08-02 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_estatus`
--

CREATE TABLE `compra_estatus` (
  `compra_estatus_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra_estatus`
--

INSERT INTO `compra_estatus` (`compra_estatus_id`, `nombre`) VALUES
(1, 'ACTIVA'),
(2, 'CANCELADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_total`
--

CREATE TABLE `compra_total` (
  `compra_total_id` int(11) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `compra_total_estatus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra_total`
--

INSERT INTO `compra_total` (`compra_total_id`, `compra_id`, `compra_total_estatus_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_total_estatus`
--

CREATE TABLE `compra_total_estatus` (
  `compra_total_estatus_di` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra_total_estatus`
--

INSERT INTO `compra_total_estatus` (`compra_total_estatus_di`, `nombre`) VALUES
(1, 'ACTIVA'),
(2, 'CANCELADA'),
(3, 'ENTREGADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `departamento_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`departamento_id`, `nombre`, `activo`) VALUES
(1, 'FERRETERIA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `perfil_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`perfil_id`, `nombre`, `activo`) VALUES
(1, 'ADMINISTRADOR', 1),
(2, 'USUARIO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `precio` float NOT NULL,
  `disponibilidad` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `nombre`, `fecha_alta`, `usuario_id`, `precio`, `disponibilidad`, `departamento_id`, `activo`) VALUES
(1, 'BROCHA', '2017-08-01 00:00:00', 1, 102.5, 20, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `activo` int(11) NOT NULL,
  `notas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `nombre`, `password`, `mail`, `perfil_id`, `activo`, `notas`) VALUES
(1, 'admin', '12345', 'hecntdev@gmail.com', 1, 1, 'root');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`compra_id`);

--
-- Indices de la tabla `compra_estatus`
--
ALTER TABLE `compra_estatus`
  ADD PRIMARY KEY (`compra_estatus_id`);

--
-- Indices de la tabla `compra_total`
--
ALTER TABLE `compra_total`
  ADD PRIMARY KEY (`compra_total_id`);

--
-- Indices de la tabla `compra_total_estatus`
--
ALTER TABLE `compra_total_estatus`
  ADD PRIMARY KEY (`compra_total_estatus_di`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`departamento_id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`perfil_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `compra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `compra_estatus`
--
ALTER TABLE `compra_estatus`
  MODIFY `compra_estatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `compra_total`
--
ALTER TABLE `compra_total`
  MODIFY `compra_total_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `compra_total_estatus`
--
ALTER TABLE `compra_total_estatus`
  MODIFY `compra_total_estatus_di` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `departamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `perfil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
