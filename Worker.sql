-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-03-2021 a las 19:17:58
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Trabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Worker`
--

UPDATE TABLE worker (
  `id` int(11) DEFAULT NULL,
  `init_date` varchar(120) DEFAULT NULL,
  `Consultor` varchar(120) DEFAULT NULL,
  `candidate` varchar(120) DEFAULT NULL,
  `cedula` varchar(120) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `phone_number` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `catchment_source` varchar(120) DEFAULT NULL,
  `managment` varchar(120) DEFAULT NULL,
  `vacant` varchar(120) DEFAULT NULL,
  `interview_date` varchar(120) DEFAULT NULL,
  `actual_charge` varchar(120) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `sector` varchar(120) DEFAULT NULL,
  `coin` varchar(120) DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `variable_salary` int(11) DEFAULT NULL,
  `cesta_ticket` int(11) DEFAULT NULL,
  `Profit_Days` int(11) DEFAULT NULL,
  `vacations` int(11) DEFAULT NULL,
  `Vacation_Bonus` int(11) DEFAULT NULL,
  `Factor` int(11) DEFAULT NULL,
  `Estimated_annual_package` int(11) DEFAULT NULL,
  `Production_bonus` varchar(120) DEFAULT NULL,
  `Transport_bonus` varchar(120) DEFAULT NULL,
  `Savings_Bank` varchar(120) DEFAULT NULL,
  `sales_commissions` varchar(120) DEFAULT NULL,
  `parking_payment` varchar(120) DEFAULT NULL,
  `full_HCM_Emp_Family` varchar(120) DEFAULT NULL,
  `partial_HCM_Emp_Family` varchar(120) DEFAULT NULL,
  `Vehicle_insurance` varchar(120) DEFAULT NULL,
  `life_insurance` varchar(120) DEFAULT NULL,
  `dinning_room` varchar(120) DEFAULT NULL,
  `food_bags` varchar(120) DEFAULT NULL,
  `Observations` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Worker`
--

INSERT INTO worker (`id`, `init_date`, `Consultor`, `candidate`, `cedula`, `status`, `phone_number`, `email`, `catchment_source`, `managment`, `vacant`, `interview_date`, `actual_charge`, `company`, `sector`, `coin`, `basic_salary`, `variable_salary`, `cesta_ticket`, `Profit_Days`, `vacations`, `Vacation_Bonus`, `Factor`, `Estimated_annual_package`, `Production_bonus`, `Transport_bonus`, `Savings_Bank`, `sales_commissions`, `parking_payment`, `full_HCM_Emp_Family`, `partial_HCM_Emp_Family`, `Vehicle_insurance`, `life_insurance`, `dinning_room`, `food_bags`, `Observations`) VALUES
(1, 'marzo', 'Estefany De Sousa', 'Juan Carlos Rosendo', 0, 'Citado a entrevista', '4122837931', 'rosendojuanrovati95@hotmail.com', 'Redes sociales', 'Servicio al Cliente', 'PASANTE', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'marzo', 'Estefany De Sousa', 'Oscar Guzman', 14196321, 'No elegible por entrevista GH', '414 1399095', 'Oscarjga80@gmail.com', 'Empléate', 'Mercadeo y Ventas', 'ASESOR DE NEGOCIOS', '3/2/21', 'INDEPENDIENTE', 'CUENTA PROPIA', '', '80', 0, 0, 0, 0, 0, 0, 0, 80, '', '', '', '', '', '', '', '', '', '', '', 'No elegible, no cumple con el perfil. '),
(4, 'marzo', 'Estefany De Sousa', 'Jesús Rodriguez Mendez', 0, 'No elegible por entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', 'ADMINISTRADOR DE INFRAESTRUCTURA', 'SOLITECH', 'TECNOLOGÍA', '', 0, 0, 0, 0, 0, 0, 0, 200, '', '', '', '', '', '', '', '', '', '', '', 'No elegible / no posee los conocimientos técnicos. Trabaja por honorarios profesionales'),
(8, 'marzo', 'Estefany De Sousa', 'Estefanía Castillo', 0, 'Citado a entrevista', '4163223810', 'castilloee22@gmail.com', 'Redes sociales', 'Servicio al Cliente', 'PASANTE', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'marzo', 'Estefany De Sousa', 'Denis Peña', 9953432, 'Elegible entrevista GH', '0412-7192030', 'denispena@hotmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/3/21', 'SUPERVISOR DE SOPORTE', 'PWC VENEZUELA', 'CONSULTORES', '166', 6500000, 0, 1200000, 120, 21, 15, 0, 166, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(10, 'marzo', 'Estefany De Sousa', 'Andrés Lira', 18033728, 'Elegible entrevista GH', '0424 – 1866036', 'andreslira@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/3/21', 'JEFE DE TECNOLOGÍA', 'VENEZOLANA DE INVESTIGACIÓN', 'GOBIERNO', '100', 90000000, 0, 10000000, 80, 17, 17, 0, 100, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(11, 'marzo', 'Estefany De Sousa', 'Franklin González', 0, 'No elegible por entrevista GH', '0412-296-3026 / 0212-753-8757', 'franklingonzalez@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/3/21', 'ESPECIALISTA DE PLATAFORMA Y SOP. TÉCNICO', 'SMARTER SOLUTIONS', 'TECNOLOGÍA', '425', 0, 0, 0, 0, 0, 0, 0, 425, '', '', '', '', '', '', '', '', '', '', '', 'Entrevistado vía telefónica - no va a cambiar de empleo por menos de 550$'),
(12, 'marzo', 'Estefany De Sousa', 'José Abrahan Angel', 0, 'Citado a entrevista', '0412-8101714', 'abrahanangel@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'marzo', 'Estefany De Sousa', 'David Flores', 0, 'El area no lo quiso evaluar', '0412-5607462', 'davidrafaeflores@gmail.com', 'Otra', 'Servicio al Cliente', 'PASANTE', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'El área no lo quiso evaluar, lo consideró no elegible. '),
(14, 'marzo', 'Estefany De Sousa', 'Pedro Ricart', 0, 'Citado a entrevista', '0416-6158906', 'pcricart@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 'marzo', 'Estefany De Sousa', 'Hector Muñoz', 0, 'No asistió a la Entrevista Laboral', '412 7000060', 'hectormunoz08@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/15/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'marzo', 'Estefany De Sousa', 'Clarice Napolés', 0, 'Citado a entrevista Técnica', '0414-3180207', 'clarice.napoles@gmail.com', 'Empléate', 'Servicio al Cliente', 'PASANTE', '3/1/21', 'ESPECIALISTA JUNIOR ', 'BANPLUS - BANCO UNIVERSAL', 'FINANZAS', '', 1200000, 0, 400000, 120, 21, 15, 0, 2, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(17, 'marzo', 'Estefany De Sousa', 'Melix Carolina Acevedo', 0, 'No elegible por entrevista GH', '(414) 1315576', 'melix.acevedo@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/3/21', 'COORDINADOR IT', 'GRUPO MÁS 58, C.A', 'SERVICIOS', '400', 60000000, 0, 1200000, 0, 0, 0, 0, 400, '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'marzo', 'Estefany De Sousa', 'Niltom Castillo', 13978234, 'No asistió a la Entrevista Laboral', '424 2043115', 'niltom2020@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/5/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 'marzo', 'Estefany De Sousa', 'Ruben Quintero', 15832283, 'No asistió a la Entrevista Laboral', '424 2732626', 'Ruben.d.quintero@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 'marzo', 'Estefany De Sousa', 'José Antonio Benaventas', 14706959, 'Elegible entrevista GH', '0424) 273 88 67', 'joseantoniobenaventa@gmail.com', 'Linkedin', 'Mercadeo y Ventas', 'ASESOR DE NEGOCIOS', '3/1/21', 'Asesor inmobiliario', 'Century 21', 'Inmuebles', 'gana por comisiones', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'marzo', 'Estefany De Sousa', 'Rusbenia Ruíz', 0, 'Citado a entrevista Técnica', '0412-8200568', 'rusbeniaanaikaruz@gmail.com', 'Linkedin', 'Servicio al Cliente', 'PASANTE', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Pasada al área técnica'),
(22, 'marzo', 'Estefany De Sousa', 'Kevin Moreno ', 25252319, 'No elegible por entrevista GH', '4128052012', 'kevinmoreno2909@gmail.com', 'Empléate', 'Plataforma', 'ANALISTA DE PLATAFORMA JUNIOR', '3/9/21', 'ADMINISTRADOR DE SISTEMAS', 'ASAMBLEA NACIONAL ', 'PUBLICO/GUBERNAMENTAL', '', 3500000, 0, 1200000, 30, 15, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No elegible por GH - Su pérfil es muy junior - muy poca experticia en el  área. '),
(23, 'marzo', 'Estefany De Sousa', 'Johander Arrechedera', 20098853, 'Citado a entrevista GH', '0412 7312873', 'brouuck3@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'marzo', 'Estefany De Sousa', 'Jesús Sambrano', 17743697, 'No elegible entrevista técnica', '424 2768965', 'sambranogabriel2015@gmail.com', 'Empléate', 'Plataforma', 'ANALISTA DE PLATAFORMA JUNIOR', '3/9/21', 'ANALISTA DE SOPORTE E INFRAESTRUCTURA', 'PLANSUAREZ', 'CONSUMO MASIVO', '', 135000000, 0, 30000000, 40, 15, 15, 0, 250, 'Si', '', '', '', '', 'Si', '', '', '', '', '', 'No elegible en la entrevista técnica. '),
(26, 'marzo', 'Estefany De Sousa', 'Alexander Esteves', 20754288, 'Pre-empleo', '414 9230630', 'alexesteves1990@gmail.com', 'Empléate', 'Plataforma', 'ANALISTA DE PLATAFORMA JUNIOR', '3/11/21', 'ANALISTA DE SOPORTE NIVEL III', 'VGT-8', 'CONSULTORIA', '', 40000000, 0, 2000000, 60, 15, 15, 0, 60, 'Si', '', '', '', '', '', '', '', '', '', '', 'Por pasar al área tecnica.'),
(27, 'marzo', 'Estefany De Sousa', 'Denis Ibarra', 17474733, 'Citado a entrevista GH', '412 5434872', 'denis_ibarra33@hotmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'marzo', 'Estefany De Sousa', 'Rolando Vivas', 12114774, 'Citado a entrevista GH', '412 7213417', 'rolando.vivas.rivas@gmail.com', 'Empléate', 'Tecnología Técnica', 'ANALISTA - PROGRAMADOR IV', '3/10/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'marzo', 'Estefany De Sousa', 'Miguel Echenique', 13290301, 'No elegible por entrevista GH', '414 5471623', 'echenique_miguel2000@yahoo.es', 'Empléate', 'Plataforma', 'ANALISTA DE PLATAFORMA JUNIOR', '3/9/21', 'ANALISTA DE SISTEMAS', 'INVERSIONES BALSAM', 'OTRO', '', 144000000, 0, 400000, 30, 15, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No elegible por GH - No aprobó la prueba técnica  y no cumple con los conocimientos técnicos.'),
(30, 'marzo', 'Estefany De Sousa', 'Manuel Castillo', 17140807, 'No elegible por entrevista GH', '412 5429890', 'Mcastillo1785@gmail.com', 'Empléate', 'Plataforma', 'ANALISTA DE PLATAFORMA JUNIOR', '3/9/21', 'COORDINADOR DE SISTEMAS ', 'FEDERACIÓN VENEZOLANA DE FUTBOL ', 'PUBLICO/GUBERNAMENTAL', '', 0, 0, 1200000, 120, 15, 15, 0, 450, '', '', '', '', '', '', '', '', '', '', '', 'No elegible por GH - La compensación que percibe era cancelado en Bs al cambio. '),
(31, 'marzo', 'Estefany De Sousa', 'Jorge Torres', 0, 'En proceso', '0424-4600577', 'jorgtowers@gmail.com', 'Linkedin', 'Tecnología Técnica', 'ANALISTA - PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'marzo', 'Estefany De Sousa', 'Iliver Tortolero', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'marzo', 'Estefany De Sousa', 'Jesús Alfonso Gutierrez', 0, 'No elegible por entrevista GH', '4128152032', 'jesusguti1994@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', 'ESPECIALISTA DE INFRAESTRUCTURA', 'UBII PAGOS', 'FINANCIERO', '', 50000000, 0, 1200000, 120, 15, 15, 0, 400, 'Si', '', '', '', '', '', '', '', '', '', '', 'No elegible por aspiración salarial - ya devenga 400$ y aspira entre 500$ a 600$'),
(34, 'marzo', 'Estefany De Sousa', 'Jesús Enrique Rodriguez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'marzo', 'Estefany De Sousa', 'Jesús Mijares', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'marzo', 'Estefany De Sousa', 'Rafael López', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'marzo', 'Estefany De Sousa', 'Jesús Dalis Salazar', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'marzo', 'Estefany De Sousa', 'Luis Montoya', 0, 'Elegible entrevista Técnica', '4242111186', 'Luismontoyavillamizar@gmail.com', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/11/21', 'ANALISTA DE INFRAESTRUCTURA TECNOLÓGICA', 'DLIA TECNOLOGÍA', 'TECNOLOGICO', '', 36000000, 0, 1200000, 60, 30, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'En proceso de pasar al área técnica'),
(39, 'marzo', 'Estefany De Sousa', 'Miguel Bustamante', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'marzo', 'Estefany De Sousa', 'Jhoan Terán', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'marzo', 'Estefany De Sousa', 'Oscar Fagundes', 0, 'No elegible por entrevista GH', '0424-128-94-44/0412-544-16-03', 'Oscarf403@hotmail.com', 'Linkedin', 'Plataforma', 'ANALISTA DE PLATAFORMA JUNIOR', '3/11/21', 'ANALISTA DE TELECOMUNICACIONES', 'PATRIACELL, C.A', 'SERVICIOS', '', 1350000000, 0, 1200000, 90, 15, 15, 0, 75, 'Si', '', '', '', '', '', '', '', '', '', '', 'No cumple con los conocimientos técnicos - Reprobó la prueba técnica de infraestructura.'),
(42, 'marzo', 'Estefany De Sousa', 'Renec Cisneros', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'marzo', 'Estefany De Sousa', 'Enrique Guedez', 0, 'En proceso', '4241556826', 'eguedez1974@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/11/21', 'ANALISTA DE SOPORTE TÉCNICO', 'LATINON, C.A', 'SERVICIOS', '', 0, 0, 0, 0, 0, 0, 0, 160, '', '', '', '', '', '', '', '', '', '', '', 'En proceso de pasar al área técnica / su salario neto son sus 160$'),
(44, 'marzo', 'Estefany De Sousa', 'Ruben Gutierrez', 0, 'En proceso', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'marzo', 'Estefany De Sousa', 'Charles Holligton', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'marzo', 'Estefany De Sousa', 'Robert Oropeza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'marzo', 'Estefany De Sousa', 'Julio Díaz', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'marzo', 'Estefany De Sousa', 'Jefferon López', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 'marzo', 'Estefany De Sousa', 'Anais Molina', 0, 'Citado a entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'marzo', 'Estefany De Sousa', 'José Cordero', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'marzo', 'Estefany De Sousa', 'Jhait Perroni', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'marzo', 'Estefany De Sousa', 'Juan Pernett', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'marzo', 'Estefany De Sousa', 'Michelle Sestini', 0, 'No interesado', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Recibió la invitación a participar en el proceso mas indico no estar interesado.'),
(54, 'marzo', 'Estefany De Sousa', 'Joel Saavedra', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'marzo', 'Estefany De Sousa', 'Victor Ramón Hernandez', 0, 'En proceso', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'marzo', 'Estefany De Sousa', 'Luis Alejandro Gamboa', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'marzo', 'Estefany De Sousa', 'José Montilla', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'marzo', 'Estefany De Sousa', 'Arturo Ramírez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'marzo', 'Estefany De Sousa', 'Gabriel Hernández', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 'marzo', 'Estefany De Sousa', 'Miguel Quijada Díaz', 0, 'No elegible por entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'marzo', 'Estefany De Sousa', 'Cristian Brugman', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'marzo', 'Estefany De Sousa', 'Ivan Carrazano', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'marzo', 'Estefany De Sousa', 'José Mendoza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'marzo', 'Estefany De Sousa', 'Jony Acevedo', 0, 'No asistió a la Entrevista Laboral', '416 4041875', 'yonyace@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/15/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No asistió a la entrevista de trabajo. '),
(67, 'marzo', 'Estefany De Sousa', 'Marcos Torres', 0, 'Elegible entrevista Técnica', '424 2107995', 'mt58759@gmail.com', 'Empléate', 'Plataforma', 'ADMINISTRADOR DE PLATAFORMA', '3/15/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 'marzo', 'Estefany De Sousa', 'Luis Bernal', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'marzo', 'Estefany De Sousa', 'Victor Zambrano', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'marzo', 'Estefany De Sousa', 'Gabriel Sumoza', 0, 'No interesado', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No interesado, leyó la invitación a entrevista y no se recibió respuesta. '),
(74, 'marzo', 'Estefany De Sousa', 'Jheikson Vaamonde', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'marzo', 'Estefany De Sousa', 'Ramiro Antonio Miramón', 0, 'No interesado', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Se le contactó pero comunicó no estar interesado, ya está trabajando.'),
(76, 'marzo', 'Estefany De Sousa', 'Javier Alejandro Medina', 0, 'En proceso', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(77, 'marzo', 'Estefany De Sousa', 'Yoelvis Olivero', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'marzo', 'Estefany De Sousa', 'Pablo J Quintero', 0, 'Citado a entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No elegible, vive en Mérida. Sólo busca un empleo remoto.'),
(79, 'marzo', 'Estefany De Sousa', 'Arturo Gomez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 'marzo', 'Estefany De Sousa', 'Cristofher Parada', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'marzo', 'Estefany De Sousa', 'Elias Silva', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(82, 'marzo', 'Estefany De Sousa', 'Manuel Castillo', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'marzo', 'Estefany De Sousa', 'Kery Perez', 0, 'Abandono el proceso / No interesado en continuar', '414 5872261', 'kery.aph@gmail.com', 'Empléate', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV', '3/17/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Desistió del proceso porque indicó ya haber trabajado en Softech y no quiere regresar.'),
(84, 'marzo', 'Estefany De Sousa', 'Yuly Mantuano', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 'marzo', 'Estefany De Sousa', 'Victor Perdomo', 0, 'No interesado', '0414-1861988', 'victorperdomomillan@gmail.com', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Recibió nuestra invitación a entrevista pero nos comentó no estar interesado en un nuevo empleo.'),
(86, 'marzo', 'Estefany De Sousa', 'Omaira Yigray', 0, 'Elegible entrevista GH', '0412-9953579', '', 'Empléate', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV', '3/19/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 'marzo', 'Estefany De Sousa', 'Barbara Salazar ', 0, 'En proceso', '4241447008', 'barbarasalazar03@gmail.com', 'Linkedin', 'Servicio al Cliente', 'PASANTE', '3/19/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 'marzo', 'Estefany De Sousa', 'Francisco Palma', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 'marzo', 'Estefany De Sousa', 'Nelsaly Ruda', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 'marzo', 'Estefany De Sousa', 'Andreina Zapata', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 'marzo', 'Estefany De Sousa', 'Juan García', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 'marzo', 'Estefany De Sousa', 'Jesús Pagés', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 'marzo', 'Estefany De Sousa', 'Laura Borrero De Yagua', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 'marzo', 'Estefany De Sousa', 'Roisy Villegas', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'marzo', 'Estefany De Sousa', 'Genesis Campos', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 'marzo', 'Estefany De Sousa', 'Yusberly Tineo', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(99, 'marzo', 'Estefany De Sousa', 'Francia Diaz', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Técnica', 'ANALISTA PROGRAMADOR IV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 'marzo', 'Estefany De Sousa', 'Juan Ramos Aular', 0, 'Citado a entrevista GH', '4241191527', 'metaljc.82@gmail.com', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(101, 'marzo', 'Estefany De Sousa', 'Carmen Mendoza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(102, 'marzo', 'Estefany De Sousa', 'Ranfith Mendoza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 'marzo', 'Estefany De Sousa', 'Winnder Jimenez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'marzo', 'Estefany De Sousa', 'Adriana Perez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'marzo', 'Estefany De Sousa', 'Miguel Alvarez', 0, 'Elegible entrevista GH', '0416-9177144', 'maalvarezb210478@gmail.com', 'Linkedin', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '3/22/21', 'TESTER QA', 'MIPTO DEVEELOPMENT', 'TECNOLOGICO', '', 0, 0, 0, 0, 0, 0, 0, 100, '', '', '', '', '', '', '', '', '', '', '', 'Elegible en entrevista GH/No percibía nada en bolivares'),
(106, 'marzo', 'Estefany De Sousa', 'Miguel Alejandro Servita', 0, 'Elegible entrevista GH', '0412-6046580', 'miguelservita1@gmail.com', 'Empléate', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '3/22/21', 'LIDER QA', 'CONSULTEC, C.A', 'TECNOLOGICO', '', 0, 0, 0, 0, 0, 0, 0, 400, '', '', '', '', '', '', '', '', '', '', '', 'Elegible en entrevista GH/No percibía nada en bolivares'),
(107, 'marzo', 'Estefany De Sousa', 'Betzaid Guerra', 0, 'Citado a entrevista GH', '0424-1364449', 'guerrabetzaid@gmail.com', 'Empléate', 'Tecnología Funcional', 'ANALISTA FUNCIONAL IV (Tecnología)', '3/22/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '');

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
