-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 17 août 2023 à 09:16
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `flutter_app_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `createdAt`, `name`, `stock`) VALUES
('32', '2023-02-19 17:20:32', 'Virginia Christiansen', 74745),
('31', '2023-02-19 14:48:02', 'Marion Wehner', 7172),
('30', '2023-02-19 19:03:19', 'Amanda Batz', 64497),
('29', '2023-02-19 15:43:04', 'Greg Connelly', 52787),
('28', '2023-02-19 14:52:59', 'Ms. Eugene Boehm', 83746),
('27', '2023-02-20 07:46:13', 'Johnny Howell', 33819),
('26', '2023-02-20 00:19:40', 'Mario Macejkovic', 26544),
('25', '2023-02-20 06:32:42', 'Randal Nolan', 14395),
('24', '2023-02-20 13:03:25', 'Raul Wiza', 50917),
('23', '2023-02-20 10:45:45', 'Rosemarie Hilll PhD', 6029),
('22', '2023-02-19 23:56:08', 'Naomi Kuhic', 18991),
('21', '2023-02-20 03:34:32', 'Carolyn Schmidt Jr.', 28780),
('20', '2023-02-20 13:16:59', 'Zachary Bruen IV', 71802),
('19', '2023-02-19 14:37:00', 'Rafael Mitchell', 16927),
('18', '2023-02-19 18:46:47', 'Alma Purdy', 23754),
('17', '2023-02-20 09:49:51', 'Diana Bernier PhD', 11522),
('16', '2023-02-19 17:50:10', 'Rosie Schamberger', 4623),
('15', '2023-02-20 01:40:55', 'Dr. Orville Wiza II', 16275),
('14', '2023-02-19 21:35:58', 'Miss Clark Murray', 99642),
('13', '2023-02-20 09:23:21', 'Shelly Okuneva', 86756),
('12', '2023-02-20 09:00:55', 'Ron Witting', 97684),
('11', '2023-02-19 23:44:11', 'Gene Beatty', 41411),
('10', '2023-02-20 13:19:52', 'Bennie Koelpin', 17148),
('9', '2023-02-19 15:48:24', 'Tasha Maggio', 33015),
('7', '2023-02-20 03:49:43', 'Sharon Smitham IV', 59573),
('6', '2023-02-19 16:18:16', 'Al Zieme', 2308),
('5', '2023-02-20 01:12:29', 'Jacquelyn Hyatt', 67002),
('4', '2023-02-20 00:52:07', 'Leroy Skiles', 90601),
('33', '2023-02-19 23:30:18', 'Ms. Debra Miller I', 4502),
('34', '2023-02-19 18:57:15', 'Miss Connie Keebler', 44425),
('35', '2023-02-19 19:27:45', 'Melvin Bruen', 97135),
('36', '2023-02-19 14:22:44', 'Jonathan Lowe', 96458),
('37', '2023-02-19 22:38:42', 'Robin Considine III', 10970),
('38', '2023-02-20 03:58:49', 'Lydia Little', 49853),
('39', '2023-02-20 10:29:37', 'Cristina Blanda', 29862),
('40', '2023-02-20 09:26:53', 'Al Prohaska', 44680),
('41', '2023-02-20 04:00:51', 'Josh Gorczany', 19164),
('42', '2023-02-19 13:46:44', 'Jeremiah Mitchell', 94278),
('43', '2023-02-19 18:48:13', 'Edna Langosh', 75015),
('44', '2023-02-20 08:18:12', 'Stephen Hoeger', 6013),
('45', '2023-02-19 19:57:39', 'Wade Steuber', 10024),
('46', '2023-02-19 23:22:48', 'Dr. Kristina Mills V', 94568),
('47', '2023-02-19 18:02:29', 'Tyrone Ruecker', 89358),
('48', '2023-02-19 14:54:20', 'Myron Koch', 21775),
('49', '2023-02-19 18:07:01', 'Kathleen Cruickshank V', 10564),
('51', '2023-02-19 16:46:08', 'Miss Philip Lynch', 9099),
('52', '2023-02-20 10:45:24', 'Jessica Shields', 31337),
('53', '2023-02-20 12:33:03', 'Santiago Gulgowski', 83702),
('54', '2023-02-20 08:06:40', 'Ms. Sadie Gleichner', 99893),
('55', '2023-02-20 12:45:26', 'Sophie Howe', 85939),
('56', '2023-02-20 12:21:51', 'Charlene Towne', 61665),
('57', '2023-02-19 20:46:39', 'Lawrence Daugherty', 51531),
('58', '2023-02-20 04:12:24', 'Robin Morissette MD', 74472),
('59', '2023-02-20 07:14:59', 'Jamie Kuhn', 15125),
('60', '2023-02-20 07:34:31', 'Lela Swift IV', 32698),
('61', '2023-02-20 02:40:34', 'Lynette Kuhic IV', 6382),
('62', '2023-02-20 01:56:09', 'Ella Tremblay', 17060),
('63', '2023-02-20 03:16:43', 'Dr. Lee Aufderhar', 84325),
('64', '2023-02-20 00:36:41', 'Bradford Gerlach', 15939),
('65', '2023-02-19 17:56:30', 'Dixie Hessel', 60647),
('66', '2023-02-19 19:09:10', 'Lillie Schuster', 97220),
('67', '2023-02-20 08:11:39', 'Dr. Allen Ortiz IV', 23446),
('68', '2023-02-19 23:31:02', 'Mrs. Wilma Bogisich', 66247),
('69', '2023-02-20 11:15:45', 'Sonia Witting', 67388),
('70', '2023-03-20 17:33:03', ' OSEEE-EESO', 1999),
('71', '2023-03-20 18:04:59', 'Test Product', 93421),
('72', '2023-03-20 05:48:15', 'Test Product', 87891),
('73', '2023-03-27 05:15:02', 'CafÃ© du chef', 120059),
('74', '2023-04-18 23:11:20', 'Delbert Cassin', 67301),
('75', '2023-04-19 11:32:16', 'Louis Ritchie', 42750),
('76', '2023-04-18 17:04:22', 'Jim Satterfield', 82827),
('78', '2023-04-18 22:18:17', 'Mrs. Iris Bogan', 93197),
('79', '2023-04-18 21:35:59', 'Randolph Schiller Jr.', 57004),
('80', '2023-04-19 00:22:37', 'Christopher Rolfson', 61614),
('81', '2023-04-19 00:16:37', 'Sherman Willms', 17050),
('82', '2023-04-19 06:16:08', 'Leona Simonis', 66223),
('83', '2023-04-18 14:27:46', 'Stanley Kling', 16498),
('84', '2023-04-19 07:33:20', 'Stuart Robel', 82617),
('85', '2023-04-18 22:21:21', 'Verna Pollich', 12923),
('86', '2023-04-18 21:46:29', 'Geoffrey Sauer', 29480),
('87', '2023-04-18 21:44:04', 'Leo VonRueden', 53901),
('88', '2023-04-19 12:52:47', 'Deborah Osinski', 41380),
('89', '2023-04-18 17:47:28', 'Shannon Pacocha', 94390),
('90', '2023-04-19 02:16:27', 'Craig Schamberger Sr.', 91227),
('91', '2023-04-19 09:00:32', 'Gail Roberts', 56836),
('92', '2023-04-18 23:14:26', 'Allison Gutkowski', 94140),
('93', '2023-04-19 00:48:32', 'Walter Connelly', 73478),
('94', '2023-04-19 06:24:01', 'Nicole Auer', 30908),
('95', '2023-02-20 09:57:59', 'Jan Boehm', 34850),
('96', '2023-02-20 09:57:59', 'Jan Boehm', 34850),
('97', '2023-02-20 09:57:59', 'Jan Boehm', 34850),
('98', '2023-04-18 22:14:43', 'CafÃ© de Julien Couraud', 0),
('99', '2023-04-25 08:18:20', 'Ana Little', 25759),
('100', '2023-04-25 07:12:33', 'Mrs. Diana Rath', 77360),
('101', '2023-05-17 04:04:42', 'Chelsea Hickle', 65061),
('102', '2023-05-16 23:25:30', 'Terri Gottlieb', 76037),
('103', '2023-06-03 10:19:50', 'Terrance Swaniawski Sr.', 2),
('104', '2023-06-02 20:45:05', 'Lawrence Corkery', 27213),
('105', '2023-06-03 05:28:48', 'Derrick Mueller', 48811);

-- --------------------------------------------------------

--
-- Structure de la table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
CREATE TABLE IF NOT EXISTS `product_details` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `product_details`
--

INSERT INTO `product_details` (`detail_id`, `product_id`, `price`, `description`, `color`) VALUES
(86, '32', '687.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'maroon'),
(85, '31', '28.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'orange'),
(83, '29', '742.00', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 'purple'),
(84, '30', '597.00', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 'green'),
(82, '28', '869.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'purple'),
(81, '27', '903.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'blue'),
(80, '26', '408.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'pink'),
(79, '25', '82.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'cyan'),
(78, '24', '837.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'ivory'),
(77, '23', '7.00', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 'sky blue'),
(75, '21', '799.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'blue'),
(76, '22', '33.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'plum'),
(74, '20', '299.00', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 'violet'),
(73, '19', '761.00', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 'blue'),
(72, '18', '483.00', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 'silver'),
(71, '17', '308.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'ivory'),
(70, '16', '955.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'teal'),
(69, '15', '356.00', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 'indigo'),
(68, '14', '943.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'olive'),
(66, '12', '220.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'lavender'),
(67, '13', '494.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'ivory'),
(65, '11', '323.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'grey'),
(64, '10', '181.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'blue'),
(63, '9', '665.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'lavender'),
(61, '6', '680.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'black'),
(62, '7', '296.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'mint green'),
(59, '4', '921.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'cyan'),
(60, '5', '662.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'violet'),
(87, '33', '244.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'mint green'),
(88, '34', '103.00', 'The Football Is Good For Training And Recreational Purposes', 'turquoise'),
(89, '35', '531.00', 'The Football Is Good For Training And Recreational Purposes', 'lime'),
(90, '36', '362.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'grey'),
(91, '37', '581.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'orange'),
(92, '38', '655.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'turquoise'),
(93, '39', '4.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'green'),
(94, '40', '977.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'fuchsia'),
(95, '41', '283.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'green'),
(96, '42', '642.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'salmon'),
(97, '43', '41.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'blue'),
(98, '44', '526.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'mint green'),
(99, '45', '204.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'cyan'),
(100, '46', '330.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'orchid'),
(101, '47', '674.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'tan'),
(102, '48', '180.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'black'),
(103, '49', '714.00', 'The Football Is Good For Training And Recreational Purposes', 'yellow'),
(104, '51', '108.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'pink'),
(105, '52', '722.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'purple'),
(106, '53', '230.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'black'),
(107, '54', '92.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'yellow'),
(108, '55', '472.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'lavender'),
(109, '56', '576.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'olive'),
(110, '57', '863.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'tan'),
(111, '58', '93.00', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 'pink'),
(112, '59', '594.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'magenta'),
(113, '60', '352.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'lavender'),
(114, '61', '180.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'ivory'),
(115, '62', '580.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'turquoise'),
(116, '63', '255.00', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 'gold'),
(117, '64', '690.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'yellow'),
(118, '65', '385.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'grey'),
(119, '66', '867.00', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 'orange'),
(120, '67', '402.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'sky blue'),
(121, '68', '579.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'pink'),
(122, '69', '141.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'magenta'),
(123, '70', '777.00', 'THe the the all ok', 'red'),
(124, '71', '496.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'cyan'),
(125, '72', '634.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'grey'),
(126, '73', '1659.00', 'L\'un des meilleurs cafÃ© d\'IDF!', 'noir'),
(127, '74', '643.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'indigo'),
(128, '75', '500.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'fuchsia'),
(129, '76', '732.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'red'),
(130, '78', '712.00', 'The Football Is Good For Training And Recreational Purposes', 'red'),
(131, '79', '147.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'white'),
(132, '80', '901.00', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 'mint green'),
(133, '81', '432.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'mint green'),
(134, '82', '974.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'black'),
(135, '83', '441.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'gold'),
(136, '84', '987.00', 'The Football Is Good For Training And Recreational Purposes', 'cyan'),
(137, '85', '607.00', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 'cyan'),
(138, '86', '302.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'indigo'),
(139, '87', '410.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'mint green'),
(140, '88', '731.00', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 'ivory'),
(141, '89', '631.00', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 'fuchsia'),
(142, '90', '435.00', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 'azure'),
(143, '91', '445.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'mint green'),
(144, '92', '753.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'sky blue'),
(145, '93', '450.00', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 'salmon'),
(146, '94', '15.00', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 'tan'),
(147, '95', '80.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'indigo'),
(148, '96', '80.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'indigo'),
(149, '97', '80.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'indigo'),
(150, '98', '54.00', 'The Football Is Good For Training And Recreational Purposes', 'grey'),
(151, '99', '502.00', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 'magenta'),
(152, '100', '609.00', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 'olive'),
(153, '101', '345.00', 'The beautiful range of Apple NaturalÃ© that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 'plum'),
(154, '102', '565.00', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 'pink'),
(155, '103', '194.00', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 'azure'),
(156, '104', '755.00', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 'ivory'),
(157, '105', '736.00', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 'mint green');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_code_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `qr_code_path`) VALUES
(2, 'Jane Smith', 'jane.smith@example.com', 'qrcodes/2.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
