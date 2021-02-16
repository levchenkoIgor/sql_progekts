-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 16 2021 г., 11:04
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `book`
--
CREATE DATABASE IF NOT EXISTS `book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `book`;

-- --------------------------------------------------------

--
-- Структура таблицы `pc`
--

CREATE TABLE `pc` (
  `nom` int(4) NOT NULL,
  `kode` int(8) NOT NULL,
  `new` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `production` varchar(20) NOT NULL,
  `page` int(3) NOT NULL,
  `format` varchar(15) NOT NULL,
  `dates` date NOT NULL,
  `counts` int(5) DEFAULT 5000,
  `topic` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL CHECK (`price` >= 0 and `price` <= 50 and `counts` >= 0 and `nom` >= 0 and `kode` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `pc`
--

INSERT INTO `pc` (`nom`, `kode`, `new`, `name`, `price`, `production`, `page`, `format`, `dates`, `counts`, `topic`, `category`) VALUES
(2, 5111, 'No', 'Аппаратные средства мультимедия. Видеосистема РС ', 15.51, 'BHV С.-Петербург', 400, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(8, 4985, 'No', 'Освой самостоятельно модернизацию и ремонт ПК за 24 часа, 2-е изд.', 18.9, 'Вильямс', 288, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(9, 5141, 'No', 'Структуры данных и алгоритмы.', 37.8, 'Вильямс', 384, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(20, 5127, 'Yes', 'Автоматизация инженерно- графических работ', 11.58, 'Питер', 256, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(31, 5110, 'No', 'Аппаратные средства мультимедия. Видеосистема РС ', 15.51, 'BHV С.-Петербург', 400, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(46, 5199, 'No', 'Железо IBM 2001. ', 30.07, 'МикроАрт', 368, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(50, 3851, 'Yes', 'Защита информации и безопасность компьютерных систем', 26, 'DiaSoft', 480, '84x108/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Захист і безпека ПК'),
(58, 3932, 'No', 'Как превратить персональный компьютер в измерительный комплекс', 7.65, 'ДМК', 144, '60x88/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Інші книги'),
(59, 4713, 'No', 'Plug- ins. Встраиваемые приложения для музыкальных программ', 11.41, 'ДМК', 144, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Інші книги'),
(175, 5217, 'No', 'Windows МЕ. Новейшие версии программ', 16.57, 'Триумф', 320, '70x100/16', '0000-00-00', 5000, 'Операційні системи', 'Windows 2000'),
(176, 4829, 'No', 'Windows 2000 Professional шаг за шагом с СD', 27.25, 'Эком', 320, '70x100/16', '0000-00-00', 5000, 'Операційні системи', 'Windows 2000'),
(188, 5170, 'No', 'Linux Русские версии', 24.43, 'ДМК', 346, '70x100/16', '0000-00-00', 5000, 'Операційні системи', 'Linux'),
(191, 860, 'No', 'Операционная система UNIX', 3.5, 'BHV С.-Петербург', 395, '84x10816', '0000-00-00', 5000, 'Операційні системи', 'Unix'),
(203, 44, 'No', 'Ответы на актуальные вопросы по OS/2 Warp', 5, 'DiaSoft', 352, '84x108/16', '0000-00-00', 5000, 'Операційні системи', 'Інші операційні сист'),
(206, 5174, 'No', 'Windows Ме. Спутник пользователя', 12.79, 'Русская редакция', 306, '', '0000-00-00', 5000, 'Операційні системи', 'Інші операційні сист'),
(209, 5462, 'No', 'Язык программирования С++. Лекции и упражнения', 29, 'DiaSoft', 656, '84x108/16', '0000-00-00', 5000, 'Програмування', 'C&C++'),
(210, 4982, 'No', 'Язык программирования С. Лекции и упражнения', 29, 'DiaSoft', 432, '84x108/16', '0000-00-00', 5000, 'Програмування', 'C&C++'),
(220, 4687, 'No', 'Эффективное использование C++ .50 рекомендаций по улучшению ваших программ и проектов', 17.6, 'ДМК', 240, '70x100/16', '0000-00-00', 5000, 'Програмування', 'C&C++');

-- --------------------------------------------------------

--
-- Структура таблицы `pk`
--

CREATE TABLE `pk` (
  `nom` int(4) NOT NULL,
  `kode` int(8) NOT NULL,
  `new` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `production` varchar(20) NOT NULL,
  `page` int(3) NOT NULL,
  `format` varchar(15) NOT NULL,
  `dates` date NOT NULL,
  `counts` int(6) NOT NULL DEFAULT 5000,
  `topic` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL CHECK (`price` >= 0 and `price` <= 50 and `counts` >= 0 and `nom` >= 0 and `kode` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `pk`
--

INSERT INTO `pk` (`nom`, `kode`, `new`, `name`, `price`, `production`, `page`, `format`, `dates`, `counts`, `topic`, `category`) VALUES
(2, 5110, 'No', 'Аппаратные средства мультимедия. Видеосистема РС ', 15.51, 'BHV С.-Петербург', 400, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(8, 4985, 'No', 'Освой самостоятельно модернизацию и ремонт ПК за 24 часа, 2-е изд.', 18.9, 'Вильямс', 288, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(9, 5141, 'No', 'Структуры данных и алгоритмы.', 37.8, 'Вильямс', 384, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(20, 5127, 'Yes', 'Автоматизация инженерно- графических работ', 11.58, 'Питер', 256, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Підручники'),
(31, 5110, 'No', 'Аппаратные средства мультимедия. Видеосистема РС ', 15.51, 'BHV С.-Петербург', 400, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(46, 5199, 'No', 'Железо IBM 2001. ', 30.07, 'МикроАрт', 368, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(50, 3851, 'Yes', 'Защита информации и безопасность компьютерных систем', 26, 'DiaSoft', 480, '84x108/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Захист і безпека ПК'),
(58, 3932, 'No', 'Как превратить персональный компьютер в измерительный комплекс', 7.65, 'ДМК', 144, '60x88/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Інші книги'),
(59, 4713, 'No', 'Plug- ins. Встраиваемые приложения для музыкальных программ', 11.41, 'ДМК', 144, '70x100/16', '0000-00-00', 5000, 'Використання ПК в цілому', 'Інші книги'),
(175, 5217, 'No', 'Windows МЕ. Новейшие версии программ', 16.57, 'Триумф', 320, '70x100/16', '0000-00-00', 5000, 'Операційні системи', 'Windows 2000'),
(176, 4829, 'No', 'Windows 2000 Professional шаг за шагом с СD', 27.25, 'Эком', 320, '70x100/16', '0000-00-00', 5000, 'Операційні системи', 'Windows 2000'),
(188, 5170, 'No', 'Linux Русские версии', 24.43, 'ДМК', 346, '70x100/16', '0000-00-00', 5000, 'Операційні системи', 'Linux'),
(191, 860, 'No', 'Операционная система UNIX', 3.5, 'BHV С.-Петербург', 395, '84x10816', '0000-00-00', 5000, 'Операційні системи', 'Unix'),
(203, 44, 'No', 'Ответы на актуальные вопросы по OS/2 Warp', 5, 'DiaSoft', 352, '84x108/16', '0000-00-00', 5000, 'Операційні системи', 'Інші операційні сист'),
(206, 5174, 'No', 'Windows Ме. Спутник пользователя', 12.79, 'Русская редакция', 306, '', '0000-00-00', 5000, 'Операційні системи', 'Інші операційні сист'),
(209, 5462, 'No', 'Язык программирования С++. Лекции и упражнения', 29, 'DiaSoft', 656, '84x108/16', '0000-00-00', 5000, 'Програмування', 'C&C++'),
(210, 4982, 'No', 'Язык программирования С. Лекции и упражнения', 29, 'DiaSoft', 432, '84x108/16', '0000-00-00', 5000, 'Програмування', 'C&C++'),
(220, 4687, 'No', 'Эффективное использование C++ .50 рекомендаций по улучшению ваших программ и проектов', 17.6, 'ДМК', 240, '70x100/16', '0000-00-00', 5000, 'Програмування', 'C&C++');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`nom`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `ss` (`nom`);

--
-- Индексы таблицы `pk`
--
ALTER TABLE `pk`
  ADD PRIMARY KEY (`nom`),
  ADD KEY `ss` (`nom`,`name`);
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Дамп данных таблицы `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[{\"db\":\"lab1\",\"table\":\"book\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"book\",\"table\":\"pk\"},{\"db\":\"book\",\"table\":\"pc\"},{\"db\":\"lab1\",\"table\":\"book\"},{\"db\":\"abc\",\"table\":\"cc\"},{\"db\":\"abc\",\"table\":\"ccc\"},{\"db\":\"lab1\",\"table\":\"xcx\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Дамп данных таблицы `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'book', 'pk', '{\"CREATE_TIME\":\"2021-02-16 00:44:38\"}', '2021-02-16 08:30:59');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-02-16 10:04:23', '{\"Console\\/Mode\":\"show\",\"lang\":\"ru\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
