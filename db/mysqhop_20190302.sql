-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5465
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for myshop
DROP DATABASE IF EXISTS `myshop`;
CREATE DATABASE IF NOT EXISTS `myshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `myshop`;

-- Dumping structure for table myshop.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table myshop.categories: 3 rows
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
	(1, 'React', '2014-06-01 00:35:07', '2014-05-31 09:34:33'),
	(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-31 09:34:33'),
	(3, 'Motors', '2014-06-01 00:35:07', '2014-05-31 09:34:54'),
	(5, 'Job', '2019-02-03 11:11:25', '2019-02-03 11:11:25'),
	(6, 'Job', '2019-02-03 11:14:56', '2019-02-03 11:14:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table myshop.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table myshop.products: 11 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
	(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 'Bench Shirt', 'The best shirt!', 29, 1, '2014-06-01 01:12:26', '2014-05-31 10:12:21'),
	(7, 'Lenovo Laptop', 'My business partner.', 399, 2, '2014-06-01 01:13:45', '2014-05-31 10:13:39'),
	(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '2014-06-01 01:14:13', '2014-05-31 10:14:08'),
	(9, 'Spalding Watch', 'My sports watch.', 199, 1, '2014-06-01 01:18:36', '2014-05-31 10:18:31'),
	(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '2014-06-06 17:10:01', '2014-06-06 02:09:51'),
	(11, 'Huawei Y300', 'For testing purposes.', 100, 2, '2014-06-06 17:11:04', '2014-06-06 02:10:54'),
	(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, '2014-06-06 17:12:21', '2014-06-06 02:12:11'),
	(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, '2014-06-06 17:12:59', '2014-06-06 02:12:49'),
	(18, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:16:39', '2019-02-03 11:16:39'),
	(17, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:14:28', '2019-02-03 11:14:28'),
	(19, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:17:10', '2019-02-03 11:17:10'),
	(20, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:17:41', '2019-02-03 11:17:41'),
	(21, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:18:05', '2019-02-03 11:18:05'),
	(22, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:18:32', '2019-02-03 11:18:32'),
	(23, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:19:33', '2019-02-03 11:19:33'),
	(24, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:20:07', '2019-02-03 11:20:07'),
	(25, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:20:45', '2019-02-03 11:20:45'),
	(26, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:21:10', '2019-02-03 11:21:10'),
	(27, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:24:31', '2019-02-03 11:24:31'),
	(28, 'Golang', 'Useful language for dev REST API', 70000, 5, '2019-02-03 11:39:42', '2019-02-03 11:39:42');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
