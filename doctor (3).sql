-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 21 2023 г., 07:22
-- Версия сервера: 5.7.39
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `doctor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `api_order`
--

CREATE TABLE `api_order` (
  `id` bigint(20) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `staff_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `api_order`
--

INSERT INTO `api_order` (`id`, `order_date`, `staff_id`, `user_id`) VALUES
(3, '2023-02-18 09:30:00.000000', 2, 3),
(5, '2023-03-24 09:30:00.000000', 2, 3),
(8, '2023-02-21 20:13:40.000000', 3, 3),
(9, '2023-02-21 21:02:56.000000', 3, 2),
(11, '2023-02-17 21:04:10.000000', 3, 2),
(12, '2023-02-21 22:07:33.000000', 3, 2),
(13, '2023-02-21 22:07:46.000000', 3, 2),
(15, '2023-02-21 22:30:10.000000', 3, 3),
(16, '2023-02-23 04:10:15.000000', 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `api_staff`
--

CREATE TABLE `api_staff` (
  `id` bigint(20) NOT NULL,
  `start` time(6) NOT NULL,
  `end` time(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `api_staff`
--

INSERT INTO `api_staff` (`id`, `start`, `end`, `user_id`) VALUES
(2, '10:00:00.000000', '15:00:00.000000', 4),
(3, '12:00:00.000000', '17:00:00.000000', 5),
(4, '09:00:00.000000', '13:00:00.000000', 6),
(5, '08:00:00.000000', '15:00:00.000000', 7),
(6, '09:00:00.000000', '16:00:00.000000', 8),
(7, '10:00:00.000000', '17:00:00.000000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `api_user`
--

CREATE TABLE `api_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `patronymic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `api_user`
--

INSERT INTO `api_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `patronymic`, `photo`) VALUES
(2, 'pbkdf2_sha256$390000$7Z4BsxPBs3sKgPHZ0HcqIr$MJlZOFy6CcRF8545qifBsmb21S6OugA9n23AaB1bjVc=', '2023-02-20 21:02:49.100784', 1, 'admin', 'Арслан', 'Камалов', 'admin@mail.ru', 1, 1, '2023-02-19 10:39:44.000000', 'Рахмиддинович', 'photo_2839761204668377027_c_HcIdMBS.jpg'),
(3, 'pbkdf2_sha256$390000$2fYbNZVc6cRIexkwqCTwp6$UEdc2T2FAO71G6BJcU7Co4pB08QBLCh7nu7cY5F8hl4=', NULL, 1, 'user', 'Василиса', 'Литвина', 'user@vk.com', 0, 1, '2023-02-19 10:47:11.000000', 'Олеговна', 'blank-profile-picture-973460_1280.webp'),
(4, 'pbkdf2_sha256$390000$X8wGcZi5Hh5f6JyPduTbiz$/vcdMQnCGkFXLi63PvUWDnrr7bIrYfIt0r7MC9WsLDo=', NULL, 0, 'AllaDotsenko432', 'Алла', 'Доценко', 'AllaDotsenko432@mail.ru', 0, 1, '2023-02-19 10:49:02.000000', 'Артемовна', 'blank-profile-picture-973460_1280_HaTS2AA.webp'),
(5, 'pbkdf2_sha256$390000$43hn386wyO6uyv6My284eE$v0F0y6/9hW+e5vsgK0yCBM23fNzW8l0giAbneX2mXl8=', NULL, 0, 'KiraMartynova631', 'Кира', 'Мартынова', 'KiraMartynova631@mail.ru', 0, 1, '2023-02-19 10:50:05.000000', 'Петровна', 'blank-profile-picture-973460_1280_GSYb4gg.webp'),
(6, 'pbkdf2_sha256$390000$OFonIcL2kEqKKT0nro7rJH$VehRJS3qAjeFSiKusFc+X96PkA4W6WfpaH+ca+dCcqA=', NULL, 0, 'TihonYandutov507', 'Тихон', 'Яндутов', 'TihonYandutov507@mail.ru', 0, 1, '2023-02-19 10:50:41.000000', 'Александрович', 'blank-profile-picture-973460_1280_iCNyAfW.webp'),
(7, 'pbkdf2_sha256$390000$KxguVeHbv1MyTopxvqWb4b$OE+tIkrc5NrdvuvItYaoSKIgfx9s2EgOV+gbWOZRgo8=', NULL, 0, 'AlbinaBezrukova620', 'Альбина', 'Безрукова', 'AlbinaBezrukova620@mail.ru', 0, 1, '2023-02-19 10:51:12.000000', 'Валерьевна', 'blank-profile-picture-973460_1280_4aN0yRN.webp'),
(8, 'pbkdf2_sha256$390000$2uu3q1lhWwnRih8zFyjTpR$U/4EUdtQZjdhw1pcUmEYH+kCNBW1ZQi3Rmu3NGXrRkw=', NULL, 0, 'GorislavaSaveleva51', 'Горислава', 'Савельева', 'GorislavaSaveleva51@mail.ru', 0, 1, '2023-02-19 10:51:56.000000', 'Филипповна', 'blank-profile-picture-973460_1280_uj3xqHX.webp'),
(9, 'pbkdf2_sha256$390000$KqoKSFo4RObT4rd0FoSRoy$8AGL4RVVBYfrIRpRBEnIh5SclbuZY9MNgMQY0hPqtkc=', NULL, 0, 'TatyanaProsvetova629', 'Татьяна', 'Просветова', 'TatyanaProsvetova629@mail.ru', 0, 1, '2023-02-19 10:52:47.000000', 'Закировна', 'blank-profile-picture-973460_1280_rcPleTL.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `api_user_groups`
--

CREATE TABLE `api_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `api_user_groups`
--

INSERT INTO `api_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 3, 8),
(3, 4, 2),
(4, 5, 3),
(5, 6, 6),
(11, 7, 4),
(10, 8, 5),
(9, 9, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `api_user_user_permissions`
--

CREATE TABLE `api_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Администратор'),
(2, 'Кардиолог'),
(3, 'Онколог'),
(6, 'Офтальмолог'),
(8, 'Пользователь'),
(4, 'Травмотолог'),
(5, 'Физиотерапевт'),
(7, 'Хирург');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add Расписание', 7, 'add_staff'),
(26, 'Can change Расписание', 7, 'change_staff'),
(27, 'Can delete Расписание', 7, 'delete_staff'),
(28, 'Can view Расписание', 7, 'view_staff'),
(29, 'Can add Запись', 8, 'add_order'),
(30, 'Can change Запись', 8, 'change_order'),
(31, 'Can delete Запись', 8, 'delete_order'),
(32, 'Can view Запись', 8, 'view_order');

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-20 22:16:07.622465', '10', 'qrwe', 3, '', 6, 2),
(2, '2023-02-21 00:46:23.785227', '11', 'Order object (11)', 2, '[{\"changed\": {\"fields\": [\"\\u0414\\u0430\\u0442\\u0430 \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438\"]}}]', 8, 2),
(3, '2023-02-21 00:46:53.286478', '3', 'Order object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u0414\\u0430\\u0442\\u0430 \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438\"]}}]', 8, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'api', 'order'),
(7, 'api', 'staff'),
(6, 'api', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-20 20:57:50.946432'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-02-20 20:57:54.693948'),
(3, 'auth', '0001_initial', '2023-02-20 20:58:03.732956'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-02-20 20:58:03.795234'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-02-20 20:58:03.803229'),
(6, 'auth', '0004_alter_user_username_opts', '2023-02-20 20:58:03.811225'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-02-20 20:58:03.820223'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-02-20 20:58:03.822852'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-02-20 20:58:03.831619'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-02-20 20:58:03.839061'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-02-20 20:58:03.846753'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-02-20 20:58:03.866740'),
(13, 'auth', '0011_update_proxy_permissions', '2023-02-20 20:58:03.875734'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-02-20 20:58:03.883730'),
(15, 'api', '0001_initial', '2023-02-20 20:58:04.516186'),
(16, 'admin', '0001_initial', '2023-02-20 20:58:04.682131'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-02-20 20:58:04.702137'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-20 20:58:04.725108'),
(19, 'sessions', '0001_initial', '2023-02-20 20:58:04.820709'),
(20, 'api', '0002_alter_order_user', '2023-02-20 21:42:19.558801');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dlerj9k8sch8mq7umu6ymrqliwdf1mfr', '.eJxVjMsOwiAQAP-FsyEsr7YevfcbmmUXpGogKe3J-O-GpAe9zkzmLRY89rwcLW7LyuIqtLj8soD0jKULfmC5V0m17NsaZE_kaZucK8fX7Wz_Bhlb7ltHEJFgQO3AskKDigIldtEnTd5pDsaMzKMxE1vPTin0U7CgE4QBxOcL9-w4Dg:1pUDJB:C11ok4z_ljFsNs0GcKq9GfgEsujUkCL8bwIz4hf7yFM', '2023-03-06 21:02:49.104751');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `api_order`
--
ALTER TABLE `api_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_order_staff_id_fe5cc900_fk_api_staff_id` (`staff_id`),
  ADD KEY `api_order_user_id_52781ff0_fk_api_user_id` (`user_id`);

--
-- Индексы таблицы `api_staff`
--
ALTER TABLE `api_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_staff_user_id_eef0210c_fk_api_user_id` (`user_id`);

--
-- Индексы таблицы `api_user`
--
ALTER TABLE `api_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `api_user_groups`
--
ALTER TABLE `api_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_user_groups_user_id_group_id_9c7ddfb5_uniq` (`user_id`,`group_id`),
  ADD KEY `api_user_groups_group_id_3af85785_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `api_user_user_permissions`
--
ALTER TABLE `api_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_user_user_permissions_user_id_permission_id_a06dd704_uniq` (`user_id`,`permission_id`),
  ADD KEY `api_user_user_permis_permission_id_305b7fea_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_api_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `api_order`
--
ALTER TABLE `api_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `api_staff`
--
ALTER TABLE `api_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `api_user`
--
ALTER TABLE `api_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `api_user_groups`
--
ALTER TABLE `api_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `api_user_user_permissions`
--
ALTER TABLE `api_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `api_order`
--
ALTER TABLE `api_order`
  ADD CONSTRAINT `api_order_staff_id_fe5cc900_fk_api_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `api_staff` (`id`),
  ADD CONSTRAINT `api_order_user_id_52781ff0_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `api_staff`
--
ALTER TABLE `api_staff`
  ADD CONSTRAINT `api_staff_user_id_eef0210c_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `api_user_groups`
--
ALTER TABLE `api_user_groups`
  ADD CONSTRAINT `api_user_groups_group_id_3af85785_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `api_user_groups_user_id_a5ff39fa_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `api_user_user_permissions`
--
ALTER TABLE `api_user_user_permissions`
  ADD CONSTRAINT `api_user_user_permis_permission_id_305b7fea_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `api_user_user_permissions_user_id_f3945d65_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
