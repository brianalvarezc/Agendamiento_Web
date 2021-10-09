-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2021 a las 05:14:32
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agendamientoweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorizacion`
--

CREATE TABLE `autorizacion` (
  `autorizacion_Id` int(15) NOT NULL,
  `autorizacion_Entidad_Id` int(15) NOT NULL,
  `autorizacion_Paciente_Id` int(15) NOT NULL,
  `autorizacion_fecha` date NOT NULL,
  `autorizacion_Estado_Id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autorizacion`
--

INSERT INTO `autorizacion` (`autorizacion_Id`, `autorizacion_Entidad_Id`, `autorizacion_Paciente_Id`, `autorizacion_fecha`, `autorizacion_Estado_Id`) VALUES
(1, 1, 1, '2021-10-06', 1),
(2, 1, 1, '2021-10-12', 2),
(4, 1, 1, '2021-10-18', 1),
(5, 1, 1, '2021-10-30', 2),
(6, 1, 1, '2021-10-16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `cita_Id` int(10) NOT NULL,
  `cita_Fecha` date NOT NULL,
  `cita_Hora` time(6) NOT NULL,
  `cita_Autorizacion_Id` int(10) NOT NULL,
  `cita_Entidad_Id` int(10) NOT NULL,
  `cita_Paciente_Id` int(10) NOT NULL,
  `cita_Medico_Id` int(10) NOT NULL,
  `cita_Estado_Id` int(1) NOT NULL,
  `cita_Ubicacion` varchar(300) NOT NULL,
  `cita_Consultorio_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`cita_Id`, `cita_Fecha`, `cita_Hora`, `cita_Autorizacion_Id`, `cita_Entidad_Id`, `cita_Paciente_Id`, `cita_Medico_Id`, `cita_Estado_Id`, `cita_Ubicacion`, `cita_Consultorio_Id`) VALUES
(1, '2021-10-06', '08:00:00.000000', 1, 1, 1, 1, 1, 'https://www.google.com/maps/place/Grupsalud+33-6/@11.2325884,-74.1767595,18.71z/data=!4m5!3m4!1s0x8ef4f573e6ebe67f:0x7945a6af2fb57178!8m2!3d11.2325809!4d-74.1768343?hl=es', 1),
(2, '2021-10-07', '09:00:00.000000', 1, 1, 1, 1, 1, 'https://www.google.com/maps/place/Centro+Integral+de+Salud+San+Gabriel+IPS+S.A.S./@11.2322691,-74.1767377,19.46z/data=!4m12!1m6!3m5!1s0x8ef4f573e6ebe67f:0x7945a6af2fb57178!2sGrupsalud+33-6!8m2!3d11.2325809!4d-74.1768343!3m4!1s0x8ef4f5477386cb6d:0xa001d309c033ef10!8m2!3d11.2324567!4d-74.1766978?hl=es', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorio`
--

CREATE TABLE `consultorio` (
  `consultorio_Id` int(15) NOT NULL,
  `consultorio_Nombre` varchar(100) NOT NULL,
  `consultorio_Ubicacion` varchar(300) NOT NULL COMMENT 'la longitud de su dato es debido a lo extenso del link de Google Maps',
  `consultorio_Estado_Id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultorio`
--

INSERT INTO `consultorio` (`consultorio_Id`, `consultorio_Nombre`, `consultorio_Ubicacion`, `consultorio_Estado_Id`) VALUES
(1, 'Consultorio0', 'https://www.google.com/maps/place/Grupsalud+33-6/@11.2325187,-74.1770454,20.33z/data=!4m5!3m4!1s0x8ef4f573e6ebe67f:0x7945a6af2fb57178!8m2!3d11.2325809!4d-74.1768343?hl=es', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad`
--

CREATE TABLE `entidad` (
  `entidad_Id` int(15) NOT NULL,
  `entidad_Nombre` varchar(100) NOT NULL,
  `entidad_Estado_Id` int(1) NOT NULL,
  `entidad_Direccion` varchar(100) NOT NULL,
  `entidad_Telefono` int(10) NOT NULL,
  `entidad_Tarifa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entidad`
--

INSERT INTO `entidad` (`entidad_Id`, `entidad_Nombre`, `entidad_Estado_Id`, `entidad_Direccion`, `entidad_Telefono`, `entidad_Tarifa`) VALUES
(1, 'Entidad0', 1, 'Calle 1E#1-1', 1010101010, 50000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `estado_Id` int(1) NOT NULL,
  `estado_Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`estado_Id`, `estado_Nombre`) VALUES
(1, 'Habilitado'),
(2, 'Deshabilitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `medico_Id` int(15) NOT NULL,
  `medico_Nombre` varchar(100) NOT NULL,
  `medico_RegistroMedico` varchar(15) NOT NULL,
  `medico_Email` int(100) NOT NULL,
  `medico_Telefono` int(10) NOT NULL,
  `medico_Foto` varchar(100) NOT NULL,
  `medico_Estado_Id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`medico_Id`, `medico_Nombre`, `medico_RegistroMedico`, `medico_Email`, `medico_Telefono`, `medico_Foto`, `medico_Estado_Id`) VALUES
(1, 'Medico0', 'Registro0', 0, 0, 'medico0.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `paciente_Id` int(15) NOT NULL,
  `paciente_Nombre` varchar(100) NOT NULL,
  `paciente_Direccion` varchar(100) NOT NULL,
  `paciente_Telefono` int(10) NOT NULL,
  `paciente_Email` varchar(100) NOT NULL,
  `paciente_Foto` varchar(100) DEFAULT NULL,
  `paciente_Estado_Id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`paciente_Id`, `paciente_Nombre`, `paciente_Direccion`, `paciente_Telefono`, `paciente_Email`, `paciente_Foto`, `paciente_Estado_Id`) VALUES
(1, 'Paciente0', 'Calle 0#0-0', 1111111111, 'paciente0@mail.com', 'paciente0.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_Id` int(15) NOT NULL,
  `usuario_Nombre` varchar(100) NOT NULL,
  `usuario_Tipo` varchar(100) NOT NULL,
  `usuario_passw` varchar(15) NOT NULL,
  `usuario_Estado_Id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_Id`, `usuario_Nombre`, `usuario_Tipo`, `usuario_passw`, `usuario_Estado_Id`) VALUES
(1, 'adminagendamiento', 'Administrador', 'admin123456+', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autorizacion`
--
ALTER TABLE `autorizacion`
  ADD PRIMARY KEY (`autorizacion_Id`),
  ADD KEY `prueba5` (`autorizacion_Estado_Id`),
  ADD KEY `autorizacion_Id_Entidad` (`autorizacion_Entidad_Id`),
  ADD KEY `autorizacion_Id_Paciente` (`autorizacion_Paciente_Id`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`cita_Id`),
  ADD KEY `cita_Autorizacion_Id` (`cita_Autorizacion_Id`),
  ADD KEY `cita_Consultorio_Id` (`cita_Consultorio_Id`),
  ADD KEY `cita_Entidad_Id` (`cita_Entidad_Id`),
  ADD KEY `cita_Estado_Id` (`cita_Estado_Id`),
  ADD KEY `cita_Medico_Id` (`cita_Medico_Id`),
  ADD KEY `cita_Paciente_Id` (`cita_Paciente_Id`);

--
-- Indices de la tabla `consultorio`
--
ALTER TABLE `consultorio`
  ADD PRIMARY KEY (`consultorio_Id`),
  ADD KEY `consultorio_Estado_Id` (`consultorio_Estado_Id`);

--
-- Indices de la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`entidad_Id`),
  ADD KEY `entidad_Estado_Id` (`entidad_Estado_Id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`estado_Id`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`medico_Id`),
  ADD KEY `medico_Estado_Id` (`medico_Estado_Id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`paciente_Id`),
  ADD KEY `paciente_Estado_Id` (`paciente_Estado_Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_Id`),
  ADD KEY `usuario_Estado_Id` (`usuario_Estado_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autorizacion`
--
ALTER TABLE `autorizacion`
  MODIFY `autorizacion_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `cita_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `consultorio`
--
ALTER TABLE `consultorio`
  MODIFY `consultorio_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entidad`
--
ALTER TABLE `entidad`
  MODIFY `entidad_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `estado_Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `medico_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `paciente_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autorizacion`
--
ALTER TABLE `autorizacion`
  ADD CONSTRAINT `autorizacion_ibfk_1` FOREIGN KEY (`autorizacion_Entidad_Id`) REFERENCES `entidad` (`entidad_Id`),
  ADD CONSTRAINT `autorizacion_ibfk_2` FOREIGN KEY (`autorizacion_Paciente_Id`) REFERENCES `paciente` (`paciente_Id`),
  ADD CONSTRAINT `prueba5` FOREIGN KEY (`autorizacion_Estado_Id`) REFERENCES `estados` (`estado_Id`);

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`cita_Autorizacion_Id`) REFERENCES `autorizacion` (`autorizacion_Id`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`cita_Consultorio_Id`) REFERENCES `consultorio` (`consultorio_Id`),
  ADD CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`cita_Entidad_Id`) REFERENCES `entidad` (`entidad_Id`),
  ADD CONSTRAINT `cita_ibfk_4` FOREIGN KEY (`cita_Estado_Id`) REFERENCES `estados` (`estado_Id`),
  ADD CONSTRAINT `cita_ibfk_5` FOREIGN KEY (`cita_Medico_Id`) REFERENCES `medico` (`medico_Id`),
  ADD CONSTRAINT `cita_ibfk_6` FOREIGN KEY (`cita_Paciente_Id`) REFERENCES `paciente` (`paciente_Id`);

--
-- Filtros para la tabla `consultorio`
--
ALTER TABLE `consultorio`
  ADD CONSTRAINT `consultorio_ibfk_1` FOREIGN KEY (`consultorio_Estado_Id`) REFERENCES `estados` (`estado_Id`);

--
-- Filtros para la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD CONSTRAINT `entidad_ibfk_1` FOREIGN KEY (`entidad_Estado_Id`) REFERENCES `estados` (`estado_Id`);

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`medico_Estado_Id`) REFERENCES `estados` (`estado_Id`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`paciente_Estado_Id`) REFERENCES `estados` (`estado_Id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuario_Estado_Id`) REFERENCES `estados` (`estado_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
