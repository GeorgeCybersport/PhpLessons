-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 08 2021 г., 05:30
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `auth`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Monitors'),
(2, 'Laptops'),
(3, 'Smartphones');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `title`, `price`, `category_id`, `info`) VALUES
(1, 'Lenovo', '100', 2, 'Info about Lenovo'),
(2, 'Samsung', '200', 2, 'Info about Samsung'),
(3, 'Apple', '1000', 2, 'Apple is the most expensive laptop');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `userId`, `url`) VALUES
(1, 2, '/account'),
(2, 2, '/favicon.ico'),
(3, 2, '/account'),
(4, 2, '/favicon.ico'),
(5, 2, '/account'),
(6, 2, '/favicon.ico'),
(7, 2, '/account'),
(8, 2, '/favicon.ico'),
(9, 2, '/account'),
(10, 2, '/favicon.ico'),
(11, 2, '/account/123'),
(12, 2, '/favicon.ico'),
(13, 2, '/account/account/logout'),
(14, 2, '/favicon.ico'),
(15, 2, '/account'),
(16, 2, '/favicon.ico'),
(17, 2, '/logout'),
(18, 2, '/favicon.ico'),
(19, 2, '/logout'),
(20, 2, '/favicon.ico'),
(21, 2, '/account'),
(22, 2, '/favicon.ico'),
(23, 2, '/account/logout'),
(24, 2, '/account'),
(25, 2, '/favicon.ico'),
(26, 2, '/account/logout'),
(27, 20, '/account'),
(28, 20, '/favicon.ico'),
(29, 20, '/account'),
(30, 20, '/favicon.ico'),
(31, 20, '/account/logout'),
(32, 2, '/account'),
(33, 2, '/favicon.ico'),
(34, 2, '/account/logout'),
(35, 2, '/account'),
(36, 2, '/favicon.ico'),
(37, 2, '/account'),
(38, 2, '/favicon.ico'),
(39, 2, '/account'),
(40, 2, '/favicon.ico'),
(41, 2, '/account/logout'),
(42, 5, '/favicon.ico'),
(43, 5, '/login'),
(44, 5, '/account'),
(45, 5, '/favicon.ico'),
(46, 5, '/catalog'),
(47, 5, '/favicon.ico'),
(48, 5, '/catalog/1'),
(49, 5, '/favicon.ico'),
(50, 5, '/catalog'),
(51, 5, '/favicon.ico'),
(52, 5, '/catalog/2'),
(53, 5, '/favicon.ico'),
(54, 5, '/catalog/2/1'),
(55, 5, '/favicon.ico'),
(56, 5, '/catalog/2/1?add=1'),
(57, 5, '/favicon.ico'),
(58, 5, '/catalog/2'),
(59, 5, '/favicon.ico'),
(60, 5, '/catalog/2/2'),
(61, 5, '/favicon.ico'),
(62, 5, '/catalog/2/2?add=2'),
(63, 5, '/favicon.ico'),
(64, 5, '/catalog/2/2?add=2'),
(65, 5, '/favicon.ico'),
(66, 5, '/catalog/2/2?add=2'),
(67, 5, '/favicon.ico'),
(68, 5, '/catalog/2/2?add=2'),
(69, 5, '/favicon.ico'),
(70, 5, '/catalog/2/2?add=2'),
(71, 5, '/favicon.ico'),
(72, 5, '/catalog/2/2?add=2'),
(73, 5, '/favicon.ico'),
(74, 5, '/catalog/2/2'),
(75, 5, '/favicon.ico'),
(76, 5, '/catalog/2/'),
(77, 5, '/favicon.ico'),
(78, 5, '/catalog/2'),
(79, 5, '/favicon.ico'),
(80, 5, '/catalog'),
(81, 5, '/favicon.ico'),
(82, 5, '/catalog/2'),
(83, 5, '/favicon.ico'),
(84, 5, '/'),
(85, 5, '/favicon.ico'),
(86, 5, '/logout'),
(87, 5, '/account'),
(88, 5, '/favicon.ico'),
(89, 5, '/account/basket'),
(90, 5, '/favicon.ico'),
(91, 5, '/account/basket'),
(92, 5, '/favicon.ico'),
(93, 5, '/account'),
(94, 5, '/favicon.ico'),
(95, 5, '/category'),
(96, 5, '/favicon.ico'),
(97, 5, '/catalog'),
(98, 5, '/favicon.ico'),
(99, 5, '/catalog/2'),
(100, 5, '/favicon.ico'),
(101, 5, '/catalog/2'),
(102, 5, '/favicon.ico'),
(103, 5, '/catalog/2'),
(104, 5, '/favicon.ico'),
(105, 5, '/catalog/2/2'),
(106, 5, '/favicon.ico'),
(107, 5, '/catalog/2/2?add=2'),
(108, 5, '/favicon.ico'),
(109, 5, '/catalog/2/2?add=2'),
(110, 5, '/favicon.ico'),
(111, 5, '/catalog/2'),
(112, 5, '/favicon.ico'),
(113, 5, '/catalog/2/1'),
(114, 5, '/favicon.ico'),
(115, 5, '/catalog/2/1?add=1'),
(116, 5, '/favicon.ico'),
(117, 5, '/catalog/2/1?add=1'),
(118, 5, '/favicon.ico'),
(119, 5, '/catalog/2/1?add=1'),
(120, 5, '/favicon.ico'),
(121, 5, '/basket'),
(122, 5, '/favicon.ico'),
(123, 5, '/order'),
(124, 5, '/favicon.ico'),
(125, 5, '/order'),
(126, 5, '/favicon.ico'),
(127, 5, '/order'),
(128, 5, '/catalog'),
(129, 5, '/favicon.ico'),
(130, 5, '/order'),
(131, 5, '/catalog'),
(132, 5, '/favicon.ico'),
(133, 5, '/logout'),
(134, 5, '/account'),
(135, 5, '/favicon.ico'),
(136, 5, '/account/order'),
(137, 5, '/catalog'),
(138, 5, '/favicon.ico'),
(139, 5, '/order'),
(140, 5, '/catalog'),
(141, 5, '/favicon.ico'),
(142, 5, '/basket'),
(143, 5, '/favicon.ico'),
(144, 5, '/catalog'),
(145, 5, '/favicon.ico'),
(146, 5, '/catalog/2'),
(147, 5, '/favicon.ico'),
(148, 5, '/catalog/2/2'),
(149, 5, '/favicon.ico'),
(150, 5, '/catalog/2/2?add=2'),
(151, 5, '/favicon.ico'),
(152, 5, '/basket'),
(153, 5, '/favicon.ico'),
(154, 5, '/order'),
(155, 5, '/favicon.ico'),
(156, 5, '/basket'),
(157, 5, '/favicon.ico'),
(158, 5, '/order'),
(159, 5, '/catalog'),
(160, 5, '/favicon.ico'),
(161, 5, '/order'),
(162, 5, '/catalog'),
(163, 5, '/favicon.ico'),
(164, 5, '/order'),
(165, 5, '/favicon.ico'),
(166, 5, '/orderlist'),
(167, 5, '/catalog'),
(168, 5, '/favicon.ico'),
(169, 5, '/catalog/orderlist'),
(170, 5, '/catalog'),
(171, 5, '/favicon.ico'),
(172, 5, '/catalog/arderlist'),
(173, 5, '/favicon.ico'),
(174, 5, '/catalog/arderlist'),
(175, 5, '/favicon.ico'),
(176, 5, '/catalog/arderlist'),
(177, 5, '/favicon.ico'),
(178, 5, '/catalog/arderlist'),
(179, 5, '/favicon.ico'),
(180, 5, '/catalog/arderlist'),
(181, 5, '/favicon.ico'),
(182, 5, '/catalog/arderlist'),
(183, 5, '/favicon.ico'),
(184, 5, '/catalog/arderlist'),
(185, 5, '/favicon.ico'),
(186, 5, '/catalog/arderlist'),
(187, 5, '/favicon.ico'),
(188, 5, '/catalog/arderlist'),
(189, 5, '/favicon.ico'),
(190, 5, '/catalog/arderlist'),
(191, 5, '/favicon.ico'),
(192, 5, '/catalog/arderlist'),
(193, 5, '/favicon.ico'),
(194, 5, '/catalog/arderlist'),
(195, 5, '/favicon.ico'),
(196, 5, '/catalog/basket'),
(197, 5, '/favicon.ico'),
(198, 5, '/catalog/orders'),
(199, 5, '/catalog'),
(200, 5, '/favicon.ico'),
(201, 5, '/catalog/orders'),
(202, 5, '/catalog'),
(203, 5, '/favicon.ico'),
(204, 5, '/catalog/s'),
(205, 5, '/favicon.ico'),
(206, 5, '/account/s'),
(207, 5, '/favicon.ico'),
(208, 5, '/account/orders'),
(209, 5, '/catalog'),
(210, 5, '/favicon.ico'),
(211, 5, '/account/s'),
(212, 5, '/favicon.ico'),
(213, 5, '/account/showOrders'),
(214, 5, '/favicon.ico'),
(215, 5, '/account/showOrders'),
(216, 5, '/favicon.ico'),
(217, 5, '/account/showOrders'),
(218, 5, '/favicon.ico'),
(219, 5, '/account/showOrders'),
(220, 5, '/favicon.ico'),
(221, 5, '/account/showOrders'),
(222, 5, '/favicon.ico'),
(223, 5, '/account/showOrders'),
(224, 5, '/favicon.ico'),
(225, 5, '/account/showOrders'),
(226, 5, '/favicon.ico'),
(227, 5, '/account/showOrders'),
(228, 5, '/favicon.ico'),
(229, 5, '/account/showOrders'),
(230, 5, '/favicon.ico'),
(231, 5, '/account/showOrders'),
(232, 5, '/favicon.ico'),
(233, 5, '/account/showOrders'),
(234, 5, '/favicon.ico'),
(235, 5, '/account/showOrders'),
(236, 5, '/favicon.ico'),
(237, 5, '/account/logout'),
(238, 6, '/account'),
(239, 6, '/favicon.ico'),
(240, 6, '/account/showOrders'),
(241, 6, '/catalog'),
(242, 6, '/favicon.ico'),
(243, 6, '/logout'),
(244, 5, '/account'),
(245, 5, '/favicon.ico'),
(246, 5, '/account/showOrders'),
(247, 5, '/favicon.ico'),
(248, 5, '/account/showOrders'),
(249, 5, '/favicon.ico'),
(250, 5, '/account/showOrders'),
(251, 5, '/favicon.ico'),
(252, 5, '/account/showOrders'),
(253, 5, '/favicon.ico'),
(254, 5, '/account/showOrders'),
(255, 5, '/favicon.ico'),
(256, 5, '/account/showOrders'),
(257, 5, '/favicon.ico'),
(258, 5, '/account/showOrders'),
(259, 5, '/favicon.ico'),
(260, 5, '/account/showOrders'),
(261, 5, '/favicon.ico'),
(262, 5, '/admin'),
(263, 5, '/favicon.ico'),
(264, 5, '/admin'),
(265, 5, '/favicon.ico'),
(266, 5, '/logout'),
(267, 6, '/account'),
(268, 6, '/favicon.ico'),
(269, 6, '/admin'),
(270, 6, '/favicon.ico'),
(271, 6, '/catalog/2/2'),
(272, 6, '/favicon.ico'),
(273, 6, '/catalog/2/2?add=2'),
(274, 6, '/favicon.ico'),
(275, 6, '/catalog/2/2?add=2'),
(276, 6, '/favicon.ico'),
(277, 6, '/basket'),
(278, 6, '/favicon.ico'),
(279, 6, '/order'),
(280, 6, '/favicon.ico'),
(281, 6, '/admin'),
(282, 6, '/favicon.ico');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `status` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date`, `status`) VALUES
(1, 5, '2021-02-08 00:49:19', 1),
(2, 5, '2021-02-08 00:56:30', 1),
(3, 5, '2021-02-08 01:19:50', 1),
(4, 6, '2021-02-08 02:25:39', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_goods`
--

CREATE TABLE `orders_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `price` varchar(50) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_goods`
--

INSERT INTO `orders_goods` (`id`, `order_id`, `good_id`, `price`, `count`) VALUES
(1, 1, 2, '200', 2),
(2, 1, 1, '100', 3),
(3, 2, 2, '200', 1),
(4, 4, 2, '200', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `userName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `userName`) VALUES
(1, 'root', '$2y$10$c7GOr5zRtGT5unEDek7OI.LTlP1Aa2DX7wPQe9xZZEPxWaJYlOfDC', 'root'),
(2, 'admin', '$2y$10$c7GOr5zRtGT5unEDek7OI.LTlP1Aa2DX7wPQe9xZZEPxWaJYlOfDC', 'admin'),
(3, 'content', '$2y$10$c7GOr5zRtGT5unEDek7OI.LTlP1Aa2DX7wPQe9xZZEPxWaJYlOfDC', 'content'),
(4, 'user', '$2y$10$c7GOr5zRtGT5unEDek7OI.LTlP1Aa2DX7wPQe9xZZEPxWaJYlOfDC', 'user'),
(5, 'solokhin-eg', '202cb962ac59075b964b07152d234b70', 'George'),
(6, 'solokhin-eg1', '202cb962ac59075b964b07152d234b70', 'George');

-- --------------------------------------------------------

--
-- Структура таблицы `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_roles`
--

INSERT INTO `users_roles` (`id`, `user_id`, `role`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 2, 2),
(5, 5, 1),
(6, 5, 2),
(7, 5, 3),
(8, 6, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_goods`
--
ALTER TABLE `orders_goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders_goods`
--
ALTER TABLE `orders_goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
