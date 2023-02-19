-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2023 г., 22:35
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
  `staff_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `api_order`
--

INSERT INTO `api_order` (`id`, `order_date`, `staff_id`) VALUES
(1, '2023-02-25 12:20:00.000000', 3),
(3, '2023-02-24 09:30:00.000000', 2);

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
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `api_user`
--

INSERT INTO `api_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `patronymic`, `photo`) VALUES
(2, 'pbkdf2_sha256$390000$7Z4BsxPBs3sKgPHZ0HcqIr$MJlZOFy6CcRF8545qifBsmb21S6OugA9n23AaB1bjVc=', '2023-02-19 12:43:40.745119', 1, 'admin', 'Камалов', 'Арслан', 'admin@mail.ru', 1, 1, '2023-02-19 10:39:44.000000', 'Рахмиддинович', 'photo_2839761204668377027_c_HcIdMBS.jpg'),
(3, 'pbkdf2_sha256$390000$2fYbNZVc6cRIexkwqCTwp6$UEdc2T2FAO71G6BJcU7Co4pB08QBLCh7nu7cY5F8hl4=', NULL, 1, 'user', 'Василиса', 'Литвина', 'user@vk.com', 0, 1, '2023-02-19 10:47:11.000000', 'Олеговна', 'blank-profile-picture-973460_1280.webp'),
(4, 'pbkdf2_sha256$390000$X8wGcZi5Hh5f6JyPduTbiz$/vcdMQnCGkFXLi63PvUWDnrr7bIrYfIt0r7MC9WsLDo=', NULL, 0, 'AllaDotsenko432', 'Доценко', 'Алла', 'AllaDotsenko432@mail.ru', 0, 1, '2023-02-19 10:49:02.000000', 'Артемовна', 'blank-profile-picture-973460_1280_HaTS2AA.webp'),
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

--
-- Дамп данных таблицы `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32);

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
(25, 'Can add staff', 7, 'add_staff'),
(26, 'Can change staff', 7, 'change_staff'),
(27, 'Can delete staff', 7, 'delete_staff'),
(28, 'Can view staff', 7, 'view_staff'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order');

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
(1, '2023-02-19 10:43:57.515597', '2', 'Арслан Камалов Рахмиддинович', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"\\u041e\\u0442\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\", \"\\u0424\\u043e\\u0442\\u043e \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f\"]}}]', 6, 2),
(2, '2023-02-19 10:45:39.747122', '1', 'Администратор', 1, '[{\"added\": {}}]', 3, 2),
(3, '2023-02-19 10:46:00.082033', '2', 'Кардиолог', 1, '[{\"added\": {}}]', 3, 2),
(4, '2023-02-19 10:46:03.650049', '3', 'Онколог', 1, '[{\"added\": {}}]', 3, 2),
(5, '2023-02-19 10:46:06.960990', '4', 'Травмотолог', 1, '[{\"added\": {}}]', 3, 2),
(6, '2023-02-19 10:46:11.311095', '5', 'Физиотерапевт', 1, '[{\"added\": {}}]', 3, 2),
(7, '2023-02-19 10:46:14.066118', '6', 'Офтальмолог', 1, '[{\"added\": {}}]', 3, 2),
(8, '2023-02-19 10:46:17.073131', '7', 'Хирург', 1, '[{\"added\": {}}]', 3, 2),
(9, '2023-02-19 10:46:28.109922', '2', 'Арслан Камалов Рахмиддинович', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(10, '2023-02-19 10:48:04.109933', '8', 'Пользователь', 1, '[{\"added\": {}}]', 3, 2),
(11, '2023-02-19 10:49:02.562177', '3', 'Литвина Василиса Олеговна', 1, '[{\"added\": {}}]', 6, 2),
(12, '2023-02-19 10:50:05.395252', '4', 'Алла Доценко Артемовна', 1, '[{\"added\": {}}]', 6, 2),
(13, '2023-02-19 10:50:41.368558', '5', 'Мартынова Кира Петровна', 1, '[{\"added\": {}}]', 6, 2),
(14, '2023-02-19 10:51:12.899489', '6', 'Яндутов Тихон Александрович', 1, '[{\"added\": {}}]', 6, 2),
(15, '2023-02-19 10:51:56.614440', '7', 'Безрукова Альбина Валерьевна', 1, '[{\"added\": {}}]', 6, 2),
(16, '2023-02-19 10:52:47.406049', '8', 'Савельева Горислава Филипповна', 1, '[{\"added\": {}}]', 6, 2),
(17, '2023-02-19 10:53:12.312116', '9', 'Просветова Татьяна Закировна', 1, '[{\"added\": {}}]', 6, 2),
(18, '2023-02-19 10:53:58.029213', '9', 'Просветова Татьяна Закировна', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(19, '2023-02-19 10:54:07.782240', '8', 'Савельева Горислава Филипповна', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(20, '2023-02-19 10:54:11.259554', '7', 'Безрукова Альбина Валерьевна', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(21, '2023-02-19 10:56:25.293998', '9', 'Просветова Татьяна Закировна', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(22, '2023-02-19 10:56:28.785045', '8', 'Савельева Горислава Филипповна', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(23, '2023-02-19 10:56:32.179900', '7', 'Безрукова Альбина Валерьевна', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 2),
(24, '2023-02-19 10:58:29.483099', '4', 'Алла Доценко Артемовна', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 6, 2),
(25, '2023-02-19 10:59:03.206045', '3', 'Литвина Василиса Олеговна', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 6, 2),
(26, '2023-02-19 11:16:39.898450', '4', 'Алла Доценко Артемовна', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 6, 2),
(27, '2023-02-19 11:19:09.432254', '1', 'Литвина Василиса Олеговна', 1, '[{\"added\": {}}]', 7, 2),
(28, '2023-02-19 11:19:17.387621', '1', 'Литвина Василиса Олеговна', 3, '', 7, 2),
(29, '2023-02-19 11:19:29.156251', '2', 'Алла Доценко Артемовна', 1, '[{\"added\": {}}]', 7, 2),
(30, '2023-02-19 11:19:39.444355', '3', 'Мартынова Кира Петровна', 1, '[{\"added\": {}}]', 7, 2),
(31, '2023-02-19 11:19:48.451051', '4', 'Яндутов Тихон Александрович', 1, '[{\"added\": {}}]', 7, 2),
(32, '2023-02-19 11:19:56.937614', '5', 'Безрукова Альбина Валерьевна', 1, '[{\"added\": {}}]', 7, 2),
(33, '2023-02-19 11:20:04.639459', '6', 'Савельева Горислава Филипповна', 1, '[{\"added\": {}}]', 7, 2),
(34, '2023-02-19 11:20:11.659559', '7', 'Просветова Татьяна Закировна', 1, '[{\"added\": {}}]', 7, 2),
(35, '2023-02-19 11:28:20.836912', '2', 'Мартынова Кира Петровна', 3, '', 8, 2),
(36, '2023-02-19 11:33:39.465305', '5', 'Мартынова Кираsds Петровна', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 6, 2),
(37, '2023-02-19 11:33:48.972060', '5', 'Мартынова Кира Петровна', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 6, 2),
(38, '2023-02-19 12:57:44.075081', '7', 'Безрукова Альбина Валерьевна', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2),
(39, '2023-02-19 12:58:36.798998', '4', 'Алла Доценко Артемовна', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2),
(40, '2023-02-19 12:58:52.513371', '8', 'Савельева Горислава Филипповна', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2),
(41, '2023-02-19 12:59:06.886968', '5', 'Мартынова Кира Петровна', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2),
(42, '2023-02-19 12:59:23.296818', '9', 'Просветова Татьяна Закировна', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2),
(43, '2023-02-19 12:59:38.339635', '6', 'Яндутов Тихон Александрович', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2),
(44, '2023-02-19 13:00:23.453260', '3', 'Литвина Василиса Олеговна', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 2);

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
(1, 'contenttypes', '0001_initial', '2023-02-18 21:34:14.233523'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-02-18 21:34:14.333960'),
(3, 'auth', '0001_initial', '2023-02-18 21:34:14.644791'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-02-18 21:34:14.697575'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-02-18 21:34:14.705571'),
(6, 'auth', '0004_alter_user_username_opts', '2023-02-18 21:34:14.713566'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-02-18 21:34:14.721179'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-02-18 21:34:14.724180'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-02-18 21:34:14.731803'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-02-18 21:34:14.739333'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-02-18 21:34:14.747631'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-02-18 21:34:14.774087'),
(13, 'auth', '0011_update_proxy_permissions', '2023-02-18 21:34:14.783552'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-02-18 21:34:14.790551'),
(15, 'api', '0001_initial', '2023-02-18 21:34:15.478440'),
(16, 'admin', '0001_initial', '2023-02-18 21:34:15.637167'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-02-18 21:34:15.650530'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-18 21:34:15.665565'),
(19, 'sessions', '0001_initial', '2023-02-18 21:34:15.729948'),
(20, 'api', '0002_alter_user_patronymic_alter_user_photo', '2023-02-19 10:39:25.581212'),
(21, 'api', '0003_alter_order_options_alter_staff_options', '2023-02-19 10:43:10.871655'),
(22, 'api', '0004_remove_staff_group_alter_user_patronymic_and_more', '2023-02-19 10:57:38.971330'),
(23, 'api', '0005_remove_order_group_remove_order_user_order_staff', '2023-02-19 11:26:37.093275');

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
('psuvyls7h9uiz60e3cw1x39a158ilee9', '.eJxVjMsOwiAQAP-FsyEsr7YevfcbmmUXpGogKe3J-O-GpAe9zkzmLRY89rwcLW7LyuIqtLj8soD0jKULfmC5V0m17NsaZE_kaZucK8fX7Wz_Bhlb7ltHEJFgQO3AskKDigIldtEnTd5pDsaMzKMxE1vPTin0U7CgE4QBxOcL9-w4Dg:1pTjIl:tn92KKXWA6OxqC-u6pbv7outA-WyHo41HDTY4Gslbss', '2023-03-05 13:00:23.461697');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `api_order`
--
ALTER TABLE `api_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_order_staff_id_fe5cc900_fk_api_staff_id` (`staff_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `api_staff`
--
ALTER TABLE `api_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `api_user`
--
ALTER TABLE `api_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `api_order`
--
ALTER TABLE `api_order`
  ADD CONSTRAINT `api_order_staff_id_fe5cc900_fk_api_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `api_staff` (`id`);

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
