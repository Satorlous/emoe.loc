-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2019 г., 19:52
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab_emoe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2015_03_07_311070_create_tracker_paths_table', 2),
(5, '2015_03_07_311071_create_tracker_queries_table', 2),
(6, '2015_03_07_311072_create_tracker_queries_arguments_table', 2),
(7, '2015_03_07_311073_create_tracker_routes_table', 2),
(8, '2015_03_07_311074_create_tracker_routes_paths_table', 2),
(9, '2015_03_07_311075_create_tracker_route_path_parameters_table', 2),
(10, '2015_03_07_311076_create_tracker_agents_table', 2),
(11, '2015_03_07_311077_create_tracker_cookies_table', 2),
(12, '2015_03_07_311078_create_tracker_devices_table', 2),
(13, '2015_03_07_311079_create_tracker_domains_table', 2),
(14, '2015_03_07_311080_create_tracker_referers_table', 2),
(15, '2015_03_07_311081_create_tracker_geoip_table', 2),
(16, '2015_03_07_311082_create_tracker_sessions_table', 2),
(17, '2015_03_07_311083_create_tracker_errors_table', 2),
(18, '2015_03_07_311084_create_tracker_system_classes_table', 2),
(19, '2015_03_07_311085_create_tracker_log_table', 2),
(20, '2015_03_07_311086_create_tracker_events_table', 2),
(21, '2015_03_07_311087_create_tracker_events_log_table', 2),
(22, '2015_03_07_311088_create_tracker_sql_queries_table', 2),
(23, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 2),
(24, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 2),
(25, '2015_03_07_311091_create_tracker_sql_queries_log_table', 2),
(26, '2015_03_07_311092_create_tracker_connections_table', 2),
(27, '2015_03_07_311093_create_tracker_tables_relations', 2),
(28, '2015_03_13_311094_create_tracker_referer_search_term_table', 2),
(29, '2015_03_13_311095_add_tracker_referer_columns', 2),
(30, '2015_11_23_311096_add_tracker_referer_column_to_log', 2),
(31, '2015_11_23_311097_create_tracker_languages_table', 2),
(32, '2015_11_23_311098_add_language_id_column_to_sessions', 2),
(33, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 2),
(34, '2015_11_23_311100_add_nullable_to_tracker_error', 2),
(35, '2017_01_31_311101_fix_agent_name', 2),
(36, '2017_06_20_311102_add_agent_name_hash', 2),
(37, '2017_12_13_150000_fix_query_arguments', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `objects`
--

CREATE TABLE `objects` (
  `id` int(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(9999) NOT NULL,
  `price` int(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `house` varchar(5) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `objects`
--

INSERT INTO `objects` (`id`, `type`, `description`, `price`, `street`, `house`, `img`) VALUES
(1, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 7500000, 'Dewy Treasure Pines', '34', 'dom1.jpg'),
(2, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 6350000, 'Foggy Line', '15', 'dom2.jpg'),
(3, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 11290000, 'Quiet Port', '112', 'dom3.jpg'),
(4, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 3825000, 'Lazy Elk Landing', '3', 'dom4.jpg'),
(5, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 6200000, 'Pleasant Grove Centre', '77', 'dom5.jpg'),
(6, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 11950000, 'Rustic Deer Key', '233', 'dom6.jpg'),
(7, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 5795600, 'Burning Cloud Harbour', '91', 'dom7.jpg'),
(8, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 9990000, 'Rocky Boulevard', '51', 'dom8.jpg'),
(9, 'Дом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta eligendi et expedita explicabo facilis fuga impedit maxime nam non, nostrum obcaecati optio perferendis quae ullam veritatis vero voluptatibus voluptatum!\r\n', 4380000, 'Tawny Dale Via', '68', 'dom9.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `guest` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `uid`, `guest`, `created_at`, `updated_at`, `expires_at`) VALUES
(52, 'n.leppik@gmail.com', 0, '2019-10-02 01:04:01', '2019-10-02 01:15:19', '2019-10-02 01:17:19');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Никита', 'n.leppik@gmail.com', NULL, '$2y$10$n7d2Iwlru9Vh2LvzHiQkreW2g4aafRKEgbSwADuqy31fL.EI3Guc2', NULL, '2019-09-08 08:34:40', '2019-09-08 08:34:40'),
(2, 'Никита', 'user1@mail.ru', NULL, '$2y$10$9oERAbYPiuelrrJ2xIfeMeVOeqrN32qAylbud7SLVFRGp9WAYdSa2', NULL, '2019-10-01 19:01:41', '2019-10-01 19:01:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
