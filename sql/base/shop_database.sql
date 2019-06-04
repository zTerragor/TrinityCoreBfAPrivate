-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.44-log - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица shop_ashamane.achats
DROP TABLE IF EXISTS `achats`;
CREATE TABLE IF NOT EXISTS `achats` (
  `account_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop_ashamane.achats: ~0 rows (приблизительно)
DELETE FROM `achats`;
/*!40000 ALTER TABLE `achats` DISABLE KEYS */;
/*!40000 ALTER TABLE `achats` ENABLE KEYS */;

-- Дамп структуры для таблица shop_ashamane.battlepay_groups
DROP TABLE IF EXISTS `battlepay_groups`;
CREATE TABLE IF NOT EXISTS `battlepay_groups` (
  `id` int(10) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `iconFileDataId` int(10) DEFAULT NULL,
  `displayType` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop_ashamane.battlepay_groups: ~0 rows (приблизительно)
DELETE FROM `battlepay_groups`;
/*!40000 ALTER TABLE `battlepay_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlepay_groups` ENABLE KEYS */;

-- Дамп структуры для таблица shop_ashamane.battlepay_products
DROP TABLE IF EXISTS `battlepay_products`;
CREATE TABLE IF NOT EXISTS `battlepay_products` (
  `id` int(10) DEFAULT NULL,
  `itemId` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `groupId` int(10) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `bannerType` tinyint(4) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `choiceType` tinyint(3) DEFAULT NULL,
  `serverHardcodedId` int(10) DEFAULT NULL,
  `displayCreature` int(10) DEFAULT NULL,
  `displayFileData` int(10) DEFAULT NULL,
  `displayItem` int(10) DEFAULT NULL,
  `displayCustomItemDeliveryId` int(10) DEFAULT NULL,
  `customFlags` int(10) DEFAULT NULL,
  `customValue` int(11) DEFAULT NULL,
  `logType` int(10) DEFAULT NULL,
  `name` varchar(210) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop_ashamane.battlepay_products: ~0 rows (приблизительно)
DELETE FROM `battlepay_products`;
/*!40000 ALTER TABLE `battlepay_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlepay_products` ENABLE KEYS */;

-- Дамп структуры для таблица shop_ashamane.points
DROP TABLE IF EXISTS `points`;
CREATE TABLE IF NOT EXISTS `points` (
  `account_id` int(10) unsigned NOT NULL,
  `nbPoints` float(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop_ashamane.points: ~0 rows (приблизительно)
DELETE FROM `points`;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
/*!40000 ALTER TABLE `points` ENABLE KEYS */;

-- Дамп структуры для таблица shop_ashamane.updates
DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of all applied updates in this database.';

-- Дамп данных таблицы shop_ashamane.updates: 0 rows
DELETE FROM `updates`;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;

-- Дамп структуры для таблица shop_ashamane.updates_include
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of directories where we want to include sql updates.';

-- Дамп данных таблицы shop_ashamane.updates_include: 1 rows
DELETE FROM `updates_include`;
/*!40000 ALTER TABLE `updates_include` DISABLE KEYS */;
INSERT INTO `updates_include` (`path`, `state`) VALUES
	('$/sql/updates/shop', 'RELEASED');
/*!40000 ALTER TABLE `updates_include` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
