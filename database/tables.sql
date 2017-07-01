--
-- Estructura de tabla para la tabla `dgn_app_config`
--

CREATE TABLE `dgn_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dgn_app_config`
--

INSERT INTO `dgn_app_config` (`key`, `value`) VALUES
('address', '123 Nowhere street'),
('company', 'digyna'),
('company_logo', ''),
('email', 'changeme@example.com'),
('fax', ''),
('language', 'spanish'),
('language_code', 'es'),
('lines_per_page', '25'),
('phone', '555-555-5555'),
('timezone', 'America/Mexico_City'),
('website', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_contacts`
--

CREATE TABLE `dgn_contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comments` text NOT NULL,
  `read` int(1) DEFAULT '0',
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dgn_contacts`
--

INSERT INTO `dgn_contacts` (`contact_id`, `contact_time`, `first_name`, `last_name`, `gender`, `phone_number`, `email`, `title`, `comments`, `read`, `deleted`) VALUES
(1, '2017-06-17 19:44:15', 'digyna', 'cms', 1, '555-555-55-55', 'mail@example.com', 'Hola!, Esto es un correo desde contacto', 'Para poder administrar, todos los correos, por favor visita la pantalla de contacto en el escritorio.', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_customers`
--

CREATE TABLE `dgn_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_grants`
--

CREATE TABLE `dgn_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  PRIMARY KEY (`permission_id`,`person_id`),
  KEY `dgn_grants_ibfk_2` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dgn_grants`
--

INSERT INTO `dgn_grants` (`permission_id`, `person_id`) VALUES
('adverts', 1),
('adverts_banners', 1),
('adverts_marks', 1),
('adverts_ourcustomers', 1),
('adverts_sliders', 1),
('config', 1),
('contacts', 1),
('customers', 1),
('home', 1),
('products', 1),
('profile', 1),
('sales', 1),
('themes', 1),
('users', 1),
('users_add', 1),
('users_delete', 1),
('users_edit', 1),
('users_export', 1),
('users_read', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_modules`
--

CREATE TABLE `dgn_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `module_icon` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT '0',
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dgn_modules`
--

INSERT INTO `dgn_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `module_icon`, `status`) VALUES
('module_adverts', 'module_adverts_desc', 2, 'adverts', 'fa fa-bullhorn', 0),
('module_banners', 'module_banners_desc', 3, 'adverts_banners', '', 0),
('module_marks', 'module_marks_desc', 4, 'adverts_marks', '', 0),
('module_ourcustomers', 'module_ourcustomers_desc', 5, 'adverts_ourcustomers', '', 0),
('module_sliders', 'module_sliders_desc', 6, 'adverts_sliders', '', 0),
('module_config', 'module_config_desc', 14, 'config', 'icon ion-ios-gear', 0),
('module_contactss', 'module_contacts_desc', 12, 'contacts', 'icon ion-ios-email-outline', 0),
('module_customers', 'module_customers_desc', 9, 'customers', 'icon ion-ios-people', 0),
('module_home', 'module_home_desc', 1, 'home', 'fa fa-desktop', 0),
('module_products', 'module_products_desc', 7, 'products', 'icon ion-bag', 0),
('module_profile', 'module_profile_desc', 10, 'profile', 'fa fa-user', 0),
('module_sales', 'module_sales_desc', 8, 'sales', 'icon ion-ios-cart', 0),
('module_theme', 'module_theme_desc', 13, 'themes', 'icon ion-paintbrush', 0),
('module_users', 'module_users_desc', 11, 'users', 'icon ion-person-stalker', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_people`
--

CREATE TABLE `dgn_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dgn_people`
--

INSERT INTO `dgn_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('admin', '.', NULL, '555-555-5555', 'demo@demo.com', 'Address 1', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_permissions`
--

CREATE TABLE `dgn_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dgn_permissions`
--

INSERT INTO `dgn_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('adverts', 'adverts', NULL),
('adverts_banners', 'adverts_banners', NULL),
('adverts_marks', 'adverts_marks', NULL),
('adverts_ourcustomers', 'adverts_ourcustomers', NULL),
('adverts_sliders', 'adverts_sliders', NULL),
('config', 'config', NULL),
('contacts', 'contacts', NULL),
('customers', 'customers', NULL),
('customers_add', 'customers', NULL),
('customers_delete', 'customers', NULL),
('customers_edit', 'customers', NULL),
('customers_export', 'customers', NULL),
('customers_read', 'customers', NULL),
('home', 'home', NULL),
('products', 'products', NULL),
('profile', 'profile', NULL),
('sales', 'sales', NULL),
('themes', 'themes', NULL),
('users', 'users', NULL),
('users_add', 'users', NULL),
('users_delete', 'users', NULL),
('users_edit', 'users', NULL),
('users_export', 'users', NULL),
('users_read', 'users', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_sessions`
--

CREATE TABLE `dgn_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dgn_sessions`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dgn_users`
--

CREATE TABLE `dgn_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `hash_version` int(1) NOT NULL DEFAULT '2',
  UNIQUE KEY `username` (`username`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dgn_users`
--

INSERT INTO `dgn_users` (`username`, `password`, `person_id`, `deleted`, `hash_version`) VALUES
('admin', '$2y$10$dqrXH5ERqHNSs9KAxW8Cu.aiFLPEstw4tBER08L71NOCURWgiBoq.', 1, 0, 2);

