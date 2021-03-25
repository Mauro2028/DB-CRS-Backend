-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2021 a las 16:03:50
-- Versión del servidor: 8.0.23
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `worker`
--

UPDATE TABLE worker (
  `id` int DEFAULT NULL,
  `init_date` varchar(120) DEFAULT NULL,
  `Consultor` varchar(120) DEFAULT NULL,
  `candidate` varchar(120) DEFAULT NULL,
  `cedula` int DEFAULT NULL,
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
  `basic_salary` int DEFAULT NULL,
  `variable_salary` int DEFAULT NULL,
  `cesta_ticket` int DEFAULT NULL,
  `Profit_Days` int DEFAULT NULL,
  `vacations` int DEFAULT NULL,
  `Vacation_Bonus` int DEFAULT NULL,
  `Factor` int DEFAULT NULL,
  `Estimated_annual_package` int DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `worker`
--

INSERT INTO worker (`id`, `init_date`, `Consultor`, `candidate`, `cedula`, `status`, `phone_number`, `email`, `catchment_source`, `managment`, `vacant`, `interview_date`, `actual_charge`, `company`, `sector`, `coin`, `basic_salary`, `variable_salary`, `cesta_ticket`, `Profit_Days`, `vacations`, `Vacation_Bonus`, `Factor`, `Estimated_annual_package`, `Production_bonus`, `Transport_bonus`, `Savings_Bank`, `sales_commissions`, `parking_payment`, `full_HCM_Emp_Family`, `partial_HCM_Emp_Family`, `Vehicle_insurance`, `life_insurance`, `dinning_room`, `food_bags`, `Observations`) VALUES
(1, 'marzo', 'Estefany de sousa', 'Juan Carlos Rosendo', 0, 'Citado a entrevista', '4122837931', 'rosendojuanrovati95@hotmail.com', 'Redes sociales', 'Servicio al cliente', 'pasante', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'marzo', 'Estefany de sousa', 'Oscar Guzman', 14196321, 'No elegible por entrevista GH', '414 1399095', 'Oscarjga80@gmail.com', 'Empléate', 'Mercadeo y ventas', 'asesor de negocios', '3/2/21', 'Independiente', 'CUENTA PROPIA', '', '80', 0, 0, 0, 0, 0, 0, 0, 80, '', '', '', '', '', '', '', '', '', '', '', 'No elegible, no cumple con el perfil. '),
(3, 'marzo', 'Estefany de sousa', 'José Villegas', 0, 'No asistió a la Entrevista Laboral', '58-4129628950', 'josevmirt@gmail.com', 'Redes sociales', 'Tecnologia tecnica', 'analista programador iv', '3/3/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'En este momento no se encuentra en Caracas. '),
(4, 'marzo', 'Estefany de sousa', 'Jesús Rodriguez Mendez', 0, 'No elegible por entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', 'administrador de infraestructura', 'SOLITECH', 'Tecnologico', '', 0, 0, 0, 0, 0, 0, 0, 200, '', '', '', '', '', '', '', '', '', '', '', 'No elegible / no posee los conocimientos técnicos. Trabaja por honorarios profesionales'),
(5, 'marzo', 'Estefany de sousa', 'Nelson Revollo', 0, 'No asistió a la Entrevista Laboral', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/3/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'marzo', 'Estefany de sousa', 'Michell Palma', 0, 'Citado a entrevista', '0424 2148821', 'michellspalma@gmail.com', 'Empléate', 'Servicio al cliente', 'pasante', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'marzo', 'Estefany de sousa', 'Martin Briceño', 0, 'Elegible entrevista Técnica', '0412-7288319', 'martin.gustavob82@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/3/21', 'consultor de implementacion', 'OLTP VOICE SYSTEMS', 'Tecnologico', '100', 72000000, 0, 400000, 90, 30, 30, 16, 100, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(8, 'marzo', 'Estefany de sousa', 'Estefanía Castillo', 0, 'Citado a entrevista', '4163223810', 'castilloee22@gmail.com', 'Redes sociales', 'Servicio al cliente', 'pasante', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'marzo', 'Estefany de sousa', 'Denis Peña', 9953432, 'Elegible entrevista GH', '0412-7192030', 'denispena@hotmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/3/21', 'supervisor de soporte', 'PWC VENEZUELA', 'Consultoria', '166', 6500000, 0, 1200000, 120, 21, 15, 0, 166, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(10, 'marzo', 'Estefany de sousa', 'Andrés Lira', 18033728, 'Elegible entrevista GH', '0424 – 1866036', 'andreslira@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/3/21', 'jefe de tecnologia', 'VENEZOLANA DE INVESTIGACIÓN', 'Otro', '100', 90000000, 0, 10000000, 80, 17, 17, 0, 100, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(11, 'marzo', 'Estefany de sousa', 'Franklin González', 0, 'No elegible por entrevista GH', '0412-296-3026 / 0212-753-8757', 'franklingonzalez@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/3/21', 'especialista de plataforma', 'SMARTER SOLUTIONS', 'Tecnologico', '425', 0, 0, 0, 0, 0, 0, 0, 425, '', '', '', '', '', '', '', '', '', '', '', 'Entrevistado vía telefónica - no va a cambiar de empleo por menos de 550$'),
(12, 'marzo', 'Estefany de sousa', 'José Abrahan Angel', 0, 'Citado a entrevista', '0412-8101714', 'abrahanangel@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'marzo', 'Estefany de sousa', 'David Flores', 0, 'El area no lo quiso evaluar', '0412-5607462', 'davidrafaeflores@gmail.com', 'Otra', 'Servicio al cliente', 'pasante', '3/4/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'El área no lo quiso evaluar, lo consideró no elegible. '),
(14, 'marzo', 'Estefany de sousa', 'Pedro Ricart', 0, 'Citado a entrevista', '0416-6158906', 'pcricart@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 'marzo', 'Estefany de sousa', 'Hector Muñoz', 0, 'No asistió a la Entrevista Laboral', '412 7000060', 'hectormunoz08@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/15/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'marzo', 'Estefany de sousa', 'Clarice Napolés', 0, 'Citado a entrevista Técnica', '0414-3180207', 'clarice.napoles@gmail.com', 'Empléate', 'Servicio al cliente', 'pasante', '3/1/21', 'especialista jr', 'BANPLUS - BANCO UNIVERSAL', 'Financiero', '', 1200000, 0, 400000, 120, 21, 15, 0, 2, '', '', '', '', '', '', '', '', '', '', '', 'Elegible para pasar al área técnica.'),
(17, 'marzo', 'Estefany de sousa', 'Melix Carolina Acevedo', 0, 'No elegible por entrevista GH', '(414) 1315576', 'melix.acevedo@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/3/21', 'coordinador it', 'GRUPO MÁS 58, C.A', 'Servicios', '400', 60000000, 0, 1200000, 0, 0, 0, 0, 400, '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'marzo', 'Estefany de sousa', 'Niltom Castillo', 13978234, 'No asistió a la Entrevista Laboral', '424 2043115', 'niltom2020@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/5/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 'marzo', 'Estefany de sousa', 'Ruben Quintero', 15832283, 'No asistió a la Entrevista Laboral', '424 2732626', 'Ruben.d.quintero@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 'marzo', 'Estefany de sousa', 'José Antonio Benaventas', 14706959, 'Elegible entrevista GH', '0424) 273 88 67', 'joseantoniobenaventa@gmail.com', 'Linkedin', 'Mercadeo y ventas', 'asesor de negocios', '3/1/21', 'asesor inmobiliario', 'Century 21', 'Otro', 'gana por comisiones', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'marzo', 'Estefany de sousa', 'Rusbenia Ruíz', 0, 'Citado a entrevista Técnica', '0412-8200568', 'rusbeniaanaikaruz@gmail.com', 'Linkedin', 'Servicio al cliente', 'pasante', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Pasada al área técnica'),
(22, 'marzo', 'Estefany de sousa', 'Kevin Moreno ', 25252319, 'No elegible por entrevista GH', '4128052012', 'kevinmoreno2909@gmail.com', 'Empléate', 'Plataforma', 'analista de plataforma jr', '3/9/21', 'administrador de sistemas', 'ASAMBLEA NACIONAL ', 'Otro', '', 3500000, 0, 1200000, 30, 15, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No elegible por GH - Su pérfil es muy junior - muy poca experticia en el  área. '),
(23, 'marzo', 'Estefany de sousa', 'Johander Arrechedera', 20098853, 'Citado a entrevista GH', '0412 7312873', 'brouuck3@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'marzo', 'Estefany de sousa', 'Jesús Sambrano', 17743697, 'No elegible entrevista técnica', '424 2768965', 'sambranogabriel2015@gmail.com', 'Empléate', 'Plataforma', 'analista de plataforma jr', '3/9/21', 'analista de soporte e infraestructura', 'PLANSUAREZ', 'Otro', '', 135000000, 0, 30000000, 40, 15, 15, 0, 250, 'Si', '', '', '', '', 'Si', '', '', '', '', '', 'No elegible en la entrevista técnica. '),
(25, 'marzo', 'Estefany de sousa', 'Arianny Rodriguez', 25258050, 'Citado a entrevista GH', '0424 2470272', 'ariannyrr@gmail.com', 'Empléate', 'Plataforma', 'analista de plataforma jr', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 'marzo', 'Estefany de sousa', 'Alexander Esteves', 20754288, 'Pre-empleo', '414 9230630', 'alexesteves1990@gmail.com', 'Empléate', 'Plataforma', 'analista de plataforma jr', '3/11/21', 'analista de soporte nivel iii', 'VGT-8', 'Consultoria', '', 40000000, 0, 2000000, 60, 15, 15, 0, 60, 'Si', '', '', '', '', '', '', '', '', '', '', 'Por pasar al área tecnica.'),
(27, 'marzo', 'Estefany de sousa', 'Denis Ibarra', 17474733, 'Citado a entrevista GH', '412 5434872', 'denis_ibarra33@hotmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/9/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'marzo', 'Estefany de sousa', 'Rolando Vivas', 12114774, 'Citado a entrevista GH', '412 7213417', 'rolando.vivas.rivas@gmail.com', 'Empléate', 'Tecnologia tecnica', 'analista programador iv', '3/10/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'marzo', 'Estefany de sousa', 'Miguel Echenique', 13290301, 'No elegible por entrevista GH', '414 5471623', 'echenique_miguel2000@yahoo.es', 'Empléate', 'Plataforma', 'analista de plataforma jr', '3/9/21', 'analista de sistemas', 'INVERSIONES BALSAM', 'Otro', '', 144000000, 0, 400000, 30, 15, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No elegible por GH - No aprobó la prueba técnica  y no cumple con los conocimientos técnicos.'),
(30, 'marzo', 'Estefany de sousa', 'Manuel Castillo', 17140807, 'No elegible por entrevista GH', '412 5429890', 'Mcastillo1785@gmail.com', 'Empléate', 'Plataforma', 'analista de plataforma jr', '3/9/21', 'coordinador de sistemas', 'FEDERACIÓN VENEZOLANA DE FUTBOL ', 'Otro', '', 0, 0, 1200000, 120, 15, 15, 0, 450, '', '', '', '', '', '', '', '', '', '', '', 'No elegible por GH - La compensación que percibe era cancelado en Bs al cambio. '),
(31, 'marzo', 'Estefany de sousa', 'Jorge Torres', 0, 'En proceso', '0424-4600577', 'jorgtowers@gmail.com', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'marzo', 'Estefany de sousa', 'Iliver Tortolero', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'marzo', 'Estefany de sousa', 'Jesús Alfonso Gutierrez', 0, 'No elegible por entrevista GH', '4128152032', 'jesusguti1994@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', 'especialista de infraestructura', 'UBII PAGOS', 'Financiero', '', 50000000, 0, 1200000, 120, 15, 15, 0, 400, 'Si', '', '', '', '', '', '', '', '', '', '', 'No elegible por aspiración salarial - ya devenga 400$ y aspira entre 500$ a 600$'),
(34, 'marzo', 'Estefany de sousa', 'Jesús Enrique Rodriguez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'marzo', 'Estefany de sousa', 'Jesús Mijares', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'marzo', 'Estefany de sousa', 'Rafael López', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'marzo', 'Estefany de sousa', 'Jesús Dalis Salazar', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'marzo', 'Estefany de sousa', 'Luis Montoya', 0, 'Elegible entrevista Técnica', '4242111186', 'Luismontoyavillamizar@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/11/21', 'analista de infraestructura tecnologica', 'DLIA TECNOLOGÍA', 'Tecnologico', '', 36000000, 0, 1200000, 60, 30, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'En proceso de pasar al área técnica'),
(39, 'marzo', 'Estefany de sousa', 'Miguel Bustamante', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'marzo', 'Estefany de sousa', 'Jhoan Terán', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'marzo', 'Estefany de sousa', 'Oscar Fagundes', 0, 'No elegible por entrevista GH', '0424-128-94-44/0412-544-16-03', 'Oscarf403@hotmail.com', 'Linkedin', 'Plataforma', 'analista de plataforma jr', '3/11/21', 'analista de telecomunicaciones', 'PATRIACELL, C.A', 'Servicios', '', 1350000000, 0, 1200000, 90, 15, 15, 0, 75, 'Si', '', '', '', '', '', '', '', '', '', '', 'No cumple con los conocimientos técnicos - Reprobó la prueba técnica de infraestructura.'),
(42, 'marzo', 'Estefany de sousa', 'Renec Cisneros', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'marzo', 'Estefany de sousa', 'Enrique Guedez', 0, 'En proceso', '4241556826', 'eguedez1974@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/11/21', 'analista de soporte tecnico', 'LATINON, C.A', 'Servicios', '', 0, 0, 0, 0, 0, 0, 0, 160, '', '', '', '', '', '', '', '', '', '', '', 'En proceso de pasar al área técnica / su salario neto son sus 160$'),
(44, 'marzo', 'Estefany de sousa', 'Ruben Gutierrez', 0, 'En proceso', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'marzo', 'Estefany de sousa', 'Charles Holligton', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'marzo', 'Estefany de sousa', 'Robert Oropeza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'marzo', 'Estefany de sousa', 'Julio Díaz', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'marzo', 'Estefany de sousa', 'Jefferon López', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 'marzo', 'Estefany de sousa', 'Anais Molina', 0, 'Citado a entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'marzo', 'Estefany de sousa', 'José Cordero', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'marzo', 'Estefany de sousa', 'Jhait Perroni', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'marzo', 'Estefany de sousa', 'Juan Pernett', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'marzo', 'Estefany de sousa', 'Michelle Sestini', 0, 'No interesado', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Recibió la invitación a participar en el proceso mas indico no estar interesado.'),
(54, 'marzo', 'Estefany de sousa', 'Joel Saavedra', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'marzo', 'Estefany de sousa', 'Victor Ramón Hernandez', 0, 'En proceso', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'marzo', 'Estefany de sousa', 'Luis Alejandro Gamboa', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'marzo', 'Estefany de sousa', 'José Montilla', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'marzo', 'Estefany de sousa', 'Andrés Díaz', 0, 'No elegible por entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', 'administrador de redes y servidores', 'COLEGIO HUMBOLDT', 'Educativo', '', 80000000, 0, 1200000, 60, 15, 15, 0, 850, '', '', '', '', '', 'Si', '', '', '', '', '', 'No elegible por aspiración salarial/ tiene además una poliza de seguro de 3000$'),
(59, 'marzo', 'Estefany de sousa', 'Arturo Ramírez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'marzo', 'Estefany de sousa', 'Kenny Solórzano ', 0, 'No elegible por entrevista GH', '4123823220', 'kennysolo@gmail.com ', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/15/21', 'administrador de redes y servidores', 'HISPANA DE SEGUROS', 'Servicios', '', 8000000, 32000000, 1200000, 120, 15, 15, 0, 250, 'Si', '', '', '', '', 'Si', '', '', '', '', '', 'No elegible por aspiración salarial, no cambiará de empleo si la oferta no supera lo actual.'),
(61, 'marzo', 'Estefany de sousa', 'Gabriel Hernández', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 'marzo', 'Estefany de sousa', 'Miguel Quijada Díaz', 0, 'No elegible por entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'marzo', 'Estefany de sousa', 'Cristian Brugman', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'marzo', 'Estefany de sousa', 'Ivan Carrazano', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'marzo', 'Estefany de sousa', 'José Mendoza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'marzo', 'Estefany de sousa', 'Jony Acevedo', 0, 'No asistió a la Entrevista Laboral', '416 4041875', 'yonyace@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/15/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No asistió a la entrevista de trabajo. '),
(67, 'marzo', 'Estefany de sousa', 'Marcos Torres', 0, 'Elegible entrevista Técnica', '424 2107995', 'mt58759@gmail.com', 'Empléate', 'Plataforma', 'administrador de plataforma', '3/15/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'marzo', 'Estefany de sousa', 'Verónica Ponte', 0, 'No asistió a la Entrevista Laboral', '(424) 270.17.40 / (412) 270.17.40', 'veronicaponte@gmail.com', 'Linkedin', 'Mercadeo y ventas', 'asesor de negocios senior', '3/15/21', 'ejecutivo de cuentas sap', 'CELERITECH', 'Tecnologico', '', 18000000, 3600000, 1200000, 90, 25, 20, 0, 280, 'Si', 'Si', '', '', '', 'Si', '', '', '', '', '', 'No asistió a la entrevista técnica con la Gerencia de mercadeo. '),
(69, 'marzo', 'Estefany de sousa', 'Luis Fernando Vanegas', 0, 'No elegible por entrevista GH', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '3/15/21', 'administrador de infraestructura', 'GLOBAL RESORUCES', 'Tecnologico', '', 65000000, 144000000, 1200000, 60, 15, 15, 0, 300, '', '', '', '', '', 'Si', '', '', '', '', '', 'No elegible por aspiración salarial, aspira mínimo 350$'),
(70, 'marzo', 'Estefany de sousa', 'Victor Rivas', 0, 'Elegible entrevista GH', '', 'vl18mm18@gmail.com', 'Linkedin', 'Plataforma', 'administrador de plataforma jr', '3/15/21', 'analista de infraestructura', 'SERVICIO PAN AMERICANO DE PROTECCIÓN', 'Otro', '', 10200000, 0, 1200000, 21, 15, 15, 0, 80, '', '', '', '', '', '', '', '', '', '', '', 'en espera de pruebas técnicas - pasar al área técnica.'),
(71, 'marzo', 'Estefany de sousa', 'Luis Bernal', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'marzo', 'Estefany de sousa', 'Victor Zambrano', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'marzo', 'Estefany de sousa', 'Gabriel Sumoza', 0, 'No interesado', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No interesado, leyó la invitación a entrevista y no se recibió respuesta. '),
(74, 'marzo', 'Estefany de sousa', 'Jheikson Vaamonde', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'marzo', 'Estefany de sousa', 'Ramiro Antonio Miramón', 0, 'No interesado', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Se le contactó pero comunicó no estar interesado, ya está trabajando.'),
(76, 'marzo', 'Estefany de sousa', 'Javier Alejandro Medina', 0, 'En proceso', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(77, 'marzo', 'Estefany de sousa', 'Yoelvis Olivero', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'marzo', 'Estefany de sousa', 'Pablo J Quintero', 0, 'Citado a entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'No elegible, vive en Mérida. Sólo busca un empleo remoto.'),
(79, 'marzo', 'Estefany de sousa', 'Arturo Gomez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 'marzo', 'Estefany de sousa', 'Cristofher Parada', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'marzo', 'Estefany de sousa', 'Elias Silva', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(82, 'marzo', 'Estefany de sousa', 'Manuel Castillo', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'marzo', 'Estefany de sousa', 'Kery Perez', 0, 'Abandono el proceso / No interesado en continuar', '414 5872261', 'kery.aph@gmail.com', 'Empléate', 'Tecnologia funcional', 'analista funcional iv', '3/17/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Desistió del proceso porque indicó ya haber trabajado en Softech y no quiere regresar.'),
(84, 'marzo', 'Estefany de sousa', 'Yuly Mantuano', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 'marzo', 'Estefany de sousa', 'Victor Perdomo', 0, 'No interesado', '0414-1861988', 'victorperdomomillan@gmail.com', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'Recibió nuestra invitación a entrevista pero nos comentó no estar interesado en un nuevo empleo.'),
(86, 'marzo', 'Estefany de sousa', 'Omaira Yigray', 0, 'Elegible entrevista GH', '0412-9953579', '', 'Empléate', 'Tecnologia funcional', 'analista funcional iv ', '3/19/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 'marzo', 'Estefany de sousa', 'Johelis Garcia', 0, 'Ingreso efectivo', '', '', 'Empléate', 'Mercadeo y ventas', 'ejecutivo de ventas base instalada i', '3/10/21', 'ejecutivo de atención al cliente', 'DIRECTV VENEZUELA', 'Servicios', '', 15000000, 80000000, 1200000, 30, 15, 15, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'INGRESO EFECTIVO EN EL ÁREA'),
(88, 'marzo', 'Estefany de sousa', 'Barbara Salazar ', 0, 'En proceso', '4241447008', 'barbarasalazar03@gmail.com', 'Linkedin', 'Servicio al cliente', 'pasante', '3/19/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 'marzo', 'Estefany de sousa', 'Jhoit Perroni', 0, 'No interesado', '', '', 'Linkedin', 'Plataforma', 'administrador de plataforma', '', 'especialista de redes', 'MCO TECNOLOGÍA GLOBAL', 'Tecnologico', '', 80000000, 0, 1200000, 90, 15, 15, 0, 250, '', '', '', '', '', '', '', '', '', '', '', 'Respondió al comunicado por Linkedin pero informó no estar interesado en un nuevo trabajo. '),
(90, 'marzo', 'Estefany de sousa', 'Francisco Palma', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 'marzo', 'Estefany de sousa', 'Nelsaly Ruda', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 'marzo', 'Estefany de sousa', 'Andreina Zapata', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 'marzo', 'Estefany de sousa', 'Juan García', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 'marzo', 'Estefany de sousa', 'Jesús Pagés', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 'marzo', 'Estefany de sousa', 'Laura Borrero De Yagua', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 'marzo', 'Estefany de sousa', 'Roisy Villegas', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'marzo', 'Estefany de sousa', 'Genesis Campos', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 'marzo', 'Estefany de sousa', 'Yusberly Tineo', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(99, 'marzo', 'Estefany de sousa', 'Francia Diaz', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia tecnica', 'analista programador iv', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 'marzo', 'Estefany de sousa', 'Juan Ramos Aular', 0, 'Citado a entrevista GH', '4241191527', 'metaljc.82@gmail.com', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(101, 'marzo', 'Estefany de sousa', 'Carmen Mendoza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(102, 'marzo', 'Estefany de sousa', 'Ranfith Mendoza', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 'marzo', 'Estefany de sousa', 'Winnder Jimenez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'marzo', 'Estefany de sousa', 'Adriana Perez', 0, 'No responde al contacto (Mail / telf.) para entrevista GH', '', '', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'marzo', 'Estefany de sousa', 'Miguel Alvarez', 0, 'Elegible entrevista GH', '0416-9177144', 'maalvarezb210478@gmail.com', 'Linkedin', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '3/22/21', 'tester qa', 'MIPTO DEVEELOPMENT', 'Tecnologico', '', 0, 0, 0, 0, 0, 0, 0, 100, '', '', '', '', '', '', '', '', '', '', '', 'Elegible en entrevista GH/No percibía nada en bolivares'),
(106, 'marzo', 'Estefany de sousa', 'Miguel Alejandro Servita', 0, 'Elegible entrevista GH', '0412-6046580', 'miguelservita1@gmail.com', 'Empléate', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '3/22/21', 'lider qa', 'CONSULTEC, C.A', 'Tecnologico', '', 0, 0, 0, 0, 0, 0, 0, 400, '', '', '', '', '', '', '', '', '', '', '', 'Elegible en entrevista GH/No percibía nada en bolivares'),
(107, 'marzo', 'Estefany de sousa', 'Betzaid Guerra', 0, 'Citado a entrevista GH', '0424-1364449', 'guerrabetzaid@gmail.com', 'Empléate', 'Tecnologia funcional', 'analista funcional iv (tecnologia)', '3/22/21', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
