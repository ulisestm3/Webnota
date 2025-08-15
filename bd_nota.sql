-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2025 a las 17:17:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_nota`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_Alumno` int(8) NOT NULL,
  `No_Carnet` varchar(10) DEFAULT NULL,
  `Nombre_Completo` varchar(50) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Carrera` varchar(50) DEFAULT NULL,
  `Turno` varchar(20) DEFAULT NULL,
  `Cursa` varchar(30) DEFAULT NULL,
  `Activo` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Id_Alumno`, `No_Carnet`, `Nombre_Completo`, `Cedula`, `Direccion`, `Telefono`, `Carrera`, `Turno`, `Cursa`, `Activo`) VALUES
(1, '1', 'Ulises Zuniga', '12345678978X', 'Managua', '8884444', 'Ingenieria en Sistemas', 'Sabatino', 'IV', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `Id` int(8) NOT NULL,
  `No_Carnet` varchar(10) NOT NULL,
  `Alumno` varchar(50) NOT NULL,
  `Carrera` varchar(50) NOT NULL,
  `Turno` varchar(20) NOT NULL,
  `Asignatura` varchar(30) NOT NULL,
  `Facultad` varchar(30) NOT NULL,
  `Anulado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`Id`, `No_Carnet`, `Alumno`, `Carrera`, `Turno`, `Asignatura`, `Facultad`, `Anulado`) VALUES
(1, '2201001164', 'Ulises Zuniga', 'Ingenieria en Sistemas', 'Sabatino', 'Desarrollo Web', 'Ingeniería en Sistemas', 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `Id` int(11) NOT NULL,
  `Codigo` varchar(10) DEFAULT NULL,
  `Asignatura` varchar(50) DEFAULT NULL,
  `Facultad` varchar(50) DEFAULT NULL,
  `Horas_Teoricas` int(3) DEFAULT NULL,
  `Horas_Practicas` int(3) DEFAULT NULL,
  `Activo` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`Id`, `Codigo`, `Asignatura`, `Facultad`, `Horas_Teoricas`, `Horas_Practicas`, `Activo`) VALUES
(1, '1', 'Desarrollo Web', 'Ingeniería en Sistemas', 8, 8, 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `Id` int(11) NOT NULL,
  `No_Carnet` varchar(10) NOT NULL,
  `Nombre_Completo` varchar(50) NOT NULL,
  `Carrera` varchar(50) NOT NULL,
  `Asignatura` varchar(30) NOT NULL,
  `Turno` varchar(20) NOT NULL,
  `Acumulado` int(2) NOT NULL,
  `Exa_Final` int(2) NOT NULL,
  `Nota_Final` int(3) NOT NULL,
  `Anulado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`Id`, `No_Carnet`, `Nombre_Completo`, `Carrera`, `Asignatura`, `Turno`, `Acumulado`, `Exa_Final`, `Nota_Final`, `Anulado`) VALUES
(1, '2201001164', 'Ulises Zuniga', 'Ingenieria en Sistemas', 'Desarrollo Web', 'Sabatino', 60, 40, 100, 'No'),
(2, '2201001164', 'Ulises Zuniga', 'Ingenieria en Sistemas', 'Desarrollo Web', 'Sabatino', 60, 40, 100, 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(6) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Usuario`, `Password`, `Nombre_Usuario`, `Tipo`) VALUES
(1, 'admin', '123', 'UNIVALLE', 'ADMINISTRADOR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumno`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_Alumno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
