-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2020 a las 16:49:05
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectopwa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `IDCARRERA` varchar(10) NOT NULL,
  `NOMBRECARRERA` varchar(50) NOT NULL,
  `IDMAESTRO` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`IDCARRERA`, `NOMBRECARRERA`, `IDMAESTRO`) VALUES
('ISX', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', 'A25'),
('GE9', 'INGENIERÍA EN GESTIÓN EMPRESARIAL', 'M6'),
('FNGFB', 'BHFNHFD', 'M6'),
('TICS', 'INGENIERÍA EN TECNOLOGIAS DE LA INFORMACION', 'A25'),
('ING', 'PRUEBA', 'M6'),
('PPPP', 'PRUEBA', 'A25'),
('IND', 'INDUSTRIAL', 'M6'),
('PRUEBA3', 'PRUEBA3', 'A25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreramaestro`
--

CREATE TABLE `carreramaestro` (
  `IDCARRERA` varchar(10) NOT NULL,
  `IDMAESTRO` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreramaestro`
--

INSERT INTO `carreramaestro` (`IDCARRERA`, `IDMAESTRO`) VALUES
('A25', 'A25'),
('0', 'A03'),
('ISX', 'A02'),
('ISX', 'A03'),
('ISX', 'A01'),
('ISX', 'A02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `IDGRUPO` varchar(10) NOT NULL,
  `IDMAESTRO` varchar(10) NOT NULL,
  `IDCARRERA` varchar(10) NOT NULL,
  `IDMATERIA` varchar(10) NOT NULL,
  `PERIODO` varchar(30) NOT NULL,
  `GRUPO` varchar(10) NOT NULL,
  `AULA` varchar(20) NOT NULL,
  `NUMALUMNOS` varchar(20) NOT NULL,
  `TURNO` varchar(50) NOT NULL,
  `LUNES` varchar(30) DEFAULT NULL,
  `MARTES` varchar(30) DEFAULT NULL,
  `MIERCOLES` varchar(30) DEFAULT NULL,
  `JUEVES` varchar(30) DEFAULT NULL,
  `VIERNES` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`IDGRUPO`, `IDMAESTRO`, `IDCARRERA`, `IDMATERIA`, `PERIODO`, `GRUPO`, `AULA`, `NUMALUMNOS`, `TURNO`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`) VALUES
('G01', 'A02', 'ISX', 'AED1026', 'Agosto-Diciembre2020', 'A', 'D12', '20', 'Matutino', '7:00-8:40', '', '7:00-8:40', '', '08:45-09:35'),
('G02', 'A01', 'ISX', 'SCF1006', 'Agosto-Diciembre2020', 'C', 'F08', '15', 'Matutino', '', '12:15-13:55', '', '12:15-13:55', '13:05-13:55'),
('G03', 'A01', 'ISX', 'SCC1017', 'Agosto-Diciembre2020', 'A', 'H10', '25', 'Matutino', '', '10:30-12:15', '', '10:30-12:15', ''),
('G04', 'A03', 'ISX', 'ACF0901', 'Agosto-Diciembre2020', 'B', 'D03', '20', 'Matutino', '7:00-8:40', '', '7:00-8:40', '', '08:45-09:35'),
('G05', 'A25', 'ISX', 'ACF0901', 'Agosto-Diciembre2020', 'E', 'D05', '25', 'Matutino', '', '10:30-12:15', '', '10:30-12:15', '10:30-11:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `IDMAESTRO` varchar(10) NOT NULL,
  `NOMBREMAESTRO` varchar(30) NOT NULL,
  `CORREO` varchar(50) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `DEPARTAMENTO` varchar(50) NOT NULL,
  `IDUSUARIO` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maestro`
--

INSERT INTO `maestro` (`IDMAESTRO`, `NOMBREMAESTRO`, `CORREO`, `TELEFONO`, `DEPARTAMENTO`, `IDUSUARIO`) VALUES
('A01', 'JOSE LUIS SUAREZ Y GOMEZ', 'SUAREZ@LEON.TECNM.MX', '4771112220', 'SISTEMAS COMPUTACIONALES', 'U1'),
('A02', 'DOMINGO GARCIA ORNELAS', 'DOMINGO@LEON.TECNM.MX', '4775550000', 'SISTEMAS COMPUTACIONALES', 'U2'),
('A03', 'EDNA MILITZA MARTINEZ PRADO', 'MILITZA@LEON.TECNM.MX', '4772220000', 'SISTEMAS COMPUTACIONALES', 'U3'),
('A25', 'ANTONIO AGUILA REYES', 'AGUILA@LEON.TECNM.MX', '4773330000', 'SISTEMAS COMPUTACIONALES', 'U4'),
('M6', 'TAPIA TAPIA', 'tapia@correo.com', '47789901236', 'CIENCIAS BÁSICAS', 'U6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `IDMATERIA` varchar(10) NOT NULL,
  `NOMBREMATERIA` varchar(50) NOT NULL,
  `SEMESTRE` varchar(50) NOT NULL,
  `CREDITOS` varchar(20) NOT NULL,
  `HT` varchar(20) NOT NULL,
  `HP` varchar(20) NOT NULL,
  `IDCARRERA` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`IDMATERIA`, `NOMBREMATERIA`, `SEMESTRE`, `CREDITOS`, `HT`, `HP`, `IDCARRERA`) VALUES
('ACF0901', 'Calculo Diferencial', '1', '5', '3', '2', ''),
('AED1026', 'Estructura de datos', '3', '5', '2', '3', ''),
('SCF1006', 'Fisica General', '3', '5', '3', '2', ''),
('SCC1017', 'Metodos numericos', '4', '4', '2', '2', ''),
('SCA1025', 'Taller de base de datos', '5', '4', '1', '3', ''),
('DCDSLC', 'DFFFFFD', '4', '4', '4', '4', 'FNGFB'),
('ASSNFJNJK', 'CALCULO VECTORIAL', '3', '5', '3', '2', 'GE9'),
('MQ', 'REDES', '0', '4', '1', '2', 'TICS'),
('P', 'PRUEBA', '2', '4', '2', '2', 'ISX'),
('IAA', 'INTELIGENCIA ARTIFICIAL', '9', '4', '2', '2', 'ISX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IDUSUARIO` varchar(50) NOT NULL,
  `USUARIO` varchar(50) NOT NULL,
  `CONTRASENA` varchar(50) NOT NULL,
  `TIPO` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IDUSUARIO`, `USUARIO`, `CONTRASENA`, `TIPO`) VALUES
('U1', 'suarez.gomez', '1234', 3),
('U2', 'domingo.ornelas', '1234', 3),
('U3', 'militza.prado', '1234', 3),
('U4', 'antonio.reyes', '1234', 2),
('U5', 'admin', '1234', 1),
('U6', 'tapia', '1234', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`IDCARRERA`),
  ADD KEY `FK_IDMAESTRO` (`IDMAESTRO`);

--
-- Indices de la tabla `carreramaestro`
--
ALTER TABLE `carreramaestro`
  ADD KEY `FK_IDCARRERA` (`IDCARRERA`),
  ADD KEY `FK_IDMAESTRO` (`IDMAESTRO`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`IDGRUPO`),
  ADD KEY `FK_MATERIA` (`IDMATERIA`),
  ADD KEY `FK_MAESTRO` (`IDMAESTRO`),
  ADD KEY `FK_CARRERA` (`IDCARRERA`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`IDMAESTRO`),
  ADD KEY `FK_IDUSUARIO` (`IDUSUARIO`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`IDMATERIA`),
  ADD KEY `FK_IDCARRERA` (`IDCARRERA`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IDUSUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
