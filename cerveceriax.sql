-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-06-2023 a las 21:23:50
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceriax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(15, 'CERVEZA ROJA', 'Ale', 'enaltecida por las cervecerías inglesas durante muchas décadas, estas son generalmente más robustas y complejas. Ofrecen sabores afrutados, nueces y notas malteadas. Elaboradas con levadura de fermentación superior, a temperatura de bodega, las cervezas suelen ser de color marrón o rojizo y tienen un cuerpo completo y son más sazonadas que las lager.'),
(16, 'CERVEZA RUBIA', 'Lager', 'incluyendo Pilsner, esta es la cerveza más popular del mundo. Originarias de Alemania, las lager se almacenan generalmente a temperaturas muy frías durante períodos más prolongados, lo que les confiere un acabado suave y crujiente. Si bien el color y la sensación en la boca pueden variar enormemente, la gran mayoría son de color amarillo pálido / dorado con una alta carbonatación y una intensidad de lúpulo media'),
(17, 'CERVEZA IPA', 'Lambic', 'este tipo de cerveza utiliza levadura que se encuentra naturalmente en el aire y generalmente toma mucho más tiempo en producirse. Puede ser bastante amarga en sabor. La consistencia es muy difícil de lograr por la combinación de lugares comunes y grandes cantidades de lúpulo que se usan a menudo, debido a sus propiedades protectoras.'),
(7, 'CERVEZA NEGRA', 'Stout o Porter', 'famosas en Dublín, las stouts son de color oscuro, típicamente ricas y cremosas en textura. La fermentación superior y el uso de cebada tostada sin maltear, entrega notas de cereales y café y prestan un carácter más oscuro.\r\n\r\nLas porter son ligeramente diferentes, con características más frutales; También se usa la fermentación superior, pero esta cerveza normalmente tendrá un cuerpo más ligero y un acabado más seco que fuerte.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'chiche', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'anis', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
