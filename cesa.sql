-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2020 a las 22:55:49
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cesa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacionproveedores`
--

CREATE TABLE `facturacionproveedores` (
  `CIF_PROVEEDOR` varchar(250) NOT NULL,
  `RAZ_PROVEEDOR` varchar(250) NOT NULL,
  `NUM_FACTURA` varchar(250) NOT NULL,
  `DES_FACTURA` varchar(250) NOT NULL,
  `BAS_IMPONIBLE` double NOT NULL,
  `IVA_IMPORTE` double NOT NULL,
  `TOT_IMPORTE` double NOT NULL,
  `FEC_FACTURA` date NOT NULL,
  `FEC_VENCIMIENTO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prov_comp`
--

CREATE TABLE `prov_comp` (
  `CIF_PROVEEDOR` varchar(250) NOT NULL,
  `RAZ_PROVEEDOR` varchar(250) NOT NULL,
  `REG_NOTARIAL` int(11) NOT NULL,
  `SEG_RESPONSABILIDAD` int(11) NOT NULL,
  `SEG_IMPORTE` double NOT NULL,
  `FEC_HOMOLOGACIÓN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facturacionproveedores`
--
ALTER TABLE `facturacionproveedores`
  ADD PRIMARY KEY (`CIF_PROVEEDOR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
