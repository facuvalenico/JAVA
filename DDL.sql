--
-- Base de datos `agencia_bolsa`
--

DROP DATABASE IF EXISTS `agencia_bolsa`;
create database agencia_bolsa;

use agencia_bolsa;

--
-- Tabla `clientes`
--
CREATE TABLE `clientes` (
  `cli_id` int(10) NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(40) NOT NULL,
  `cli_apellido` varchar(40) NOT NULL,
  `cli_dni` int(20) NOT NULL,
  PRIMARY KEY (`cli_id`)
);
--
-- Table structure for table `acciones`
--
CREATE TABLE `acciones` (
  `acc_id` int(10) NOT NULL AUTO_INCREMENT,
  `acc_nombre` varchar(20) NOT NULL,
  `acc_empresa` varchar(40) NOT NULL,
  `acc_cotizacion` float(10,2) NOT NULL,
  PRIMARY KEY (`acc_id`)
);
--
-- Table structure for table `cuentasAcciones`
--
CREATE TABLE `cuentasAcciones` (
  `ctaAcc_id` int(10) NOT NULL AUTO_INCREMENT,
  `cli_id` int(10) NOT NULL,
  `acc_id` int(10) NOT NULL,
  `cantidad` int(20) NOT NULL,
  PRIMARY KEY (`ctaAcc_id`)
);
--
-- Table structure for table `monedas`
--
CREATE TABLE `monedas` (
  `mon_id` int(10) NOT NULL AUTO_INCREMENT,
  `mon_nombre` varchar(40) NOT NULL,
  `mon_paridadMonedaLocal` float(6,2) NOT NULL,
  PRIMARY KEY (`mon_id`)
);
--
-- Table structure for table `cuentasMonedas`
--
CREATE TABLE `cuentasMonedas` (
  `ctaMon_id` int(10) DEFAULT NULL AUTO_INCREMENT,
  `cli_id` int(10) NOT NULL,
  `mon_id` int(10) NOT NULL,
  `saldo` float(20,2) NOT NULL,
  PRIMARY KEY (`ctaMon_id`)
);





