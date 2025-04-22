-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2025 a las 05:38:05
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
-- Base de datos: `cupon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupon`
--

CREATE TABLE `cupon` (
  `id_cupon` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cupon`
--

INSERT INTO `cupon` (`id_cupon`, `codigo`, `descuento`) VALUES
(1, 'DIEGOREYES2025', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio` int(11) NOT NULL,
  `url_imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `id_cupon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `url_imagen`, `stock`, `id_cupon`) VALUES
(1, 'Celestron - Telescopio NexStar 8SE', 'El NexStar 8SE es un telescopio computarizado de alto rendimiento que combina tecnología avanzada con facilidad de uso. Su espejo primario de 8 pulgadas (203mm) ofrece imágenes brillantes y detalladas de planetas, nebulosas y galaxias. La montura motorizada Goto permite localizar automáticamente más de 40,000 objetos celestes con solo presionar un botón, gracias a su sistema SkyAlign para alineamiento rápido. Incluye ocular de 25mm, controlador manual y software educativo. Ideal para observadores intermedios y avanzados que buscan precisión y portabilidad.', 1599, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrJciTD-GllUePcKGhSV33KV99L2beBy2smg&s', 8, 1),
(2, 'Sky-Watcher - Telescopio Refractor 120mm EQ3', 'Este telescopio refractor profesional destaca por su lente acromática de 120mm, que reduce aberraciones cromáticas para imágenes nítidas. La montura ecuatorial EQ3 ofrece seguimiento preciso de planetas, la Luna y estrellas dobles. Perfecto para aficionados que desean adentrarse en la astronomía óptica, con capacidad limitada para astrofotografía básica.', 899, 'https://m.media-amazon.com/images/I/711XoZ4AvOL.jpg', 5, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`id_cupon`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_cupon` (`id_cupon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
