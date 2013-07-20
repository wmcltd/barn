-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 20, 2013 at 05:34 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barn`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_htmlblob_users`
--

CREATE TABLE IF NOT EXISTS `cms_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htmlblob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_htmlblob_users_seq`
--

CREATE TABLE IF NOT EXISTS `cms_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_additional_htmlblob_users_seq`
--

INSERT INTO `cms_additional_htmlblob_users_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_users`
--

CREATE TABLE IF NOT EXISTS `cms_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_users_seq`
--

CREATE TABLE IF NOT EXISTS `cms_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_additional_users_seq`
--

INSERT INTO `cms_additional_users_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_adminlog`
--

CREATE TABLE IF NOT EXISTS `cms_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(40) DEFAULT NULL,
  KEY `cms_index_adminlog1` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_adminlog`
--

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
(1373760542, 0, '', -1, 'CMSMailer', 'Installed version 5.2.1', ''),
(1373760542, 0, '', -1, 'CMSPrinting', 'Installed version 1.0.4', ''),
(1373760542, 0, '', -1, 'FileManager', 'Installed version 1.4.3', ''),
(1373760542, 0, '', -1, 'MenuManager', 'Installed version 1.8.5', ''),
(1373760543, 0, '', -1, 'MicroTiny', 'Installed version 1.2.5', ''),
(1373760543, 0, '', -1, 'ModuleManager', 'Installed version 1.5.5', ''),
(1373760545, 0, '', -1, 'News', 'Installed version 2.12.12', ''),
(1373760547, 0, '', -1, 'Search', 'Installed version 1.7.8', ''),
(1373760547, 0, '', -1, 'ThemeManager', 'Installed version 1.1.8', ''),
(1373760585, 1, 'dunnadmin', 1, 'Admin Username: dunnadmin', 'Logged In', '::1'),
(1373760585, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '::1'),
(1373760585, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '::1'),
(1373760587, 1, 'dunnadmin', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '::1'),
(1373760927, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373760927, 1, 'dunnadmin', 24, 'HTML-template: modliv', 'Added', '::1'),
(1373760980, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373760983, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373760983, 1, 'dunnadmin', 15, 'Content Item: Home', 'Edited', '::1'),
(1373760987, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761029, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761115, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761131, 1, 'dunnadmin', 54, 'Stylesheet: modliv', 'Added', '::1'),
(1373761134, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761135, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761170, 1, 'dunnadmin', 24, 'Stylesheet Association: modliv', 'Added', '::1'),
(1373761175, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761177, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761234, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761252, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761282, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761774, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761775, 1, 'dunnadmin', -1, 'Global Content Block: news4', 'Can not open or does not exist!', '::1'),
(1373761811, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373762279, 1, 'dunnadmin', 23, 'HTML-template: Simplex', 'Edited', '::1'),
(1373762983, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373764214, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '::1'),
(1373764350, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373764355, 1, 'dunnadmin', -1, 'System maintenance', 'Page hierarchy positions updated', '::1'),
(1373764358, 1, 'dunnadmin', -1, 'System maintenance', 'Static routes rebuilt', '::1'),
(1373764488, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373764570, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373764590, 1, 'dunnadmin', 57, 'Stylesheet: unbound', 'Added', '::1'),
(1373764771, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373765144, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373765185, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373765697, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373765709, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373765904, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373766188, 1, 'dunnadmin', 15, 'Content Item: Welcome!', 'Edited', '::1'),
(1373766366, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373766398, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373766698, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373766814, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373766889, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373769704, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '::1'),
(1373769763, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373769769, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373769817, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373769829, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373769901, 1, 'dunnadmin', 57, 'Content Item: Stone Hearth Lounge', 'Added', '::1'),
(1373769965, 1, 'dunnadmin', 58, 'Content Item: Barn Loft', 'Added', '::1'),
(1373770105, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373770182, 1, 'dunnadmin', 59, 'Content Item: Deck and Patio', 'Added', '::1'),
(1373770249, 1, 'dunnadmin', 60, 'Content Item: Contact us', 'Added', '::1'),
(1373770315, 1, 'dunnadmin', 61, 'Content Item: Events', 'Added', '::1'),
(1373770369, 1, 'dunnadmin', 62, 'Content Item: Weddings', 'Added', '::1'),
(1373770419, 1, 'dunnadmin', 62, 'Content Item: weddings', 'Copied to: holiday-parties', '::1'),
(1373770510, 1, 'dunnadmin', 63, 'Content Item: holiday-parties', 'Copied to: reunions', '::1'),
(1373770531, 1, 'dunnadmin', 64, 'Content Item: reunions', 'Copied to: holiday-parties-2', '::1'),
(1373770565, 1, 'dunnadmin', 65, 'Content Item: holiday-parties-2', 'Copied to: conferences-meetings', '::1'),
(1373770721, 1, 'dunnadmin', -1, 'Module', 'Expanded module: FormBuilder version 0.7.3', '::1'),
(1373770728, 1, 'dunnadmin', -1, 'Form Builder', 'Module version 0.7.3 installed.', '::1'),
(1373770728, 1, 'dunnadmin', -1, 'FormBuilder', 'Installed version 0.7.3', '::1'),
(1373770814, 1, 'dunnadmin', 60, 'Content Item: Contact us', 'Edited', '::1'),
(1373771038, 1, 'dunnadmin', 58, 'Stylesheet Association: FormBuilder Default Style', 'Added', '::1'),
(1373771109, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771128, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771140, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771185, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771198, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771538, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771594, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771610, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771644, 1, 'dunnadmin', 58, 'Stylesheet: FormBuilder Default Style', 'Changed', '::1'),
(1373771663, 1, 'dunnadmin', 26, 'Stylesheet Association: unbound // Unbound', 'Added', '::1'),
(1373771690, 1, 'dunnadmin', 26, 'Stylesheet Association: unbound // Unbound', 'Deleted', '::1'),
(1373771758, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373771777, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373771800, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373771828, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373772194, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373772485, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373772536, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373772587, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373772599, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373772870, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373807091, 1, 'dunnadmin', -1, 'System maintenance', 'Cache cleared', '::1'),
(1373808085, 1, 'dunnadmin', -1, 'Module', 'Expanded module: Album version 1.10.3', '::1'),
(1373808088, 1, 'dunnadmin', -1, 'Photo Albums', 'Release 1.10.3 is installed', '::1'),
(1373808088, 1, 'dunnadmin', -1, 'Album', 'Installed version 1.10.3', '::1'),
(1373809395, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373815719, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '::1'),
(1373815850, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Added', '::1'),
(1373815879, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373815972, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373815999, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373816086, 1, 'dunnadmin', -1, '(IP: ::1) Admin Username: darfine', 'Login Failed', '::1'),
(1373816188, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373816217, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373816283, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373816373, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373816395, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373816560, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373819168, 1, 'dunnadmin', 3, 'User Defined Tag: photoblock1', 'Edited', '::1'),
(1373819221, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373819361, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '::1'),
(1373819437, 1, 'dunnadmin', -1, 'Module', 'Expanded module: Showtime version 3.3', '::1'),
(1373819440, 1, 'dunnadmin', -1, 'Showtime Slideshow', 'Module version 3.3 installed.', '::1'),
(1373819440, 1, 'dunnadmin', -1, 'Showtime', 'Installed version 3.3', '::1'),
(1373819992, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373820028, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373820062, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373821532, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821546, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821585, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821607, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821625, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821647, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821660, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821681, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821759, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '::1'),
(1373821868, 1, 'dunnadmin', 1, 'Global Content Block: footer', 'Edited', '::1'),
(1373821910, 1, 'dunnadmin', 1, 'Global Content Block: footer', 'Edited', '::1'),
(1373821969, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373828791, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373828812, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373828829, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373828898, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373829202, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373829236, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373829259, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373829302, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373829327, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373847442, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1373847442, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1373851141, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '::1'),
(1373851142, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373851171, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '::1'),
(1373851239, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373851348, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373851383, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373851617, 1, 'dunnadmin', 26, 'HTML-template: unbound // Unbound', 'Edited', '::1'),
(1373851797, 1, 'dunnadmin', -1, 'MenuManager', 'Edited template EventMenu', '::1'),
(1373855983, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1373993085, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1373993085, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1373996730, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374014081, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374061331, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374065009, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374080297, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374080298, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1374086417, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374119538, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374165985, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374178541, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
(1374178541, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1374236016, 0, '', -1, '(IP: 127.0.0.1) Admin Username: darfine', 'Login Failed', ''),
(1374236023, 0, '', -1, '(IP: 127.0.0.1) Admin Username: darfine', 'Login Failed', ''),
(1374236049, 0, '', -1, '(IP: 127.0.0.1) Admin Username: barnadmin', 'Login Failed', ''),
(1374236059, 1, 'dunnadmin', 1, 'Admin Username: dunnadmin', 'Logged In', '127.0.0.1'),
(1374236060, 1, 'dunnadmin', -1, 'Core', 'Tested for newer CMSMS Version. None Available.', '127.0.0.1'),
(1374236299, 1, 'dunnadmin', 59, 'Content Item: deck-and-patio', 'Copied to: outdoor-space', '127.0.0.1'),
(1374236356, 1, 'dunnadmin', 67, 'Content Item: outdoor-space', 'Copied to: more-ammenities', '127.0.0.1'),
(1374236411, 1, 'dunnadmin', 68, 'Content Item: More Amenities', 'Edited', '127.0.0.1'),
(1374236510, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Added', '127.0.0.1'),
(1374236879, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374237849, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374237885, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374237913, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374237952, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238189, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238227, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238343, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '127.0.0.1'),
(1374238374, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '127.0.0.1'),
(1374238393, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '127.0.0.1'),
(1374238437, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '127.0.0.1'),
(1374238451, 1, 'dunnadmin', 56, 'Stylesheet: unbound // Unbound', 'Changed', '127.0.0.1'),
(1374238538, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '127.0.0.1'),
(1374238613, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '127.0.0.1'),
(1374238706, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238723, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238744, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238779, 1, 'dunnadmin', 69, 'Content Item: Directions', 'Edited', '127.0.0.1'),
(1374238853, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '127.0.0.1'),
(1374238853, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '127.0.0.1'),
(1374238873, 1, 'dunnadmin', 15, 'Content Item: Welcome', 'Edited', '127.0.0.1'),
(1374283591, 1, 'dunnadmin', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '127.0.0.1'),
(1374285239, 1, 'dunnadmin', 1, 'Admin Username: dunnadmin', 'Logged In', '127.0.0.1'),
(1374285346, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Added', '127.0.0.1'),
(1374285451, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374285462, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374285640, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374285659, 1, 'dunnadmin', -1, 'Image: ry=400-3.jpeg', 'Uploaded', '127.0.0.1'),
(1374285674, 1, 'dunnadmin', -1, 'Image: ry=400-2.jpeg', 'Uploaded', '127.0.0.1'),
(1374285716, 1, 'dunnadmin', -1, 'FileManager', 'ry=400-3.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285716, 1, 'dunnadmin', -1, 'FileManager', 'ry=400.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285716, 1, 'dunnadmin', -1, 'FileManager', 'ry=400-1.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285717, 1, 'dunnadmin', -1, 'FileManager', 'ry=400-2.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285749, 1, 'dunnadmin', -1, 'Image Manager', 'Created new directory: history', '127.0.0.1'),
(1374285760, 1, 'dunnadmin', -1, 'FileManager', 'ry=400-2.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285760, 1, 'dunnadmin', -1, 'FileManager', 'ry=400.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285760, 1, 'dunnadmin', -1, 'FileManager', 'ry=400-1.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285760, 1, 'dunnadmin', -1, 'FileManager', 'ry=400-3.jpeg uploaded to /Users/darfine/Sites/barn/uploads', '127.0.0.1'),
(1374285889, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374285928, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374285981, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286048, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286136, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286256, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286295, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286401, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286624, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1'),
(1374286660, 1, 'dunnadmin', 70, 'Content Item: History of Dunvilla', 'Edited', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_bookmarks`
--

CREATE TABLE IF NOT EXISTS `cms_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `cms_index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_bookmarks_seq`
--

CREATE TABLE IF NOT EXISTS `cms_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_admin_bookmarks_seq`
--

INSERT INTO `cms_admin_bookmarks_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_recent_pages`
--

CREATE TABLE IF NOT EXISTS `cms_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_recent_pages_seq`
--

CREATE TABLE IF NOT EXISTS `cms_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_admin_recent_pages_seq`
--

INSERT INTO `cms_admin_recent_pages_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_content`
--

CREATE TABLE IF NOT EXISTS `cms_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `markup` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `cms_index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `cms_index_content_by_default_content` (`default_content`),
  KEY `cms_index_content_by_parent_id` (`parent_id`),
  KEY `cms_index_content_by_hierarchy` (`hierarchy`),
  KEY `cms_index_content_by_idhier` (`content_id`,`hierarchy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content`
--

INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES
(15, 'Welcome', 'content', 1, -1, 26, 1, '00001', 1, 'Home', 'home', 1, 1, 'html', 1, 1, '15', 'home', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,image1,content_en,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu', '', 'Home Page, shortcut key=1', '', '1', 1, '2006-07-25 21:22:31', '2013-07-19 08:01:13', 0, ''),
(40, 'Menu Manager', 'content', 1, 20, 26, 2, '00007.00001.00002', 0, 'Menu Manager', 'menu-manager-2', 1, NULL, 'html', 1, 1, '24.20.40', 'default-extensions/modules/menu-manager-2', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(28, 'User Defined Tags', 'content', 1, 25, 26, 2, '00007.00002.00002', 0, 'User Defined Tags', 'user-defined-tags', 1, 1, 'html', 1, 1, '24.25.28', 'default-extensions/tags/user-defined-tags', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(24, 'Default Extensions', 'content', 1, -1, 26, 7, '00007', 0, 'Default Extensions', 'default-extensions', 1, 0, 'html', 0, 1, '24', 'default-extensions', 'content_en,block1,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 21:50:56', 0, ''),
(39, 'News', 'content', 1, 20, 26, 1, '00007.00001.00001', 0, 'News', 'news', 1, NULL, 'html', 1, 1, '24.20.39', 'default-extensions/modules/news', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(36, 'Templates and stylesheets', 'content', 1, 34, 26, 1, '00005.00001', 0, 'Templates and stylesheets', 'templates-and-stylesheets', 1, NULL, 'html', 1, 1, '34.36', 'how-cmsms-works/templates-and-stylesheets', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,content_en', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(37, 'Pages and navigation', 'content', 1, 34, 26, 2, '00005.00002', 0, 'Pages and navigation', 'pages-and-navigation', 1, NULL, 'html', 1, 1, '34.37', 'how-cmsms-works/pages-and-navigation', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,content_en', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(16, 'CSSMenu top + 2 columns', 'content', 1, 19, 26, 4, '00006.00004', 0, 'CSSMenu top + 2 columns', 'cssmenu_horizontal', 1, 1, 'html', 1, 1, '19.16', 'default_templates/cssmenu_horizontal', 'Sidebar,block1,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,content_en', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(13, 'Left simple navigation + 1 column', 'content', 1, 19, 26, 2, '00006.00002', 0, 'Left simple navigation + 1 column', 'navleft', 1, 0, 'html', 1, 1, '19.13', 'default_templates/navleft', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(18, 'CSSMenu left + 1 column', 'content', 1, 19, 26, 5, '00006.00005', 0, 'CSSMenu left + 1 column', 'cssmenu_vertical', 1, 1, 'html', 1, 1, '19.18', 'default_templates/cssmenu_vertical', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(19, 'Default Templates Explained', 'content', 1, -1, 26, 6, '00006', 0, 'Default Templates Explained', 'default_templates', 1, 0, 'html', 0, 1, '19', 'default_templates', 'block1,content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 21:51:11', 0, ''),
(20, 'Modules', 'content', 1, 24, 26, 1, '00007.00001', 0, 'Modules', 'modules', 1, 1, 'html', 1, 1, '24.20', 'default-extensions/modules', 'content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg', '', '', NULL, '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(22, 'Top simple navigation + left subnavigation + 1 column', 'content', 1, 19, 26, 3, '00006.00003', 0, 'Top simple navigation + left subnavigation + 1 column', 'top_left', 1, 0, 'html', 1, 1, '19.22', 'default_templates/top_left', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(25, 'Tags', 'content', 1, 24, 26, 2, '00007.00002', 0, 'Tags', 'tags', 1, 0, 'html', 1, 1, '24.25', 'default-extensions/tags', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(26, 'Tags in the core', 'content', 1, 25, 26, 1, '00007.00002.00001', 0, 'Tags in the core', 'tags-in-the-core', 1, 1, 'html', 1, 1, '24.25.26', 'default-extensions/tags/tags-in-the-core', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(29, 'Content', 'content', 1, 34, 26, 3, '00005.00003', 0, 'Content', 'content_types', 1, 1, 'html', 1, 0, '34.29', 'how-cmsms-works/content_types', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(34, 'How CMSMS Works', 'content', 1, -1, 26, 5, '00005', 0, 'How CMSMS Works', 'how-cmsms-works', 1, NULL, 'html', 0, 1, '34', 'how-cmsms-works', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 21:50:54', 0, ''),
(38, 'Workflow', 'content', 1, 34, 26, 7, '00005.00007', 0, 'Workflow', 'workflow', 1, NULL, 'html', 1, 1, '34.38', 'how-cmsms-works/workflow', 'content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg', '', '', NULL, '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(30, 'Menu Manager', 'content', 1, 34, 26, 4, '00005.00004', 0, 'Menu Manager', 'menu-manager', 1, NULL, 'html', 1, 1, '34.30', 'how-cmsms-works/menu-manager', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(41, 'Theme Manager', 'content', 1, 20, 26, 3, '00007.00001.00003', 0, 'Theme Manager', 'theme-manager', 1, NULL, 'html', 1, 1, '24.20.41', 'default-extensions/modules/theme-manager', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(42, 'MicroTiny', 'content', 1, 20, 26, 4, '00007.00001.00004', 0, 'MicroTiny', 'microtiny', 1, NULL, 'html', 1, 1, '24.20.42', 'default-extensions/modules/microtiny', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(43, 'Search', 'content', 1, 20, 26, 5, '00007.00001.00005', 0, 'Search', 'search', 1, NULL, 'html', 1, 1, '24.20.43', 'default-extensions/modules/search', 'content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg', '', '', NULL, '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(44, 'Minimal template', 'content', 1, 19, 26, 6, '00006.00006', 0, 'Minimal template', 'minimal-template', 1, NULL, 'html', 1, 1, '19.44', 'default_templates/minimal-template', 'content_en', NULL, NULL, NULL, NULL, 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(45, 'Event Manager', 'content', 1, 34, 26, 6, '00005.00006', 0, 'Event Manager', 'event-manager', 1, NULL, 'html', 1, 1, '34.45', 'how-cmsms-works/event-manager', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(46, 'Extensions', 'content', 1, 34, 26, 5, '00005.00005', 0, 'Extensions', 'extensions', 1, NULL, 'html', 1, 1, '34.46', 'how-cmsms-works/extensions', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(47, 'Where do I get help?', 'content', 1, 34, 26, 8, '00005.00008', 0, 'Where do I get help?', 'where-do-i-get-help', 1, NULL, 'html', 1, 1, '34.47', 'how-cmsms-works/where-do-i-get-help', 'content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg', '', '', NULL, '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(49, 'CMSMS tags in the templates', 'content', 1, 19, 26, 1, '00006.00001', 0, 'CMSMS tags in the templates', 'cmsms_tags', 1, NULL, 'html', 1, 1, '19.49', 'default_templates/cmsms_tags', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,content_en', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(50, 'Module Manager', 'content', 1, 20, 26, 6, '00007.00001.00006', 0, 'Module Manager', 'module-manager', 1, NULL, 'html', 1, 1, '24.20.50', 'default-extensions/modules/module-manager', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,content_en', '', '', '', '', 1, '2006-07-25 21:22:31', '2013-07-13 20:31:01', 0, ''),
(51, 'ShadowMenu Tab + 2 columns', 'content', 1, 55, 26, 2, '00006.00007.00002', 0, 'ShadowMenu Tab + 2 columns', 'shadowmenu-tab-2-columns', 1, NULL, 'html', 1, 1, '19.55.51', 'default_templates/higher-end/shadowmenu-tab-2-columns', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,Sidebar', '<!-- Add code here that should appear in the metadata section of all new pages -->', '', '', '', 1, '2009-05-01 04:35:27', '2013-07-13 20:31:01', 0, ''),
(52, 'ShadowMenu left + 1 column', 'content', 1, 55, 26, 3, '00006.00007.00003', 0, 'ShadowMenu left + 1 column', 'shadowmenu-left-1-column', 1, NULL, 'html', 1, 1, '19.55.52', 'default_templates/higher-end/shadowmenu-left-1-column', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '<!-- Add code here that should appear in the metadata section of all new pages -->', '', '', '', 1, '2009-05-01 23:21:16', '2013-07-13 20:31:01', 0, ''),
(54, 'NCleanBlue', 'content', 1, 55, 26, 1, '00006.00007.00001', 0, 'NCleanBlue', 'ncleanblue', 1, NULL, 'html', 1, 1, '19.55.54', 'default_templates/higher-end/ncleanblue', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '<!-- Add code here that should appear in the metadata section of all new pages -->', '', '', '', 1, '2009-05-06 14:33:48', '2013-07-13 20:31:01', 0, ''),
(55, 'Higher End', 'content', 1, 19, 26, 7, '00006.00007', 0, 'Higher End', 'higher-end', 1, NULL, 'html', 1, 1, '19.55', 'default_templates/higher-end', 'image,target,thumbnail,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,content_en', '', '', '', '', 1, '2009-05-08 22:20:35', '2013-07-13 20:31:01', 0, ''),
(56, 'Welcome to Simplex Theme example', 'content', 1, 19, 26, 8, '00006.00008', 0, 'Simplex Theme', 'simplex-theme', 1, NULL, 'html', 1, 1, '19.56', 'default_templates/simplex-theme', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2012-05-17 09:35:37', '2013-07-13 20:31:01', 0, ''),
(57, 'Stone Hearth Lounge', 'content', 1, 15, 26, 1, '00001.00001', 0, 'Fireplace Lounge', 'fireplace-lounge', 1, NULL, 'html', 1, 1, '15.57', 'home/fireplace-lounge', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:45:01', '2013-07-13 21:45:01', 0, ''),
(58, 'Barn Loft', 'content', 1, 15, 26, 2, '00001.00002', 0, 'Barn Loft', 'barn-loft', 1, NULL, 'html', 1, 1, '15.58', 'home/barn-loft', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:46:05', '2013-07-13 21:46:05', 0, ''),
(59, 'Deck and Patio', 'content', 1, 15, 26, 3, '00001.00003', 0, 'Deck and Patio', 'deck-and-patio', 1, NULL, 'html', 1, 1, '15.59', 'home/deck-and-patio', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:49:41', '2013-07-13 21:49:41', 0, ''),
(60, 'Contact us', 'content', 1, -1, 26, 4, '00004', 0, 'Contact us', 'contact-us', 1, NULL, 'html', 1, 1, '60', 'contact-us', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:50:49', '2013-07-13 22:00:14', 0, ''),
(61, 'Events', 'content', 1, -1, 26, 2, '00002', 0, 'Events', 'events', 1, NULL, 'html', 1, 1, '61', 'events', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:51:55', '2013-07-13 21:51:55', 0, ''),
(62, 'Weddings', 'content', 1, 61, 26, 1, '00002.00001', 0, 'Weddings', 'weddings', 1, NULL, 'html', 1, 1, '61.62', 'events/weddings', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:52:49', '2013-07-13 21:52:49', 0, ''),
(63, 'Holiday Parties', 'content', 1, 61, 26, 2, '00002.00002', 0, 'Holiday Parties', 'holiday-parties', 1, NULL, 'html', 1, 1, '61.63', 'events/holiday-parties', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:53:38', '2013-07-13 21:53:38', 0, ''),
(64, 'Reunions', 'content', 1, 61, 26, 3, '00002.00003', 0, 'Reunions', 'reunions', 1, NULL, 'html', 1, 1, '61.64', 'events/reunions', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:55:10', '2013-07-13 21:55:10', 0, ''),
(65, 'Holiday Parties', 'content', 1, 61, 26, 4, '00002.00004', 0, 'Holiday Parties', 'holiday-parties-2', 1, NULL, 'html', 1, 1, '61.65', 'events/holiday-parties-2', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:55:31', '2013-07-13 21:55:31', 0, ''),
(66, 'Conferences & Meetings', 'content', 1, 61, 26, 5, '00002.00005', 0, 'Conferences & Meetings', 'conferences-meetings', 1, NULL, 'html', 1, 1, '61.66', 'events/conferences-meetings', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-13 21:56:05', '2013-07-13 21:56:05', 0, ''),
(67, 'Outdoor Space', 'content', 1, 15, 26, 4, '00001.00004', 0, 'Outdoor Space', 'outdoor-space', 1, NULL, 'html', 1, 1, '15.67', 'home/outdoor-space', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-19 07:18:18', '2013-07-19 07:18:18', 0, ''),
(68, 'More Amenities', 'content', 1, 15, 26, 5, '00001.00005', 0, 'More Amenities', 'more-ammenities', 1, NULL, 'html', 1, 1, '15.68', 'home/more-ammenities', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-19 07:19:16', '2013-07-19 07:20:11', 0, ''),
(69, 'Directions', 'content', 1, -1, 26, 8, '00008', 0, 'Directions', 'directions', 1, NULL, 'html', 1, 1, '69', 'directions', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-19 07:21:50', '2013-07-19 07:59:39', 0, ''),
(70, 'History of Dunvilla', 'content', 1, -1, 26, 3, '00003', 0, 'History', 'history', 1, NULL, 'html', 1, 1, '70', 'history', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,Display_Extra_Page_Data,Display_Search,Display_News,Display_Sidebar_Menu,Display_Recently_Updated,Display_News_Categories,Display_Footer_Menu,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2013-07-19 20:55:46', '2013-07-19 21:17:40', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_props`
--

CREATE TABLE IF NOT EXISTS `cms_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content_props`
--

INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(16, 'string', 'Sidebar', '', '', '', '<p>Just some test content goes here as an example of a very long sentence that probably should have been divided into several smaller sentences, were it not for this just being a test sentence on one of the default pages of CMS Made Simple, an excellent Content Management System for easily creating web sites, this sentence is added when adding/editing a page in the Sidebar: text area, this comes from the template place holder {ldelim}content block=''Sidebar''}.</p>', NULL, '2009-05-04 17:02:56'),
(47, 'string', 'content_en', '', '', '', '<p>The CMS Made Simple community is always at your service if you need some help with your site. Here is where you find more information and support:</p>\r\n<ul>\r\n<li>{cms_selflink ext=''http://wiki.cmsmadesimple.org/'' text=''The CMSMS Documentation Wiki''} -- start here, this documentation is a community effort where anyone registered in the forums can add and edit</li>\r\n<li>{cms_selflink ext=''http://forum.cmsmadesimple.org/'' text=''The CMSMS Forums''} -- here you can search for answers to your questions or ask just about anything.</li>\r\n<li>{cms_selflink ext=''http://cmsmadesimple.org/main/support/IRC'' text=''IRC''} -- IRC is short for Internet Relay Chat and is like a community chat. Many developers hang out here and others that are ready to discuss and give support.</li>\r\n</ul>\r\n<p>Please remember that people involved in developing and supporting CMSMS have day jobs and other duties and might not be available 24/7. Be patient and polite and you will get better answers.</p>\r\n<p>Hope you will enjoy using CMS Made Simple for creating your web sites! If you want to contribute to the development yourself, you are very welcome to do so. You can contact us on {cms_selflink ext=''http://cmsmadesimple.org/main/support/IRC'' text=''IRC''} or hit the {cms_selflink ext=''http://forum.cmsmadesimple.org/'' text=''forums''} to get involved.</p>', NULL, '2009-05-12 20:23:09'),
(30, 'string', 'content_en', '', '', '', '<p>The Menu Manager is a module that reads your page hierarchy and builds a navigation using a ''Menu Manager Template''. By default a few sample menu manager templates are included with your default installation. For most users these are enough, as a menu basically is just an unordered list that is styled with CSS.</p>\r\n<p>The Menu Manager module also accepts various optional attributes (parameters) in the {ldelim}menu{rdelim} tag to allow you to customize its behavior. You can see the list and explanation of these parameters in the Menu Manager Help which can be found on the right side of the screen when you click on "Layout &raquo; Menu Manager" in the administration console.</p>\r\n<p>Customizing templates in the Menu Manager is as simple as clicking the ''Import Template to Database'' button, which will then allow you to create a template with a new name, and modify the layout of the template. You can use your new navigation template by specifying the new name in the call to {ldelim}menu{rdelim} in your page template. i.e: {ldelim}menu template=''mynewtemplate''{rdelim}.</p>\r\n<h3>Menu Manager in the CMSMS Admin Panel</h3>\r\n<p>Read more about how to do this in the <strong>Help</strong> for the Menu Manager in the CMSMS Admin Panel. It can be found in the Layout menu.</p>', NULL, '2009-05-12 20:16:51'),
(55, 'string', 'image', '', '', '', '-1', NULL, '2009-05-09 14:04:30'),
(24, 'string', 'content_en', '', '', '', '<p>With the default installation of CMS Made Simple come six modules and a number of tags. The features of these are described and displayed on the following pages.</p>\r\n<p>To find out more about the core modules, click {cms_selflink page=''modules'' text=''Modules''}. For an explanation the core tags, simply click {cms_selflink page=''tags'' text=''Tags''}.</p>', NULL, '2013-07-13 21:50:56'),
(20, 'string', 'content_en', '', '', '', '<p>There are six modules that come with the default installation of CMS Made Simple. On the following pages we explain how these are used. Click on each module name in the menu to the left or in the list below.</p>\r\n<p>To insert a module in a template or a page you normally use the <code>{ldelim}cms_module}</code> tag with the module name as one of the parameters. But to simplify things, all core modules also have a tag wrapper, so that they are called simple by their name, like <code>{ldelim}news}</code>.</p>\r\n<ul>\r\n<li>{cms_selflink page=''news'' text=''News''}</li>\r\n<li>{cms_selflink page=''menu-manager-2'' text=''Menu Manager''}</li>\r\n<li>{cms_selflink page=''theme-manager'' text=''Theme Manager''}</li>\r\n<li>{cms_selflink page=''microtiny'' text=''MicroTiny''}</li>\r\n<li>{cms_selflink page=''search'' text=''Search''}</li>\r\n<li>{cms_selflink page=''module-manager'' text=''Module Manager''}</li>\r\n</ul>', NULL, '2009-05-12 20:41:29'),
(24, 'string', 'block1', '', '', '', NULL, NULL, '2013-07-13 21:50:56'),
(40, 'string', 'content_en', '', '', '', '<p>The Menu Manager has already been explained on the How CMSMS Works &raquo; {cms_selflink page=''menu-manager'' text=''Menu Manager''} page. It is a very powerful module that can be used for any kind of navigation system on your web site.</p>', NULL, '2009-05-12 20:48:34'),
(41, 'string', 'content_en', '', '', '', '<p>The Theme Manager module allows you to import and export templates and their attached stylesheets, including any images they use, as "themes". This allows you to share your look and feel with other CMSMS users.</p>\r\n<p>It is very easy to convert any kind of template to be used with CMS Made Simple. Many templates like this have already been converted and can be installed using the Theme Manager, the CMSMS community also shares themes for anyone to download and use at the {cms_selflink ext=''http://themes.cmsmadesimple.org'' text=''CMSMS Themes site'' target="_blank"}.</p>', NULL, '2009-05-12 20:50:17'),
(42, 'string', 'content_en', '', '', '', '<p>MicroTiny is a so called WYSIWYG editor for editing pages. WYSIWYG stands for What You See Is What You Get. It works similar to a word processor, where you can select the style for the content and see how it is going to look on the page.</p>\r\n<p>Among available WYSIWYG editors CMS Made Simple has decided to use MicroTiny (the stripped down version of TinyMCE). TinyMCE is among the most developed WYSIWYG editors, with regular updates, a large following and customizable features.</p>\r\n<p>However, it is very difficult to create a cross-browser online editor that works in all different kinds of environments. If you are familiar with HTML you can select no WYSIWYG in My Preferences &raquo; User Preferences in the Admin Panel. That gives you more control over the code that will be on the page.</p>\r\n<p>There are also other WYSIWYG editor modules available for download.</p>', NULL, '2009-05-12 20:50:43'),
(43, 'string', 'content_en', '', '', '', '<p>Search is a module for searching "core" content along with certain registered modules. You put in a word or two and it gives you back matching, relevant results.</p>\r\n<p>You can see the search module in use in the default templates, like on this page. Simply put <code>{ldelim}search}</code> in your template, where you want the search form to appear. If you want the results of a search to appear on a different page, you can specify this with the parameter <code>resultpage=''page alias''</code>.</p>\r\n<p>For more information, see the Search module in the Admin Panel, in the Extensions menu.</p>', NULL, '2009-05-12 20:51:17'),
(39, 'string', 'content_en', '', '', '', '<p>Most web sites have a section for the latest news. In CMS Made Simple the best way to accomplish that is by using the News module.</p>\r\n<p>To display a list of news items you insert the tag <code>{ldelim}news number=''5'' category=''General''}</code>. On this page the tag is inserted in the template. But it can also be inserted on a page. You can see the News module in use in the sidebar to the left.</p>\r\n<p>There are a number of parameters that can be used in conjunction with this tag. To read about how a module is used, navigate to Extensions &raquo; Modules in the Admin Panel and click on "Help" for the module you want to read about.</p>', NULL, '2009-05-12 20:42:16'),
(45, 'string', 'content_en', '', '', '', '<p>Events are a new powerful way of assigning actions to events. For example if you would like to send an email to the site administrator when a new file is uploaded or a new page is created by another user you could add some code to those events to be executed when that event happens.</p>\r\n<p>In brief here''s how it works:</p>\r\n<p>a) A module, or the core, can register, and then Send Events such as "newNews", or "newFronteEndUser" or "fileUploaded", "editPage", etc, etc, etc. there''s some 50 events in the core at the moment, and then uploads and frontend users have been configured to send events, We still have to do selfreg, etc, etc, etc.</p>\r\n<p>b) There are pages in the admin to allow you to specify which modules, and/or user tags should handle those events, and the order that each of those handlers should be called in.</p>\r\n<p>c) If one of the handlers of an event is a module, then.... the modules DoEvent method is called with the name of the event, and whatever data it wants to send. Each triggered event needs to be documented, but as of this moment, most are.</p>', NULL, '2009-05-12 20:22:16'),
(55, 'string', 'target', '', '', '', '', NULL, '2009-05-09 14:04:30'),
(38, 'string', 'content_en', '', '', '', '<p>These are the basic steps when creating a website with CMS Made Simple:</p>\r\n<ol>\r\n<li><em>Plan</em> -- Determine what pages you want (structure) and how you want  these pages to look (design). </li>\r\n<li><em>Create Templates</em> -- Create one or several template(s) that  determine the layout of your pages. </li>\r\n<li><em>Style the Templates</em> -- Attach one or more stylesheets to each  template and style the layout and content with CSS. </li>\r\n<li><em>Create Pages</em> -- Then you create pages, add content to them and  select what template to use for each page. </li>\r\n</ol>\r\n<p>When a user navigates to your site the page is created from the template,  adding the content where the placeholder(s) are in the template.</p>', NULL, '2009-05-12 20:22:33'),
(16, 'string', 'block1', '', '', '', NULL, NULL, '2009-05-04 17:02:56'),
(18, 'string', 'content_en', '', '', '', '<p>This is basically the same as the last one, CSSMenu top + 2 column, with the menu on the left instead of across the top there isn''t a whole lot to say about it.</p>\r\n<h3>Filler Text</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut ac leo in lorem ultricies sollicitudin. Vivamus molestie elit nec nulla. Suspendisse potenti. Suspendisse at lorem. Donec pulvinar, magna eget molestie pretium, justo sem iaculis urna, eget condimentum nibh augue pellentesque arcu. Integer tristique tempor mauris. Sed justo orci, commodo volutpat, sagittis vitae, varius vitae, massa. Maecenas pede ligula, iaculis sit amet, pharetra eu, adipiscing consectetuer, eros. Duis ullamcorper nisl ac magna. Nunc neque dolor, posuere dapibus, convallis non, tristique sed, nibh. Suspendisse quis leo. Phasellus pretium erat ut purus. Duis facilisis consectetuer sapien. Nulla eget pede ut nisl faucibus consequat. Quisque erat lectus, luctus in, pellentesque ac, adipiscing eu, enim. Donec ultrices laoreet urna.</p>\r\n<h3>Subheading</h3>\r\n<p>Vestibulum vitae tellus. Fusce quis ligula. Cras mi. Mauris congue, lacus eget rhoncus venenatis, mi nunc volutpat nisl, ut ornare erat augue quis mauris. Nulla in sem. Donec semper odio ac ante. Cras a libero in risus mattis commodo. Phasellus pellentesque lectus. Donec a mi. Integer euismod neque at arcu. Morbi ligula nulla, dapibus nec, fermentum ut, tristique vel, pede. Morbi at diam. Vestibulum quam. Cras consectetuer wisi id neque. Etiam dictum vulputate ligula. Aliquam erat volutpat. Proin vitae lorem in justo imperdiet nonummy. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse leo. Sed in eros ut lectus lacinia condimentum.</p>', NULL, '2009-05-12 20:39:49'),
(20, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'image', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'searchable', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(20, 'string', 'disable_wysiwyg', '', '', '', '', NULL, '2009-05-12 20:41:29'),
(29, 'string', 'content_en', '', '', '', '<p>The content is the information for the page. We have already mentioned that for each page on your site you  choose what template to use. When you add content to a page, it is automatically  placed in the placeholders of the template selected for that page.</p>\r\n<p>A template can define one or several content areas, or content blocks. To add more content blocks to your template, use <code>{ldelim}content block=''block name''}</code>. These blocks will then appear as text areas when you edit or add a page that uses that template.</p>\r\n<p>You can make a content block use only one line, instead of a full text area, by using the parameter oneline=true. That is, the full tag being: <code>{ldelim}content block=''block name'' oneline=true}</code>. Read about more parameters in the help for the Content tag in the CMSMS Admin Panel, under Extensions &raquo; Tags.</p>\r\n<h3>Content Types</h3>\r\n<p>There are currently 6 main content types in version {cms_version} "{cms_versionname}". These content types determine the type of content for each menu item.</p>\r\n<ul>\r\n<li>Content</li>\r\n<li>Error Page</li>\r\n<li>External Page Link</li>\r\n<li>Internal Page Link</li>\r\n<li>Section Header</li>\r\n<li>Separator</li>\r\n</ul>\r\n<p>The <strong>Content</strong> type is simply a regular page. Normally this is the only one you will use. That is what this page you are reading is. Here you can put any content that you would put on a regular page. The layout of these types of pages are controlled by the templates. For each <strong>content</strong> page you create you must add the title, menu text, choose if it is going to have a parent and choose a template for it.  If you login as admin and change the template of this page, you will see exactly how it works.</p>\r\n<p>The <strong>Error Page</strong> type is just what it sounds like, a page you set for "404 page not found" errors, where you can add the content that shows when a 404 error occurs, a target type and title, you can also choose the template it uses, it has no parent as it is not part of the menu.</p>\r\n<p>The <strong>External Page Link</strong> type is just what it sounds like, a link to another external page and you add the title, menu text, choose if it is going to have a parent and a destination page along with the target setting and other options that a content type page has. This <strong>external page link</strong> type also shows up in the menu following the same hierarchy rules as the <strong>content</strong> type.</p>\r\n<p>The <strong>Internal Page Link</strong> type is also just what it sounds like, a link to another internal page. This <strong>internal page link</strong> type also shows up in the menu following the same hierarchy rules as the <strong>content</strong> type and you add the title, menu text, choose if it is going to have a parent and a destination page along with the target setting and other options that a content type page has.</p>\r\n<p>The <strong>Section Header</strong> type is used to break up menus into groupings (sections). This is unrelated to the hierarchy, as the section headers have no associated pages with them but can be used to group a set of links of similar content under them. They are just a little bit of text to say what the next few links are in reference to.</p>\r\n<p>The <strong>Separator</strong> type is just what it sounds like, a separator that appears on the menus. This type follows the hierarchy set in content management pages.</p>', NULL, '2009-05-12 20:16:13'),
(46, 'string', 'content_en', '', '', '', '<p>There are three kinds of extensions, that can add many kinds of functionality to your default CMS Made Simple install. They are called tags, user defined tags, and modules.</p>\r\n<h3>Tags</h3>\r\n<p>Tags are the simplest form of extensions. They are designed to accomplish just one small and specific task.</p>\r\n<p>There are a number of custom tags available with CMS Made Simple. To find what kind of tags are available look in Extensions &raquo; Tags in the Admin Panel.</p>\r\n<p>To insert any of these in a template or a page, simply type e.g. <code>{ldelim}content}</code>. Many of these Smarty tags are used as placeholders in a template, i.e. placeholders for content, navigation, breadcrumbs etc.</p>\r\n<p>Website developers who have a bit of PHP experience will find it easy to create and share their own custom tags.</p>\r\n<h3>User defined tags</h3>\r\n<p>Users can also create their own tags to insert in templates or pages., these are called user defined tags. They are snippets of php code (but without the &lt;?php and ?&gt; surrounding them), providing the ability to add re-usable pieces of php functionality to your site. User defined tags are inserted in templates and pages just like tags: <code>{ldelim}tagname}</code>.</p>\r\n<p>Typically, user defined tags provide a utility that is special to a website, and likely won''t need to be re-used on another site. Also they are typically small and used for simple tasks.</p>\r\n<p>{cms_selflink ext=''http://wiki.cmsmadesimple.org/index.php/Share_your_tags_here'' text=''Share your user defined tags and use those that others have created''}.</p>\r\n<h3>Modules</h3>\r\n<p>Modules are the highest level of plugin in the CMS Made Simple environment. They are designed to allow developers to implement complex tasks within CMSMS. A module typically provides advanced functionality, usually interacts with the database in complex ways, and may provide numerous reports or forms on the website. Additionally, a module may have an administrative interface to allow manipulating its data and its settings.</p>\r\n<p>An extremely well defined API <em>(Application Programming Interface)</em> has been written to allow module developers to write complex, intricate, and fully functioning applications for use within a CMSMS powered website.</p>\r\n<p>There are {cms_selflink page=''modules'' text=''a few modules included''} with the default installation of CMS Made Simple. Other popular modules are Frontend Users, Album, Calendar, Guestbook and Form Builder.</p>\r\n<p>The ModuleManager module (included with CMS Made Simple) allows browsing a list of available modules, reading about them, and then installing them on your website.</p>\r\n<p>To insert modules in a template or a page, you actually use the module name as a parameter to the <code>{ldelim}cms_module}</code> tag. It looks like this: <code>{ldelim}cms_module module=''modulename'' parameter1=''this'' parameter2=5 parameter3=''that''}</code>. It is normal for modules to accept parameters to effect changes to their default behavior, though it is not always required.</p>\r\n<h3>Read more</h3>\r\n<p>You can read more about extensions in the {cms_selflink ext=''http://wiki.cmsmadesimple.org/index.php/User_Handbook/Admin_Panel/Extensions'' text=''CMSMS documentation''}.</p>', NULL, '2009-05-12 20:21:29'),
(28, 'string', 'content_en', '', '', '', '<p>One of the little known features of CMS Made Simple is the User Defined tag.  Basically, this allows you to write PHP code inside the Admin Panel.  Use the ''Add User Defined Tag'' button in Extension &raquo; User Defined Tags in the Admin Panel, write some code, and then insert into a template or page with {literal}{newpluginname}{/literal}.  Simple!</p>\r\n<p>As an example, I''ve put together a one line plugin/tag that will show your current User Agent information (which browser you''re using).  The output is right here: <strong>{user_agent}</strong>.</p>\r\n<p>If you''re not looking at the source, all that is in the page is {literal}{user_agent}{/literal}.  To see how this code works, edit the user_agent tag in the Extensions &raquo; User Defined Tags page of the admin.</p>\r\n<p>This is a VERY powerful feature if used right.  Remember, user defined tags do not get cached, therefore, scripts to rotate ad banners and such will work just fine. Note also that tag code has to be written <em>without</em> opening &lt; ? php  and ending  ? &gt; tags.</p>', NULL, '2009-05-12 20:58:46'),
(19, 'string', 'block1', '', '', '', NULL, NULL, '2013-07-13 21:51:11'),
(44, 'string', 'content_en', NULL, NULL, NULL, '<p>This is an example of the very minimal that needs to be in a CMSMS template. No stylesheet is attached to the template, which is why it doesn''t look very nice...</p>\r\n\r\n<p>However, to make it slightly more appealing, some inline styling was used, for floating the content to the right of the menu.</p>\r\n\r\n<p>The menu in this page template is using the <strong>Minimal Navigation</strong> template for Menu Manager. No accessibility stuff is in there, so it''s recommended that the <strong>Simple Navigation</strong> menu template is rather used.</p>', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(31, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(32, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(49, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:26:53'),
(19, 'string', 'content_en', '', '', '', '<p>CMS Made Simple {cms_version} was installed with numerous default templates (you choose this during the installation process). These are to display some of the features of CMS Made Simple and to give you a head start when creating your own web sites.</p>\r\n<p>The tags that are unique to templates in CMS Made Simple are described on the page {cms_selflink page=''cmsms_tags'' text=''CMSMS tags in the templates''} (see menu to the left). Click on any link beneath that page in the menu to the left to see what the default templates look like.</p>\r\n<h4>Changing the style of Default Templates</h4>\r\n<p>All of the templates and style sheets have comments throughout them to help you find where to change the look of them.</p>\r\n<h3>Menus/navigation</h3>\r\n<p>Two kinds of navigation are used in these templates. For each there is a menu template in the Menu Manager. <strong>CSSMenu </strong>is a dropdown menu using only CSS. Well, for Internet Explorer 6 some JavaScript has to be used... Two of the page templates are using CSSMenu for navigation, {cms_selflink page=''cssmenu_horizontal'' text=''one with the menu horizontally at the top''} and the other {cms_selflink page=''cssmenu_vertical'' text=''with the menu vertically to the left''}.</p>\r\n<p>The other navigation type is what we call <strong>Simple Navigation</strong>. That is just an unordered list that gets its style and appearance from the style sheets (CSS). Also here {cms_selflink page=''top_left'' text=''one page template is using a horizontal simple navigation''} and the other {cms_selflink page=''navleft'' text=''a vertical menu''}.</p>\r\n<p>The menu tag in each template is used like this: <code>{ldelim}menu template=''cssmenu.tpl''}</code>, where the <code>cssmenu.tpl</code> is the name of the Menu Manager template, if you make a custom menu template you don''t need to use the .tpl on the end. More parameters can be used, for example to start a menu from the second level, collapse the children pages until the parent is clicked etc. Read more about that in the Menu Manager Help in the Admin Panel.</p>', NULL, '2013-07-13 21:51:11'),
(26, 'string', 'content_en', '', '', '', '<p>There are plenty of tags included with the CMSMS core. Some of them are demonstrated here, for any questions as to the parameters they can take or anything else please see the Tags Help.</p>\r\n<h3>{ldelim}anchor}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}anchor anchor=''here'' text=''Scroll Down'' class=''myclass'' title=''mytitle'' tabindex=''1'' accesskey=''s''}</code></dd> <dt>Display</dt> <dd>Creates a link to an anchor on the same page. Used for example for the ^Top link at the bottom of this page.</dd> </dl>\r\n<h3>{ldelim}cms_breadcrumbs{rdelim}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_breadcrumbs root=''Home''{rdelim}</code></dd> <dt>Display</dt> <dd>Breadcrumbs are a navigational technique displaying all visited pages leading from the home page to the currently viewed page. You find it under the header on this page.</dd></dl>\r\n<h3>{ldelim}cms_module}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_module module=''somemodulename'' param1=''something'' param2=true}</code></dd> <dt>Display</dt> <dd>This tag is used to insert modules into your templates and pages.  Used for any module that you download. In the default templates, wrapper tags are used for inserting modules though. That is, a tag is made to insert a cms_module tag.</dd> </dl>\r\n<h3>{ldelim}cms_selflink}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_selflink page="1"}</code> or <code>{ldelim}cms_selflink page="alias"}</code></dd> <dt>Display</dt> <dd>Creates a link to another CMSMS content page inside your template or content. Can also be used for external links with the ext parameter. </dd> <dt>Example</dt> <dd>{cms_selflink page=''modules'' text=''Link to the modules page''} </dd> <dd>{cms_selflink ext=''http://www.cmsmadesimple.org'' text=''This is an external link to the CMS Made Simple website''}</dd> </dl>\r\n<h3>{ldelim}cms_version}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_version}</code></dd> <dt>Display</dt> <dd>Displays current version number of CMS Made Simple. </dd> <dt>Example</dt> <dd>See the footer on this page.</dd> </dl>\r\n<h3>{ldelim}cms_versionname}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_versionname}</code></dd> <dt>Display</dt> <dd>Displays current version name of CMS Made Simple. </dd> <dt>Example</dt> <dd>See the footer on this page.</dd> </dl>\r\n<h3>{ldelim}current_date}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}current_date format="%A %d-%b-%y %T %Z"}</code></dd> <dt>Display</dt> <dd>Prints the current date and time.</dd> <dt>Example</dt> <dd>{current_date format="%A %d-%b-%y %T %Z"}</dd> </dl>\r\n<h3>{ldelim}embed}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}embed url="http://www.cmsmadesimple.org"}</code></dd> <dt>Display</dt> <dd>Enable inclusion (embeding) of any other application into the CMS. The most usual use could be a forum. </dd> </dl>\r\n<h3>{ldelim}global_content}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}global_content name=''footer''}</code></dd> <dt>Display</dt> <dd>Inserts a Global Content Block (previously known as HTML blob) into your template or page. The code for the footer of this page is in a Global Content Block. </dd> </dl>\r\n<h3>{ldelim}menu_text}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}menu_text}</code></dd> <dt>Display</dt> <dd>Prints the menu text of the page.</dd> <dt>Example</dt> <dd>{menu_text}</dd> </dl>\r\n<h3>{ldelim}modified_date}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}modified_date format="%A %d-%b-%y %T %Z"}</code></dd> <dt>Display</dt> <dd>Prints the date and time the page was last modified. </dd> <dt>Example</dt> <dd>{modified_date format="%A %d-%b-%y %T %Z"}</dd> </dl>\r\n<h3>{ldelim}print}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}print}</code></dd> <dt>Display</dt> <dd>Creates a link to only the content of the page.</dd> <dt>Example</dt> <dd>{print}</dd> </dl>\r\n<h3>{ldelim}site_mapper}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}site_mapper}</code></dd> <dt>Display</dt> <dd>Prints out a sitemap.</dd> <dt>Example</dt> <dd>{site_mapper}</dd> </dl>\r\n<h3>{ldelim}valid_xhtml}</h3>\r\n<dl> <dt>Syntax used</dt> <dd><code>{ldelim}valid_xhtml}</code></dd> <dt>Display</dt> <dd>Creates a link to the W3C HTML validation service.</dd> <dt>Example</dt> <dd>{valid_xhtml}</dd> </dl>', NULL, '2009-05-12 20:56:54'),
(28, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:58:46'),
(26, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:56:54'),
(26, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:56:54'),
(55, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-09 14:04:30'),
(15, 'string', 'target', '', '', '', '', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'pagedata', '', '', '', '', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'extra1', '', '', '', '', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'extra2', '', '', '', '', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'extra3', '', '', '', '', NULL, '2013-07-19 08:01:13'),
(16, 'string', 'target', '', '', '', '', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'extra1', '', '', '', '', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'extra2', '', '', '', '', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'extra3', '', '', '', '', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'image', '', '', '', '-1', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-04 17:02:56'),
(16, 'string', 'content_en', '', '', '', '<p>This is a drop-down menu that is using only CSS (although some Javascript is required for Internet Explorer 6, note: IE6 will not let you use 2 of these menu types in a template at the same time as the second one will fail to open). It can be either vertical or horizontal.</p>\r\n<p>The code we have inserted in the template that this page is using is simply <code>{ldelim}menu template=''cssmenu.tpl''}</code>.  You style the menu in the stylesheet <strong>Navigation: CSSMenu - Horizontal</strong> or <strong>Navigation: CSSMenu - Vertical</strong> for the vertical CSSMenu.</p>\r\n<p>But to be on the safe side, copy this style sheet and attach your new style sheet to the template instead (and make your changes in your new style sheet). Then you can always revert to the default style sheet if something goes wrong.</p>', NULL, '2009-05-04 17:02:56'),
(15, 'string', 'image', '', '', '', '-1', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'thumbnail', '', '', '', '-1', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'searchable', '', '', '', '1', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'image1', '', '', '', 'uploads/images/logo1.gif', NULL, '2009-05-13 10:12:18'),
(51, 'string', 'content_en', '', '', '', '<p>Using the same menu template as the previous theme. We changed the child ul CSS to use a different top image. This involves changing some of the margin and padding as the images are a different shape. Note the difference in the second level and third level ul images, one has an arrow up and the other has an arrow left.</p>\r\n<h3>Filler Text</h3>\r\n<p>Curabitur ornare velit molestie nulla. Fusce fermentum facilisis mi. Maecenas volutpat, eros ac pellentesque mollis, urna elit rutrum turpis, congue convallis nibh erat nec purus. Sed malesuada consectetuer turpis. Nulla sollicitudin placerat augue. Vestibulum ut sem eget turpis laoreet cursus. Vestibulum ante urna, mollis eget, cursus eget, viverra non, lectus. Aliquam erat volutpat. Aenean gravida tempor nulla. Sed sem lorem, pulvinar non, placerat non, vestibulum sed, tellus. Phasellus fermentum velit id dui. Praesent vulputate. Nam in dui.</p>\r\n<p>Maecenas tristique, tortor nec eleifend luctus, nibh leo imperdiet wisi, et accumsan est lectus in orci. Proin facilisis, odio auctor feugiat accumsan, sapien purus iaculis dui, a volutpat augue pede ut sem. Nulla facilisi. Aliquam suscipit elementum ipsum. Morbi urna. Nam eros justo, varius sit amet, euismod eu, dictum nec, neque. Nullam id mi eu odio tempor adipiscing. Quisque hendrerit euismod nunc. Ut erat nulla, pellentesque nec, luctus eu, dictum nec, augue. Aliquam tincidunt sodales arcu. Nam porta sagittis quam. Vivamus eget purus egestas velit congue consectetuer.</p>', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'target', '', '', '', '', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'extra1', '', '', '', '', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'extra2', '', '', '', '', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'extra3', '', '', '', '', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'image', '', '', '', '-1', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-08 22:21:34'),
(51, 'string', 'Sidebar', '', '', '', '<h4>Filler Text</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras sodales gravida est. Nullam enim ipsum, convallis quis, iaculis quis, facilisis eu, felis. Proin euismod hendrerit tortor. Aliquam erat volutpat. Morbi tempus diam sit amet neque. Sed sem metus, sagittis vel, lobortis ac, tempus sit amet, wisi. Phasellus in diam. Maecenas ultrices rutrum mauris. Vestibulum dolor justo, blandit a, posuere quis, varius at, tellus. Vestibulum convallis. Nulla ut leo sed elit eleifend varius. Aenean eget est id lorem posuere laoreet.</p>', NULL, '2009-05-08 22:21:34'),
(18, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:39:49'),
(18, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:39:49'),
(52, 'string', 'content_en', '', '', '', '<p>Again using the same menu template as the two previous themes. We changed the child ul CSS to use a different top image. This involves changing some of the margin and padding as the images are a different shape. Note the second level and third level ul are now using the same image that has an arrow left.</p>\r\n<h3>Filler Text</h3>\r\n<p>Curabitur ornare velit molestie nulla. Fusce fermentum facilisis mi. Maecenas volutpat, eros ac pellentesque mollis, urna elit rutrum turpis, congue convallis nibh erat nec purus. Sed malesuada consectetuer turpis. Nulla sollicitudin placerat augue. Vestibulum ut sem eget turpis laoreet cursus. Vestibulum ante urna, mollis eget, cursus eget, viverra non, lectus. Aliquam erat volutpat. Aenean gravida tempor nulla. Sed sem lorem, pulvinar non, placerat non, vestibulum sed, tellus. Phasellus fermentum velit id dui. Praesent vulputate. Nam in dui.</p>\r\n<p>Maecenas tristique, tortor nec eleifend luctus, nibh leo imperdiet wisi, et accumsan est lectus in orci. Proin facilisis, odio auctor feugiat accumsan, sapien purus iaculis dui, a volutpat augue pede ut sem. Nulla facilisi. Aliquam suscipit elementum ipsum. Morbi urna. Nam eros justo, varius sit amet, euismod eu, dictum nec, neque. Nullam id mi eu odio tempor adipiscing. Quisque hendrerit euismod nunc. Ut erat nulla, pellentesque nec, luctus eu, dictum nec, augue. Aliquam tincidunt sodales arcu. Nam porta sagittis quam. Vivamus eget purus egestas velit congue consectetuer.</p>', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'target', '', '', '', '', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'extra1', '', '', '', '', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'extra2', '', '', '', '', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'extra3', '', '', '', '', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'image', '', '', '', '-1', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-08 22:21:49'),
(52, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-08 22:21:49'),
(54, 'string', 'content_en', '', '', '', '<p>Nuno has graciously supplied us with another of his great looking designs.</p>\r\n<p>This one is using a new menu template so we can style the drop down for the children pages, using an image for the second ul going from the top down, it has an extra li at the bottom of the child pages ul &lt;li class="separator once" style="list-style-type: none;"&gt;&amp;nbsp; &lt;/li&gt; this is used to hold the bottom image.</p>\r\n<h3>Filler Text</h3>\r\n<p>Maecenas tristique, tortor nec eleifend luctus, nibh leo imperdiet wisi, et accumsan est lectus in orci. Proin facilisis, odio auctor feugiat accumsan, sapien purus iaculis dui, a volutpat augue pede ut sem. Nulla facilisi. Aliquam suscipit elementum ipsum. Morbi urna. Nam eros justo, varius sit amet, euismod eu, dictum nec, neque. Nullam id mi eu odio tempor adipiscing. Quisque hendrerit euismod nunc. Ut erat nulla, pellentesque nec, luctus eu, dictum nec, augue. Aliquam tincidunt sodales arcu. Nam porta sagittis quam. Vivamus eget purus egestas velit congue consectetuer.</p>', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'target', '', '', '', '', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'extra1', '', '', '', '', NULL, '2009-05-08 22:20:56'),
(55, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-09 14:04:30'),
(34, 'string', 'content_en', '', '', '', '<p>So how is a web-site created with CMS Made Simple? There are a couple of terms that are central to understanding this.</p>\r\n<p>You first need to have templates, which is the HTML code for your pages. This is styled with CSS in one or more style sheets that are attached to each template. You then create pages that contain your websites content using one of these templates.</p>\r\n<p>That doesn''t sound too hard, does it? Basically you don''t need to know any HTML or CSS to get a site up with CMS Made Simple. But if you want to customize it to your liking, consider learning some {cms_selflink ext="http://www.w3schools.com/css/" text="CSS" target="_blank"}.</p>\r\n<p>In the menu to the left you can read more about this, as well as more advanced features like the Menu Manager, additional extensions for adding many kinds of functionality to your site and the Event Manager for managing work flow. Last is a summary of the basic work flow when creating a site with CMS Made Simple.</p>', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'target', '', '', '', '', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'pagedata', '', '', '', '', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'extra1', '', '', '', '', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'extra2', '', '', '', '', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'extra3', '', '', '', '', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'image', '', '', '', '-1', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'thumbnail', '', '', '', '', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'searchable', '', '', '', '1', NULL, '2013-07-13 21:50:54'),
(34, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2013-07-13 21:50:54'),
(36, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:12:30'),
(36, 'string', 'content_en', '', '', '', '<p>A <em>template</em> is basically the HTML layout, or the design, of a page.  This is the work of the designer. Whatever is in a template is used on every  page that uses that template, meaning that the person editing the content  doesn''t need any web design skills.</p>\r\n<p>In the template there are placeholders for content and navigation areas. When  a user is visiting your site the page is automatically generated from the  template and the placeholders are filled with the content.</p>\r\n<p>The template is the HTML structure. It is then styled in one or more  <em>style sheets</em> that are attached to each template. This styling is done  with CSS. So to get a site look the way you want you should be familiar with HTML and CSS on at least a basic level. But don''t worry, there are themes with  ready-made templates and style sheets for you to download!</p>\r\n<p>When you first install CMS Made Simple there are some basic templates that  you can use and customize to your needs. Those templates are described in the section {cms_selflink page=default_templates text=''Default Templates Explained''}. The designer of your site can also add new templates to make the site look any way you want. The CMSMS community also shares themes for anyone to download and use at {cms_selflink ext=''http://themes.cmsmadesimple.org'' text=''the CMSMS Themes site'' target="_blank"}.</p>\r\n<h3>Templates and style sheets in the CMSMS Admin Panel</h3>\r\n<p>In the CMSMS Admin Panel you will find the templates and style sheets in the <strong>Layout</strong> menu.</p>', NULL, '2009-05-12 20:12:30'),
(37, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:13:19'),
(37, 'string', 'content_en', '', '', '', '<p>Pages determine the structure of your web-site as seen in the admin Content &raquo; Pages page. Think of a web-site as a set  of pages. These pages are accessed through a menu. You can also link to a page  from within another page.</p>\r\n<h3>Navigation/Menu</h3>\r\n<p>The navigation, or the menu, is a set of links that help the user to navigate through  the pages on your web site. These links are automatically created by CMS Made  Simple from the page structure. This hierarchy is what drives the menu you see  on the left of this page.</p>\r\n<p>Pages can be in several levels, like a tree of generations. The top level in  the menu are the parent pages. Each parent page can have children pages, which  in turn can be parents to other children.</p>\r\n<p>The page template determines where on a page the navigation is placed.</p>\r\n<p>You can create any kind of navigation you can dream of by customizing a menu  template for <em>Menu Manager</em>. However, the default templates should work  for most situations as the menu basically is just an unordered list that you  style to your liking with CSS. The web is full of good articles about styling a list of links, one of the best is {cms_selflink ext="http://css.maxdesign.com.au/listutorial/index.htm" text="listutorial at maxdesign" target="_blank"}</p>\r\n<h3>Pages in the CMSMS Admin Panel</h3>\r\n<p>You add pages, as well as other content (see next chapter), in the CMSMS Admin Panel from the Content &raquo; Pages menu.</p>', NULL, '2009-05-12 20:13:19'),
(29, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:16:13'),
(29, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:16:13'),
(30, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:16:51'),
(30, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:16:51'),
(46, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:21:29'),
(46, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:21:29'),
(45, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:22:16'),
(45, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:22:16'),
(19, 'string', 'target', '', '', '', '', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'pagedata', '', '', '', '', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'extra1', '', '', '', '', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'extra2', '', '', '', '', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'extra3', '', '', '', '', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'image', '', '', '', '-1', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'thumbnail', '', '', '', '', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'searchable', '', '', '', '1', NULL, '2013-07-13 21:51:11'),
(19, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2013-07-13 21:51:11'),
(49, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:26:53'),
(49, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:26:53');
INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(49, 'string', 'content_en', '', '', '', '<p>Here we explain the tags that are used in the default templates that are specific to templates in CMS Made Simple. The rest of the templates are just pure HTML. You can read more about that in the {cms_selflink ext=''http://wiki.cmsmadesimple.org/index.php/User_Handbook/Getting_Started/Designer/Templates'' text=''documentation wiki''}.</p>\r\n<div class="templatecode">\r\n<h3>Page title</h3>\r\n<pre>&lt;title&gt;{ldelim}sitename} - {ldelim}title}&lt;/title&gt;\r\n</pre>\r\n<p>For each page using these tags in a template the tags are replaced with the site name you specify in Site Admin &raquo; Global settings and the title you specify when you add/edit each page.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}sitename}</code> and <code>{ldelim}title}</code> tags in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Metadata</h3>\r\n<pre>{ldelim}metadata}\r\n</pre>\r\n<p>This tag adds to your page any metadata that you have specified in Site Admin &raquo; Global settings and also page specific metadata that you can add under the Options tab when adding/editing a page.</p>\r\n<p>It is also used for knowing the base folder for your site when using pretty URLs. So don''t remove this if you use Pretty URLs!</p>\r\n<p><em>Read more</em> about the <code>{ldelim}metadata}</code>tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Stylesheets (deprecated)</h3>\r\n<pre>{ldelim}stylesheet}\r\n</pre>\r\n<p>This tag links to all style sheets (CSS) that you have attached to a template. It means that you only have to add this tag once and all attached style sheets will be linked automatically.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}stylesheet}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Stylesheets</h3>\r\n<pre>{ldelim}cms_stylesheet}\r\n</pre>\r\n<p>This tag is the newer version of the tag above. The tag links to all style sheets (CSS) that you have attached to a template. It means that you only have to add this tag once and all attached style sheets will be linked automatically.</p><p>The new tag allows you to use smarty variables like [[$red]] to indicate a color, and one change will change it througout your layout. The new tag requires that [[root_url]]/ be put in front of images, as the stylesheets are cached.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}cms_stylesheet}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Relational links</h3>\r\n<pre>{ldelim}cms_selflink dir="start" rellink=1}\r\n{ldelim}cms_selflink dir="prev" rellink=1}\r\n{ldelim}cms_selflink dir="next" rellink=1}\r\n</pre>\r\n<p>These are relational links for interconnections between pages, which is good for accessibility and Search Engine Optmization</p>\r\n<p><em>Read more</em> about the <code>{ldelim}cms_selflink}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Page width in Internet Explorer 6</h3>\r\n<pre>{ldelim}literal}\r\n&lt;script type="text/JavaScript"&gt;\r\n&lt;!--\r\n//pass min and max -measured against window width\r\nfunction P7_MinMaxW(a,b){ldelim}\r\n	var nw="auto",w=document.documentElement.clientWidth;\r\n	if(w&gt;=b){ldelim}nw=b+"px";}if(w&lt;=a){ldelim}nw=a+"px";}return nw;\r\n}\r\n//--&gt;\r\n&lt;/script&gt;\r\n&lt;!--[if lte IE 6]&gt;\r\n&lt;style type="text/css"&gt;\r\n#pagewrapper {ldelim}width:expression(P7_MinMaxW(720,950));}\r\n#container {ldelim}height: 1%;}\r\n&lt;/style&gt;\r\n&lt;![endif]--&gt;\r\n{ldelim}/literal}</pre>\r\n<p>This isn''t a tag really, but displays how to insert JavaScript in a CMSMS template.</p>\r\n<p>The default templates use fluid page width. But Internet Explorer 6 doesn''t understand min-width and max-width, so for that browser the min and max page width is set with this JavaScript. For other browsers the page width is set in the style sheets beginning with "Layout: ..."</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Skip links for accessibility</h3>\r\n<pre>{ldelim}anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}\r\n</pre>\r\n<p>Anchor links (links to an anchor in the same page) are inserted with the <code>{ldelim}anchor}</code> tag. In the default templates this is used for skip links that are visible to screen readers, but hidden with CSS to visual browsers.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}anchor}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Header with logo image that links to default page</h3>\r\n<pre>{ldelim}cms_selflink dir="start" text="$sitename"}\r\n</pre>\r\n<p>In the header the &lt;h1&gt; tag (hidden by CSS) is a link to the page that is selected as the default page. The <code>dir="start"</code> parameter in the {ldelim}cms_selflink} tag is used for this. To get the site name as the text for the link, the <code>$sitename</code> variable is used.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}cms_selflink}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Search</h3>\r\n<pre>{ldelim}search}\r\n</pre>\r\n<p>To insert a search form on your site, simply use the {ldelim}search} tag. Search is actually a module and should therefore be called as a parameter in the {ldelim}cms_module} tag, like this: <code>{ldelim}cms_module module=''search''}</code>. But to simplify matters, we did a wrapper tag so that it''s easier to remember.</p>\r\n<p><em>Read more</em> about the Search module in Extensions &raquo; Modules in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Breadcrumbs</h3>\r\n<pre>{ldelim}breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n</pre>\r\n<p>Breadcrumbs is a path to the current page. In the default templates we have chosen to put the text ''You are here'' before the path and force ''Home'' to always be the root in the path, even if it isn''t. With the delimiter parameter you can select the delimiter that separates entries in the path.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}breadcrumbs}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Navigation</h3>\r\n<pre>{ldelim}menu template=''simple navigation.tpl'' collapse=''1''}\r\n</pre>\r\n<p>This is how you insert a menu where you want it to appear. Like the <code>{ldelim}search}</code> tag, this is actually just a wrapper tag, as the Menu Manager is a module.</p>\r\n<p>In the default templates the menu manager template that is used for the menus are stored in files. That''s why you see the .tpl extension in the template parameter. But you can easily import menu templates to the database and edit them directly in the Admin Panel. Then you simply omit the .tpl extension in the template parameter.</p>\r\n<p><em>Read more</em> about the Menu Manager module in Extensions &raquo; Modules in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>News</h3>\r\n<pre>{ldelim}news number=''3'' detailpage=''news''}\r\n</pre>\r\n<p>This tag will display the last three news articles. When clicking a news article to read the details, it is opened on the page with the page alias ''news''. That''s what the detailpage parameter is doing.</p>\r\n<p>Like all core modules there is a wrapper tag for the News module, to make it easier to use.</p>\r\n<p><em>Read more</em> about the News module tag in Extensions &raquo; News in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Print button</h3>\r\n<pre>{ldelim}print showbutton=true script=true}\r\n</pre>\r\n<p>The <code>{ldelim}print}</code> tag is used to insert a print link. With the showbutton parameter set to true we have told the tag to output a button instead of text. The script parameter set to true means the print dialog window opens when clicking the button, for immediate printing.</p>\r\n<p>The <code>{ldelim}print}</code> tag prints everything that is in your <code>{ldelim}content}</code> tag, that is only the content for a page.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}print}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Page content</h3>\r\n<pre>&lt;h2&gt;{ldelim}title}&lt;/h2&gt;\r\n{ldelim}content}</pre>\r\n<p>Maybe the most important tag in your template. Where you put the <code>{ldelim}content}</code> is where the content for your page will appear.</p>\r\n<p>We have also chosen to put the page title on every page (the <code>{ldelim}title}</code> tag), so that you don''t have to put that in the content for every page.</p><p>The default <code>{ldelim}content}</code> tag is <strong>required</strong> for all templates.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}content}</code> and <code>{ldelim}title}</code> tags in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Previous/next links</h3>\r\n<pre>{ldelim}anchor anchor=''main'' text=''^ Top''}\r\n{ldelim}cms_selflink dir="previous" label="Previous page: "}\r\n{ldelim}cms_selflink dir="next"}\r\n</pre>\r\n<p>Some more internal links. These are using the dir parameter to link to the previous and next pages in the page hierarchy (separators and section headers will be omitted as they are no pages).</p>\r\n</div>\r\n<div class="templatecode">\r\n<h3>Page footer</h3>\r\n<pre>{ldelim}global_content name=''footer''}</pre>\r\n<p>Instead of bloating your template with lots of code you can put some code in a Global Content Block. Then call that Global Content Block with the <code>{ldelim}global_content}</code> tag. It''s also useful for content or HTML code that is reused on several pages or templates.</p>\r\n<p>In the default templates we have put the footer text in a Global Content Block with the name ''footer''. You find the Global Content Blocks in the Content menu in the Admin Panel.</p>\r\n<p><em>Read more</em> about the <code>{ldelim}global_content}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p>\r\n</div>', NULL, '2009-05-12 20:26:53'),
(13, 'string', 'content_en', '', '', '', '<p>This template has the menu in left sidebar. The menu is using the <strong>Simple Navigation</strong> menu template. It is styled in the stylesheet called <strong>Navigation: Simple - Vertical</strong>.</p>\r\n<p>You can easily float the sidebar with the menu to the right instead. Look in the <strong>Layout: Left sidebar + 1 column</strong> style sheet for the <code>float:left;</code> property in the <code>div#sidebar</code> element. Change that to <code>float:right;</code> and the sidebar with the menu will instead be on the right side of the content, of course you will also have to adjust the margins for the sidebar and the div#main, basically just swap the left and right margins.</p>', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'target', '', '', '', '', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'extra1', '', '', '', '', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'extra2', '', '', '', '', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'extra3', '', '', '', '', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'image', '', '', '', '-1', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-04 16:08:43'),
(13, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-04 16:08:43'),
(22, 'string', 'content_en', '', '', '', '<p>With the Menu Manager you can easily split the navigation in two parts. On this page the top level in the page hierarchy is displayed horizontally and depending on what page is displayed a localized sub-menu is displayed vertically to the left. In this case the sub-menu to the left displays the sub-levels (children) to <strong>Default Templates Explained</strong>.</p>\r\n<h3>The {ldelim}menu} tag</h3>\r\n<p>The <code>{ldelim}menu}</code> tag is inserted twice in the page template. First where the main navigation is, which should only show the top level. It looks like this: <code>{ldelim}menu template=''simple_navigation.tpl'' number_of_levels=''1''}</code>.</p>\r\n<p>The sub navigation should only contain the second level and down, depending on what is selected on the first level. Also, the third level links should only display when its parent on the second level is clicked, otherwise they are hidden. That is, the second level is collapsed unless the current page has sub pages.</p>\r\n<p>The tag for the sub navigation looks like this: <code>{ldelim}menu template=''simple_navigation.tpl'' start_level=''2'' collapse=''1''}</code>.</p>\r\n<h3>Attached style sheets for the menu</h3>\r\n<p>As the main navigation and the sub navigation need to be styled differently (one horizontal, the other vertical), two navigation style sheets are attached to this page template. <strong>Navigation: Simple - Horizontal</strong> is for styling the horizontal main menu. <strong>Navigation: Simple - Vertical</strong> on the other hand, contains the style for the sub navigation to the left.</p>\r\n<h3>Both using the same Menu Manager template</h3>\r\n<p>However, as you could see, both parts of the navigation are using the same menu manager template. That is because the output code is the same. It is only through CSS that the two parts get styled differently.</p>\r\n<h3>Floating the sidebar to the right</h3>\r\n<p>You can easily float the sidebar with the sub navigation to the right instead. Look in the <strong>Layout: Top menu + 2 columns</strong> style sheet for the <code>float:left;</code> property in the <code>div#sidebar</code> element. Change that to <code>float:right;</code> and the sidebar with the menu will instead be on the right side of the content, of course you will also have to adjust the margins for the sidebar and the div#main, basically just swap the left and right margins.</p>', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'target', '', '', '', '', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'extra1', '', '', '', '', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'extra2', '', '', '', '', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'extra3', '', '', '', '', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'image', '', '', '', '-1', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-06 21:11:31'),
(22, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-06 21:11:31'),
(24, 'string', 'target', '', '', '', '', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'pagedata', '', '', '', '', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'extra1', '', '', '', '', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'extra2', '', '', '', '', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'extra3', '', '', '', '', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'image', '', '', '', '-1', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'thumbnail', '', '', '', '', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'searchable', '', '', '', '1', NULL, '2013-07-13 21:50:56'),
(24, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2013-07-13 21:50:56'),
(39, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:42:16'),
(39, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:42:16'),
(40, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:48:34'),
(40, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:48:34'),
(41, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:50:17'),
(41, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:50:17'),
(42, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:50:43'),
(42, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:50:43'),
(50, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:52:14'),
(50, 'string', 'content_en', '', '', '', '<p>A client for the ModuleRepository, this module allows you to see what modules are available, the version number, size, and Status/Action (whether it is already installed or not), read the Help and About for each module, letting you install modules from remote sites without the need for FTP''ing, or unzipping archives. Module XML files are downloaded using SOAP, integrity verified, and then expanded automatically.</p>\n<p>ModuleManager now checks dependencies. When dependencies are set, the module wont install until dependencies are met. Also a new tab is available, that shows newer versions of installed modules.</p>\n<p>In short, this means that you can download and install modules directly from the Admin Panel. Any module that has been released as an XML file can be downloaded and installed. Go to Extensions &raquo; Module Manager in the Admin Panel to see the list of modules from the official CMSMS repository in the CMSMS Development Forge.</p>', NULL, '2009-05-12 20:52:14'),
(25, 'string', 'content_en', '', '', '', '<p>There are a number of custom tags included with the default CMS Made Simple installation. They are all described and demonstrated in the following page, and user defined tags are in the next one.</p>\r\n<p>To use a tag, simply put it in the template or page like this: {ldelim}nameoftag}. Some tags can also take parameters, which are described in the Help that is accessible for each tag in Extensions &raquo; Tags in the Admin Panel.</p>', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:53:07'),
(25, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:53:07'),
(28, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'image', '', '', '', '-1', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-12 20:58:46'),
(28, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-12 20:58:46'),
(54, 'string', 'extra2', '', '', '', '', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'extra3', '', '', '', '', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'image', '', '', '', '-1', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'searchable', '', '', '', '1', NULL, '2009-05-08 22:20:56'),
(54, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-08 22:20:56'),
(55, 'string', 'extra1', '', '', '', '', NULL, '2009-05-09 14:04:30'),
(55, 'string', 'extra2', '', '', '', '', NULL, '2009-05-09 14:04:30'),
(55, 'string', 'extra3', '', '', '', '', NULL, '2009-05-09 14:04:30'),
(55, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-09 14:04:30'),
(55, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2009-05-09 14:04:30'),
(55, 'string', 'content_en', '', '', '', '<p>These are more complex then some of the other templates, especially the menus, they all 3 use the same menu template. Which shows you the power of CSS.</p>\n<p>Be forewarned, if you use IE6 you won''t see the best effects in any of the shadow menus that you see using a more standards compliant browser. I mean it''s still nice grant you but... just upgrade your browser if you can.</p>\n<h3>The Differences</h3>\n<p>Starting with NCleanBlue you get a really nice, subtle Tabbed menu, then it goes on to have a real nice drop down effect.</p>\n<p>You get a real nice 2.0 header and footer, great color scheme and the search is way cool, it''s just a great theme, what can I say, thanks Nuno.</p>\n<p>Then the next 2 submenus have another version of the shadowed drop, the first step will point up for the top sub menu and to the right for the left sub menus.</p>\n<p>These 2 are the same layout as CSSMenu top + 2 columns and CSSMenu left + 1 column,  respectively, except for the menu template and some CSS.</p>\n<p>We hope you enjoy these, for any changes you want to make it''s always best to copy the original style sheet for safe keeping, you never know when you may need it.</p>', NULL, '2009-05-09 14:04:30'),
(38, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'image', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'searchable', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(38, 'string', 'disable_wysiwyg', '', '', '', '', NULL, '2009-05-12 20:22:33'),
(47, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'image', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'searchable', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(47, 'string', 'disable_wysiwyg', '', '', '', '', NULL, '2009-05-12 20:23:09'),
(43, 'string', 'target', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'image', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'thumbnail', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'extra1', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'extra2', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'extra3', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'searchable', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'pagedata', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(43, 'string', 'disable_wysiwyg', '', '', '', '', NULL, '2009-05-12 20:51:17'),
(15, 'string', 'content_en', '', '', '', '<h2>Welcome to The Barn</h2>\r\n<p>The Barn at Dunvilla is a unique country destination perfect for Weddings, Reunions, Parties, Conferences and Special Events.</p>\r\n<p>From the <a href="{cms_selflink href=''fireplace-lounge''}">warm stone fireplace</a>, the expansive upstairs <a href="{cms_selflink href=''barn-loft''}">barn loft</a>, the charm of The Barn will leave you and your guests with a memory that will last a lifetime. With space to accomodate over 250 people, separate areas for <a>dining</a>, <a>dancing</a>, <a>outdoor patio and deck</a> and breathtaking views of Lake Lizzie and sprawling farmland, The Barn provides the ideal four season setting for any occasion.</p>', NULL, '2013-07-19 08:01:13'),
(57, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_News', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_News_Categories', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:45:01'),
(57, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:45:01'),
(58, 'string', 'content_en', NULL, NULL, NULL, 'To come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:46:05'),
(56, 'string', 'content_en', NULL, NULL, NULL, '<p>Simplex Theme has been created to demonstrate HTML5 and CSS3 functionality within CMS Made Simple&trade;.<br />It is shipped with a CSS Framework making it possible for you to create Responsive and Mobile capabale layouts with ease.</p>\r\n<h2>What is included?</h2>\r\n<p>With this Template you will find four Stylesheets attached to it.</p>\r\n<ul>\r\n<li>Simplex: Core</li>\r\n<li>Simplex: Layout</li>\r\n<li>Simplex: Mobile</li>\r\n<li>Simplex: Print</li>\r\n</ul>\r\n<p>Main Functionality of this Template is included in Core Stylesheet. It contains a simple Fluid Grid Framework based on {cms_selflink ext="http://960.gs/" title="960 Grid System" text="960 Grid System" target="_blank"}.<br />In this same Stylesheet CSS {cms_selflink ext="http://www.w3.org/TR/css3-mediaqueries/" title="W3C Media Queries" text="Media Queries" target="_blank"} are being used that make it possible for a flexible layout based on Screen width.<br /><br />With Simplex Theme it is very easy to quickly change appearance of complete Site at once. If you look at Page Template code you will find "boxed" id in the <code>&lt;body&gt;</code> tag.<br />When this id is removed the Layout of the Site is changed and you would face a simple layout with White background.<br />You can also quickly change allignement of the complete Site. If you change the class of "wrapper" div to leftaligned or rightaligned, whole Page will be aligned to left or right.</p>\r\n<h2>Support for Mobile Devices</h2>\r\n<p>As mentioned above this Theme is shipped with Stylesheet Framework that gives you a starting point for easy developement of Responsive Layout.<br />Mobile world is very versatile and Framework itself is by no means perfect, it is only a starting point but as a Developer you should decide which technique you should use for your current Project.<br />Responsive Template is only one small step towards Mobile support.</p>\r\n<p>This Theme requires {cms_selflink ext="http://jquery.org/" title="jQuery" text="jQuery" target="_blank"} which is included with <code>{ldelim}cms_jquery{rdelim}</code> tag.</p>\r\n<p><cite>Note: {ldelim}cms_jquery{rdelim} tag is included at the bottom of the Template. You should be carefull with it when you are using Modules that include jQuery in &lt;head&gt; section.</cite></p>\r\n<p>In file functions.js a section is included that makes it possible of Navigating through site with some Mobile Devices. This part of the code, covers only few devices and it is only meant as an example and a starting point for Developer.</p>\r\n<h2>This and that</h2>\r\n<p>As an example of {cms_selflink ext="http://www.smarty.net/" title="Smarty" text="Smarty" target="_blank"}power within CMS Made Simple&trade; Templates a very simple Slider has been included, which demonstartes how easy it is to quickly create a Slideshow without a single Module.</p>\r\n<pre><code>{ldelim}assign var=''teaser'' value=''uploads/simplex/teaser/*.jpg''|glob{rdelim}<br />{ldelim}foreach from=$teaser item=''one''{rdelim}<br /> &lt;div&gt;&lt;img src=''{ldelim}root_url{rdelim}/{ldelim}$one{rdelim}'' width=''852'' height=''275'' alt='''' /&gt;&lt;/div&gt;<br />{ldelim}/foreach{rdelim}<br /> {/strip}</code></pre>\r\n<p><cite>If you would like to make this Slider responsive you should include a additional jQuery Plugin like for example {cms_selflink ext=''http://swipejs.com/'' target=''_blank'' text=''SwipeJS'' title=''SwipeJS''}</cite></p>\r\n<p>In included Stylesheets, Smarty has been used as well. This should make it possible for you, to quickly change Color scheme of the theme by simply changing HEX code within assign Tags.</p>\r\n<pre><code>\r\n[[assign var=''boxed_bg'' value="#d1d1d1 url(`$path`/boxed-bg.gif)"]]\r\n[[assign var=''light_grey'' value=''#f1f1f1'']]<br />[[assign var=''grey'' value=''#e9e9e9'']]<br />[[assign var=''dark_grey'' value=''#555'']]<br />[[assign var=''white'' value=''#fff'']]<br />[[assign var=''orange'' value=''#f39c2c'']]<br />[[assign var=''dark_orange'' value=''#e6870e'']]<br />[[assign var=''yellow'' value=''#fdbd34'']]</code></pre>\r\n<p>If you are using a modern Browser, you will notice that the Theme is using some of {cms_selflink ext=''http://www.w3.org/TR/CSS/#css3'' title=''CSS3'' text=''CSS3'' target=''_blank''} techniques. There are no Internet Explorer fallbacks included but this doesn''t mean that it does not work in Internet Explorer.<br />A Visitor that is using Internet Explorer will simply see a Layout with gracefull fallback, meaning animations will not animate, rounded corners will be edges...</p>\r\n<p><em>Note from Theme Develper Goran Ilic (uniqu3e):</em></p>\r\n<blockquote><cite>The Simplex Theme was kept simplistic which should make it possible for a Developer to easily read code used in Theme and either create a new Layout from it or editing this Theme.<br /><br />A full Internet Explorer or Mobile support was intentionally not included, as each Developer should decide how far a old Browser like Internet Explorer (7,8) or which Mobile devices he wants to support and which Technique he will use.<br />Each Project is different and with each Project there is a need for different techniques.</cite></blockquote>', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2012-05-17 18:57:00'),
(56, 'string', 'target', NULL, NULL, NULL, '', NULL, '2012-05-17 18:57:00'),
(15, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '-', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-19 08:01:13'),
(15, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-19 08:01:13'),
(58, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_News', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_News_Categories', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:46:05'),
(58, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:46:05'),
(59, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_News', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_News_Categories', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:49:41'),
(59, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:49:41'),
(60, 'string', 'content_en', NULL, NULL, NULL, '{FormBuilder form=''contact''}', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 22:00:14'),
(60, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 22:00:14'),
(61, 'string', 'content_en', NULL, NULL, NULL, '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:51:55'),
(61, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:51:55'),
(62, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:52:49'),
(62, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:52:49'),
(63, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:53:38'),
(63, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:53:38'),
(64, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:55:10'),
(64, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:10'),
(65, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:55:31'),
(65, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:55:31'),
(66, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-13 21:56:05'),
(66, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-13 21:56:05'),
(67, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_News', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_News_Categories', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-19 07:18:18'),
(67, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-19 07:18:18'),
(68, 'string', 'content_en', NULL, NULL, NULL, 'To Come<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11');
INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(68, 'string', 'Display_News', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'Display_News_Categories', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-19 07:20:11'),
(68, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-19 07:20:11'),
(69, 'string', 'content_en', NULL, NULL, NULL, '<h2>Directions</h2>\r\n<p style="text-align: left;">The Barn at Dunvilla is located just north of the intersection of US-59 and MN-34 between Pelican Rapids and Detroit Lakes, MN.</p>\r\n<div style="margin-left:10px;"><iframe style="height: 270px; width: 450px;" src="http://www.mapquest.com/embed?hk=12ZNAas" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div>\r\n<p><strong>From Fargo/West:</strong> Take I-94 East to Exit 24 (2nd Barnsville exit). Make a left at the end of the ramp to MN-34 East. Continue approx. 18 miles to US-59. Make a left onto US-59 (Lakeland Hardware) and continue 0.3 miles. The Barn at Dunvilla will be on your left.</p>\r\n<p><strong>From Fergus Falls/South &amp; East:</strong> Take I-94 West to Exit 50. Continue north on US-59 for 24 miles. The Barn at Dunvilla is located approx. 0.3 miles north of the intersection of MN-34 (Lakeland Hardware) on the left.</p>\r\n<p><strong>From Detroit Lakes/North: </strong>From the intersection of US-10 and US-59 in Detroit Lakes, continue south for 16 miles. The Barn at Dunvilla is located approx. 0.3 miles north of the intersection of MN-34 (Lakeland Hardware) on the right.</p>', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '-', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-19 07:59:39'),
(69, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-19 07:59:39'),
(70, 'string', 'content_en', NULL, NULL, NULL, '<h2>The History of Dunvilla</h2>\r\n<p><img style="float: left; margin-left: 10px; margin-right: 10px;" src="uploads/images/ry=400-2.jpeg" alt="" width="440" height="320" /><div>The original blah blah was in 1902, etc.</div>\r\n<img style="margin-left: 10px; margin-right: 10px; float: left;" src="uploads/ry=400-3.jpeg" alt="" width="440" height="320" />\r\n<div>More comments here</div>\r\n<img style="margin-left: 10px; margin-right: 10px; float: left;" src="uploads/ry=400.jpeg" alt="" width="440" height="320" />\r\n<div>Some interesting local history goes here</div>', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_Extra_Page_Data', NULL, NULL, NULL, '-', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_Search', NULL, NULL, NULL, '+', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_News', NULL, NULL, NULL, '-', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_Sidebar_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_Recently_Updated', NULL, NULL, NULL, '-', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_News_Categories', NULL, NULL, NULL, '-', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'Display_Footer_Menu', NULL, NULL, NULL, '-', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2013-07-19 21:17:40'),
(70, 'string', 'target', NULL, NULL, NULL, '', NULL, '2013-07-19 21:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_props_seq`
--

CREATE TABLE IF NOT EXISTS `cms_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content_props_seq`
--

INSERT INTO `cms_content_props_seq` (`id`) VALUES
(56);

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_seq`
--

CREATE TABLE IF NOT EXISTS `cms_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content_seq`
--

INSERT INTO `cms_content_seq` (`id`) VALUES
(70);

-- --------------------------------------------------------

--
-- Table structure for table `cms_crossref`
--

CREATE TABLE IF NOT EXISTS `cms_crossref` (
  `child_type` varchar(100) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `cms_index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_crossref`
--

INSERT INTO `cms_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES
('global_content', 1, 'template', 15, '2009-05-10 16:57:24', '2009-05-10 16:57:24'),
('global_content', 1, 'template', 16, '2009-05-09 17:04:30', '2009-05-09 17:04:30'),
('global_content', 1, 'template', 20, '2009-05-09 23:57:31', '2009-05-09 23:57:31'),
('global_content', 1, 'template', 18, '2009-05-09 17:19:20', '2009-05-09 17:19:20'),
('global_content', 1, 'template', 17, '2009-05-09 21:20:18', '2009-05-09 21:20:18'),
('global_content', 1, 'template', 21, '2009-05-10 16:59:13', '2009-05-10 16:59:13'),
('global_content', 1, 'template', 22, '2009-05-11 02:01:23', '2009-05-11 02:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `cms_css`
--

CREATE TABLE IF NOT EXISTS `cms_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) DEFAULT NULL,
  `css_text` text,
  `media_type` varchar(255) DEFAULT NULL,
  `media_query` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`css_id`),
  KEY `cms_index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_css`
--

INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(41, 'Handheld', '/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}', 'handheld', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(30, 'Print', '/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class="noprint"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}', 'print', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(31, 'Accessibility and cross-browser tools', '/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n	text-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n	position: absolute;\r\n/* takes it out top side */\r\n	top: -999em;\r\n/* takes it out left side */\r\n	left: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n	position: absolute;\r\n	left: -1000px;\r\n	top: -1000px;\r\n	width: 0;\r\n	height: 0;\r\n	overflow: hidden;\r\n	display: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n	content: ".";\r\n	display: block;\r\n	height: 0;\r\n	clear: both;\r\n	visibility: hidden;\r\n}\r\n.clear {\r\n	height: 0;\r\n	clear: both;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n#main .clear {\r\n	height: 0;\r\n	clear: right;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n	display: inline-block;\r\n	width: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n	height: 1%;\r\n	clear: right;\r\n	width: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */', 'screen', '', '2006-07-25 21:22:32', '2009-05-13 10:42:54'),
(32, 'Layout: Left sidebar + 1 column', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n	color: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n/* a different color is used for visited links */\r\n	color: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n	padding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 14:06:00'),
(33, 'Navigation: CSSMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it''s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it''s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level "a" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level "a" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092;\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 20:20:30'),
(34, 'Navigation: CSSMenu - Horizontal', '/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the "a" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the "a" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can''t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it''s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 16:52:41'),
(35, 'Module: News', 'div#news {\r\n/* margin for the entire div surrounding the news items */\r\n	margin: 2em 0 1em 1em;\r\n/* border set here */\r\n	border: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n	background: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n	line-height: 2em;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #f5f5f5;\r\n	border: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n	padding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n	margin: 0 0.5em 1em 0.5em;\r\n	border-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n	font-size: 90%;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n/* little more room at top */\r\n	padding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	margin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	padding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n	line-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n	padding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n	font-size: 90%;\r\n	margin-bottom: 5px;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	border-top: 1px solid #ccc;\r\n	margin-top: 0.5em;\r\n	padding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n	margin-bottom: 15px;\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n	padding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\ndiv#news ul li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-09 23:29:39'),
(38, 'Navigation: Simple - Horizontal', '/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n	height: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n	background-color: #243135;\r\n/* insure full width */\r\n	width: 100%;\r\n/* set height */\r\n	height: 49px;\r\n	margin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n	float: left;\r\n/* remove any default bullets */\r\n	list-style: none;\r\n/* still no margin */\r\n	margin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n	margin: 0;\r\n/* removes default underline */\r\n	text-decoration: none;\r\n/* default link color */\r\n	color: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n	display: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the "a" */\r\n	padding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the "a" we can set it here, it lets us use the span for an image */\r\n	padding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n	padding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n	padding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n	padding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the "sectionheader" */\r\n	padding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2010-05-29 13:06:18');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(39, 'Layout: Top menu + 2 columns', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 15px 10px 20px;\r\n/* this one is for sidebar with content and no menu */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 2em 0 1em 0em;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 00:13:04'),
(42, 'Navigation: Simple - Vertical', '/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of "a.parent" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn''t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}', 'screen', '', '2009-04-30 01:09:15', '2009-07-23 00:17:42'),
(43, 'Navigation: ShadowMenu - Horizontal', '/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n	list-style-type: none;\r\n	margin: 0px;\r\n	padding-top: 10px;\r\n	padding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 210px;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* room at top for li so image top shows correct */\r\n	padding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n	padding-top: 13px;\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n	margin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n	top: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n	margin-top: 0px;\r\n	padding-left: 5px;\r\n	left: 100%;\r\n	top: -7px;\r\n/* IE6 gets gif as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n	margin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n	margin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n	margin-left: 6px;\r\n/* helps hold it inside the ul */\r\n	width: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n	padding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* remove default "a" underline */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal "a" padding minus some for right image */\r\n	padding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n	background:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n	background:  none;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an "h" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n	background:  none;\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n	padding: 5px 10px;\r\n/* to keep it within li */\r\n	width: 165px;\r\n/* space between them */\r\n	margin: 5px;\r\n	background: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n	padding: 5px 10px;\r\n	width: 165px;\r\n	margin: 0px;\r\n	color: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n	background: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n	color: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* just to insure normal */\r\n	font-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n	color: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n	color: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n	color: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n	color: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n	color: #0587A9;\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n	padding: 0px;\r\n	background:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 210px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -8px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n	height: 9px;\r\n	margin: 0px 0px -8px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n	margin: 0px 0px -8px;\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2009-05-01 04:32:33', '2009-07-20 18:18:21'),
(45, 'Navigation: ShadowMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it''s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 190px;\r\n/* changes padding inherited from first level */\r\n	padding: 0px 10px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic appearance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it''s container */\r\n	position: relative;\r\n/* even padding all 4 sides */\r\n	padding: 6px;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors from here on */\r\n	color: #000;\r\n/* remove any background that may have been set in level above */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 209px;\r\n	height: auto;\r\n/* negative margin pulls it over the parent ul */\r\n	margin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n	padding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n	top: -2px;\r\n	display: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n	list-style-type: none;\r\n/* bit more negative left margin */\r\n	margin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:''value'', this flat lines it */\r\n	padding: 0px;\r\n/* now we just change one with ''property''-top:value */\r\n	padding-top: 10px;\r\n	position: absolute;\r\n	width: 209px;\r\n	height: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n	top: -5px;\r\n	left: 100%;\r\n	display: none;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 209px;\r\n	padding: 0px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -9px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 ''star html'' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n	height: 2px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	padding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2009-05-02 00:20:03', '2009-05-11 00:43:17'),
(46, 'Navigation: FatFootMenu', '#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the "a" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}', 'screen', '', '2009-05-02 15:05:04', '2009-05-09 23:47:45'),
(47, 'ncleanbluecore', '/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n	width: 100%;\r\n}\r\n.core-wrap-960 {\r\n	width: 960px;\r\n}\r\n.core-wrap-780 {\r\n	width: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n	float: left;\r\n	display: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n	float: right;\r\n	display: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}', 'screen', '', '2009-05-06 14:28:28', '2009-05-11 02:35:43'),
(48, 'ncleanblueutils', '/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	outline: 0;\r\n	font-size: 100%;\r\n	vertical-align: baseline;\r\n	background: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n	line-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n	list-style: none;\r\n}\r\nblockquote, q {\r\n	quotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n	content: '''';\r\n	content: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n	outline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n	text-decoration: none;\r\n}\r\ndel {\r\n	text-decoration: line-through;\r\n}\r\n/* tables still need ''cellspacing="0"'' in the markup */\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-family: inherit;\r\n}\r\ndfn {\r\n	display: none;\r\n	overflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	position: static;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n	clear: both;\r\n	content: ''.'';\r\n	display: block;\r\n	visibility: hidden;\r\n	height: 0;\r\n}\r\n.util-clearfix {\r\n	display: inline-block;\r\n}\r\n* html .util-clearfix {\r\n	height: 1%;\r\n}\r\n.util-clearfix {\r\n	display: block;\r\n}', 'screen', '', '2009-05-06 14:29:17', '2009-05-11 02:38:10');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(49, 'Layout: NCleanBlue', '/*  \n@Nuno Costa [criacaoweb.net]\n@Since [cmsms 1.6]\n@Contributors: Mark and Dev-Team\n*/\nbody {\n/* default text for entire site */\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\n/* default text color for entire site */\n	color: #3A3A36;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\n#ncleanblue {\n/* set to width of viewport */\n	width: auto;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* wiki style external links */\n/* external links will have "(external link)" text added, lets hide it */\na.external span {\n	position: absolute;\n	left: -5000px;\n	width: 4000px;\n}\na.external {\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\n	padding: 0 12px 0 0;\n}\n/* colors for external links */\na.external:link {\n	color: #679EBC;\n/* background image for the link to show wiki style arrow */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:visited {\n	color: #18507C;\n/* a different color can be used for visited external links */\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:hover {\n	color: #18507C;\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\n	background-color: inherit;\n}\n/* end wiki style external links */\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\n.accessibility, hr {\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\n	position: absolute;\n	top: -9999em;\n	left: -9999em;\n	background: none;\n	border: 0;\n	clear: both;\n	display: block;\n	float: none;\n	font-size: 0;\n	margin: 0;\n	padding: 0;\n	overflow: hidden;\n	visibility: hidden;\n	width: 0;\n	height: 0;\n	border: none;\n}\n/* ------------ Standard  HTML elements and their default settings ------------ */\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\np {\n	padding: 0;\n	margin-top: 0.5em;\n    margin-bottom: 1em;\n   text-align:left;\n}\nh1, h2, h3, h4, h5 {\n	line-height: 1.6em;\n	font-weight: normal;\n	width: auto;\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n}\n/*default link styles*/\na {\n	color: #679EBC;\n	text-decoration: none;\n	text-align: left;\n}\na:hover {\n	color: #3A6B85;\n}\na:active {\n	color: #3A6B85;\n}\na:visited {\n	color: #679EBC;\n}\ninput, textarea, select {\n	font-size: 0.95em;\n}\n/* ------------ Wrapper ------------ */\ndiv#pagewrapper {\n	font-size: 95%;\n	position: relative;\n	z-index: 1;\n}\n/* ------------ Header ------------ */\n#header {\n	height: 111px;\n	width: 960px;\n}\n#logo a {\n/* adjust according your image size */\n	height: 75px;\n	width: 215px;\n/* forces full link size */\n	display: block;\n/* this hides the text */\n	text-indent: -9999em;\n	margin-top: 0;\n	margin-left: 0;\n/* you can set your own image here, note size adjustments */\n	background: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\n}\n/* ------------ Header - Search ------------ */\ndiv#search {\n	width: 190px;\n	height: 28px;\n	margin-top: 31px;\n	margin-right: 20px;\n}\ndiv#search label {\n	text-indent: -9999em;\n	height: 0pt;\n	width: 0pt;\n	display: none;\n}\ndiv#search input.search-input {\n/* specific size for image, your image may need these adjusted */\n	width: 143px;\n	height: 17px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* text color */\n	color: #999;\n/* padding of text */\n	padding: 7px 0px 4px 10px;\n	float: left;\n/* set all font properties at once, weight, size, family */\n	font: bold 0.9em Arial, Helvetica, sans-serif;\n/* left input image, set your own here */\n	background: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\n}\ndiv#search input.search-button {\n/* specific size for image, your image may need these adjusted */\n	width: 37px;\n	height: 28px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* hides text, image has text */\n	text-indent: -9999em;\n	float: left;\n	margin: 0;\n/* provides positive hover effect */\n	cursor: pointer;\n/* removes default size/height */\n	font-size: 0px;\n	line-height: 0px;\n/* submit button image, set your own here */\n	background: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\n}\n/* ------------ Content ------------ */\n#content {\n	width: auto;\n/* all text in #content will default align left, changed in other calls */\n	text-align: left;\n}\n#bar {\n	width: auto;\n	height: 40px;\n	padding-right: 1em;\n	padding-left: 1em;\n}\n.print {\n	margin-right: 75px;\n	margin-top: 10px;\n}\n#version {\n	width: 50px;\n	height: 31px;\n	position: absolute;\n	z-index: 5;\n	top: 130px;\n	right: -16px;\n	font-size: 1.6em;\n	font-weight: bold;\n	padding: 28px 15px;\n	color: #FFF;\n	text-align: center;\n	vertical-align: middle;\n	background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\n}\n/* IE6 fixes */\n* html div#version {\n	top: 150px;\n}\n/* End IE6 fixes */\n/* Site Title */\nh1.title {\n	font-size: 1.8em;\n	color: #666666;\n	margin-bottom: 0.5em;\n}\n/* Breadcrumbs */\ndiv.breadcrumbs {\n	padding: 0.5em 0;\n	font-size: 80%;\n	margin: 0 1em;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\n/* ------------ Side Bar (Left) ------------ */\n#left {\n	width: 250px;\n}\n/* Image that Represents the new CMS design */\n#left .screen {\n	margin: 10px 50px;\n}\n/* End  */\n.sbar-title {\n	font: bold 1.2em Arial, Helvetica, sans-serif;\n	color: #252523;\n}\n.sbar-top {\n	height: 20px;\n	width: auto;\n	padding: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\n}\n.sbar-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n}\nspan.sbar-bottom {\n	width: auto;\n	display: block;\n	height: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\n}\n/* ------------ Main (Right) ------------ */\n#main {\n	width: 690px;\n}\n.main-top {\n	height: 15px;\n	width: auto;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\n}\n.main-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n	padding: 20px;\n	padding-top: 0px;\n}\n.main-bottom {\n	width: auto;\n	height: 41px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\n}\n.right49, .left49 {\n	font-size: 0.85em;\n	margin: 7px 5px 5px 10px;\n	font-weight: bold;\n}\n.left49 span {\n	display: block;\n	padding-top: 1px;\n}\n.left49 a {\n	font-weight: normal;\n}\n.right49 {\n	height: 28px;\n	width: 50px;\n	padding-right: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\n}\n.right49 a, .right49 a:visited {\n	padding: 7px 4px;\n	display: block;\n	color: #000;\n	height: 15px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\n}\n#main h2,\n#main h3,\n#main h4,\n#main h5,\n#main h6 {\n	font-size: 1.4em;\n	color: #301E12;\n}\ndiv#main ul,\ndiv#main ol,\ndiv#main dl,\n#footer ul,\n#footer ol {\n	line-height: 1em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul,\n#footer ul {\n	list-style: circle;\n}\ndiv#main ul li,\ndiv#main ol li,\n#footer ul li,\n#footer ol li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}\n/* definition lists topics on bold */\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\n/* ------------ Footer ------------ */\n#footer-wrapper {\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	width: auto;\n	margin-top: 5px;\n	text-align: center;\n	margin-right: 00px;\n	margin-left: 0px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer {\n	color: #FFF;\n	font-size: 0.8em;\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer .block {\n	width: 300px;\n	margin: 20px 10px 10px;\n}\n#footer .cms {\n	text-align: right;\n}\n/* ------------ Footer Links ------------ */\n#footer ul {\n	width: auto;\n	text-align: left;\n	margin-left: 50px;\n}\n#footer ul ul {\n	margin-left: 0px;\n}\n#footer ul li a {\n	color: #FFF;\n	display: block;\n	font-weight: normal;\n	margin-bottom: 0.5em;\n	text-decoration: none;\n}\n#footer a {\n	color: #DCEDF1;\n	text-decoration: underline;\n	font-weight: bold;\n}\n/* ------------ END LAYOUT ---------------*/\n/* ------------  Menu  ROOT  ------------ */\n.page-menu {\n	width: auto;\n	height: 35px;\n	margin: 3px 0 0 20px;\n}\n.menuwrapper {}\n\nul#primary-nav li hr.menu_separator{\n        position: relative;\n        visibility: hidden;\n        display:block;\n        width:5px;\n       	height: 32px;\n       	margin: 0px 5px 0px;\n}\n.page-menu ul#primary-nav {\n	height: 1%;\n	float: left;\n	list-style: none;\n	padding: 0;\n	margin: 0;\n}\n.page-menu ul#primary-nav li {\n	float: left;\n}\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a span {\n	display: block;\n	padding: 0 10px;\n	background-repeat: no-repeat;\n	background-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\n}\n.page-menu ul#primary-nav li a {\n	padding-left: 0;\n	color: #000;\n	font-weight: bold;\n	line-height: 2.15em;\n	text-decoration: none;\n	margin-left: 1px;\n	font-size: 0.85em;\n}\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:active {\n	color: #000;\n}\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover span {\n	color: #000;\n}\n.page-menu ul#primary-nav li a span {\n	padding-top: 6px;\n	padding-right: 0;\n	padding-bottom: 5px;\n}\n.page-menu ul#primary-nav li a.menuparenth,\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n	background-position: 100% -120px;\n}\n.page-menu ul#primary-nav li a {\n	background-position: 100% -80px;\n}\n.page-menu ul#primary-nav li a.menuactive span,\n.page-menu ul#primary-nav li a:hover span,\n.page-menu ul#primary-nav li a:focus span,\n.page-menu ul#primary-nav li a:active span {\n	background-position: 0 -40px;\n}\n.page-menu ul#primary-nav li a span {\n	background-position: 0 0;\n}\n.page-menu ul#primary-nav .sectionheader,\n.page-menu ul#primary-nav li a:link.menuactive,\n.page-menu ul#primary-nav li a:visited.menuactive {\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\n	cursor: text;\n}\n.page-menu ul#primary-nav li span,\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n/* @ Opera, we need to be explicit again here now... */\n	cursor: pointer;\n}\n/* Additional IE specific bug fixes... */\n* html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n*:first-child+html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n/* --------------------  menu dropdow  -------------------------\n/* Unless you know what you do, do not touch this */\n/* Reset all ROOT menu styles. */\nul#primary-nav ul.unli li li a span,\nul#primary-nav ul.unli li a span,\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\n	font-weight: normal;\n	background-image: none;\n	display: block;\n	padding-top: 0px;\n	padding-left: 0px;\n	padding-right: 0px;\n	padding-bottom: 0px;\n}\n#primary-nav {\n	margin: 0px;\n	padding: 0px;\n}\n#primary-nav ul {\n	list-style: none;\n	margin: -6px 0px 0px;\n	padding: 0px;\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\n	width: 209px;\n}\n#primary-nav ul {\n	position: absolute;\n	z-index: 1001;\n	top: auto;\n	display: none;\n	padding-top: 9px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\n}\n* html #primary-nav ul.unli {\n	padding-top: 12px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\n}\n#primary-nav ul.unli ul {\n	margin-left: -7px;\n	left: 100%;\n	top: 3px;\n}\n* html #primary-nav ul.unli ul {\n	margin-left: -0px;\n}\n#primary-nav li {\n	margin: 0px;\n	float: left;\n}\n#primary-nav li li {\n	margin-left: 7px;\n	margin-top: -1px;\n	float: none;\n	position: relative;\n}\n/* Styling the basic appearance of the menu elements */\nul#primary-nav ul hr.menu_separator{\n        position: relative;\n        visibility: visible;\n        display:block;\n        width:130px;\n       	height: 1px;\n       	margin: 2px 30px 2px;\n	padding: 0em;\n	border-bottom: 1px solid #ccc;\n	border-top-width: 0px;\n	border-right-width: 0px;\n	border-left-width: 0px;\n	border-top-style: none;\n	border-right-style: none;\n	border-left-style: none;\n}\n#primary-nav .separator,\n#primary-nav .separatorh {\n	height: 9px;\n	width: 209px;\n	margin: 0px 0px -8px;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\n}\n* html #primary-nav .separator {\n       z-index:-1;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\n}\n*:first-child+html #primary-nav .separator {\n       z-index:-1;\n}\n#primary-nav ul.unli li a {\n	padding: 0px 10px;\n	width: 165px;\n	margin: 5px;\n	background-image: none;\n}\n* html #primary-nav ul.unli li a {\n	padding: 0px 10px 0px 5px;\n	width: 165px;\n	margin: 5px 0px;\n}\n#primary-nav li li a:hover {\n	background-color: #DBE7F2;\n}\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\n#primary-nav li.menuactive li a {\n	text-decoration: none;\n	background: none;\n}\n#primary-nav ul.unli li.menuparenth,\n#primary-nav ul.unli a:hover,\n#primary-nav ul.unli a.menuactive {\n	background-color: #DBE7F2;\n}\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\n#primary-nav ul.unli li .menuparent,\n#primary-nav ul.unli li .menuparent:hover,\n#primary-nav ul.unli li .menuparent,\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\n	background-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\n	background-position: center right;\n	background-repeat: no-repeat;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul,\n#primary-nav li.menuparenth ul ul ul {\n	display: none;\n}\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav ul ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul,\n#primary-nav ul ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hacks */\n#primary-nav li li {\n	float: left;\n	clear: both;\n}\n#primary-nav li li a {\n	height: 1%;\n}\n/*************** End Menu *****************/\n/* ------------ News Module ------------ */\n#news {\n	padding: 10px;\n}\n.NewsSummary {\n}\n.NewsSummaryPostdate,\n.NewsSummaryCategory,\n.NewsSummaryAuthor {\n	font-style: italic;\n	font-size: 0.8em;\n}\n.NewsSummaryLink {\n	margin: 2px 0;\n}\n.NewsSummaryContent {\n	margin: 10px 0;\n}\n.NewsSummaryMorelink {\n	margin: 5px 0 15px;\n}\n/* ------------ End News Module ------------ */', 'screen', '', '2009-05-06 14:30:25', '2009-07-22 17:39:51'),
(50, 'Simplex: Core', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n/* =====================================\r\nBASE STYLES\r\n===================================== */\r\narticle, aside, details, figcaption, figure, footer, header, hgroup, nav, section { \r\n    display: block\r\n}\r\n/* taken from HTML5 Boilerplate http://h5bp.com */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100%\r\n}\r\naudio, canvas, video { \r\n    display: inline-block; \r\n    *display: inline; \r\n    *zoom: 1\r\n}\r\naudio:not([controls]) { \r\n    display: none\r\n}\r\n[hidden] { \r\n    display: none\r\n}\r\n/* text selection */\r\n.content-wrapper ::-moz-selection { \r\n    background: #f39c2c;\r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none\r\n}\r\n.content-wrapper ::selection { \r\n    background: #f39c2c; \r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none \r\n}\r\n/* Consistent box sizing and appearance */\r\ninput[type="checkbox"], input[type="radio"] { \r\n    box-sizing: border-box; \r\n    padding: 0; \r\n    *width: 13px; \r\n    *height: 13px\r\n}\r\ninput[type="search"] { \r\n    -webkit-appearance: textfield; \r\n    -moz-box-sizing: content-box; \r\n    -webkit-box-sizing: content-box; \r\n    box-sizing: content-box\r\n}\r\ninput[type="search"]::-webkit-search-decoration, input[type="search"]::-webkit-search-cancel-button { \r\n    -webkit-appearance: none\r\n}\r\n/* Remove inner padding and border in FF3/4 */\r\nbutton::-moz-focus-inner, input::-moz-focus-inner { \r\n    border: 0; \r\n    padding: 0\r\n}\r\n/*\r\n * 1. Remove default vertical scrollbar in IE6/7/8/9\r\n * 2. Allow only vertical resizing\r\n */\r\ntextarea { \r\n    overflow: auto; \r\n    vertical-align: top; \r\n    resize: vertical\r\n}\r\nul, ol { \r\n    margin: 1em 0; \r\n    padding: 0 0 0 40px\r\n}\r\ndd { \r\n    margin: 0 0 0 40px\r\n}\r\nnav ul, nav ol { \r\n    list-style: none; \r\n    list-style-image: none; \r\n    margin: 0; \r\n    padding: 0\r\n}\r\n/* Redeclare monospace font family */\r\npre, code, kbd, samp { \r\n    font-family: monospace, serif; _font-family: ''courier new'', monospace; \r\n    font-size: 1em }\r\n/* Improve readability of pre-formatted text in all browsers */\r\npre { \r\n    white-space: pre;\r\n    white-space: pre-wrap; \r\n    word-wrap: break-word\r\n}\r\nq { \r\n    quotes: none\r\n}\r\nq:before, q:after { \r\n    content: ""; \r\n    content: none\r\n}\r\nsmall { \r\n    font-size: 85%\r\n}\r\n/* Hide from both screenreaders and browsers */\r\n.hidden { \r\n    display: none !important; \r\n    visibility: hidden\r\n}\r\n/* Hide only visually, but have it available for screenreaders */\r\n.visuallyhidden { \r\n    border: 0; \r\n    clip: rect(0,0,0,0); \r\n    height: 1px; \r\n    margin: -1px; \r\n    overflow: hidden; \r\n    padding: 0; \r\n    position: absolute; \r\n    width: 1px\r\n}\r\n/* Extends the .visuallyhidden class to allow the element to be focusable when navigated to via the keyboard */\r\n.visuallyhidden.focusable:active, \r\n.visuallyhidden.focusable:focus { \r\n    clip: auto; \r\n    height: auto; \r\n    margin: 0; \r\n    overflow: visible; \r\n    position: static; \r\n    width: auto\r\n}\r\n/* Hide visually and from screenreaders, but maintain layout */\r\n.invisible { \r\n    visibility: hidden\r\n}\r\n/* correct text resizing */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100% \r\n}\r\nbody { \r\n    margin: 0; \r\n    font-size: 1em;\r\n   /* -webkit-font-smoothing: antialiased */\r\n}\r\n/* =====================================\r\n12 COLUMN GRID\r\n===================================== */\r\n\r\n/* ================================\r\nDesktop\r\n================================ */\r\n\r\n/* the wraping container */\r\n.container {\r\n    width: 92%;\r\n    min-width: 980px;\r\n    max-width: 1260px\r\n}\r\n/* align the site */\r\n.leftaligned {\r\n    margin: 0 auto 0  0\r\n}\r\n.rightaligned {\r\n    margin: 0 0 0 auto\r\n}\r\n.centered {\r\n    margin: 0 auto\r\n}\r\n/* Global Grid layout */\r\n.grid_1,\r\n.grid_2,\r\n.grid_3,\r\n.grid_4,\r\n.grid_5,\r\n.grid_6,\r\n.grid_7,\r\n.grid_8,\r\n.grid_9,\r\n.grid_10,\r\n.grid_11,\r\n.grid_12 {\r\n	display:inline;\r\n	float: left;\r\n	position: relative;\r\n	margin-left: .96%;\r\n	margin-right: .96%   \r\n}\r\n\r\n/* alpha and omega classes remove margins, aplha = no margin left, omega = no margin right */\r\n.alpha { margin-left: 0 }\r\n.omega { margin-right: 0 }\r\n\r\n/* Grid sizes up to 12 columns */\r\n.container .grid_1 { width:6.333% }\r\n.container .grid_2 { width:14.667% }\r\n.container .grid_3 { width:23.0% }\r\n.container .grid_4 { width:31.333% }\r\n.container .grid_5 { width:39.667% }\r\n.container .grid_6 { width:48.0% }\r\n.container .grid_7 { width:56.333% }\r\n.container .grid_8 { width:64.667% }\r\n.container .grid_9 { width:73.0% }\r\n.container .grid_10 { width:81.333% }\r\n.container .grid_11 { width:89.667% }\r\n.container .grid_12 { width:98.0% }\r\n\r\n/* Prefix to add extra space left */\r\n.container .prefix_1 { padding-left:8.333% }\r\n.container .prefix_2 { padding-left:16.667% }\r\n.container .prefix_3 { padding-left:25.0% }\r\n.container .prefix_4 { padding-left:33.333% }\r\n.container .prefix_5 { padding-left:41.667% }\r\n.container .prefix_6 { padding-left:50.0% }\r\n.container .prefix_7 { padding-left:58.333% }\r\n.container .prefix_8 { padding-left:66.667% }\r\n.container .prefix_9 { padding-left:75.0% }\r\n.container .prefix_10 { padding-left:83.333% }\r\n.container .prefix_11 { padding-left:91.667% }\r\n\r\n/* Suffix to add extra space right */\r\n.container .suffix_1 { padding-right:8.333% }\r\n.container .suffix_2 { padding-right:16.667% }\r\n.container .suffix_3 { padding-right:25.0% }\r\n.container .suffix_4 { padding-right:33.333% }\r\n.container .suffix_5 { padding-right:41.667% }\r\n.container .suffix_6 { padding-right:50.0% }\r\n.container .suffix_7 { padding-right:58.333% }\r\n.container .suffix_8 { padding-right:66.667% }\r\n.container .suffix_9 { padding-right:75.0% }\r\n.container .suffix_10 { padding-right:83.333% }\r\n.container .suffix_11 { padding-right:91.667% }\r\n\r\n/* Push columns to right */\r\n.container .push_1 { left:8.333% }\r\n.container .push_2 { left:16.667% }\r\n.container .push_3 { left:25.0% }\r\n.container .push_4 { left:33.333% }\r\n.container .push_5 { left:41.667% }\r\n.container .push_6 { left:50.0% }\r\n.container .push_7 { left:58.333% }\r\n.container .push_8 { left:66.667% }\r\n.container .push_9 { left:75.0% }\r\n.container .push_10 { left:83.333% }\r\n.container .push_11 { left:91.667% }\r\n\r\n/* Pull columns to left */\r\n.container .pull_1 { left:-8.333% }\r\n.container .pull_2 { left:-16.667% }\r\n.container .pull_3 { left:-25.0% }\r\n.container .pull_4 { left:-33.333% }\r\n.container .pull_5 { left:-41.667% }\r\n.container .pull_6 { left:-50.0% }\r\n.container .pull_7 { left:-58.333% }\r\n.container .pull_8 { left:-66.667% }\r\n.container .pull_9 { left:-75.0% }\r\n.container .pull_10 { left:-83.333% }\r\n.container .pull_11 { left:-91.667% }\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 768px;\r\n        max-width: 1024px\r\n    } \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 320px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 300px;\r\n        max-width: 320px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;  \r\n        margin: 0 1%;\r\n        float: none\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 321px;\r\n        max-width: 767px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;\r\n        margin: 0 1%;\r\n        display: block;\r\n        float: none\r\n    }    \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portrait & Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 300px) and (max-width: 767px) {\r\n    .container .prefix_1,\r\n    .container .prefix_2,\r\n    .container .prefix_3,\r\n    .container .prefix_4,\r\n    .container .prefix_5,\r\n    .container .prefix_6,\r\n    .container .prefix_7,\r\n    .container .prefix_8,\r\n    .container .prefix_9,\r\n    .container .prefix_10,\r\n    .container .prefix_11,\r\n    .container .suffix_1,\r\n    .container .suffix_2,\r\n    .container .suffix_3,\r\n    .container .suffix_4,\r\n    .container .suffix_5,\r\n    .container .suffix_6,\r\n    .container .suffix_7,\r\n    .container .suffix_8,\r\n    .container .suffix_9,\r\n    .container .suffix_10,\r\n    .container .suffix_11 { \r\n        padding-right: 0;\r\n        padding-left: 0\r\n    } \r\n    .container .push_1,\r\n    .container .push_2,\r\n    .container .push_3,\r\n    .container .push_4,\r\n    .container .push_5,\r\n    .container .push_6,\r\n    .container .push_7,\r\n    .container .push_8,\r\n    .container .push_9,\r\n    .container .push_10,\r\n    .container .push_11,\r\n    .container .pull_1,\r\n    .container .pull_2,\r\n    .container .pull_3,\r\n    .container .pull_4,\r\n    .container .pull_5,\r\n    .container .pull_6,\r\n    .container .pull_7,\r\n    .container .pull_8,\r\n    .container .pull_9,\r\n    .container .pull_10,\r\n    .container .pull_11 {\r\n        left: auto;\r\n        right: auto\r\n    }\r\n}\r\n\r\n/* =====================================\r\niPhone 4, iPad2, Retina stuff ?\r\n===================================== */\r\n@media only screen and (-webkit-min-device-pixel-ratio : 1.5), only screen and (min-device-pixel-ratio : 1.5) {\r\n\r\n/* if you buy me one i might test and add something here */\r\n\r\n}\r\n\r\n/* =====================================\r\nCLEARING FLOATS\r\n===================================== */\r\n.clear {\r\n	clear: both;\r\n	display: block;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0\r\n}\r\n\r\n.cf:before, \r\n.cf:after,\r\n.row:before,\r\n.row:after{ \r\n    content: ""; \r\n    display: table\r\n}\r\n.cf:after,\r\n.row:after{ \r\n    clear: both\r\n}\r\n.cf,\r\n.row { \r\n    *zoom: 1\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:15:51', '2012-05-06 18:49:29');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(51, 'Simplex: Layout', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n[[* APPEARANCE *]]\r\n[[* \r\nBy adding #boxed id to body tag you can easily change appearance of the site.\r\nThis would add a background image to body and content would be wrapped in a box.\r\nBy removing that id the background is removed and site is presented in white.\r\n\r\nHow: Go to Template -> Simplex and find <body>\r\nNow simply edit as following <body id=''boxed''>\r\n\r\nYou can as well reposition your site by changing class on wrapping div.\r\nFind in Simplex Template following: \r\n\r\n<div class=''container centered'' id=''wrapper''>\r\n\r\nNow change "centered" to "left" or "right" and page will be left or right aligned.\r\n*]]\r\n\r\n[[* assign the images path to a variable *]]\r\n[[capture assign=''path'']][[uploads_url]]/simplex/images[[/capture]]\r\n\r\n[[* COLORS *]]\r\n\r\n[[assign var=''boxed_bg'' value="#d1d1d1 url(`$path`/boxed-bg.gif)"]]\r\n\r\n[[assign var=''light_grey'' value=''#f1f1f1'']]\r\n[[assign var=''grey'' value=''#e9e9e9'']]\r\n[[assign var=''dark_grey'' value=''#555'']]\r\n[[assign var=''white'' value=''#fff'']]\r\n[[assign var=''orange'' value=''#f39c2c'']]\r\n[[assign var=''dark_orange'' value=''#e6870e'']]\r\n[[assign var=''yellow'' value=''#fdbd34'']]\r\n\r\n\r\n/* =====================================\r\nBASIC STYLES\r\n===================================== */\r\nbody {\r\n    background: [[$white]];\r\n    font-family: sans-serif; /* sans-serif falls back to default OS and Browser font, usually Arial or Helvetica and so on */\r\n    font-size: 12px;\r\n    color: [[$dark_grey]];\r\n    line-height: 1.3\r\n}\r\n/* you can change appearance of the page by adding or removing #boxed id to body tag. */\r\nbody#boxed {\r\n    background: [[$boxed_bg]] repeat\r\n}\r\n/* add some space inside the boxed container */\r\n#boxed .container {\r\n    padding: 0 1%\r\n}\r\na img {\r\n    border: none\r\n}\r\n/* you can use these classes to align images to left or right */\r\n.right {\r\n    float: right\r\n}\r\n.left {\r\n    float:left\r\n}\r\n/* if image needs some space add this class to img tag\r\n * so at the end a left floating image would be <img src=''some.jpg'' class=''left spacing'' alt=''foo'' />\r\n */\r\n.spacing {\r\n    margin: 10px\r\n}\r\n.spacing.left {\r\n    margin: 10px 10px 10px 0\r\n}\r\n.spacing.right {\r\n    margin: 10px 0 10px 10px\r\n}\r\n/* or add a 2 px border to image or something, change as you need it */\r\n.border {\r\n    border: 2px solid [[$grey]]\r\n}\r\n/* some styling for code chunks */\r\ncode, samp, kbd {\r\n    font-family: Consolas, ''Andale Mono WT'', ''Andale Mono'', ''Lucida Console'', ''Lucida Sans Typewriter'', monospace;\r\n    color: [[$dark_grey]]\r\n}\r\npre code {\r\n    line-height: 1.4;\r\n    font-size: 11px\r\n}\r\npre {\r\n    padding: 10px;\r\n    margin: 10px 0;\r\n    overflow: auto;\r\n    width: 93%;\r\n    background: [[$light_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px\r\n}\r\n/* target IE7 and IE6 */\r\n*:first-child+html pre {\r\n    padding-bottom: 20px;\r\n    overflow-y: hidden;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n* html pre {\r\n    padding-bottom: 20px;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n/* horizontal ruler */\r\nhr { \r\n    border: solid [[$grey]]; \r\n    border-width: 1px 0 0 0; \r\n    clear: both; \r\n    margin: 10px 0 30px 0; \r\n    height: 0\r\n}\r\n/* =====================================\r\nCOMMON TYPOGRAPHY\r\n===================================== */\r\n\r\n/* link default styles */\r\na { \r\n    color: [[$orange]];\r\n}\r\na:visited {  \r\n    color: [[$dark_orange]] \r\n}\r\na:hover { \r\n    color: [[$dark_grey]];\r\n    transition: transform 0.6s ease-out;\r\n    -webkit-transition: color 0.6s ease-out;\r\n    -moz-transition: color 0.6s ease-out;\r\n    -o-transition: color 0.6s ease-out;     \r\n    text-decoration: underline\r\n}\r\na:focus { \r\n    outline: thin dotted\r\n}\r\na:hover, a:active { \r\n    outline: 0\r\n}\r\n/* add icon to links with class external */\r\na.external span {\r\n    display: inline-block;\r\n    width: 9px;\r\n    height: 9px;\r\n    text-indent: -999em;\r\n    margin: 0 3px;\r\n    /* using sprite image, but left as reference to single image \r\n    background: transparent url([[$path]]/external-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -130px;\r\n}\r\na.external:hover span {\r\n    background-position: -10px -139px\r\n}\r\n/* default heading styles */\r\nh1,\r\nh2,\r\nh3 {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n}\r\nh1 {\r\n    color: [[$orange]];\r\n    margin: 10px 0;\r\n    font-size: 28px;\r\n    text-transform: uppercase;\r\n}\r\nh2 {\r\n    color: [[$dark_grey]];\r\n    font-size: 22px\r\n}\r\nh3 {\r\n    color: [[$dark_grey]];\r\n    font-weight: 300;\r\n    font-size: 18px\r\n}\r\n/* blockquotes and cites */\r\nblockquote, \r\nblockquote p { \r\n    font-size: 14px; \r\n    line-height: 1.5; \r\n    color: [[$dark_grey]]; \r\n    font-style: italic;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\nblockquote { \r\n    margin: 0 0 20px 0; \r\n    padding: 9px 10px 10px 19px; \r\n    border-left: 5px solid [[$light_grey]]\r\n}\r\nblockquote cite { \r\n    display: block; \r\n    font-size: 12px; \r\n    color: [[$dark_grey]] \r\n}\r\nblockquote cite:before { \r\n    content: "\\2014 \\0020"; \r\n}\r\nblockquote cite a, \r\nblockquote cite a:visited, \r\nblockquote cite a:visited {\r\n    font-family: Georgia, Times New Roman, serif;    \r\n}\r\n\r\n/* =====================================\r\nLAYOUT\r\n===================================== */\r\n/* wrapping the page in a box */\r\n#wrapper {\r\n    margin-top: 10px;\r\n    border-top: 5px solid [[$orange]]\r\n}\r\n/* you can switch appearance of the page by adding or removing id #boxed to body tag */\r\n#boxed #wrapper {\r\n    background: [[$white]];\r\n    box-shadow: 2px 2px 8px [[$dark_grey]]\r\n}\r\n   \r\n/* ------ HEADER SECTION ------ */\r\n/* if you need height or something for header part add style here */\r\n.header {\r\n \r\n}\r\n/* the logo */\r\n.logo {\r\n    margin-top: 12px;\r\n    position: relative\r\n}\r\n/* having some fun with palm, rotating with css3, will not work in IE */\r\n.logo .palm {\r\n    position: absolute;\r\n    top: 5px;\r\n    left: 45px;\r\n    /* using sprite image as background, left as reference to single image \r\n    background: url([[$path]]/palm-circle.png) no-repeat;\r\n    */\r\n    background: url([[$path]]/simplex-sprite.png) no-repeat -10px -10px;\r\n    display: block;\r\n    width: 48px;\r\n    height: 48px;\r\n    transition: transform 0.6s ease-out;    \r\n    -webkit-transition: -webkit-transform 0.6s ease-out;\r\n    -moz-transition: -moz-transform 0.6s ease-out;\r\n    -o-transition: -o-transform 0.6s ease-out;\r\n    -webkit-perspective: 1000;\r\n    -webkit-backface-visibility: hidden;     \r\n}\r\n/* css3 transform rotating palm on hover */\r\n.logo a:hover .palm {\r\n    transform: rotate(360deg);    \r\n    -webkit-transform: rotate(360deg);\r\n    -moz-transform: rotate(360deg);\r\n    -o-transform: rotate(360deg)   \r\n}\r\n.top .header {\r\n    border-bottom: 1px solid [[$light_grey]]\r\n}\r\n\r\n/* ------ NAVIGATION ------ */\r\n\r\n/* first level */\r\nnav.main-navigation {\r\n    z-index: 990;\r\n    height: 55px;\r\n    line-height: 37px;\r\n    margin-top: 20px;\r\n}\r\nnav.main-navigation > ul {\r\n    float:right;\r\n    padding: 0\r\n}\r\nnav.main-navigation > ul > li {\r\n    float: left;\r\n    padding: 0;\r\n    margin:0 12px;\r\n    position: relative\r\n}\r\nnav.main-navigation > ul > li:first-child,\r\nnav.main-navigation > ul > li.first {\r\n    margin-left: 0\r\n}\r\nnav.main-navigation > ul > li:last-child,\r\nnav.main-navigation > ul > li.last {\r\n    margin-right: 0\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader span {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    cursor: pointer;\r\n    text-transform: uppercase\r\n}\r\n/* Second Level */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    position: absolute;\r\n    display: block;\r\n    height: 0px;\r\n    width: 200px;  \r\n    padding: 10px;\r\n    background: [[$white]];\r\n    background: rgba(255,255,255,.95);    \r\n    box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -webkit-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -moz-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -o-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px;\r\n    border: 1px solid [[$grey]] \r\n}\r\nnav.main-navigation > ul > li:hover > ul {    \r\n    height: auto;\r\n    z-index: 9999;\r\n    top: 37px;\r\n    right: 0;\r\n    left: auto;\r\n    display: block\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    line-height: 1;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul { \r\n    height: auto;\r\n    top: 0;\r\n    right: auto;\r\n    left: -210px;\r\n    z-index: 999;    \r\n    display: block\r\n}\r\n/* navigation text color */\r\nnav.main-navigation ul li li a,\r\nnav.main-navigation ul li li.sectionheader span {\r\n    padding: 6px 12px;\r\n    font-family: sans-serif;\r\n    text-transform: none;\r\n    font-weight: normal;\r\n    font-size: 12px;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    display: block\r\n}\r\nnav.main-navigation a:hover,\r\nnav.main-navigation a.current,\r\nnav.main-navigation li.sectionheader span:hover,\r\nnav.main-navigation li.sectionheader span.current,\r\nnav.main-navigation li.sectionheader span.parent,\r\nnav.main-navigation ul ul li a:hover,\r\nnav.main-navigation ul ul li a.current {\r\n    color: [[$orange]]\r\n}\r\n/* bottom part of header*/\r\n.header-bottom {\r\n    height: 55px;\r\n    line-height: 55px\r\n}\r\n/* catchphrase */\r\n.phrase span {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    text-transform: uppercase;\r\n    color: #ddd;\r\n    font-size: 16px;\r\n    font-weight: 700\r\n}\r\n/* search */\r\n.search {\r\n    text-align: right;\r\n}\r\n/* webkit browser add icons to input of type search, we dont want it here now */\r\ninput.search-input::-webkit-search-decoration,\r\ninput.search-input::-webkit-search-results-button,\r\ninput.search-input::-webkit-search-results-decoration {\r\n    -webkit-appearance:none\r\n}\r\n/* styling the search input field */\r\ninput.search-input {\r\n    border: 1px solid [[$light_grey]];  \r\n    height: 17px;\r\n    line-height: 17px;\r\n    outline: 0;\r\n    margin: 13px 0 0 0;\r\n    width: 165px;\r\n    padding: 5px 0 3px 35px;\r\n    font-size: 11px;\r\n    color: [[$dark_grey]];\r\n    transition: all .35s ease-in-out;\r\n    -webkit-transition: all .35s ease-in-out;\r\n    -moz-transition: all .35s ease-in-out;\r\n    -o-transition: all .35s ease-in-out; \r\n    /* using sprite image, left as reference to single image \r\n    background: [[$white]] url([[$path]]/search-icon.png) 10px 50% no-repeat\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) 0px -434px no-repeat\r\n}\r\ninput.search-input:focus {\r\n    border: 1px solid [[$orange]];\r\n    width: 240px;      \r\n    box-shadow: 0 0 3px [[$orange]];    \r\n    -webkit-box-shadow: 0 0 3px [[$orange]];\r\n    -moz-box-shadow: 0 0 3px [[$orange]];\r\n    -o-box-shadow: 0 0 3px [[$orange]];\r\n}\r\n   \r\n/* ------ BANNER AREA ------ */\r\n.banner {\r\n    overflow: hidden;\r\n    background: [[$orange]]\r\n}\r\n/* left text in orange box */\r\n.banner-text {\r\n    padding:0 0 0 1%;\r\n    position: relative;\r\n    float: left;\r\n    max-height: 275px;\r\n    width: 30.333%\r\n}\r\n.banner-text ul {\r\n    padding: 32px 0;\r\n}\r\n.banner-text li {\r\n    list-style: none;\r\n    display: block;\r\n    color: [[$dark_orange]];\r\n    text-shadow: 0px 1px 0 [[$yellow]], 0 -1px 0 rgba(0,0,0,0.3);\r\n    font-size: 36px;\r\n    font-weight: 700;\r\n    transition: all 2s linear;\r\n    -webkit-transition: all 1.5s linear;\r\n    -moz-transition: all 1.5s linear;\r\n    -o-transition: all 1.5s linear;\r\n    display: block\r\n}\r\n/* animating unordered list text in banner */\r\n.banner-text li:hover {\r\n    text-indent: 120px;\r\n    opacity: 0;\r\n    transform: scale(2) rotate(35deg);\r\n    -webkit-transform: scale(2) rotate(35deg);\r\n    -moz-transform: scale(2) rotate(35deg);\r\n    -o-transform: scale(2) rotate(35deg)\r\n}\r\n/* images on the right */\r\n.banner-image {\r\n    float:right;\r\n    display: block;\r\n    position: relative;\r\n    width: 67.667%;\r\n    overflow: hidden;\r\n    background: [[$grey]]\r\n}\r\n.banner-image div {\r\n    position: absolute;\r\n    z-index: 0;\r\n    width: 100%;\r\n    min-height: 100px;\r\n    overflow: hidden;\r\n    display: block;\r\n    top: 0;\r\n    left: 0\r\n}\r\n.banner-image img {\r\n    display: block;\r\n	height: auto;\r\n    width: 100%;\r\n    bottom: 0;\r\n    max-width: 100%;\r\n}\r\n/* ------ CONTENT AREA ------ */\r\n.content-wrapper {\r\n    padding-top: 20px\r\n}\r\n.content-top {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    font-style: italic;\r\n    line-height: 20px\r\n}\r\n\r\n/* breadcrumbs */\r\n.breadcrumb {\r\n    display: inline-block;\r\n    background: [[$white]];\r\n    width: auto;\r\n    padding-right: 6px\r\n}\r\n.breadcrumb a {\r\n    color: [[$dark_grey]];\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]]\r\n}\r\n\r\n/* print button */\r\na.printbutton {\r\n    display: block;\r\n    padding-left: 6px;\r\n    width: 16px;\r\n    height: 16px;\r\n    float:right;\r\n    text-indent: -999em;\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px -16px;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -94px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out     \r\n}\r\na.printbutton:hover {\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px 0;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -78px;\r\n}\r\n\r\n/* news module summary -> content */\r\n.content .news-summary  span.heading {\r\n    display: none\r\n}\r\n.content .news-article {\r\n    margin-bottom: 15px;\r\n    padding-bottom: 15px;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n.content .news-summary ul.category-list {\r\n    margin: 15px 0\r\n}\r\n.content .news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    border-radius: 4px\r\n}\r\n.news-summary ul.category-list li span {\r\n    opacity: .4\r\n}\r\n/* news module summary -> sitewide (content + sidebar) */\r\n/* article heading */\r\n.news-article h2 {\r\n    margin: 0 0 15px 0\r\n}\r\n.news-article h2 a {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    font-size: 16px;\r\n    text-decoration: none;\r\n    font-weight: 700\r\n}\r\n/* date circle, well square for IE  */\r\n.news-article .date {\r\n    background: [[$orange]];\r\n    color: [[$white]];\r\n    display: block;\r\n    float:left;\r\n    width: 40px;\r\n    padding: 6px;\r\n    height: 40px;\r\n    border-radius: 26px;\r\n    text-align: center;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\n.news-article .day {\r\n    font-size: 20px;\r\n    line-height: 1;\r\n    padding-bottom: 2px;\r\n    font-style: italic;\r\n    display: block\r\n}\r\n.news-article.month {\r\n    font-size: 11px;\r\n    display: block\r\n}\r\n/* author and category */\r\n.news-article .author,\r\n.news-article .category {\r\n    font-family: Georgia, Times New Roman, serif;\r\n    display: block;\r\n    padding-left: 60px;\r\n    font-size: 11px;\r\n    font-style: italic\r\n}\r\n/* category list on top of summary */\r\n.news-summary ul.category-list {\r\n    margin:15px 0 0 0;\r\n    padding:0;\r\n    list-style: none\r\n}\r\n.news-summary ul.category-list li {\r\n    float:left;\r\n    display: block;\r\n    width: auto;\r\n    margin-right: 5px\r\n}\r\n.news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    display: block;\r\n    color: [[$dark_grey]];\r\n    padding: 4px 8px;\r\n    background: [[$light_grey]];\r\n    border-radius: 4px 4px 0 0;\r\n    text-decoration: none;\r\n    font-size: 11px;\r\n    text-transform: uppercase\r\n}\r\n.news-summary ul.category-list li a:hover {\r\n    color: [[$orange]]\r\n}\r\n.news-summary .paginate {\r\n    font: italic 11px/1.2 Georgia, Times New Roman, serif;\r\n    \r\n}\r\n.news-summary .paginate a {\r\n    padding: 0 3px;\r\n}\r\n.news-meta {\r\n    background: [[$light_grey]];\r\n    padding: 10px;\r\n    margin: 10px 0\r\n}\r\n/* more link */\r\n.more,\r\n.more a,\r\n/* back link */\r\n.back,\r\n.back a,\r\n/* previous, next links */\r\n.previous a,\r\n.next a,\r\n.previous,\r\n.next {\r\n    font:  italic 12px/1.3 Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none\r\n} \r\n/* hover behavior of more, next, previous links */\r\n.more a:hover,\r\n.back a:hover,\r\n.previous a:hover,\r\n.next a:hover {\r\n    text-decoration: underline\r\n}\r\n.previous,\r\n.next {\r\n    padding: 6px 0;\r\n}\r\n/* align next link to right */\r\n.previous {\r\n    float:left;\r\n}\r\n.next {\r\n    float: right\r\n}\r\n\r\n/* ------ SIDEBAR AREA ------ */\r\n\r\n/* news module summary -> sidebar */\r\n.sidebar .news-summary  span.heading {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    color: [[$dark_grey]];\r\n    font:  normal 16px/20px Georgia, Times New Roman, serif;\r\n    margin: 0 0 15px 0;\r\n    display: block\r\n}\r\n.sidebar .news-summary .heading span {\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]];\r\n    padding-right: 6px\r\n}\r\n.sidebar .news-article {\r\n    padding: 15px;\r\n    position: relative;\r\n    background: [[$light_grey]];\r\n    margin-bottom: 20px;\r\n    border-radius: 0 0 6px 0\r\n}\r\n/* creating a bubble box with css3 */\r\n.sidebar .news-article:before {\r\n    content:'''';\r\n    position: absolute;\r\n    bottom: -15px;\r\n    right: 25px;\r\n    width: 10px;\r\n    height: 35px;\r\n    -webkit-transform: rotate(55deg) skewY(55deg);\r\n    -moz-transform: rotate(55deg) skewY(55deg);\r\n    -o-transform: rotate(55deg) skewY(55deg);\r\n    -ms-transform: rotate(55deg) skewY(55deg);\r\n    transform: rotate(55deg) skewY(55deg);\r\n    background: [[$light_grey]]\r\n}\r\n\r\n/* ------ FOOTER AREA ------ */\r\n/* footer wrapper */\r\n.footer {\r\n    position: relative;\r\n    background: transparent url([[$path]]/footer-background.png) repeat-x top;\r\n    border-bottom: 1px dotted [[$grey]];\r\n    margin: 25px 0 10px 0;\r\n    padding: 20px 0\r\n}\r\n/* copyright text */\r\n.copyright {\r\n    padding-top: 15px\r\n}\r\n.copyright p,\r\n.copyright a {\r\n    color: [[$dark_grey]];\r\n    font-size: 11px\r\n}\r\n/* social icons */\r\n.footer ul.social {\r\n    padding: 0;\r\n    margin: 0\r\n}\r\n.footer .social li {\r\n    float:left;\r\n    margin: 0;\r\n    padding: 0;\r\n    list-style: none;\r\n    margin-right: 6px\r\n}\r\n.footer .social li a {\r\n    display: block;\r\n    width: 24px;\r\n    height: 24px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out;     \r\n    text-indent: -999em\r\n}\r\n.footer .social li.facebook a { \r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 -24px\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -260px\r\n}\r\n.footer .social li.facebook a:hover {\r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -236px\r\n}\r\n.footer .social li.twitter a { \r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -192px\r\n}\r\n.footer .social li.twitter a:hover {\r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -168px\r\n}\r\n.footer .social li.linkedin a { \r\n    /* background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -328px\r\n}\r\n.footer .social li.linkedin a:hover {\r\n   /*  background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 0 */\r\n   background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -304px\r\n}\r\n.footer .social li.youtube a { \r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -396px\r\n}\r\n.footer .social li.youtube a:hover {\r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -372px\r\n}\r\n/* back to top anchor */\r\n.back-top a {\r\n    display: inline-block;\r\n    width: auto;\r\n    padding: 8px;\r\n    border-left: 5px solid [[$white]];\r\n    border-right: 5px solid [[$white]];\r\n    font:  normal italic 11px/20px Georgia, Times New Roman, serif;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    background: [[$light_grey]];\r\n    color: [[$dark_grey]];\r\n    border-radius: 10px 0 10px 0;\r\n    -webkit-border-radius: 10px 0 10px 0;\r\n    -moz-border-radius: 10px 0 10px 0;\r\n    -o-border-radius: 10px 0 10px 0;\r\n    position: absolute;\r\n    top: -14px;\r\n    left: 48%\r\n}\r\n/* Footer navigation */\r\n.footer-navigation {\r\n    padding-top: 15px\r\n}\r\n.footer-navigation > ul > li {\r\n    float:left;\r\n    width: 32.333%\r\n}\r\n.footer-navigation > ul > li > a,\r\n.footer-navigation > ul > li span.sectionheader {\r\n    font-family: ''Oswald'', Impact, Haettenschweiler, ''Arial Narrow Bold'', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    display: block\r\n}\r\n/* second level */\r\n.footer-navigation > ul ul {\r\n    margin-top: 10px\r\n}\r\n.footer-navigation > ul > li li {\r\n    float: none;\r\n    width: 100%;\r\n    display: block\r\n}\r\n.footer-navigation > ul > li li a,\r\n.footer-navigation > ul > li.sectionheader li a,\r\n.footer-navigation > ul > li li span.sectionheader  {\r\n    text-decoration: none;\r\n    font-family: sans-serif;\r\n    font-weight: normal;\r\n    text-transform: none; \r\n    display: block;\r\n    padding: 2px 0;\r\n    color: [[$dark_grey]]\r\n}\r\n.footer-navigation > ul > li li a:hover {\r\n    color: [[$orange]]\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:16:21', '2013-04-17 14:33:49'),
(52, 'Simplex: Print', '/* reset body background and color, just in case */\r\nbody {\r\n    background: #fff;\r\n    color: #000;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    font-size: 12pt\r\n}\r\n/* any element with class noprint or listed below should not be printed */\r\n.noprint,\r\n.visuallyhidden {\r\n    display: none\r\n}\r\n/* display image as block */\r\nimg {\r\n    display: block;\r\n    float: none\r\n}\r\n/* remove width and floats from elements */\r\n#wrapper,\r\n.container,\r\n.container .grid_1, \r\n.container .grid_2,\r\n.container .grid_3,\r\n.container .grid_4,\r\n.container .grid_5,\r\n.container .grid_6,\r\n.container .grid_7,\r\n.container .grid_8,\r\n.container .grid_9,\r\n.container .grid_10,\r\n.container .grid_11,\r\n.container .grid_12 {\r\n    width: 100%;\r\n    margin: 0;\r\n    float: none    \r\n}\r\n/* links arent clickable on paper, lets display url */\r\na:link:after {\r\n    content: " (" attr(href) ") ";\r\n}\r\na {\r\n    text-decoration: underline\r\n}\r\n', 'print', '', '2012-04-26 07:47:10', '2012-05-06 17:10:32'),
(53, 'Simplex: Mobile', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n/* Default styles for screens up to 1024px width */\r\n/* realign logo for mobile devices */\r\n.logo.grid_4 {\r\n    float: none;\r\n    display: block;\r\n    text-align: center;\r\n    margin:10px 0;\r\n    padding:0;\r\n    width: 100%\r\n}\r\n/* hide rotating palm */\r\n.logo .palm {\r\n    display: none\r\n}\r\n/* realign navigation for mobile devices */\r\nnav.main-navigation {\r\n    float: none;\r\n    margin: 0;\r\n    height: auto;\r\n    line-height: 1\r\n}\r\nnav.main-navigation > ul {\r\n    float:none;\r\n    position: relative;\r\n    padding: 0\r\n}\r\nnav.main-navigation ul li {\r\n    background: #f1f1f1;\r\n    display: block;\r\n    position: relative;\r\n    border-radius: 4px 4px 0 0;\r\n    padding: 0 10px;\r\n    margin: 0 1px\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader > span {\r\n    font-size: 12px;\r\n    line-height: 28px;\r\n}\r\n/* second level navigation */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    width: 200px;\r\n    height: auto;\r\n    display: block;\r\n    position: absolute;\r\n}\r\nnav.main-navigation > ul > li:hover > ul,\r\nnav.main-navigation > ul > li.active > ul {\r\n    top: 28px;\r\n    left: 0;\r\n    z-index: 999;\r\n    right: auto\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    background: #fff;\r\n    line-height: 1;\r\n    height: auto;\r\n    margin: 0;\r\n    padding: 0\r\n} \r\nnav.main-navigation > ul > li li a {\r\n    line-height: 1\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul {\r\n    left: 0;\r\n    top: 28px\r\n}\r\n/* close button (appended to dropdown with jquery) */\r\n.close-button {\r\n    display: block;\r\n    background: url([[uploads_url]]/simplex/images/close_button.png) no-repeat;\r\n    text-indent: -999em;\r\n    position: absolute;\r\n    bottom: -5px;\r\n    right: -5px;\r\n    width: 24px;\r\n    height: 24px\r\n}\r\n/* display phrase text and search box in full width */\r\n.header-bottom {\r\n    height: auto;\r\n    line-height: 1.2;\r\n    padding: 10px 0\r\n}\r\n.search input {\r\n    text-align: center;\r\n    padding: 5px 0 3px 0;\r\n    display: block\r\n}\r\n/* phrase */\r\n.phrase .grid_7 {\r\n    margin: 0;\r\n    width: 100%;\r\n    float: none;\r\n    display: block\r\n}\r\n/* hide banner text and size image area */\r\n.banner-text {\r\n    display: none;\r\n    width: 0\r\n}\r\n.banner-image {\r\n    display: block;\r\n    width: 100%;\r\n    float:none;\r\n    margin: 0;\r\n    padding: 0\r\n}\r\n/* hide print button */\r\na.printbutton {\r\n    display: none\r\n}\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    /* realign navigation for mobile devices */\r\n    nav.main-navigation {\r\n        float: none;\r\n        margin: 0;\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 14px\r\n    } \r\n    .header-bottom {\r\n        height: auto;\r\n        line-height: 1.2;\r\n        padding: 10px 0\r\n    }\r\n    .search input {\r\n        width: 60%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) { \r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }    \r\n    nav.main-navigation > ul > li > a.\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 10px\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 480px) {\r\n    .logo img {\r\n        margin: 20px auto\r\n    }\r\n    /* realing navigation */\r\n    nav.main-navigation {\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation > ul > li:hover > ul,\r\n    nav.main-navigation > ul > li.active > ul {\r\n        top: 58px;\r\n        left: 2%;\r\n        right: auto\r\n    }    \r\n    nav.main-navigation ul li {\r\n        float: none;\r\n        position: relative;\r\n        background: none;\r\n        border-bottom: 1px dotted #f1f1f1;\r\n        border-radius: 0;\r\n        padding: 8px 0;\r\n        margin: 0\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader span {\r\n        font-size: 20px\r\n    }\r\n    /* search box */\r\n    .grid_5.search {\r\n        float:none;\r\n        margin: 0 auto;\r\n        width: 100%;\r\n    }    \r\n    .search input {\r\n        width: 80%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }     \r\n    /* hiding footer navigation or it is squeezed to much */\r\n    .footer-navigation {\r\n        display: none\r\n    }\r\n    .footer .copyright {\r\n        text-align: center\r\n    }\r\n}\r\n\r\n[[/strip]]', '', 'screen and (min-width: 300px) and (max-width: 1024px)', '2012-04-30 12:27:44', '2013-04-17 14:36:32'),
(54, 'modliv', 'body{scrollbar-face-color:#ffffff;scrollbar-highlight-color:#48494A;scrollbar-shadow-color:#D2D2D2;scrollbar-3dlight-color:#ffffff;scrollbar-arrow-color:#990000;scrollbar-track-color:#ffffff;scrollbar-darkshadow-color:#ffffff;}\r\n.breadcrumbs {font-size:11px;font-weight:normal;color:#ffffff;}\r\n.breadcrumbs a{font-weight:normal;color:#ffffff;}\r\n.breadcrumbs a:link,.breadcrumbs a:visited{color:#ffffff;text-decoration:none;}\r\n.breadcrumbs a:active,.breadcrumbs a:hover{color:#000000;text-decoration:none;}\r\nform{margin:0;}\r\ninput,select{font-size:11px;text-indent:2px;}\r\n.bodyline	{ background-color: #48494A; border: 1px #48494A solid; }\r\n.title {line-height: 25px!important;font-family:"Arial Narrow", Helvetica, sans-serif;font-size:22px;font-weight:bold;text-align: left;margin-bottom:6px;margin-top:10px;color:#990000;}\r\n.title a{line-height: 25px!important;font-family:"Arial Narrow", Helvetica, sans-serif;font-size:22px;font-weight:bold;text-align: left;margin-bottom:6px;margin-top:10px;color:#990000;}\r\n.title a:link,.title a:visited{line-height: 25px!important;font-family:"Arial Narrow", Helvetica, sans-serif;font-size:22px;font-weight:bold;text-align: left;margin-bottom:6px;margin-top:10px;color:#990000;}\r\n.title a:active,.title a:hover{line-height: 25px!important;font-family:"Arial Narrow", Helvetica, sans-serif;font-size:22px;font-weight:bold;text-align: left;margin-bottom:6px;margin-top:10px;color:#990000;}\r\n.innerline	{ border: 2px #48494A solid; }\r\n/*****************\r\nbrowsers interpret margin and padding a little differently, \r\nwe''ll remove all default padding and margins and\r\nset them later on\r\n******************/\r\n* {\r\nmargin:0;\r\npadding:0;\r\n}\r\n\r\n/*\r\nSet initial font styles\r\n*/\r\nbody {\r\nbackground: url(''images/modliv-bk.jpg'') no-repeat 0 0 #fff;\r\nbackground-attachment:fixed;\r\nbackground-position: top center;\r\ncolor: #000;\r\nfont-family: Arial, Verdana, sans-serif;\r\nmargin: 0;\r\npadding: 0;\r\n}\r\n#pagetitle {line-height: 25px!important;font-family:"Arial Narrow", Helvetica, sans-serif;font-size:22px;font-weight:bold;text-align: left;margin-bottom:6px;margin-top:10px;color:#990000;}\r\n\r\n#toparea {\r\n color: #000;\r\n background: url(''images/logoarea.jpg'') no-repeat 0 0 #ffffff;\r\n text-align: right;\r\n margin: 0px 0px 0px 0px;\r\n padding: 0px;\r\n height: 414px;\r\n width: 972px;\r\n float: center;\r\n}\r\n\r\n\r\n#sitename {\r\n color: #000;\r\n background: url(''images/shadow2.jpg'') no-repeat 0 0 #ffffff;\r\n text-align: center;\r\n margin: 80px 10px 10px 10px;\r\n padding: 1.0em 0.0em 0.0em 0;\r\n height: 43px;\r\n width: 972px;\r\n float: center;\r\n}\r\n\r\n#base {\r\n color: #000;\r\n text-align: center;\r\n background: transparent;\r\n margin: 100px 5px 10px 0px;\r\n padding: 10px;\r\n height: 100px;\r\n width: 922px;\r\n float: center;\r\n clear:both;\r\n}\r\n\r\n#wrapper { \r\n margin: 0 auto;\r\n width: 972px;\r\n}\r\n\r\n#leftcolumn { \r\n color: #000;\r\n text-align: left;\r\n border: 0px solid #ccc;\r\n background: #ffffff;\r\n margin: 420px 0px 10px 0px;\r\n padding: 10px;\r\n height: 100%;\r\n width: 170px;\r\n float: left;\r\n}\r\n#rightcolumn { \r\n float: right;\r\n text-align: left;\r\n color: #000;\r\n border: 0px solid #ccc;\r\n background: #ffffff;\r\n margin: 380px 5px 10px 0px;\r\n padding: 10px;\r\n height: 100%;\r\n width: 750px;\r\n display: inline;\r\n\r\n}\r\n/*\r\nset font size for all divs,\r\nthis overrides some body rules\r\n*/\r\ndiv {\r\n   font-size: 11px;\r\n}\r\n\r\n/*\r\nif img is inside "a" it would have \r\nborders, we don''t want that\r\n*/\r\nimg {\r\n   border: 0;\r\n}\r\n\r\n/*\r\ndefault link styles\r\n*/\r\n/* set all links to have underline and bluish color */\r\na,\r\na:link \r\na:active {\r\n   text-decoration: none;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n   background-color: inherit; \r\n   color: #990000; \r\n}\r\n\r\na:visited {\r\n   text-decoration: none;\r\n   background-color: inherit;\r\n  color: #990000;                /* a different color can be used for visited links */\r\n}\r\n\r\n\r\n/* remove underline on hover and change color */\r\na:hover {\r\n   text-decoration: none;\r\n   background-color: transparent;\r\n   color: #990000;\r\n}\r\n\r\n/*****************\r\nbasic layout \r\n*****************/\r\nbody {\r\n   background-color: #ffffff;\r\n   color: #333;\r\n	margin-top:0px;\r\n   margin:0em;    /* gives some air for the pagewrapper */\r\n}\r\n\r\n/* center wrapper, min max width */\r\ndiv#pagewrapper {\r\n   border: 1px solid black;\r\n   margin: 0 auto;       /* this centers wrapper */\r\n   max-width: 80em;   /* IE wont understand these, so we will use javascript magick */\r\n   min-width: 60em;\r\n   background-color: #fff;;\r\n   color: black;\r\n}\r\n\r\n\r\n/*** header ***\r\nwe will hide text and replace it with a image\r\nwe need to assign a height for it so that the image wont cut off\r\n*/\r\ndiv#header {\r\n   height: 80px;    /* adjust according your image size */\r\n   background: #385C72;           \r\n}\r\n\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n   background: #385C72 url(uploads/images/logo1.gif) no-repeat 0 12px; \r\n   display: block;\r\n   height: 80px;             /* adjust according your image size */\r\n   text-indent: -999em;  /* this hides the text */\r\n   text-decoration:none; /* old firefox would have shown underline for the link, this explicitly hides it */\r\n}\r\n\r\n/* position for the search box */\r\ndiv#search {\r\n   float: right;\r\n   width: 25em;    /* enough width for the search input box */\r\n   text-align: right;\r\n   padding: 3.0em 0.2em 0.2em 0;\r\n   margin: 0 1em;\r\n}\r\n\r\ndiv#menu_horiz {\r\n   float: right;\r\n   width: 25em;    /* enough width for the search input box */\r\n   text-align: right;\r\n   padding: 1.0em 0.2em 0.2em 0;\r\n   margin: 0 1em;\r\n}\r\n\r\n div#content {\r\n   margin: 1.5em auto 2em 0;   /* some air above and under menu and content */\r\n}\r\n\r\n\r\ndiv#main {\r\n   margin-left: 29%; /* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n   margin-right: 2%; /* and some air on the right */\r\n}\r\n\r\ndiv#sidebar {\r\n   float: left;        /* set sidebar on the left side. Change to right to float it right instead. */\r\n   width: 26%;     /* sidebar width, if you change this please also change #main margins */\r\n   display: inline;  /* FIX IE double margin bug */\r\n   margin-left: 0;\r\n}\r\n\r\ndiv#footer {\r\n   clear: both;       /* keep footer below content and menu */\r\n   color: #fff;\r\n   background-color: #385C72; /* same bg color as in header */\r\n}\r\n\r\ndiv#footer p {\r\n   font-size: 0.8em;\r\n   padding: 1.5em;       /* some air for footer */\r\n   text-align: center;  /* centered text */\r\n   margin: 0;\r\n}\r\n\r\ndiv#footer p a {\r\n   color: #fff; /* needed becouse footer link would be same color as background otherwise */\r\n}\r\n\r\n/* as we hid all hr for accessibility we create new hr with extra div element */\r\ndiv.hr {\r\n   height: 1px;\r\n   padding: 1em;\r\n   border-bottom: 1px dotted black;\r\n   margin: 1em;\r\n}\r\n\r\n/* relational links under content */\r\ndiv.left49 {\r\n  width: 49%; /* 50% for both left and right might lead to rounding error on some browser */\r\n}\r\n\r\ndiv.right49 {\r\n  float: right;\r\n  width: 49%;\r\n  text-align: right;\r\n}\r\n\r\n\r\n\r\n\r\n/********************\r\nCONTENT STYLING\r\n*********************/\r\ndiv#content {\r\n\r\n}\r\n\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n   font-size: 11px; /* font size for h1 */\r\n   line-height: 1em;\r\n   margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F; \r\n	font-size: 11px; \r\n	text-align: left; \r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #e7ab0b; \r\n	border-left: 1.1em solid #e7ab0b; \r\n        line-height: 1.5em;\r\n/* and some air under the border */\r\n        margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n   color: #294B5F; \r\n   font-size: 11px;\r\n   line-height: 1.3em;\r\n   margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n   color: #294B5F; \r\n   font-size: 11px;\r\n   line-height: 1.3em;\r\n   margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n   color: #294B5F; \r\n   font-size: 11px;\r\n   line-height: 1.3em;\r\n   margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n   color: #294B5F; \r\n   font-size: 11px;\r\n   line-height: 1.3em;\r\n   margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n\r\n/* TEXT */\r\np {\r\n   font-size: 11px;\r\n   margin: 0 0 1.5em 0; /* some air around p elements */\r\n   line-height: 1.4em;\r\n   padding: 0;\r\n}\r\n\r\nblockquote {\r\n   border-left: 10px solid #ddd;\r\n   margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n   font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n   font-style:normal;\r\n}\r\n\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n white-space: pre-wrap;       /* css-3 */\r\n white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */\r\n white-space: -pre-wrap;      /* Opera 4-6 */\r\n white-space: -o-pre-wrap;    /* Opera 7 */\r\n word-wrap: break-word;       /* Internet Explorer 5.5+ */\r\n font-family: Arial, Courier, monospace;\r\n font-size: 11px;\r\n}\r\n\r\npre {\r\n   border: 1px solid #000;  /* black border for pre blocks */\r\n   background-color: #ddd;\r\n   margin: 0 1em 1em 1em;\r\n   padding: 0.5em;\r\n   line-height: 1.5em;\r\n   font-size: 11px;\r\n\r\n\r\n}\r\n\r\n/* Separating the divs on the template explanation page, with some bottom-border */\r\ndiv.templatecode {\r\n  margin: 0 0 2.5em;\r\n}\r\n\r\n/* END TEXT */\r\n\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n   font-size: 1.0em;\r\n   line-height: 1.4em;\r\n   margin: 0 0 1.5em 0;\r\n	list-style: none;\r\n}\r\n\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n   margin: 0 0 0.25em 3em;\r\n	list-style: none;\r\n}\r\n\r\n/* definition lists topics on bold */\r\ndiv#main dl dt {\r\n   font-weight: bold;\r\n   margin: 0 0 0 1em;\r\n	list-style: none;\r\n}\r\ndiv#main dl dd {\r\n   margin: 0 0 1em 1em;\r\n	list-style: none;\r\n}\r\n\r\ndiv#main dl {\r\n  margin-bottom: 2em;\r\n  padding-bottom: 1em;\r\n  border-bottom: 1px solid #c0c0c0;\r\n  list-style: none;\r\n}\r\n\r\nH1{font-family: Arial, Verdana, Helvetica, sans-serif;font-size:11px;font-weight:normal;text-align: left;margin-bottom:5px;margin-top:5px;margin-left:10px;color:#ffffff;}\r\nH2,H3,H4{font-family: Arial, Verdana, Helvetica, sans-serif;font-size:11px;font-weight:normal;text-align: left;margin-bottom:5px;margin-top:5px;margin-left:10px;color:#ffffff;}\r\n\r\n#button {\r\n	width: 100%;\r\n	border-right: 0px solid #000;\r\n	border-top: 1px solid #f3f3f3;\r\n	padding: 0 0 0 0;\r\n	margin-bottom: 0em;\r\n	font-family: Arial, Verdana, Helvetica, sans-serif;\r\n	background-color: #990000;\r\n	color: #fff;\r\n	}\r\n	#button ul {\r\n		list-style: none;\r\n		margin: 0;\r\n		padding: 0;\r\n		border: none;\r\n		}\r\n		\r\n	#button li {\r\n		border-bottom: 1px solid #E5E5E5;\r\n		margin: 0;\r\n		}\r\n	#button ul ul a {\r\n   font-size: 90%;\r\n   padding: 0.5em 0.5em 0.5em 1.8em;\r\n	border-top: 0px solid #f1f1f1;\r\n      }\r\n	#button li a {\r\n		display: block;\r\n		padding: 5px 5px 5px 5px;\r\n		border-left: 5px solid #444444;\r\n		border-right: 0px solid #A8AF8F;\r\n		background-color: #ffffff;\r\n		color: #000;\r\n		text-decoration: none;\r\n		width: 100%;\r\n		}\r\n\r\n	html>body #button li a {\r\n		width: auto;\r\n		}\r\n\r\n	#button li a:hover {\r\n		border-left: 5px solid #000000;\r\n		border-right: 0px solid #B8BCA5;\r\n		background-color: #f9f9f9;\r\n		color: #990000;\r\n		}\r\n\r\n/* END LISTS */\r\n\r\n/* accessibility */\r\n\r\n/* \r\nmenu links accesskeys \r\n*/\r\nspan.accesskey {\r\n   text-decoration:none;\r\n}\r\n\r\n/* \r\naccessibility divs are hidden by default \r\ntext, screenreaders and such will show these \r\n*/\r\n.accessibility, hr {\r\n   position: absolute;\r\n   top: -999em;\r\n   left: -999em;\r\n}\r\n\r\n/* \r\ndefinition tags are also hidden \r\nthese are also used for menu links    \r\n*/\r\ndfn {\r\n   position: absolute;\r\n   left: -1000px;\r\n   top: -1000px;\r\n   width: 0;\r\n   height: 0;\r\n   overflow: hidden;\r\n   display: inline;\r\n}\r\n/* end accessibility */\r\n\r\n\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n  position: absolute;\r\n  left: -5000px;\r\n  width: 4000px;\r\n}\r\n\r\n/* make some room for the image */\r\na.external {\r\n/* css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n  padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n  color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n  background: url(images/cms/external.gif) no-repeat 100% 0;\r\n}\r\na.external:visited {\r\n  color: #18507C; /* a different color can be used for visited external links */\r\n\r\n/* \r\nSet the last 0 to -100px to use that part of the external.gif image for different color for active links \r\nexternal.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.\r\n*/\r\n  background: url(images/cms/external.gif) no-repeat 100% 0; \r\n}\r\n\r\na.external:hover {\r\n  color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n  background: url(images/cms/external.gif) no-repeat 100% 0; \r\n  background-color: #C3D4DF;\r\n}\r\n/* end wiki style external links */\r\n\r\n\r\n/* clearing */\r\n/* \r\nclearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item.\r\nWe strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience.\r\nDo not edit if you dont know what you are doing\r\n*/\r\n	.clearfix:after {\r\n		content: "."; \r\n		display: block; \r\n		height: 0; \r\n		clear: both; \r\n		visibility: hidden;\r\n	}\r\n	* html>body .clearfix {\r\n		display: inline-block; \r\n		width: 100%;\r\n	}\r\n	\r\n	* html .clearfix {\r\n		/* Hides from IE-mac \\*/\r\n		height: 1%;\r\n		/* End hide from IE-mac */\r\n	}\r\n\r\n/* end clearing */\r\n', '', '', '2013-07-13 19:18:51', '2013-07-13 19:18:51');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
(55, 'culinary // culinary', '* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n\r\nbody {\r\n	margin: 0px;\r\n	background: #C0C0C0;\r\n	text-align: justify;\r\n	font-family: Georgia, "Times New Roman", Times, serif;\r\n	font-size: 13px;\r\n	font-style: italic;\r\n	color: #7D807A;\r\n}\r\n\r\nh1, h2, h3 {\r\n	color: #AA2808;\r\n}\r\n\r\nh1 {\r\n}\r\n\r\nh2 {\r\n}\r\n\r\nh3 {\r\n}\r\n\r\np, blockquote, ul, ol {\r\n	margin-bottom: 20px;\r\n	line-height: 2em;\r\n}\r\n\r\np {\r\n}\r\n\r\nblockquote {\r\n}\r\n\r\nul, ol, li {\r\n	margin: 0px;\r\n	padding: 0px;\r\n	list-style: none;\r\n}\r\n\r\na {\r\n	text-decoration: underline;\r\n	color: #E14949;\r\n}\r\n\r\na:hover {\r\n	text-decoration: none;\r\n	color: #C11414;\r\n}\r\n\r\n/* Wrapper */\r\n\r\n#wrapper {\r\n}\r\n\r\n/* Header */\r\n\r\n#header {\r\n	width: 900px;\r\n	height: 140px;\r\n	margin: 0 auto;\r\n	background: url(/cmsms/uploads/culinary/img01.jpg) no-repeat left top;\r\n}\r\n\r\n/* Logo */\r\n\r\n#logo {\r\n	float: left;\r\n	width: 270px;\r\n	height: 70px;\r\n	margin: 0px;\r\n	padding-left: 30px;\r\n	text-align: center;\r\n}\r\n\r\n#logo h1 {\r\n	margin: 0;\r\n	padding: 10px 0px 0px 0px;\r\n	text-transform: lowercase;\r\n	font: normal 46px Georgia, "Times New Roman", Times, serif;\r\n}\r\n\r\n#logo h2 {\r\n	margin: -2px 0 0 0;\r\n	padding: 0;\r\n	text-transform: lowercase;\r\n	letter-spacing: 2px;\r\n	font-size: 12px;\r\n	font-weight: normal;\r\n	font-style: italic;\r\n	color: #FFFFFF;\r\n}\r\n\r\n#logo a {\r\n	text-decoration: none;\r\n	color: #FFFFFF;\r\n}\r\n\r\n/* Menu */\r\n\r\n#menu {\r\n	width: 872px;\r\n	height: 41px;\r\n	margin: 0 auto;\r\n	padding: 0px 0px 0px 28px;\r\n	background: url(/cmsms/uploads/culinary/img02.jpg) no-repeat left top;\r\n}\r\n\r\n#menu ul {\r\n	margin: 0;\r\n	list-style: none;\r\n	line-height: normal;\r\n}\r\n\r\n#menu li {\r\n	display: inline;\r\n	text-align: center;\r\n}\r\n\r\n#menu a {\r\n	height: 33px;\r\n	display: block;\r\n	float: left;\r\n	padding: 8px 20px 0px 20px;\r\n	text-decoration: none;\r\n	text-align: center;\r\n	text-transform: lowercase;\r\n	font-family: Georgia, "Times New Roman", Times, serif;\r\n	font-size: 14px;\r\n	font-weight: normal;\r\n	font-style: italic;\r\n	color: #FFFFFF;\r\n}\r\n\r\n#menu a:hover, #menu .active a {\r\n	background: #C11212;\r\n	color: #FFFFFF;\r\n}\r\n\r\n#splash {\r\n	width: 940px;\r\n	height: 299px;\r\n	margin: 0 auto;\r\n}\r\n\r\n/* Search */\r\n\r\n#header-search {\r\n	width: 940px;\r\n	height: 51px;\r\n	margin: 0 auto;\r\n	padding: 0px 0px 0px 0px;\r\n}\r\n\r\n#header-search form {\r\n	float: right;\r\n	width: 300px;\r\n	margin: 0;\r\n	padding: 12px 0px 0px 0px;\r\n}\r\n\r\n#header-search fieldset {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: none;\r\n}\r\n\r\n#header-search-text {\r\n	width: 200px;\r\n	padding: 2px 3px;\r\n	background: #1E1E1E;\r\n	border: none;\r\n	color: #4D4D4D;\r\n}\r\n\r\n#header-search-submit {\r\n	background: none;\r\n	border: none;\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	font-size: 12px;\r\n	color: #E4E4E4;\r\n}\r\n\r\n#search {\r\n	height: 51px;\r\n	margin: 0 auto;\r\n	padding: 0px 0px 60px 0px;\r\n}\r\n\r\n#search form {\r\n	margin: 0;\r\n	padding: 12px 0px 0 0;\r\n}\r\n\r\n#search fieldset {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: none;\r\n}\r\n\r\n#search input {\r\n	float: left;\r\n	font: 12px Arial, Helvetica, sans-serif;\r\n}\r\n\r\n#search-text {\r\n	width: 160px;\r\n	height: 18px;\r\n	padding: 3px 0 3px 5px;\r\n	border: 1px solid #999999;\r\n	color: #000000;\r\n}\r\n\r\n#search-submit {\r\n	margin-left: 10px;\r\n	padding: 4px 4px;\r\n	border: none;\r\n	background: #C11212;\r\n	font-size: 10px;\r\n	color: #FFFFFF;\r\n}\r\n\r\n/* Page */\r\n\r\n#page {\r\n	width: 844px;\r\n	margin: 0 auto;\r\n	padding: 0px 28px;\r\n	background: #FFFFFF url(/cmsms/uploads/culinary/img05.jpg) repeat-y left top;\r\n}\r\n\r\n/* Content */\r\n\r\n#content {\r\n	float: left;\r\n	width: 560px;\r\n	padding-top: 30px;\r\n}\r\n.post {\r\n	background: url(/cmsms/uploads/culinary/img04.gif) repeat-x left bottom;\r\n	margin: 0px 0px 30px 0px;\r\n}\r\n\r\n.post .title {\r\n	background: url(/cmsms/uploads/culinary/img03.jpg) no-repeat left 0px;\r\n	margin: 0px;\r\n	padding: 0px 0px 0px 40px;\r\n	letter-spacing: -1px;\r\n	text-decoration: none;\r\n	font-family: Georgia, "Times New Roman", Times, serif;\r\n	font-size: 28px;\r\n	font-weight: normal;\r\n	font-style: italic;\r\n	color: #BF0B0B;\r\n}\r\n\r\n.post .entry {\r\n	padding: 20px 0px;\r\n}\r\n\r\n.post img {\r\n	float: left;\r\n	padding: 15px 0px;\r\n}\r\n\r\n.post .meta {\r\n	text-align: right;\r\n	padding: 0px 0 20px 0;\r\n	font-weight: bold;\r\n	color: #202020;\r\n}\r\n\r\n.post .byline {\r\n	padding-left: 40px;\r\n	font-size: 12px;\r\n	font-style: italic;\r\n	text-transform: lowercase;\r\n	color: #7D807A;\r\n}\r\n\r\n/* Sidebar */\r\n\r\n#sidebar {\r\n	float: right;\r\n	width: 230px;\r\n	margin: 20px 0px;\r\n	padding: 10px 0px 30px 30px;\r\n}\r\n\r\n#sidebar ul {\r\n	margin: 0;\r\n	padding: 0;\r\n	list-style: none;\r\n	line-height: normal;\r\n}\r\n\r\n#sidebar li {\r\n	margin-bottom: 1px;\r\n}\r\n\r\n#sidebar li ul {\r\n	margin: 0px;\r\n	padding: 0px 0px 40px 27px;\r\n}\r\n\r\n#sidebar li li {\r\n	margin: 0;\r\n	padding: 9px 0px;\r\n	border: none;\r\n	background: none;\r\n}\r\n\r\n#sidebar h2 {\r\n	margin: 0px;\r\n	padding: 0px 0px 10px 0px;\r\n	font-family: Georgia, "Times New Roman", Times, serif;\r\n	font-size: 18px;\r\n	font-weight: normal;\r\n	font-style: italic;\r\n	color: #BF0B0B;\r\n}\r\n\r\n#sidebar h3 {\r\n	font-size: 77%;\r\n	color: #110404;\r\n}\r\n\r\n#sidebar p {\r\n	margin: 0;\r\n	line-height: normal;\r\n	color: #D4C792;\r\n}\r\n\r\n#sidebar a {\r\n	border: none;\r\n	text-decoration: none;\r\n	color: #7D807A;\r\n}\r\n\r\n#sidebar a:hover {\r\n	text-decoration: underline;\r\n}\r\n\r\n/* Submenu */\r\n\r\n#submenu {\r\n}\r\n\r\n/* News */\r\n\r\n#news {\r\n}\r\n\r\n#news a {\r\n	font-size: 85%;\r\n}\r\n\r\n/* Footer */\r\n\r\n#footer {\r\n	width: 960px;\r\n	height: 100px;\r\n	margin: 0 auto;\r\n	padding: 14px 0px 0px 0px;\r\n	background: url([[root_url]]/uploads/culinary/img04.jpg) no-repeat left top;\r\n	color: #9C9C9C;\r\n}\r\n\r\n#footer p {\r\n	margin: 0;\r\n	text-align: center;\r\n	font-size: 11px;\r\n}\r\n\r\n#footer a {\r\n	text-decoration: underline;\r\n	color: #808080;\r\n}\r\n\r\n#footer a:hover {\r\n	text-decoration: none;\r\n}', '', '', '2013-07-13 19:29:14', '2013-07-13 19:29:14'),
(56, 'unbound // Unbound', '/*\r\n  @Stylesheet by [icms.info]\r\n  @Version: 2.0-20090709\r\n\r\n  @Contributors:\r\n  -  http://www.styleshout.com/\r\n  --------------------------------------------------------------- \r\n*/\r\n* {\r\n	margin:0;\r\n	padding:0;\r\n	outline:0\r\n}\r\nbody {\r\n	font:14px/165% "Lucida Grande",Geneva,Verdana,Arial,Helvetica,sans-serif;\r\n	color:#666666;\r\n	margin:0;\r\n	padding:0 0 50px 0;\r\n	background:#070707 url(/barn/uploads/unbound/bg.jpg) repeat-x;\r\n	text-align: center;\r\n}\r\n/* Links */\r\na {\r\n	text-decoration:none;\r\n	color:#A56F38;\r\n}\r\na:hover {\r\n	background:#F0f0f0;\r\n	color:#000;\r\n	border-bottom: 1px dotted #000;\r\n}\r\n/* Headers */\r\nh1,h2,h3 {\r\n	font:bold 1em/1.5em "Trebuchet MS",Tahoma,Arial,Sans-serif;\r\n	color:#111;\r\n	padding:15px 10px 5px 10px;\r\n	margin:0;\r\n}\r\nh1 {\r\n	font-size:345%;\r\n	font-weight:normal;\r\n	letter-spacing:-2px;\r\n}\r\nh2 {\r\n	font-size:200%;\r\n	color:#663333;\r\n}\r\nh3 {\r\n	font-size:100%;\r\n	font-weight:normal;\r\n}\r\np,dl {\r\n	padding:10px;\r\n	margin:0;\r\n}\r\nul,ol {\r\n	margin:10px 20px;\r\n	padding:0 20px;\r\n}\r\nul {\r\n	list-style:none;\r\n}\r\ndt {\r\n	font-weight:bold;\r\n	color:#895F30;\r\n}\r\ndd {\r\n	padding-left: 25px;\r\n}\r\n/* Images */\r\nimg {\r\n	background:#fafafa;\r\n	border:1px solid #dcdcdc;\r\n	padding:5px;\r\n}\r\nimg.float-right {\r\n	margin:5px 0px 10px 10px;\r\n}\r\nimg.float-left {\r\n	margin: 5px 10px 10px 0px;\r\n}\r\ncode {\r\n	margin:5px 0;\r\n	padding:15px;\r\n	text-align:left;\r\n	display:block;\r\n	overflow:auto;\r\n	font:500 1em/1.5em ''Lucida Console'',''courier new'',monospace;\r\n	/* white-space:pre;\r\n	*/\r\n	border:1px solid #EBEBEB;\r\n	background:#F0F0F0;\r\n}\r\nacronym {\r\n	cursor:help;\r\n	border-bottom:1px dotted #895F30;\r\n}\r\nblockquote {\r\n	margin:15px 10px;\r\n	padding:10px 10px 10px 35px;\r\n	border:1px solid #F0F0F0;\r\n	background:#F0F0F0 url(/barn/uploads/unbound/quote.jpg) no-repeat 10px 10px;\r\n	font-weight:normal;\r\n	font-size:17px;\r\n	line-height:1.5em;\r\n	font-style:italic;\r\n	font-family:Georgia,"Times New Roman",Times,serif;\r\n	color: #555;\r\n}\r\n/* start - table */\r\ntable {\r\n	border-collapse:collapse;\r\n	margin:15px 10px;\r\n}\r\nth {\r\n	color:#555;\r\n	background:#E6E6E6;\r\n	height:38px;\r\n	padding-left:12px;\r\n	padding-right:12px;\r\n	text-align:left;\r\n	border-width:1px;\r\n	border-style:solid;\r\n	border-color:#ebebeb #d4d4d4 #d4d4d4 #ebebeb;\r\n}\r\ntr {\r\n	height:34px;\r\n	background:#fff;\r\n}\r\ntd {\r\n	padding-left:11px;\r\n	padding-right:11px;\r\n	border: 1px solid #ECECEC;\r\n}\r\n/* end - table */\r\n/* form elements */\r\nform {\r\n	margin:15px 10px;\r\n	padding:5px 10px 20px 10px;\r\n	border:1px solid #f1f1f1;\r\n	background:#fdfdfd;\r\n}\r\nlabel {\r\n	display:block;\r\n	font-weight:bold;\r\n	margin:8px 0 5px 0;\r\n	color:#895F30;\r\n}\r\ninput,select {\r\n	padding:4px;\r\n	font:normal 1em Verdana,sans-serif;\r\n	color:#666666;\r\n	background:#fff;\r\n}\r\ntextarea {\r\n	width:350px;\r\n	padding:4px;\r\n	font:normal 1em Verdana,sans-serif;\r\n	height:100px;\r\n	display:block;\r\n	color:#666666;\r\n}\r\ninput,textarea,select {\r\n	background:#fff;\r\n	border-width:1px;\r\n	border-style:solid;\r\n	border-color:#D4D4D4 #ebebeb #ebebeb #d4d4d4;\r\n}\r\ninput.button {\r\n	font:bold 12px Arial,Sans-serif;\r\n	height:30px;\r\n	margin:0;\r\n	padding:2px 3px;\r\n	color:#555;\r\n	background:#E6E6E6;\r\n	border-width:1px;\r\n	border-style:solid;\r\n	border-color: #ebebeb #d4d4d4 #d4d4d4 #ebebeb;\r\n}\r\n/* search form */\r\ndiv.searchform form {\r\n	background-color:transparent;\r\n	border:none;\r\n	margin:0;\r\n	padding:12px 0 15px 8px;\r\n	width:190px;\r\n}\r\ndiv.searchform form p {\r\n	margin:0;\r\n	padding:0 0 10px 0;\r\n}\r\ndiv.searchform form input.textbox, div.searchform form input {\r\n	width:115px;\r\n	color:#666666;\r\n	height:18px;\r\n	padding:2px;\r\n	vertical-align:top;\r\n}\r\ndiv.searchform form input.button, div.searchform form input[type=submit] {\r\n	width:60px;\r\n	height:24px;\r\n	padding:2px 5px;\r\n	vertical-align:top;\r\n}\r\n/* ------------------------------------------ LAYOUT------------------------------------------- */ \r\n#header-wrap {\r\n	position:relative;\r\n	background:#fff url(/barn/uploads/unbound/wrap-bg.jpg) no-repeat;\r\n	margin:0 auto;\r\n	width:940px;\r\n	height:385px;\r\n	text-align:left;\r\n}\r\n#header-photo {\r\n	position:absolute;\r\n	top:90px;\r\n	left:24px;\r\n	padding:0;\r\n	height:290px;\r\n	width:890px;\r\n	clear:both;\r\n	/* border:1px solid #F0F0F0;\r\n	*/\r\n}\r\n#header-photo img {\r\n	border:none;\r\n	margin:0;\r\n	padding: 0;\r\n}\r\n/* Navigation */\r\n#nav {\r\n	position:absolute;\r\n	margin:0;\r\n	padding:0;\r\n	width:880px;\r\n	left:25px;\r\n	top:0px;\r\n}\r\n#nav ul {\r\n	float:left;\r\n	list-style:none;\r\n	width:880px;\r\n	height:40px;\r\n	margin:0;\r\n	padding:0;\r\n	display:inline;\r\n}\r\n#nav ul li {\r\n	display:inline;\r\n	margin:0;\r\n	padding:0;\r\n}\r\n#nav ul li a {\r\n	float:left;\r\n	margin:0;\r\n	padding:18px 11px 0 11px;\r\n	font:bold 14px/35px ''Trebuchet MS'',Tahoma,Helvetica,Arial,Geneva,Sans-serif;\r\n	text-decoration:none;\r\n	//color:#070000;\r\n        color:#DAD3CC;\r\n}\r\n#nav ul li a:hover,#nav ul li a:active {\r\n	//color:#663333;\r\n        //color:#F7F14F;\r\n        color:#9BBB4D;\r\n	background:none;\r\n	border:none;\r\n}\r\n#nav ul li#current a {\r\n	color:#000;\r\n	background:#d5d3d6 url(/barn/uploads/unbound/nav-current.jpg) repeat-x;\r\n	border-bottom: 1px solid #CECECE;\r\n}\r\n#header-wrap h1#logo-text a {\r\n	position:absolute;\r\n	margin:0;\r\n	padding:0;\r\n	font:normal 62px Georgia,''Times New Roman'',Times,serif;\r\n	letter-spacing:-1.5px;\r\n	color:#070000;\r\n	text-decoration:none;\r\n	/* change the values of top and left to adjust the position of the logo*/\r\n	top:105px;\r\n	left:28px;\r\n}\r\n#header-wrap h1#logo-text a:hover {\r\n	background:none;\r\n	border: none;\r\n}\r\n#header-wrap p#intro {\r\n	position:absolute;\r\n	margin:0;\r\n	padding:0;\r\n	font-family:Georgia,''Times New Roman'',Times,serif;\r\n	font-weight:normal;\r\n	font-size:18px;\r\n	line-height:1.6em;\r\n	font-style:italic;\r\n	text-transform:none;\r\n	color:#663333;\r\n	width:400px;\r\n	/* change the values of top and left to adjust the position */\r\n	top:205px;\r\n	left:60px;\r\n}\r\n/* header quick search */\r\n#header-wrap div#quick-search form {\r\n	position:absolute;\r\n	top:25px;\r\n	right:25px;\r\n	padding:0;\r\n	margin:0;\r\n	width:260px;\r\n	height:26px;\r\n	background:#fff;\r\n	z-index:999999;\r\n	border:1px solid #D8D8D8;\r\n}\r\n#header-wrap div#quick-search form p {\r\n	margin:0;\r\n	padding:0;\r\n}\r\n#header-wrap div#quick-search form input {\r\n	margin:2px 0 0 4px;\r\n	width:210px;\r\n	background:none;\r\n	border:none;\r\n	color:#ABABAB;\r\n}\r\n#header-wrap div#quick-search form label, #header-wrap div#quick-search form .btn,\r\n#header-wrap div#quick-search form input[type=submit] {\r\n	display:none;\r\n}\r\n#content-outer {\r\n	background:#fff;\r\n	width:100%;\r\n}\r\n#content-wrapper {\r\n	width:940px;\r\n	margin:0 auto;\r\n	text-align:left;\r\n}\r\n#content {\r\n	float:left;\r\n	width:100%;\r\n	background:#fff url(/barn/uploads/unbound/content-bg.jpg) no-repeat;\r\n}\r\n.col-one {\r\n	margin-right:480px;\r\n	padding-left:25px;\r\n}\r\n.col-two {\r\n	float:left;\r\n	width:210px;\r\n	margin-left:-455px;\r\n	margin-top:12px;\r\n}\r\n.col-three {\r\n	float:left;\r\n	width:210px;\r\n	margin-left:-235px;\r\n	margin-top:12px;\r\n}\r\n.col-one,.col-two,.col-three {\r\n	padding-bottom:20px;\r\n}\r\n#content .col-one h2 {\r\n	padding-bottom:3px;\r\n	font:normal 3.4em "Trebuchet MS",Tahoma,Arial,Sans-serif;\r\n        font-size:2.5em;\r\n	color:#000;\r\n	letter-spacing:-2px;\r\n	text-transform:none;\r\n	border-bottom:1px solid #ebebeb;\r\n	margin-left:5px;\r\n	padding-left:5px;\r\n}\r\n#content .col-one h2 a {\r\n	color:#000;\r\n	text-decoration:none;\r\n	background:none;\r\n	border:none;\r\n}\r\n#content .col-one ul li {\r\n	list-style-image:url(/barn/uploads/unbound/bullet.gif);\r\n}\r\n#content-wrapper .col-two h3,#content-wrapper .col-three h3, .NewsSummaryLink, .NewsSummaryPostdate {\r\n	color:#111;\r\n	font:normal 1.8em "Trebuchet MS",Tahoma,Arial,sans-serif;\r\n	text-transform:none;\r\n	letter-spacing:-0.5px;\r\n	padding:5px 10px;\r\n	margin: 15px 0 5px 0;\r\n}\r\n/* sidebar menu */\r\ndiv.sidemenu ul {\r\n	text-align:left;\r\n	margin:7px 5px 8px 0px;\r\n	padding:0;\r\n	text-decoration:none;\r\n	background:url(/barn/uploads/unbound/dots.gif) repeat-x left top;\r\n}\r\ndiv.sidemenu ul li {\r\n	list-style:none;\r\n	background:url(/barn/uploads/unbound/dots.gif) repeat-x left bottom;\r\n	padding:6px 10px;\r\n	margin:0;\r\n}\r\n* html body div.sidemenu ul li {\r\n	height:1%;\r\n}\r\ndiv.sidemenu ul li a {\r\n	text-decoration:none;\r\n	background-image:none;\r\n	background-color:transparent;\r\n	border:none;\r\n	color:#666666;\r\n}\r\ndiv.sidemenu ul li a span {\r\n	color:#989898;\r\n	font-family:Georgia,"Times New Roman",Times,serif;\r\n	font-style:italic;\r\n	font-weight:normal;\r\n	font-size:1em;\r\n}\r\ndiv.sidemenu ul li a:hover {\r\n	color:#000;\r\n	background:none;\r\n	border:none;\r\n}\r\ndiv.sidemenu ul ul {\r\n	margin:0 0 0 5px;\r\n	padding:0;\r\n}\r\ndiv.sidemenu ul ul li {\r\n	background: none;\r\n}\r\n/* footer */\r\n#footer-wrapper {\r\n	clear:both;\r\n	width:940px;\r\n	margin:0 auto;\r\n	text-align:left;\r\n	font:normal 1em/1.6em ''Trebuchet MS'',Tahoma,Sans-serif;\r\n}\r\n#footer-wrapper h3,#footer-wrapper p {\r\n	padding-left:0;\r\n}\r\n#footer-wrapper h3 {\r\n	font:normal 1.6em/1.6em ''Trebuchet MS'',Tahoma,Arial,Sans-serif;\r\n	color:#ABABAB;\r\n}\r\n#footer-wrapper a {\r\n	color:#fff;\r\n	background:transparent;\r\n}\r\n#footer-wrapper ul.footer-list {\r\n	border-top:1px solid #111;\r\n	list-style:none;\r\n	padding:0;\r\n	margin-left:0;\r\n}\r\n#footer-wrapper ul.footer-list li {\r\n	border-bottom:1px solid #111;\r\n}\r\n#footer-wrapper ul.footer-list li a {\r\n	display:block;\r\n	width:98%;\r\n	line-height:2em;\r\n	font-weight:bold;\r\n	padding:4px 0;\r\n	border:none;\r\n	margin-left:0;\r\n	padding-left:0;\r\n	color:#666666;\r\n}\r\n#footer-wrapper ul.footer-list li a span {\r\n	color:#444;\r\n	font-style:italic;\r\n	font-weight:normal;\r\n	font-family:Georgia,''Times New Roman'',Times,serif;\r\n}\r\n#footer-wrapper ul.footer-list li a:hover,#footer-wrapper ul.footer-list li a:hover span {\r\n	color:#fff;\r\n	text-decoration:none;\r\n}\r\n#footer {\r\n	float:left;\r\n	width:100%;\r\n	padding:0;\r\n	margin-left:5px;\r\n	margin-top:10px;\r\n}\r\n#footer-bottom {\r\n	clear:both;\r\n	border-top:1px solid #111;\r\n	width:880px;\r\n	margin:0 auto;\r\n}\r\n#footer-bottom .bottom-left {\r\n	float:left;\r\n	padding-left:5px;\r\n}\r\n#footer-bottom .bottom-right {\r\n	text-align:right;\r\n	padding-right: 0;\r\n}\r\n/* postmeta */\r\n.postmeta {\r\n	padding:5px;\r\n	margin:20px 10px 15px 10px;\r\n	font-size:1em;\r\n	color:#777;\r\n	border:1px solid #EBEBEB;\r\n	background:#F5F5F5;\r\n}\r\n.postmeta a {\r\n	background:transparent;\r\n}\r\n.postmeta .date {\r\n	margin:0 10px 0 5px;\r\n}\r\n.postmeta a.comments {\r\n	margin:0 10px 0 5px;\r\n}\r\n.postmeta a.readmore {\r\n	margin:0 10px 0 5px;\r\n}\r\n.post-info, #NewsPostDetailDate {\r\n	font-size:.95em;\r\n	padding-top:3px;\r\n	margin-left:5px;\r\n	color:#bababa;\r\n}\r\n.post-info a {\r\n	color: #000;\r\n}\r\n/* thumbnails */\r\np.thumbs {\r\n	padding:12px 0 0 10px;\r\n}\r\n.thumbs img {\r\n	position:relative;\r\n	padding:4px;\r\n	margin:5px;\r\n	background:#fafafa;\r\n	border:1px solid #dcdcdc;\r\n}\r\n.thumbs img:hover {\r\n	border:1px solid #8E8E8E;\r\n	background:#8E8E8E;\r\n}\r\n.thumbs a:hover {\r\n	background-color:transparent;\r\n	border: none\r\n}\r\n/* alignment classes */\r\n.float-left {\r\n	float:left;\r\n}\r\n.float-right {\r\n	float:right;\r\n}\r\n.align-left {\r\n	text-align:left;\r\n}\r\n.align-right {\r\n	text-align: right;\r\n}\r\n/* clearing */\r\n.clearer {\r\n	clear:both;\r\n}\r\n.clear {\r\n	display:inline-block;\r\n}\r\n.clear:after {\r\n	display:block;\r\n	visibility:hidden;\r\n	clear:both;\r\n	height:0;\r\n	content: ".";\r\n}\r\n\r\n.NewsSummaryCategory,  .NewsSummaryAuthor, .NewsSummaryContent, #NewsPostDetailCategory,\r\n#NewsPostDetailAuthor, #NewsPostDetailContent,  #NewsPostDetailPrintLink, #NewsPostDetailReturnLink, .NewsSummarySummary, .NewsSummaryMorelink {\r\n        padding: 0 10px;\r\n}\r\n#NewsPostDetailHorizRule {\r\n         display: none;\r\n}\r\n \r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n  position: absolute;\r\n  left: -5000px;\r\n  width: 4000px;\r\n}\r\n/* end wiki style external links */\r\n\r\n.contactform fieldset {\r\n  padding:10px !important;\r\n}', 'screen', '', '2013-07-13 20:10:29', '2013-07-19 07:54:11'),
(57, 'unbound', '/*\r\n  @Stylesheet by [icms.info]\r\n  @Version: 2.0-20090709\r\n\r\n  @Contributors:\r\n  -  http://www.styleshout.com/\r\n  --------------------------------------------------------------- \r\n*/\r\n* {\r\n	margin:0;\r\n	padding:0;\r\n	outline:0\r\n}\r\nbody {\r\n	font:11px/165% "Lucida Grande",Geneva,Verdana,Arial,Helvetica,sans-serif;\r\n	color:#666666;\r\n	margin:0;\r\n	padding:0 0 50px 0;\r\n	background:#070707 url(/barn/uploads/unbound/bg.jpg) repeat-x;\r\n	text-align: center;\r\n}\r\n/* Links */\r\na {\r\n	text-decoration:none;\r\n	color:#A56F38;\r\n}\r\na:hover {\r\n	background:#F0f0f0;\r\n	color:#000;\r\n	border-bottom: 1px dotted #000;\r\n}\r\n/* Headers */\r\nh1,h2,h3 {\r\n	font:bold 1em/1.5em "Trebuchet MS",Tahoma,Arial,Sans-serif;\r\n	color:#111;\r\n	padding:15px 10px 5px 10px;\r\n	margin:0;\r\n}\r\nh1 {\r\n	font-size:345%;\r\n	font-weight:normal;\r\n	letter-spacing:-2px;\r\n}\r\nh2 {\r\n	font-size:200%;\r\n	color:#663333;\r\n}\r\nh3 {\r\n	font-size:170%;\r\n	font-weight:normal;\r\n}\r\np,dl {\r\n	padding:10px;\r\n	margin:0;\r\n}\r\nul,ol {\r\n	margin:10px 20px;\r\n	padding:0 20px;\r\n}\r\nul {\r\n	list-style:none;\r\n}\r\ndt {\r\n	font-weight:bold;\r\n	color:#895F30;\r\n}\r\ndd {\r\n	padding-left: 25px;\r\n}\r\n/* Images */\r\nimg {\r\n	background:#fafafa;\r\n	border:1px solid #dcdcdc;\r\n	padding:5px;\r\n}\r\nimg.float-right {\r\n	margin:5px 0px 10px 10px;\r\n}\r\nimg.float-left {\r\n	margin: 5px 10px 10px 0px;\r\n}\r\ncode {\r\n	margin:5px 0;\r\n	padding:15px;\r\n	text-align:left;\r\n	display:block;\r\n	overflow:auto;\r\n	font:500 1em/1.5em ''Lucida Console'',''courier new'',monospace;\r\n	/* white-space:pre;\r\n	*/\r\n	border:1px solid #EBEBEB;\r\n	background:#F0F0F0;\r\n}\r\nacronym {\r\n	cursor:help;\r\n	border-bottom:1px dotted #895F30;\r\n}\r\nblockquote {\r\n	margin:15px 10px;\r\n	padding:10px 10px 10px 35px;\r\n	border:1px solid #F0F0F0;\r\n	background:#F0F0F0 url(/barn/uploads/unbound/quote.jpg) no-repeat 10px 10px;\r\n	font-weight:normal;\r\n	font-size:17px;\r\n	line-height:1.5em;\r\n	font-style:italic;\r\n	font-family:Georgia,"Times New Roman",Times,serif;\r\n	color: #555;\r\n}\r\n/* start - table */\r\ntable {\r\n	border-collapse:collapse;\r\n	margin:15px 10px;\r\n}\r\nth {\r\n	color:#555;\r\n	background:#E6E6E6;\r\n	height:38px;\r\n	padding-left:12px;\r\n	padding-right:12px;\r\n	text-align:left;\r\n	border-width:1px;\r\n	border-style:solid;\r\n	border-color:#ebebeb #d4d4d4 #d4d4d4 #ebebeb;\r\n}\r\ntr {\r\n	height:34px;\r\n	background:#fff;\r\n}\r\ntd {\r\n	padding-left:11px;\r\n	padding-right:11px;\r\n	border: 1px solid #ECECEC;\r\n}\r\n/* end - table */\r\n/* form elements */\r\nform {\r\n	margin:15px 10px;\r\n	padding:5px 10px 20px 10px;\r\n	border:1px solid #f1f1f1;\r\n	background:#fdfdfd;\r\n}\r\nlabel {\r\n	display:block;\r\n	font-weight:bold;\r\n	margin:8px 0 5px 0;\r\n	color:#895F30;\r\n}\r\ninput,select {\r\n	padding:4px;\r\n	font:normal 1em Verdana,sans-serif;\r\n	color:#666666;\r\n	background:#fff;\r\n}\r\ntextarea {\r\n	width:350px;\r\n	padding:4px;\r\n	font:normal 1em Verdana,sans-serif;\r\n	height:100px;\r\n	display:block;\r\n	color:#666666;\r\n}\r\ninput,textarea,select {\r\n	background:#fff;\r\n	border-width:1px;\r\n	border-style:solid;\r\n	border-color:#D4D4D4 #ebebeb #ebebeb #d4d4d4;\r\n}\r\ninput.button {\r\n	font:bold 12px Arial,Sans-serif;\r\n	height:30px;\r\n	margin:0;\r\n	padding:2px 3px;\r\n	color:#555;\r\n	background:#E6E6E6;\r\n	border-width:1px;\r\n	border-style:solid;\r\n	border-color: #ebebeb #d4d4d4 #d4d4d4 #ebebeb;\r\n}\r\n/* search form */\r\ndiv.searchform form {\r\n	background-color:transparent;\r\n	border:none;\r\n	margin:0;\r\n	padding:12px 0 15px 8px;\r\n	width:190px;\r\n}\r\ndiv.searchform form p {\r\n	margin:0;\r\n	padding:0 0 10px 0;\r\n}\r\ndiv.searchform form input.textbox, div.searchform form input {\r\n	width:115px;\r\n	color:#666666;\r\n	height:18px;\r\n	padding:2px;\r\n	vertical-align:top;\r\n}\r\ndiv.searchform form input.button, div.searchform form input[type=submit] {\r\n	width:60px;\r\n	height:24px;\r\n	padding:2px 5px;\r\n	vertical-align:top;\r\n}\r\n/* ------------------------------------------ LAYOUT------------------------------------------- */ \r\n#header-wrap {\r\n	position:relative;\r\n	background:#fff url(/barn/uploads/unbound/wrap-bg.jpg) no-repeat;\r\n	margin:0 auto;\r\n	width:940px;\r\n	height:385px;\r\n	text-align:left;\r\n}\r\n#header-photo {\r\n	position:absolute;\r\n	top:90px;\r\n	left:24px;\r\n	padding:0;\r\n	height:290px;\r\n	width:890px;\r\n	clear:both;\r\n	/* border:1px solid #F0F0F0;\r\n	*/\r\n}\r\n#header-photo img {\r\n	border:none;\r\n	margin:0;\r\n	padding: 0;\r\n}\r\n/* Navigation */\r\n#nav {\r\n	position:absolute;\r\n	margin:0;\r\n	padding:0;\r\n	width:880px;\r\n	left:25px;\r\n	top:0px;\r\n}\r\n#nav ul {\r\n	float:left;\r\n	list-style:none;\r\n	width:880px;\r\n	height:40px;\r\n	margin:0;\r\n	padding:0;\r\n	display:inline;\r\n}\r\n#nav ul li {\r\n	display:inline;\r\n	margin:0;\r\n	padding:0;\r\n}\r\n#nav ul li a {\r\n	float:left;\r\n	margin:0;\r\n	padding:18px 11px 0 11px;\r\n	font:bold 14px/35px ''Trebuchet MS'',Tahoma,Helvetica,Arial,Geneva,Sans-serif;\r\n	text-decoration:none;\r\n	color:#070000;\r\n}\r\n#nav ul li a:hover,#nav ul li a:active {\r\n	color:#663333;\r\n	background:none;\r\n	border:none;\r\n}\r\n#nav ul li#current a {\r\n	color:#000;\r\n	background:#d5d3d6 url(/barn/uploads/unbound/nav-current.jpg) repeat-x;\r\n	border-bottom: 1px solid #CECECE;\r\n}\r\n#header-wrap h1#logo-text a {\r\n	position:absolute;\r\n	margin:0;\r\n	padding:0;\r\n	font:normal 62px Georgia,''Times New Roman'',Times,serif;\r\n	letter-spacing:-1.5px;\r\n	color:#070000;\r\n	text-decoration:none;\r\n	/* change the values of top and left to adjust the position of the logo*/\r\n	top:135px;\r\n	left:48px;\r\n}\r\n#header-wrap h1#logo-text a:hover {\r\n	background:none;\r\n	border: none;\r\n}\r\n#header-wrap p#intro {\r\n	position:absolute;\r\n	margin:0;\r\n	padding:0;\r\n	font-family:Georgia,''Times New Roman'',Times,serif;\r\n	font-weight:normal;\r\n	font-size:18px;\r\n	line-height:1.6em;\r\n	font-style:italic;\r\n	text-transform:none;\r\n	color:#663333;\r\n	width:400px;\r\n	/* change the values of top and left to adjust the position */\r\n	top:205px;\r\n	left:60px;\r\n}\r\n/* header quick search */\r\n#header-wrap div#quick-search form {\r\n	position:absolute;\r\n	top:25px;\r\n	right:25px;\r\n	padding:0;\r\n	margin:0;\r\n	width:260px;\r\n	height:26px;\r\n	background:#fff;\r\n	z-index:999999;\r\n	border:1px solid #D8D8D8;\r\n}\r\n#header-wrap div#quick-search form p {\r\n	margin:0;\r\n	padding:0;\r\n}\r\n#header-wrap div#quick-search form input {\r\n	margin:2px 0 0 4px;\r\n	width:210px;\r\n	background:none;\r\n	border:none;\r\n	color:#ABABAB;\r\n}\r\n#header-wrap div#quick-search form label, #header-wrap div#quick-search form .btn,\r\n#header-wrap div#quick-search form input[type=submit] {\r\n	display:none;\r\n}\r\n#content-outer {\r\n	background:#fff;\r\n	width:100%;\r\n}\r\n#content-wrapper {\r\n	width:940px;\r\n	margin:0 auto;\r\n	text-align:left;\r\n}\r\n#content {\r\n	float:left;\r\n	width:100%;\r\n	background:#fff url(/barn/uploads/unbound/content-bg.jpg) no-repeat;\r\n}\r\n.col-one {\r\n	margin-right:480px;\r\n	padding-left:25px;\r\n}\r\n.col-two {\r\n	float:left;\r\n	width:210px;\r\n	margin-left:-455px;\r\n	margin-top:12px;\r\n}\r\n.col-three {\r\n	float:left;\r\n	width:210px;\r\n	margin-left:-235px;\r\n	margin-top:12px;\r\n}\r\n.col-one,.col-two,.col-three {\r\n	padding-bottom:20px;\r\n}\r\n#content .col-one h2 {\r\n	padding-bottom:3px;\r\n	font:normal 3.4em "Trebuchet MS",Tahoma,Arial,Sans-serif;\r\n	color:#000;\r\n	letter-spacing:-2px;\r\n	text-transform:none;\r\n	border-bottom:1px solid #ebebeb;\r\n	margin-left:5px;\r\n	padding-left:5px;\r\n}\r\n#content .col-one h2 a {\r\n	color:#000;\r\n	text-decoration:none;\r\n	background:none;\r\n	border:none;\r\n}\r\n#content .col-one ul li {\r\n	list-style-image:url(/barn/uploads/unbound/bullet.gif);\r\n}\r\n#content-wrapper .col-two h3,#content-wrapper .col-three h3, .NewsSummaryLink, .NewsSummaryPostdate {\r\n	color:#111;\r\n	font:normal 1.8em "Trebuchet MS",Tahoma,Arial,sans-serif;\r\n	text-transform:none;\r\n	letter-spacing:-0.5px;\r\n	padding:5px 10px;\r\n	margin: 15px 0 5px 0;\r\n}\r\n/* sidebar menu */\r\ndiv.sidemenu ul {\r\n	text-align:left;\r\n	margin:7px 5px 8px 0px;\r\n	padding:0;\r\n	text-decoration:none;\r\n	background:url(/barn/uploads/unbound/dots.gif) repeat-x left top;\r\n}\r\ndiv.sidemenu ul li {\r\n	list-style:none;\r\n	background:url(/barn/uploads/unbound/dots.gif) repeat-x left bottom;\r\n	padding:6px 10px;\r\n	margin:0;\r\n}\r\n* html body div.sidemenu ul li {\r\n	height:1%;\r\n}\r\ndiv.sidemenu ul li a {\r\n	text-decoration:none;\r\n	background-image:none;\r\n	background-color:transparent;\r\n	border:none;\r\n	color:#666666;\r\n}\r\ndiv.sidemenu ul li a span {\r\n	color:#989898;\r\n	font-family:Georgia,"Times New Roman",Times,serif;\r\n	font-style:italic;\r\n	font-weight:normal;\r\n	font-size:1em;\r\n}\r\ndiv.sidemenu ul li a:hover {\r\n	color:#000;\r\n	background:none;\r\n	border:none;\r\n}\r\ndiv.sidemenu ul ul {\r\n	margin:0 0 0 5px;\r\n	padding:0;\r\n}\r\ndiv.sidemenu ul ul li {\r\n	background: none;\r\n}\r\n/* footer */\r\n#footer-wrapper {\r\n	clear:both;\r\n	width:940px;\r\n	margin:0 auto;\r\n	text-align:left;\r\n	font:normal 1em/1.6em ''Trebuchet MS'',Tahoma,Sans-serif;\r\n}\r\n#footer-wrapper h3,#footer-wrapper p {\r\n	padding-left:0;\r\n}\r\n#footer-wrapper h3 {\r\n	font:normal 1.6em/1.6em ''Trebuchet MS'',Tahoma,Arial,Sans-serif;\r\n	color:#ABABAB;\r\n}\r\n#footer-wrapper a {\r\n	color:#fff;\r\n	background:transparent;\r\n}\r\n#footer-wrapper ul.footer-list {\r\n	border-top:1px solid #111;\r\n	list-style:none;\r\n	padding:0;\r\n	margin-left:0;\r\n}\r\n#footer-wrapper ul.footer-list li {\r\n	border-bottom:1px solid #111;\r\n}\r\n#footer-wrapper ul.footer-list li a {\r\n	display:block;\r\n	width:98%;\r\n	line-height:2em;\r\n	font-weight:bold;\r\n	padding:4px 0;\r\n	border:none;\r\n	margin-left:0;\r\n	padding-left:0;\r\n	color:#666666;\r\n}\r\n#footer-wrapper ul.footer-list li a span {\r\n	color:#444;\r\n	font-style:italic;\r\n	font-weight:normal;\r\n	font-family:Georgia,''Times New Roman'',Times,serif;\r\n}\r\n#footer-wrapper ul.footer-list li a:hover,#footer-wrapper ul.footer-list li a:hover span {\r\n	color:#fff;\r\n	text-decoration:none;\r\n}\r\n#footer {\r\n	float:left;\r\n	width:100%;\r\n	padding:0;\r\n	margin-left:5px;\r\n	margin-top:10px;\r\n}\r\n#footer-bottom {\r\n	clear:both;\r\n	border-top:1px solid #111;\r\n	width:880px;\r\n	margin:0 auto;\r\n}\r\n#footer-bottom .bottom-left {\r\n	float:left;\r\n	padding-left:5px;\r\n}\r\n#footer-bottom .bottom-right {\r\n	text-align:right;\r\n	padding-right: 0;\r\n}\r\n/* postmeta */\r\n.postmeta {\r\n	padding:5px;\r\n	margin:20px 10px 15px 10px;\r\n	font-size:1em;\r\n	color:#777;\r\n	border:1px solid #EBEBEB;\r\n	background:#F5F5F5;\r\n}\r\n.postmeta a {\r\n	background:transparent;\r\n}\r\n.postmeta .date {\r\n	margin:0 10px 0 5px;\r\n}\r\n.postmeta a.comments {\r\n	margin:0 10px 0 5px;\r\n}\r\n.postmeta a.readmore {\r\n	margin:0 10px 0 5px;\r\n}\r\n.post-info, #NewsPostDetailDate {\r\n	font-size:.95em;\r\n	padding-top:3px;\r\n	margin-left:5px;\r\n	color:#bababa;\r\n}\r\n.post-info a {\r\n	color: #000;\r\n}\r\n/* thumbnails */\r\np.thumbs {\r\n	padding:12px 0 0 10px;\r\n}\r\n.thumbs img {\r\n	position:relative;\r\n	padding:4px;\r\n	margin:5px;\r\n	background:#fafafa;\r\n	border:1px solid #dcdcdc;\r\n}\r\n.thumbs img:hover {\r\n	border:1px solid #8E8E8E;\r\n	background:#8E8E8E;\r\n}\r\n.thumbs a:hover {\r\n	background-color:transparent;\r\n	border: none\r\n}\r\n/* alignment classes */\r\n.float-left {\r\n	float:left;\r\n}\r\n.float-right {\r\n	float:right;\r\n}\r\n.align-left {\r\n	text-align:left;\r\n}\r\n.align-right {\r\n	text-align: right;\r\n}\r\n/* clearing */\r\n.clearer {\r\n	clear:both;\r\n}\r\n.clear {\r\n	display:inline-block;\r\n}\r\n.clear:after {\r\n	display:block;\r\n	visibility:hidden;\r\n	clear:both;\r\n	height:0;\r\n	content: ".";\r\n}\r\n\r\n.NewsSummaryCategory,  .NewsSummaryAuthor, .NewsSummaryContent, #NewsPostDetailCategory,\r\n#NewsPostDetailAuthor, #NewsPostDetailContent,  #NewsPostDetailPrintLink, #NewsPostDetailReturnLink, .NewsSummarySummary, .NewsSummaryMorelink {\r\n        padding: 0 10px;\r\n}\r\n#NewsPostDetailHorizRule {\r\n         display: none;\r\n}\r\n \r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n  position: absolute;\r\n  left: -5000px;\r\n  width: 4000px;\r\n}\r\n/* end wiki style external links */', '', '', '2013-07-13 20:16:30', '2013-07-13 20:16:30'),
(58, 'FormBuilder Default Style', '/* Sample FormBuilder CSS base */\r\nform {\r\n	margin-top: 0\r\n        \r\n}\r\n\r\nform, td, th, li {\r\n	font-size: 100%\r\n}\r\nform div {\r\n	margin-bottom: 0\r\n}\r\nfieldset div {\r\n	margin-bottom: 0.5em;\r\n	margin-left: 1em;\r\n}\r\nfieldset div div {\r\n	margin-top: 0.5em;\r\n	margin-left: 1em\r\n}\r\nfieldset {\r\n	margin-bottom: 1em;\r\n	border: 1px solid #F60;\r\n	padding: 0.5em\r\n}\r\nfieldset label {\r\n	width: auto;\r\n}\r\nlegend {\r\n	color: #FFF;\r\n	background: #F60;\r\n	font-style: italic;\r\n	font-size: 1.2em;\r\n	margin-bottom: 0.5em;\r\n	padding: 0.2em;\r\n	width: auto;\r\n	border: 1px solid #CCC\r\n}\r\ntextarea {\r\n	margin: 0.5em 0;\r\n	width: 98%;\r\n	height: 6em\r\n}\r\n/* Apply this class to text/select input fields with shorter labelsto help alignment */\r\n.short-label label {\r\n	float: left;\r\n	width: 10em\r\n}\r\n.short-label fieldset div input, .short-label fieldset div select {\r\n	width: 16em\r\n}\r\n/* Pretty up your Captcha image output */\r\n.captcha {\r\n	margin: 0.5em 0;\r\n	width: 200px;\r\n	text-align: center\r\n}\r\n.captcha img {\r\n	border: 1px solid #F60;\r\n	margin-bottom: 0.5em\r\n}\r\n.captcha input {\r\n	width: 196px;\r\n	margin-top: 0.5em\r\n}\r\n/* Just a bit more room for the Submit button */\r\n.submit {\r\n	margin-top: 0.5em\r\n}\r\n.contactform input {\r\n	border: 1px solid #f60;\r\n}\r\n.contactform input.checkbox {\r\n	border: none;\r\n}\r\n.contactform label {\r\n	display: block;\r\n	float: left;\r\n	width: 150px;\r\n}\r\n.contactform label.label {\r\n	display: inline;\r\n	float: none;\r\n	width: 50px;\r\n	font-size: 10px;\r\n}\r\n.contactform textarea {\r\n	background-color: #ffc;\r\n	border: 1px solid #f60;\r\n}\r\n.formbuilderform .message {\r\n	line-height: 16px;\r\n	padding: 0 0 8px 0;\r\n}', 'screen', '', '2013-07-13 00:00:00', '2013-07-13 22:14:04'),
(59, 'Album Module', '/* Default style sheet for Album templates */\n* {\n	margin: 0;\n	padding: 0;\n	list-style: none;\n	outline: none;\n}\n.thumb a {\n	border: none;\n}\n.thumb a img {\n	border: none;\n}\n.clear {\n	clear: both\n}\n/* Picture List UL */\n.picturelist {\n	margin-left: 0;\n	padding-left: 0;\n}\n/* Album and Picture Lists */\n.picturelist .thumb {\n	padding: 0;\n	width: auto;\n	height: auto; /* change this to help make images pass under each other */\n	margin: 0 0.5em 0.5em 0;\n/* Thumbnail spacing */\n	text-decoration: none;\n	line-height: normal;\n	list-style-type: none;\n	text-align: center;\n	float: left;\n}\n/* Set link formatting*/\n\n.picturelist .thumb a:hover {\n	background-color: #eee;\n/*Background of thumb on hover - sort of light blue/green */\n}\n/* Set link formatting radius/shadows */\n.picturelist .thumb a {\n	text-decoration: none;\n	color: inherit;\n	cursor: pointer;\n	margin: 6px;\n	display: inline-block;\n	background: white;\n	padding: 6px;\n	line-height: 0;\n	-webkit-border-radius: 4px 4px;\n	-moz-border-radius: 4px 4px;\n	border-radius: 4px 4px;\n	-moz-box-shadow: 0px 0px 8px #AAA;\n	-webkit-box-shadow: 0px 0px 8px #AAA;\n	box-shadow: 0px 0px 8px #AAA;\n	-webkit-transition: -webkit-box-shadow 0.1s ease-out;\n	-moz-transition: -webkit-box-shadow 0.1s ease-out;\n	-o-transition: -webkit-box-shadow 0.1s ease-out;\n	transition: -webkit-box-shadow 0.1s ease-out;\n}\n.picturelist .thumb a img {\n	border: none;\n	padding: none;\n	-webkit-border-radius: 4px 4px;\n	-moz-border-radius: 4px 4px;\n	border-radius: 4px 4px;\n}\n.picturelist .thumb a:hover {\n	-moz-box-shadow: 0px 0px 8px #222;\n	-webkit-box-shadow: 0px 0px 8px #222;\n	box-shadow: 0px 0px 8px #222;\n	background: white;\n}\n* html .picturelist .thumb a {\n	display: inline;\n	height: 72px;\n/* Thumb height*/\n	width: 100px;\n/* Thumb width*/\n	padding: 10px;\n/* Thumb padding to form thumb frame */\n/* You can set the above to 0px = no frame - but no hover indication!*/\n	margin: 0 auto;\n	background-color: white;\n/*Background of thumb */\n	border-top: 1px solid #eee;\n/* Borders of thumb frame */\n	border-right: 2px solid #ccc;\n	border-bottom: 2px solid #ccc;\n	border-left: 1px solid #eee;\n	text-decoration: none;\n}\n*:first-child+html .picturelist .thumb a {\n	display: inline;\n	height: 72px;\n/* Thumb height*/\n	width: 100px;\n/* Thumb width*/\n	padding: 10px;\n/* Thumb padding to form thumb frame */\n/* You can set the above to 0px = no frame - but no hover indication!*/\n	margin: 0 auto;\n	background-color: white;\n/*Background of thumb */\n	border-top: 1px solid #eee;\n/* Borders of thumb frame */\n	border-right: 2px solid #ccc;\n	border-bottom: 2px solid #ccc;\n	border-left: 1px solid #eee;\n	text-decoration: none;\n}\n* html .picturelist .thumb a:hover {\n	background-color: #F2F2F2;\n}\n*:first-child+html .picturelist .thumb a:hover {\n	background-color: #F2F2F2;\n}\n/* Styling of text and navigation for Album */\n.picturelist .thumb p {\n	margin: 2px\n}\n.albumname {\n	font-size: smaller;\n	text-align: center;\n	font-weight: bold;\n	font-style: normal;\n}\n.albumname a {\n	display: inline;\n	border: none;\n	margin: none;\n	padding: none;\n	background-color: transparent;\n}\n.albumpicturecount {\n	font-size: smaller;\n	text-align: center;\n	font-weight: normal;\n	font-style: italic;\n}\n.albumcomment {\n	text-align: center;\n	font-weight: normal;\n	font-style: normal;\n}\n.albumnav {\n	text-align: center;\n	font-weight: normal;\n	font-style: normal;\n	font-size: smaller;\n}\n.instructiontext {\n	font-weight: normal;\n	font-style: normal;\n	font-size: smaller;\n	font-style: italic;\n}    \n.album_content h3 {\n	clear:left;\n}', 'screen', '', '2013-07-14 08:21:28', '2013-07-14 08:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `cms_css_assoc`
--

CREATE TABLE IF NOT EXISTS `cms_css_assoc` (
  `assoc_to_id` int(11) DEFAULT NULL,
  `assoc_css_id` int(11) DEFAULT NULL,
  `assoc_type` varchar(80) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `assoc_order` int(11) DEFAULT NULL,
  KEY `cms_index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `cms_index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_css_assoc`
--

INSERT INTO `cms_css_assoc` (`assoc_to_id`, `assoc_css_id`, `assoc_type`, `create_date`, `modified_date`, `assoc_order`) VALUES
(17, 41, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(16, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(18, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(18, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(18, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
(18, 38, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
(18, 42, 'template', '2009-04-30 17:44:09', '2009-04-30 17:44:09', 3),
(18, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(16, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(16, 34, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
(16, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
(16, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(15, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
(15, 33, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
(15, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(15, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(15, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(17, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(17, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
(17, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(17, 42, 'template', '2009-04-30 01:10:05', '2009-04-30 01:10:05', 2),
(17, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
(20, 39, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 1),
(20, 31, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 4),
(20, 43, 'template', '2009-05-01 04:33:01', '2009-05-01 04:33:01', 2),
(20, 35, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 3),
(20, 30, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 5),
(21, 31, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 3),
(21, 45, 'template', '2009-05-02 00:20:26', '2009-05-02 00:20:26', 2),
(21, 32, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 1),
(21, 30, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 4),
(21, 35, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 5),
(15, 46, 'template', '2009-05-02 15:05:19', '2009-05-02 15:05:19', 6),
(21, 46, 'template', '2009-05-02 15:05:22', '2009-05-02 15:05:22', 6),
(16, 46, 'template', '2009-05-02 15:05:24', '2009-05-02 15:05:24', 6),
(20, 46, 'template', '2009-05-02 15:05:27', '2009-05-02 15:05:27', 6),
(17, 46, 'template', '2009-05-02 15:05:29', '2009-05-02 15:05:29', 7),
(22, 48, 'template', '2009-05-06 14:31:08', '2009-05-06 14:31:08', 1),
(18, 46, 'template', '2009-05-02 15:05:34', '2009-05-02 15:05:34', 7),
(22, 47, 'template', '2009-05-06 14:31:14', '2009-05-06 14:31:14', 2),
(22, 49, 'template', '2009-05-06 14:31:20', '2009-05-06 14:31:20', 3),
(23, 50, 'template', '2012-04-24 13:16:37', '2012-04-24 13:16:37', 2),
(23, 51, 'template', '2012-04-24 13:16:44', '2012-04-24 13:16:44', 3),
(23, 52, 'template', '2012-04-26 07:47:34', '2012-04-26 07:47:34', 1),
(23, 53, 'template', '2012-04-30 12:28:14', '2012-04-30 12:28:14', 4),
(24, 54, 'template', '2013-07-13 19:19:30', '2013-07-13 19:19:30', 1),
(25, 55, 'template', '2013-07-13 19:29:14', '2013-07-13 19:29:14', 1),
(26, 56, 'template', '2013-07-13 20:10:29', '2013-07-13 20:10:29', 1),
(15, 58, 'template', '2013-07-13 22:03:58', '2013-07-13 22:03:58', 7);

-- --------------------------------------------------------

--
-- Table structure for table `cms_css_seq`
--

CREATE TABLE IF NOT EXISTS `cms_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_css_seq`
--

INSERT INTO `cms_css_seq` (`id`) VALUES
(59);

-- --------------------------------------------------------

--
-- Table structure for table `cms_events`
--

CREATE TABLE IF NOT EXISTS `cms_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `cms_originator` (`originator`),
  KEY `cms_event_name` (`event_name`),
  KEY `cms_event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_events`
--

INSERT INTO `cms_events` (`originator`, `event_name`, `event_id`) VALUES
('Core', 'LoginPost', 1),
('Core', 'LogoutPost', 2),
('Core', 'AddUserPre', 3),
('Core', 'AddUserPost', 4),
('Core', 'EditUserPre', 5),
('Core', 'EditUserPost', 6),
('Core', 'DeleteUserPre', 7),
('Core', 'DeleteUserPost', 8),
('Core', 'AddGroupPre', 9),
('Core', 'AddGroupPost', 10),
('Core', 'EditGroupPre', 11),
('Core', 'EditGroupPost', 12),
('Core', 'DeleteGroupPre', 13),
('Core', 'DeleteGroupPost', 14),
('Core', 'AddStylesheetPre', 15),
('Core', 'AddStylesheetPost', 16),
('Core', 'EditStylesheetPre', 17),
('Core', 'EditStylesheetPost', 18),
('Core', 'DeleteStylesheetPre', 19),
('Core', 'DeleteStylesheetPost', 20),
('Core', 'AddTemplatePre', 21),
('Core', 'AddTemplatePost', 22),
('Core', 'EditTemplatePre', 23),
('Core', 'EditTemplatePost', 24),
('Core', 'DeleteTemplatePre', 25),
('Core', 'DeleteTemplatePost', 26),
('Core', 'TemplatePreCompile', 27),
('Core', 'TemplatePostCompile', 28),
('Core', 'AddGlobalContentPre', 29),
('Core', 'AddGlobalContentPost', 30),
('Core', 'EditGlobalContentPre', 31),
('Core', 'EditGlobalContentPost', 32),
('Core', 'DeleteGlobalContentPre', 33),
('Core', 'DeleteGlobalContentPost', 34),
('Core', 'GlobalContentPreCompile', 35),
('Core', 'GlobalContentPostCompile', 36),
('Core', 'ContentEditPre', 37),
('Core', 'ContentEditPost', 38),
('Core', 'ContentDeletePre', 39),
('Core', 'ContentDeletePost', 40),
('Core', 'AddUserDefinedTagPre', 41),
('Core', 'AddUserDefinedTagPost', 42),
('Core', 'EditUserDefinedTagPre', 43),
('Core', 'EditUserDefinedTagPost', 44),
('Core', 'DeleteUserDefinedTagPre', 45),
('Core', 'DeleteUserDefinedTagPost', 46),
('Core', 'ModuleInstalled', 47),
('Core', 'ModuleUninstalled', 48),
('Core', 'ModuleUpgraded', 49),
('Core', 'ContentStylesheet', 50),
('Core', 'ContentPreCompile', 51),
('Core', 'ContentPostCompile', 52),
('Core', 'ContentPostRender', 53),
('Core', 'SmartyPreCompile', 54),
('Core', 'SmartyPostCompile', 55),
('Core', 'ChangeGroupAssignPre', 56),
('Core', 'ChangeGroupAssignPost', 57),
('Core', 'StylesheetPreCompile', 58),
('Core', 'StylesheetPostCompile', 59),
('Core', 'LoginFailed', 60),
('FileManager', 'OnFileUploaded', 61),
('News', 'NewsArticleAdded', 62),
('News', 'NewsArticleEdited', 63),
('News', 'NewsArticleDeleted', 64),
('News', 'NewsCategoryAdded', 65),
('News', 'NewsCategoryEdited', 66),
('News', 'NewsCategoryDeleted', 67),
('Search', 'SearchInitiated', 68),
('Search', 'SearchCompleted', 69),
('Search', 'SearchItemAdded', 70),
('Search', 'SearchItemDeleted', 71),
('Search', 'SearchAllItemsDeleted', 72),
('FormBuilder', 'OnFormBuilderFormSubmit', 73),
('FormBuilder', 'OnFormBuilderFormDisplay', 74),
('FormBuilder', 'OnFormBuilderFormSubmitError', 75),
('Showtime', 'OnShowtimePreferenceChange', 76);

-- --------------------------------------------------------

--
-- Table structure for table `cms_events_seq`
--

CREATE TABLE IF NOT EXISTS `cms_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_events_seq`
--

INSERT INTO `cms_events_seq` (`id`) VALUES
(76);

-- --------------------------------------------------------

--
-- Table structure for table `cms_event_handlers`
--

CREATE TABLE IF NOT EXISTS `cms_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_event_handlers`
--

INSERT INTO `cms_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES
(38, NULL, 'MenuManager', 0, 1, 1),
(40, NULL, 'MenuManager', 0, 1, 2),
(38, NULL, 'Search', 0, 2, 3),
(40, NULL, 'Search', 0, 2, 4),
(22, NULL, 'Search', 0, 1, 5),
(24, NULL, 'Search', 0, 1, 6),
(26, NULL, 'Search', 0, 1, 7),
(30, NULL, 'Search', 0, 1, 8),
(32, NULL, 'Search', 0, 1, 9),
(34, NULL, 'Search', 0, 1, 10),
(48, NULL, 'Search', 0, 1, 11),
(53, NULL, 'Showtime', 0, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cms_event_handler_seq`
--

CREATE TABLE IF NOT EXISTS `cms_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_event_handler_seq`
--

INSERT INTO `cms_event_handler_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `cms_groups`
--

CREATE TABLE IF NOT EXISTS `cms_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_groups`
--

INSERT INTO `cms_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES
(1, 'Admin', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(2, 'Editor', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(3, 'Designer', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `cms_groups_seq`
--

CREATE TABLE IF NOT EXISTS `cms_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_groups_seq`
--

INSERT INTO `cms_groups_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_group_perms`
--

CREATE TABLE IF NOT EXISTS `cms_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_perm_id`),
  KEY `cms_index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_group_perms`
--

INSERT INTO `cms_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES
(176, 3, 30, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(177, 3, 25, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(178, 3, 4, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(179, 3, 31, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(180, 3, 26, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(181, 3, 22, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(182, 3, 11, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(183, 3, 32, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(184, 3, 27, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(185, 3, 24, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(186, 3, 16, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(187, 2, 44, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(188, 1, 50, '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
(189, 2, 50, '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
(190, 1, 55, '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
(191, 2, 55, '2013-07-14 08:21:27', '2013-07-14 08:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `cms_group_perms_seq`
--

CREATE TABLE IF NOT EXISTS `cms_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_group_perms_seq`
--

INSERT INTO `cms_group_perms_seq` (`id`) VALUES
(191);

-- --------------------------------------------------------

--
-- Table structure for table `cms_htmlblobs`
--

CREATE TABLE IF NOT EXISTS `cms_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) DEFAULT NULL,
  `html` text,
  `description` text,
  `use_wysiwyg` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`htmlblob_id`),
  KEY `cms_index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_htmlblobs`
--

INSERT INTO `cms_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `description`, `use_wysiwyg`, `owner`, `create_date`, `modified_date`) VALUES
(1, 'footer', '<p>© Copyright {custom_copyright} - The Barn at Dunvilla LLC</p>\r\n<p> Site Design by <a href="http://www.d2mconsulting.com">D2M Consulting LLC</a><br /><br /></p>', '', 1, 1, '2006-07-25 21:22:32', '2013-07-14 12:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `cms_htmlblobs_seq`
--

CREATE TABLE IF NOT EXISTS `cms_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_htmlblobs_seq`
--

INSERT INTO `cms_htmlblobs_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_modules`
--

CREATE TABLE IF NOT EXISTS `cms_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`module_name`),
  KEY `cms_index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_modules`
--

INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES
('CMSMailer', 'installed', '5.2.1', 0, 1, 1, 0),
('CMSPrinting', 'installed', '1.0.4', 0, 1, 0, 1),
('FileManager', 'installed', '1.4.3', 0, 1, 1, 0),
('MenuManager', 'installed', '1.8.5', 0, 1, 0, 0),
('MicroTiny', 'installed', '1.2.5', 0, 1, 1, 1),
('ModuleManager', 'installed', '1.5.5', 1, 1, 0, 1),
('News', 'installed', '2.12.12', 0, 1, 1, 1),
('Search', 'installed', '1.7.8', 0, 1, 1, 1),
('ThemeManager', 'installed', '1.1.8', 1, 1, 0, 1),
('FormBuilder', 'installed', '0.7.3', 0, 1, 0, 0),
('Album', 'installed', '1.10.3', 0, 1, 0, 0),
('Showtime', 'installed', '3.3', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_albums`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_albums` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(80) DEFAULT NULL,
  `album_number` int(11) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `comment` text,
  `template` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `cms_module_album_albums_index` (`album_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_albums`
--

INSERT INTO `cms_module_album_albums` (`album_id`, `album_name`, `album_number`, `thumbnail_path`, `comment`, `template`) VALUES
(1, 'slideshow1', 1, '/thumb_photo-loft01-lg.jpg', NULL, 'album_list');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_albums_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_albums_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_albums_seq`
--

INSERT INTO `cms_module_album_albums_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_categories`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(80) DEFAULT NULL,
  `category_number` int(11) DEFAULT NULL,
  `category_comment` text,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_categories_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_categories_seq`
--

INSERT INTO `cms_module_album_categories_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_category_listings`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_category_listings` (
  `listing_id` int(11) NOT NULL,
  `listing_album_id` int(11) DEFAULT NULL,
  `listing_category_id` int(11) DEFAULT NULL,
  `listing_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`listing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_category_listings_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_category_listings_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_category_listings_seq`
--

INSERT INTO `cms_module_album_category_listings_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_pictures`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_pictures` (
  `picture_id` int(11) NOT NULL,
  `picture_name` varchar(80) DEFAULT NULL,
  `picture_album_id` int(11) DEFAULT NULL,
  `picture_number` int(11) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL,
  `comment` text,
  `comment2` text,
  `comment3` text,
  `thumbnail_width` varchar(20) DEFAULT NULL,
  `thumbnail_height` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`picture_id`),
  KEY `cms_module_album_pictures_index` (`picture_album_id`,`picture_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_pictures`
--

INSERT INTO `cms_module_album_pictures` (`picture_id`, `picture_name`, `picture_album_id`, `picture_number`, `thumbnail_path`, `picture_path`, `comment`, `comment2`, `comment3`, `thumbnail_width`, `thumbnail_height`) VALUES
(1, '1-mendota-fireplace.jpg', 1, 1, '/thumb_1-mendota-fireplace.jpg', '/1-mendota-fireplace.jpg', NULL, NULL, NULL, '96', '78'),
(2, '1837171-large.jpg', 1, 2, '/thumb_1837171-large.jpg', '/1837171-large.jpg', NULL, NULL, NULL, '61', '96'),
(3, 'photo-loft01-lg.jpg', 1, 3, '/thumb_photo-loft01-lg.jpg', '/photo-loft01-lg.jpg', NULL, NULL, NULL, '96', '63');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_pictures_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_pictures_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_pictures_seq`
--

INSERT INTO `cms_module_album_pictures_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_templateextra`
--

CREATE TABLE IF NOT EXISTS `cms_module_album_templateextra` (
  `template_name` varchar(255) NOT NULL,
  `metadata` text,
  `info` text,
  PRIMARY KEY (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_templateextra`
--

INSERT INTO `cms_module_album_templateextra` (`template_name`, `metadata`, `info`) VALUES
('default', '<script type="text/javascript" src="modules/Album/templates/db/js/jquery.js"></script>\n<script type="text/javascript" src="modules/Album/templates/db/js/thickbox.js"></script>\n<link rel="stylesheet" type="text/css" href="modules/Album/templates/db/default/default.css" media="screen"/>', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_deps`
--

CREATE TABLE IF NOT EXISTS `cms_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_deps`
--

INSERT INTO `cms_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES
('FileManager', 'MicroTiny', '1.4.2', '2013-07-13 19:09:02', '2013-07-13 19:09:02'),
('CMSMailer', 'FormBuilder', '1.73', '2013-07-13 21:58:48', '2013-07-13 21:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_field`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_field` (
  `field_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `validation_type` varchar(50) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `hide_label` tinyint(4) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`field_id`),
  KEY `cms_module_fb_field_idx` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_field`
--

INSERT INTO `cms_module_fb_field` (`field_id`, `form_id`, `name`, `type`, `validation_type`, `required`, `hide_label`, `order_by`) VALUES
(1, 1, 'About You Fieldset', 'FieldsetStart', '', 0, 0, 1),
(2, 1, 'Your Name', 'FromEmailNameField', '', 1, 0, 2),
(3, 1, 'Your Email Address', 'DispositionFromEmailAddressField', 'none', 0, 0, 3),
(4, 1, 'Email Again', 'FromEmailAddressAgainField', '', 0, 0, 4),
(5, 1, 'About You Fieldset End', 'FieldsetEnd', '', 0, 0, 5),
(6, 1, 'breaker', 'PageBreakField', '', 0, 0, 6),
(7, 1, 'Contact Fieldset', 'FieldsetStart', '', 0, 0, 7),
(8, 1, 'Greeting', 'StaticTextField', '', 0, 0, 8),
(9, 1, 'Subject', 'FromEmailSubjectField', '', 0, 0, 9),
(10, 1, 'Message', 'TextAreaField', '', 1, 0, 10),
(11, 1, 'Send To', 'DispositionEmail', '', 0, 0, 11),
(12, 1, 'Contact Fieldset End', 'FieldsetEnd', '', 0, 0, 12),
(13, 2, 'Contact Fieldset', 'FieldsetStart', '', 0, 0, 1),
(14, 2, 'Your Name', 'FromEmailNameField', '', 0, 0, 2),
(15, 2, 'Your Email Address', 'DispositionFromEmailAddressField', 'none', 0, 0, 3),
(16, 2, 'Email Again', 'FromEmailAddressAgainField', '', 0, 0, 4),
(17, 2, 'Subject', 'FromEmailSubjectField', '', 0, 0, 5),
(18, 2, 'Message', 'TextAreaField', '', 1, 0, 6),
(19, 2, 'Send To', 'DispositionEmail', '', 0, 0, 7),
(20, 2, 'fieldset end', 'FieldsetEnd', '', 0, 0, 8),
(21, 3, 'Fieldset Start', 'FieldsetStart', '', 0, 0, 2),
(22, 3, 'Send It', 'DispositionEmail', '', 0, 0, 3),
(23, 3, 'Welcome!', 'StaticTextField', '', 0, 0, 4),
(24, 3, 'Modules you''ll be using together', 'CheckboxGroupField', '', 0, 0, 5),
(25, 3, 'What will you personally be doing on your CMS MS site?', 'CheckboxGroupField', '', 0, 0, 6),
(26, 3, 'Where are you from?', 'CountryPickerField', '', 0, 0, 7),
(27, 3, 'Do you have any comments / feedback for me?', 'TextAreaField', '', 0, 0, 8),
(28, 3, 'Fieldset End', 'FieldsetEnd', '', 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_field_opt`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_field_opt` (
  `option_id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`option_id`),
  KEY `cms_module_fb_field_opt_idx` (`field_id`,`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_field_opt`
--

INSERT INTO `cms_module_fb_field_opt` (`option_id`, `field_id`, `form_id`, `name`, `value`) VALUES
(1, 1, 1, 'legend', 'About You'),
(2, 1, 1, 'css_class', ''),
(3, 1, 1, 'field_alias', ''),
(4, 1, 1, 'helptext', ''),
(5, 1, 1, 'javascript', ''),
(6, 2, 1, 'css_class', ''),
(7, 2, 1, 'field_alias', 'users_name'),
(8, 2, 1, 'helptext', ''),
(9, 2, 1, 'javascript', ''),
(56, 3, 1, 'email_from_name', 'Form Builder'),
(57, 3, 1, 'send_user_copy', 'c'),
(58, 3, 1, 'send_user_label', 'Send me a copy of form'),
(59, 3, 1, 'field_alias', ''),
(60, 3, 1, 'javascript', ''),
(61, 3, 1, 'html_email', ''),
(62, 3, 1, 'email_template', 'FormBuilder Submission\nForm Name: {$sub_form_name}\nDate of Submission: {$sub_date}\nYour server: {$sub_host}\nIP address of person using form: {$sub_source_ip}\nURL of page containing form: {$sub_url}\nFormBuilder version: {$fb_version}\nTab Character: {$TAB}\n->\n-------------------------------------------------\nYour Name: {$fld_4}\nYour Email Address: {$fld_43}\nEmail Again: {$fld_42}\nSubject: {$fld_10}\nMessage: {$foo}\n'),
(55, 3, 1, 'email_subject', 'Email from Site'),
(19, 4, 1, 'field_to_validate', 'Your Email Address'),
(20, 4, 1, 'field_alias', ''),
(21, 4, 1, 'css_class', ''),
(22, 5, 1, 'field_alias', ''),
(23, 5, 1, 'css_class', ''),
(24, 5, 1, 'helptext', ''),
(25, 6, 1, 'field_alias', ''),
(26, 7, 1, 'legend', 'Contact'),
(27, 7, 1, 'field_alias', ''),
(28, 7, 1, 'css_class', ''),
(29, 7, 1, 'helptext', ''),
(30, 7, 1, 'javascript', ''),
(31, 8, 1, 'text', 'Hello, {$users_name->value}!<br /> What is it you''d like to talk to us about?'),
(32, 8, 1, 'field_alias', ''),
(33, 8, 1, 'css_class', ''),
(34, 8, 1, 'helptext', ''),
(35, 8, 1, 'javascript', ''),
(36, 8, 1, 'smarty_eval', '1'),
(37, 9, 1, 'css_class', ''),
(38, 10, 1, 'rows', '5'),
(39, 10, 1, 'cols', '60'),
(40, 10, 1, 'css_class', ''),
(41, 10, 1, 'field_alias', 'message'),
(42, 10, 1, 'default', 'Enter Your Message Here'),
(43, 10, 1, 'clear_default', '1'),
(65, 11, 1, 'email_from_name', 'Form Builder'),
(66, 11, 1, 'email_from_address', 'website@yourdomain.com'),
(67, 11, 1, 'destination_address', 'you@yourdomain.com'),
(68, 11, 1, 'field_alias', ''),
(69, 11, 1, 'html_email', '1'),
(70, 11, 1, 'email_template', '<h1>FormBuilder Submission</h1>\r\n<strong>Form Name</strong>: {$sub_form_name}<br />\r\n<strong>Date of Submission</strong>: {$sub_date}<br />\r\n<strong>Your server</strong>: {$sub_host}<br />\r\n<strong>IP address of person using form</strong>: {$sub_source_ip}<br />\r\n<strong>URL of page containing form</strong>: {$sub_url}<br />\r\n<strong>FormBuilder version</strong>: {$fb_version}<br />\r\n<strong>Tab Character</strong>: {$TAB}<br />\r\n\r\n<hr />\r\n{if $fld_2 != "" && $fld_2 != "[unspecified]" }<strong>Your Name</strong>: {$fld_2}<br />{/if}\r\n{if $fld_3 != "" && $fld_3 != "[unspecified]" }<strong>Your Email Address</strong>: {$fld_3}<br />{/if}\r\n{if $fld_4 != "" && $fld_4 != "[unspecified]" }<strong>Email Again</strong>: {$fld_4}<br />{/if}\r\n{if $fld_9 != "" && $fld_9 != "[unspecified]" }<strong>Subject</strong>: {$fld_9}<br />{/if}\r\n{if $message != "" && $message != "[unspecified]" }<strong>Message</strong>: {$message}<br />{/if}\r\n{if $fld_11 != "" && $fld_11 != "[unspecified]" }<strong>Send To</strong>: {$fld_11}<br />{/if}\r\n'),
(64, 11, 1, 'email_subject', 'Contact Form Submission'),
(52, 12, 1, 'field_alias', ''),
(53, 12, 1, 'css_class', ''),
(54, 12, 1, 'helptext', ''),
(63, 3, 1, 'email_encoding', 'utf-8'),
(71, 11, 1, 'email_encoding', 'utf-8'),
(72, 13, 2, 'legend', 'Contact'),
(73, 13, 2, 'css_class', ''),
(74, 14, 2, 'css_class', ''),
(105, 15, 2, 'email_from_name', 'Form Builder'),
(106, 15, 2, 'send_user_copy', 'c'),
(107, 15, 2, 'send_user_label', 'Send me a copy of form'),
(108, 15, 2, 'field_alias', ''),
(109, 15, 2, 'javascript', ''),
(110, 15, 2, 'html_email', ''),
(111, 15, 2, 'email_template', 'FormBuilder Submission\nForm Name: {$sub_form_name}\nDate of Submission: {$sub_date}\nYour server: {$sub_host}\nIP address of person using form: {$sub_source_ip}\nURL of page containing form: {$sub_url}\nFormBuilder version: {$fb_version}\nTab Character: {$TAB}\n->\n-------------------------------------------------\nYour Name: {$fld_14}\nYour Email Address: {$fld_15}\nEmail Again: {$fld_16}\nSubject: {$fld_17}\nMessage: {$foo}\n'),
(104, 15, 2, 'email_subject', 'Email from Site'),
(84, 16, 2, 'field_to_validate', 'Your Email Address'),
(85, 16, 2, 'field_alias', ''),
(86, 16, 2, 'css_class', ''),
(87, 17, 2, 'css_class', ''),
(88, 18, 2, 'rows', '5'),
(89, 18, 2, 'cols', '60'),
(90, 18, 2, 'css_class', ''),
(91, 18, 2, 'field_alias', 'message'),
(92, 18, 2, 'default', 'Enter Your Message Here'),
(93, 18, 2, 'clear_default', '1'),
(94, 19, 2, 'email_subject', 'Contact Form Submission'),
(95, 19, 2, 'email_from_name', 'Form Builder'),
(96, 19, 2, 'email_from_address', 'website@yourdomain.com'),
(97, 19, 2, 'destination_address', 'you@yourdomain.com'),
(98, 19, 2, 'field_alias', ''),
(99, 19, 2, 'html_email', '1'),
(100, 19, 2, 'email_template', ''),
(101, 19, 2, 'email_encoding', 'utf-8'),
(102, 20, 2, 'field_alias', ''),
(103, 20, 2, 'css_class', ''),
(112, 15, 2, 'email_encoding', 'utf-8'),
(113, 21, 3, 'legend', 'Help Improve Form Builder'),
(114, 21, 3, 'css_class', ''),
(188, 22, 3, 'email_from_name', 'Form Builder Installation'),
(189, 22, 3, 'email_from_address', 'you@yourhost.com'),
(190, 22, 3, 'destination_address', 'sjg@cmsmodules.com'),
(191, 22, 3, 'email_template', '<h1>Someone''s Testing a FormBuilder Submission!</h1>\n<strong>Form Name</strong>: {$sub_form_name}<br />\n<strong>Date of Submission</strong>: {$sub_date}<br />\n<strong>Your server</strong>: {$sub_host}<br />\n<strong>IP address of person using form</strong>: {$sub_source_ip}<br />\n<strong>URL of page containing form</strong>: {$sub_url}<br />\n\n<hr />\n<strong>Modules you''ll be using together</strong>: {$modules_you_ll_be_using}<br />\n<strong>What will you personally be doing on your CMS MS site?</strong>: {$what_will_you}<br />\n<strong>Where are you from?</strong>: {$where_are_you_from_}<br />\n<strong>Do you have any comments / feedback for me?</strong>: {$do_you_have_any}<br />\n'),
(187, 22, 3, 'email_subject', 'FormBuilder Sample Form Submission'),
(122, 23, 3, 'text', 'Thanks for trying out FormBuilder. You can use this form to provide me with feedback about how you will be using Form Builder, so I can best allocate resources for future development. Thanks, ___Samuel___'),
(123, 23, 3, 'css_class', 'message'),
(124, 23, 3, 'field_alias', ''),
(125, 24, 3, 'no_empty', ''),
(126, 24, 3, 'box_name', 'FormBuilder'),
(127, 24, 3, 'box_name', 'FormBrowser'),
(128, 24, 3, 'box_name', 'Front End Users'),
(129, 24, 3, 'box_name', 'Newsletter Made Simple (NMS)'),
(130, 24, 3, 'box_name', 'Cataloger'),
(131, 24, 3, 'box_name', 'Other(s)'),
(132, 24, 3, 'box_checked', 'FormBuilder'),
(133, 24, 3, 'box_checked', 'FormBrowser'),
(134, 24, 3, 'box_checked', 'FEU'),
(135, 24, 3, 'box_checked', 'NMS'),
(136, 24, 3, 'box_checked', 'Cataloger'),
(137, 24, 3, 'box_checked', 'Other(s)'),
(138, 24, 3, 'box_unchecked', '(not FormBuilder)'),
(139, 24, 3, 'box_unchecked', '(not FormBrowser)'),
(140, 24, 3, 'box_unchecked', '(not FEU)'),
(141, 24, 3, 'box_unchecked', '(not NMS)'),
(142, 24, 3, 'box_unchecked', '(not Cataloger)'),
(143, 24, 3, 'box_unchecked', '(no Others)'),
(144, 24, 3, 'box_is_set', 'y'),
(145, 24, 3, 'box_is_set', 'n'),
(146, 24, 3, 'box_is_set', 'n'),
(147, 24, 3, 'box_is_set', 'n'),
(148, 24, 3, 'box_is_set', 'n'),
(149, 24, 3, 'box_is_set', 'n'),
(150, 25, 3, 'no_empty', '1'),
(151, 25, 3, 'box_name', 'Graphical Design'),
(152, 25, 3, 'box_name', 'HTML and CSS'),
(153, 25, 3, 'box_name', 'Write / Maintain Content'),
(154, 25, 3, 'box_name', 'Edit Smarty Templates'),
(155, 25, 3, 'box_name', 'Write Modules'),
(156, 25, 3, 'box_name', 'Write Core CMS code'),
(157, 25, 3, 'box_name', 'Donate to Core/Module Developes'),
(158, 25, 3, 'box_checked', 'Graphical Design'),
(159, 25, 3, 'box_checked', 'HTML/CSS'),
(160, 25, 3, 'box_checked', 'Content'),
(161, 25, 3, 'box_checked', 'Smarty'),
(162, 25, 3, 'box_checked', 'Modules'),
(163, 25, 3, 'box_checked', 'Core'),
(164, 25, 3, 'box_checked', 'donate!'),
(165, 25, 3, 'box_unchecked', ''),
(166, 25, 3, 'box_unchecked', ''),
(167, 25, 3, 'box_unchecked', ''),
(168, 25, 3, 'box_unchecked', ''),
(169, 25, 3, 'box_unchecked', ''),
(170, 25, 3, 'box_unchecked', ''),
(171, 25, 3, 'box_unchecked', ''),
(172, 25, 3, 'box_is_set', 'n'),
(173, 25, 3, 'box_is_set', 'n'),
(174, 25, 3, 'box_is_set', 'n'),
(175, 25, 3, 'box_is_set', 'n'),
(176, 25, 3, 'box_is_set', 'n'),
(177, 25, 3, 'box_is_set', 'n'),
(178, 25, 3, 'box_is_set', 'n'),
(179, 25, 3, 'css_class', ''),
(180, 26, 3, 'default', ''),
(181, 26, 3, 'select_one', 'Select One'),
(182, 26, 3, 'css_class', ''),
(183, 27, 3, 'css_class', ''),
(184, 27, 3, 'rows', '10'),
(185, 27, 3, 'cols', '60'),
(186, 28, 3, 'css_class', ''),
(192, 22, 3, 'email_encoding', 'utf-8'),
(193, 22, 3, 'html_email', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_field_opt_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_field_opt_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_field_opt_seq`
--

INSERT INTO `cms_module_fb_field_opt_seq` (`id`) VALUES
(193);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_field_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_field_seq`
--

INSERT INTO `cms_module_fb_field_seq` (`id`) VALUES
(28);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_flock`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_flock` (
  `flock_id` int(11) NOT NULL,
  `flock` time DEFAULT NULL,
  PRIMARY KEY (`flock_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_form`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_form` (
  `form_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`form_id`),
  KEY `cms_module_fb_form_idx` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_form`
--

INSERT INTO `cms_module_fb_form` (`form_id`, `name`, `alias`) VALUES
(1, 'Advanced Contact Form', 'advanced_contact'),
(2, 'Contact Form', 'contact'),
(3, 'Sample Form', 'sample_form');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_formbrowser`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_formbrowser` (
  `fbr_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `index_key_1` varchar(80) DEFAULT NULL,
  `index_key_2` varchar(80) DEFAULT NULL,
  `index_key_3` varchar(80) DEFAULT NULL,
  `index_key_4` varchar(80) DEFAULT NULL,
  `index_key_5` varchar(80) DEFAULT NULL,
  `feuid` int(11) DEFAULT NULL,
  `response` longtext,
  `user_approved` datetime DEFAULT NULL,
  `secret_code` varchar(35) DEFAULT NULL,
  `admin_approved` datetime DEFAULT NULL,
  `submitted` datetime DEFAULT NULL,
  PRIMARY KEY (`fbr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_formbrowser_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_formbrowser_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_formbrowser_seq`
--

INSERT INTO `cms_module_fb_formbrowser_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_form_attr`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_form_attr` (
  `form_attr_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`form_attr_id`),
  KEY `cms_module_fb_form_attr_idx` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_form_attr`
--

INSERT INTO `cms_module_fb_form_attr` (`form_attr_id`, `form_id`, `name`, `value`) VALUES
(19, 1, 'submit_action', 'text'),
(20, 1, 'css_class', 'advancedcontactform'),
(21, 1, 'list_delimiter', ','),
(22, 1, 'inline', ''),
(23, 1, 'submit_javascript', ''),
(24, 1, 'next_button_text', 'Continue...'),
(25, 1, 'title_user_captcha', 'Please confirm that you are not a script by entering the letters from the image.'),
(26, 1, 'use_captcha', ''),
(27, 1, 'captcha_wrong', 'Captcha was not correct.'),
(28, 1, 'prev_button_text', 'Back...'),
(29, 1, 'required_field_symbol', '*'),
(30, 1, 'unspecified', '[unspecified]'),
(31, 1, 'submit_button_text', 'Submit Form'),
(32, 1, 'input_button_safety', ''),
(33, 1, 'redirect_page', '-1'),
(34, 1, 'submit_response', '<p>Thank you, <strong>{$your_name}</strong>.</p>\r\n<p>Your submission has been successful. You may wish to print this page as a reference.</p>\r\n<h3>Contact Details</h3>\r\n<p>\r\n<strong>Name</strong>: {$your_name}<br />\r\n<strong>Email</strong>: <a href="mailto:{$your_email_address}">{$your_email_address}</a><br />\r\n</p>\r\n<h3>Feedback Details</h3>\r\n<p>\r\n<strong>Subject</strong>: {$subject}<br />\r\n<strong>Comments</strong>:<br />\r\n{$message}\r\n</p> \r\n<h4>Other information</h4>\r\n<p>\r\n<strong>Date of Submission</strong>: {$sub_date}<br />\r\n<strong>Form Name</strong>: {$sub_form_name}<br />\r\n<strong>URL of page containing form</strong>: {$sub_url}<br />\r\n<strong>Domain</strong>: {$sub_host}<br />\r\n<strong>Your IP address</strong>: {$sub_source_ip}\r\n</p> '),
(35, 1, 'predisplay_udt', '-1'),
(36, 1, 'form_template', '{* DEFAULT FORM LAYOUT / pure CSS *}\r\n{$fb_form_header}\r\n{if $fb_form_done == 1}\r\n	{* This first section is for displaying submission errors *}\r\n	{if isset($fb_submission_error) && $fb_submission_error}\r\n		<div class="error_message">{$fb_submission_error}</div>\r\n		{if isset($fb_show_submission_errors) && $fb_show_submission_errors}\r\n			<div class="error">\r\n			<ul>\r\n			{foreach from=$fb_submission_error_list item=thisErr}\r\n				<li>{$thisErr}</li>\r\n			{/foreach}\r\n			</ul>\r\n		</div>\r\n		{/if}\r\n	{/if}\r\n{else}\r\n	{* this section is for displaying the form *}\r\n	{* we start with validation errors *}\r\n	{if isset($fb_form_has_validation_errors) && $fb_form_has_validation_errors}\r\n		<div class="error_message">\r\n		<ul>\r\n		{foreach from=$fb_form_validation_errors item=thisErr}\r\n			<li>{$thisErr}</li>\r\n		{/foreach}\r\n		</ul>\r\n		</div>\r\n	{/if}\r\n	{if isset($captcha_error) && $captcha_error}\r\n		<div class="error_message">{$captcha_error}</div>\r\n	{/if}\r\n\r\n	{* and now the form itself *}\r\n	{$fb_form_start}\r\n	<div>{$fb_hidden}</div>\r\n	<div{if $css_class != ''''} class="{$css_class}"{/if}>\r\n	{if $total_pages gt 1}<span>{$title_page_x_of_y}</span>{/if}\r\n	{foreach from=$fields item=entry}\r\n		{if $entry->display == 1}\r\n        	{strip}\r\n         	{if $entry->needs_div == 1}\r\n            	<div\r\n            	{if $entry->required == 1 || $entry->css_class != '''' || $entry->valid == 0} class="\r\n              		{if $entry->required == 1}required{/if}\r\n              		{if $entry->css_class != ''''} {$entry->css_class}{/if}\r\n                    {if $entry->valid == 0} fb_invalid{/if}\r\n              		"\r\n            	{/if}\r\n            	>\r\n         	{/if}\r\n         	{if $entry->hide_name == 0}\r\n            	<label{if $entry->multiple_parts != 1} for="{$entry->input_id}"{/if}>{$entry->name}\r\n            	{if $entry->required_symbol != ''''}\r\n               		{$entry->required_symbol}\r\n            	{/if}\r\n            	</label>\r\n         	{/if}\r\n         	{if $entry->multiple_parts == 1}\r\n            	{section name=numloop loop=$entry->input}\r\n               		{if $entry->label_parts == 1}\r\n               			<div>{$entry->input[numloop]->input}&nbsp;{$entry->input[numloop]->name}</div>\r\n               		{else}\r\n               			{$entry->input[numloop]->input}\r\n               		{/if}\r\n               		{if isset($entry->input[numloop]->op) && $entry->input[numloop]->op}{$entry->input[numloop]->op}{/if}\r\n            	{/section}\r\n         	{else}\r\n            	{if $entry->smarty_eval == ''1''}{eval var=$entry->input}{else}{$entry->input}{/if}\r\n         	{/if}\r\n         	{if $entry->valid == 0} &lt;--- {$entry->error}{/if}\r\n         	{if $entry->needs_div == 1}\r\n            	</div>\r\n         	{/if}\r\n         	{/strip}\r\n     	{/if}\r\n	{/foreach}\r\n	{if $has_captcha == 1}\r\n		<div class="captcha">{$graphic_captcha}{$title_captcha}<br />{$input_captcha}</div>\r\n	{/if}\r\n	<div class="submit">{$prev}{$submit}</div>\r\n	</div>\r\n	{$fb_form_end}\r\n{/if}\r\n{$fb_form_footer}'),
(55, 2, 'submit_action', 'text'),
(56, 2, 'css_class', 'contactform'),
(57, 2, 'list_delimiter', ','),
(58, 2, 'inline', ''),
(59, 2, 'submit_javascript', ''),
(60, 2, 'next_button_text', 'Continue...'),
(61, 2, 'title_user_captcha', 'Please confirm that you are not a script by entering the letters from the image.'),
(62, 2, 'use_captcha', ''),
(63, 2, 'captcha_wrong', 'Captcha was not correct.'),
(64, 2, 'prev_button_text', 'Back...'),
(65, 2, 'required_field_symbol', '*'),
(66, 2, 'unspecified', '[unspecified]'),
(67, 2, 'submit_button_text', 'Submit Form'),
(68, 2, 'input_button_safety', ''),
(69, 2, 'redirect_page', '-1'),
(70, 2, 'submit_response', '<p>Thank you, <strong>{$your_name}</strong>.</p>\n<p>Your submission has been successful. You may wish to print this page as a reference.</p>\n<h3>Contact Details</h3>\n<p>\n<strong>Name</strong>: {$your_name}<br />\n<strong>Email</strong>: <a href="mailto:{$your_email_address}">{$your_email_address}</a><br />\n</p>\n<h3>Feedback Details</h3>\n<p>\n<strong>Subject</strong>: {$subject}<br />\n<strong>Comments</strong>:<br />\n{$message}\n</p> \n<h4>Other information</h4>\n<p>\n<strong>Date of Submission</strong>: {$sub_date}<br />\n<strong>Form Name</strong>: {$sub_form_name}<br />\n<strong>URL of page containing form</strong>: {$sub_url}<br />\n<strong>Domain</strong>: {$sub_host}<br />\n<strong>Your IP address</strong>: {$sub_source_ip}\n</p> '),
(54, 2, 'form_template', '{* DEFAULT FORM LAYOUT / pure CSS *}\n{$fb_form_header}\n{if $fb_form_done == 1}\n	{* This first section is for displaying submission errors *}\n	{if isset($fb_submission_error) && $fb_submission_error}\n		<div class="error_message">{$fb_submission_error}</div>\n		{if isset($fb_show_submission_errors) && $fb_show_submission_errors}\n			<div class="error">\n			<ul>\n			{foreach from=$fb_submission_error_list item=thisErr}\n				<li>{$thisErr}</li>\n			{/foreach}\n			</ul>\n		</div>\n		{/if}\n	{/if}\n{else}\n	{* this section is for displaying the form *}\n	{* we start with validation errors *}\n	{if isset($fb_form_has_validation_errors) && $fb_form_has_validation_errors}\n		<div class="error_message">\n		<ul>\n		{foreach from=$fb_form_validation_errors item=thisErr}\n			<li>{$thisErr}</li>\n		{/foreach}\n		</ul>\n		</div>\n	{/if}\n	{if isset($captcha_error) && $captcha_error}\n		<div class="error_message">{$captcha_error}</div>\n	{/if}\n\n	{* and now the form itself *}\n	{$fb_form_start}\n	<div>{$fb_hidden}</div>\n	<div{if $css_class != ''''} class="{$css_class}"{/if}>\n	{if $total_pages gt 1}<span>{$title_page_x_of_y}</span>{/if}\n	{foreach from=$fields item=entry}\n		{if $entry->display == 1}\n        	{strip}\n         	{if $entry->needs_div == 1}\n            	<div\n            	{if $entry->required == 1 || $entry->css_class != '''' || $entry->valid == 0} class="\n              		{if $entry->required == 1}required{/if}\n              		{if $entry->css_class != ''''} {$entry->css_class}{/if}\n                    {if $entry->valid == 0} fb_invalid{/if}\n              		"\n            	{/if}\n            	>\n         	{/if}\n         	{if $entry->hide_name == 0}\n            	<label{if $entry->multiple_parts != 1} for="{$entry->input_id}"{/if}>{$entry->name}\n            	{if $entry->required_symbol != ''''}\n               		{$entry->required_symbol}\n            	{/if}\n            	</label>\n         	{/if}\n         	{if $entry->multiple_parts == 1}\n            	{section name=numloop loop=$entry->input}\n               		{if $entry->label_parts == 1}\n               			<div>{$entry->input[numloop]->input}&nbsp;{$entry->input[numloop]->name}</div>\n               		{else}\n               			{$entry->input[numloop]->input}\n               		{/if}\n               		{if isset($entry->input[numloop]->op) && $entry->input[numloop]->op}{$entry->input[numloop]->op}{/if}\n            	{/section}\n         	{else}\n            	{if $entry->smarty_eval == ''1''}{eval var=$entry->input}{else}{$entry->input}{/if}\n         	{/if}\n         	{if $entry->valid == 0} &lt;--- {$entry->error}{/if}\n         	{if $entry->needs_div == 1}\n            	</div>\n         	{/if}\n         	{/strip}\n     	{/if}\n	{/foreach}\n	{if $has_captcha == 1}\n		<div class="captcha">{$graphic_captcha}{$title_captcha}<br />{$input_captcha}</div>\n	{/if}\n	<div class="submit">{$prev}{$submit}</div>\n	</div>\n	{$fb_form_end}\n{/if}\n{$fb_form_footer}'),
(98, 3, 'title_position', 'left'),
(99, 3, 'list_delimiter', ' - '),
(100, 3, 'required_field_symbol', '*'),
(101, 3, 'unspecified', '[unspecified]'),
(102, 3, 'next_button_text', 'Continue...'),
(103, 3, 'submit_button_text', 'Send Feedback'),
(104, 3, 'form_displaytype', 'tab'),
(105, 3, 'redirect_page', '-1'),
(106, 3, 'css_class', 'formbuilderform'),
(107, 3, 'captcha_wrong', 'Captcha was not correct.'),
(108, 3, 'submit_response', '<h1>Thanks!</h1>\r\n\r\n<p>Your feedback helps me make this a better module.</p>\r\n\r\n<p>If you''d like to contribute to the future development of FormBuilder, you can make a donation below. I will be happy to give donors credit as a sponsor in the FormBuilder help. Every bit helps!</p>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post">\r\n<input type="hidden" name="cmd" value="_s-xclick">\r\n<input type="hidden" name="hosted_button_id" value="2057231">\r\n<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="">\r\n<img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">\r\n</form>\r\n'),
(90, 3, 'submit_action', 'text'),
(91, 3, 'input_button_safety', ''),
(92, 3, 'use_catcha', ''),
(93, 3, 'title_user_captcha', 'Please confirm that you are not a script by entering the letters from the image.'),
(94, 3, 'prev_button_text', 'Back...'),
(95, 3, 'inline', ''),
(96, 3, 'submit_javascript', ''),
(97, 3, 'form_template', '{* DEFAULT FORM LAYOUT / pure CSS *}\r\n{$fb_form_header}\r\n{if $fb_form_done == 1}\r\n	{* This first section is for displaying submission errors *}\r\n	{if $fb_submission_error}\r\n		<div class="error_message">{$fb_submission_error}</div>\r\n		{if $fb_show_submission_errors}\r\n			<div class="error">\r\n			<ul>\r\n			{foreach from=$fb_submission_error_list item=thisErr}\r\n				<li>{$thisErr}</li>\r\n			{/foreach}\r\n			</ul>\r\n		</div>\r\n		{/if}\r\n	{/if}\r\n{else}\r\n	{* this section is for displaying the form *}\r\n	{* we start with validation errors *}\r\n	{if $fb_form_has_validation_errors}\r\n		<div class="error_message">\r\n		<ul>\r\n		{foreach from=$fb_form_validation_errors item=thisErr}\r\n			<li>{$thisErr}</li>\r\n		{/foreach}\r\n		</ul>\r\n		</div>\r\n	{/if}\r\n	{if $captcha_error}\r\n		<div class="error_message">{$captcha_error}</div>\r\n	{/if}\r\n\r\n	{* and now the form itself *}\r\n	{$fb_form_start}\r\n	<div>{$fb_hidden}</div>\r\n	<div{if $css_class != ''''} class="{$css_class}"{/if}>\r\n	{if $total_pages gt 1}<span>{$title_page_x_of_y}</span>{/if}\r\n	{foreach from=$fields item=entry}\r\n		{if $entry->display == 1}\r\n        	{strip}\r\n         	{if $entry->needs_div == 1}\r\n            	<div\r\n            	{if $entry->required == 1 || $entry->css_class != ''''} class="\r\n              		{if $entry->required == 1}\r\n                		required\r\n              		{/if}\r\n              		{if $entry->required == 1 && $entry->css_class != ''''} {/if}\r\n              		{if $entry->css_class != ''''}\r\n                		{$entry->css_class}\r\n              		{/if}\r\n              		"\r\n            	{/if}\r\n            	>\r\n         	{/if}\r\n         	{if $entry->hide_name == 0}\r\n            	<label{if $entry->multiple_parts != 1} for="{$entry->input_id}"{/if}>{$entry->name}\r\n            	{if $entry->required_symbol != ''''}\r\n               		{$entry->required_symbol}\r\n            	{/if}\r\n            	</label>\r\n         	{/if}\r\n         	{if $entry->multiple_parts == 1}\r\n            	{section name=numloop loop=$entry->input}\r\n               		{if $entry->label_parts == 1}\r\n               			<div>{$entry->input[numloop]->input}&nbsp;{$entry->input[numloop]->name}</div>\r\n               		{else}\r\n               			{$entry->input[numloop]->input}\r\n               		{/if}\r\n               		{if $entry->input[numloop]->op}{$entry->input[numloop]->op}{/if}\r\n            	{/section}\r\n         	{else}\r\n            	{if $entry->smarty_eval == ''1''}{eval var=$entry->input}{else}{$entry->input}{/if}\r\n         	{/if}\r\n         	{if $entry->valid == 0} &lt;--- {$entry->error}{/if}\r\n         	{if $entry->needs_div == 1}\r\n            	</div>\r\n         	{/if}\r\n         	{/strip}\r\n     	{/if}\r\n	{/foreach}\r\n	{if $has_captcha == 1}\r\n		<div class="captcha">{$graphic_captcha}{$title_captcha}<br />{$input_captcha}</div>\r\n	{/if}\r\n	<div class="submit">{$prev}{$submit}</div>\r\n	</div>\r\n	{$fb_form_end}\r\n{/if}\r\n{$fb_form_footer}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_form_attr_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_form_attr_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_form_attr_seq`
--

INSERT INTO `cms_module_fb_form_attr_seq` (`id`) VALUES
(108);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_form_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_form_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_form_seq`
--

INSERT INTO `cms_module_fb_form_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_ip_log`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_ip_log` (
  `sent_id` int(11) NOT NULL,
  `src_ip` varchar(16) DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  PRIMARY KEY (`sent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_ip_log_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_ip_log_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_ip_log_seq`
--

INSERT INTO `cms_module_fb_ip_log_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_resp`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_resp` (
  `resp_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `feuser_id` int(11) DEFAULT NULL,
  `user_approved` datetime DEFAULT NULL,
  `secret_code` varchar(35) DEFAULT NULL,
  `admin_approved` datetime DEFAULT NULL,
  `submitted` datetime DEFAULT NULL,
  PRIMARY KEY (`resp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_resp_attr`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_resp_attr` (
  `resp_attr_id` int(11) NOT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`resp_attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_resp_attr_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_resp_attr_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_resp_attr_seq`
--

INSERT INTO `cms_module_fb_resp_attr_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_resp_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_resp_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_resp_seq`
--

INSERT INTO `cms_module_fb_resp_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_resp_val`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_resp_val` (
  `resp_val_id` int(11) NOT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`resp_val_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_resp_val_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_resp_val_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_resp_val_seq`
--

INSERT INTO `cms_module_fb_resp_val_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_fb_uniquefield_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_fb_uniquefield_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_fb_uniquefield_seq`
--

INSERT INTO `cms_module_fb_uniquefield_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news`
--

CREATE TABLE IF NOT EXISTS `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `cms_news_postdate` (`news_date`),
  KEY `cms_news_daterange` (`start_time`,`end_time`),
  KEY `cms_news_author` (`author_id`),
  KEY `cms_news_hier` (`news_category_id`),
  KEY `cms_news_url` (`news_url`),
  KEY `cms_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news`
--

INSERT INTO `cms_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`) VALUES
(1, 1, 'News Module Installed', 'The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.', '2013-07-13 19:09:04', NULL, NULL, NULL, 'published', NULL, '2013-07-13 19:09:04', '2013-07-13 19:09:04', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_categories`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `long_name` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_categories`
--

INSERT INTO `cms_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES
(1, 'General', -1, '00001', 'General', '2013-07-13 19:09:04', '2013-07-13 19:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_categories_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_categories_seq`
--

INSERT INTO `cms_module_news_categories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_fielddefs`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_fieldvals`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_seq`
--

INSERT INTO `cms_module_news_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_index`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `cms_index_search_count` (`count`),
  KEY `cms_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_search_index`
--

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES
(1, 'navigation', 1),
(1, 'news', 1),
(58, 'congue', 1),
(58, 'cras', 3),
(58, 'fusce', 1),
(58, 'tellus', 1),
(58, 'vestibulum', 2),
(58, 'subheading', 1),
(58, 'laoreet', 1),
(58, 'ultrices', 1),
(58, 'enim', 1),
(58, 'luctus', 1),
(58, 'lectus', 3),
(58, 'quisque', 1),
(58, 'consequat', 1),
(58, 'faucibus', 1),
(58, 'sapien', 1),
(58, 'facilisis', 1),
(58, 'purus', 1),
(58, 'erat', 4),
(58, 'phasellus', 2),
(58, 'quis', 3),
(58, 'non', 1),
(58, 'convallis', 1),
(58, 'dapibus', 2),
(58, 'posuere', 1),
(58, 'neque', 3),
(58, 'nunc', 2),
(58, 'nisl', 3),
(58, 'ullamcorper', 1),
(58, 'duis', 2),
(58, 'eros', 2),
(58, 'pharetra', 1),
(58, 'ligula', 4),
(58, 'pede', 3),
(58, 'maecenas', 1),
(58, 'massa', 1),
(58, 'varius', 1),
(58, 'vitae', 4),
(58, 'sagittis', 1),
(58, 'volutpat', 3),
(58, 'commodo', 2),
(58, 'orci', 1),
(58, 'sed', 3),
(58, 'mauris', 3),
(58, 'tempor', 1),
(58, 'tristique', 3),
(58, 'integer', 2),
(58, 'arcu', 2),
(58, 'pellentesque', 3),
(58, 'augue', 2),
(58, 'nibh', 2),
(58, 'condimentum', 2),
(58, 'urna', 2),
(58, 'iaculis', 2),
(58, 'sem', 2),
(58, 'justo', 3),
(58, 'pretium', 2),
(58, 'eget', 4),
(58, 'magna', 2),
(58, 'pulvinar', 1),
(58, 'donec', 4),
(58, 'potenti', 1),
(58, 'suspendisse', 4),
(58, 'nulla', 4),
(58, 'nec', 2),
(58, 'molestie', 2),
(58, 'vivamus', 1),
(58, 'sollicitudin', 1),
(58, 'ultricies', 1),
(58, 'leo', 3),
(58, 'elit', 3),
(58, 'adipiscing', 4),
(58, 'consectetuer', 5),
(58, 'amet', 3),
(58, 'sit', 3),
(58, 'dolor', 3),
(58, 'ipsum', 2),
(58, 'lorem', 5),
(58, 'text', 1),
(58, 'filler', 1),
(58, 'say', 1),
(58, 'lot', 1),
(58, 'whole', 1),
(58, 'isn''t', 1),
(58, 'across', 1),
(58, 'instead', 1),
(58, 'menu', 1),
(58, 'top', 2),
(58, 'one', 1),
(58, 'last', 1),
(58, 'basically', 1),
(58, 'column', 5),
(58, 'left', 5),
(58, 'cssmenu', 5),
(3, 'navigation', 1),
(3, 'news', 1),
(56, 'style', 5),
(56, 'simply', 1),
(56, 'inserted', 1),
(56, 'code', 1),
(56, 'horizontal', 2),
(56, 'vertical', 3),
(56, 'either', 1),
(56, 'can', 2),
(56, 'open', 1),
(56, 'fail', 1),
(56, 'second', 1),
(56, 'time', 1),
(56, 'types', 1),
(56, 'use', 1),
(56, 'let', 1),
(56, 'will', 2),
(56, 'ie6', 1),
(56, 'note', 1),
(56, 'explorer', 1),
(56, 'internet', 1),
(56, 'required', 1),
(56, 'javascript', 1),
(56, 'although', 1),
(56, 'css', 1),
(56, 'using', 2),
(56, 'menu', 3),
(56, 'drop', 1),
(56, 'holder', 1),
(56, 'place', 1),
(56, 'template', 4),
(56, 'comes', 1),
(56, 'area', 1),
(56, 'text', 1),
(56, 'sidebar', 1),
(56, 'page', 2),
(56, 'editing', 1),
(56, 'adding', 1),
(56, 'added', 1),
(56, 'sites', 1),
(56, 'web', 1),
(56, 'creating', 1),
(56, 'easily', 1),
(56, 'system', 1),
(56, 'management', 1),
(56, 'excellent', 1),
(56, 'simple', 1),
(56, 'made', 1),
(56, 'cms', 1),
(56, 'pages', 1),
(56, 'default', 2),
(56, 'one', 2),
(56, 'sentences', 1),
(56, 'smaller', 1),
(56, 'several', 1),
(56, 'divided', 1),
(56, 'should', 1),
(56, 'probably', 1),
(56, 'sentence', 3),
(56, 'long', 1),
(56, 'example', 1),
(56, 'goes', 2),
(56, 'content', 2),
(56, 'test', 2),
(56, 'just', 2),
(56, 'columns', 4),
(56, 'top', 4),
(56, 'cssmenu', 7),
(5, 'navigation', 1),
(5, 'news', 1),
(50, 'navigation', 1),
(50, 'kind', 1),
(50, 'used', 1),
(50, 'can', 1),
(50, 'module', 1),
(50, 'powerful', 1),
(50, 'page', 1),
(50, '&raquo', 1),
(50, 'works', 1),
(50, 'cmsms', 1),
(50, 'explained', 1),
(50, 'already', 1),
(50, 'manager', 5),
(50, 'menu', 5),
(51, 'scripts', 1),
(51, 'therefore', 1),
(51, 'cached', 1),
(51, 'get', 1),
(51, 'remember', 1),
(51, 'used', 1),
(51, 'feature', 1),
(51, 'powerful', 1),
(51, 'extensions', 1),
(51, 'user_agent', 1),
(51, 'edit', 1),
(51, 'works', 1),
(51, 'see', 1),
(51, 'source', 1),
(51, 'looking', 1),
(51, 'right', 2),
(51, 'output', 1),
(51, 'using', 1),
(51, 'you''re', 2),
(51, 'browser', 1),
(51, 'information', 1),
(51, 'agent', 1),
(51, 'current', 1),
(51, 'show', 1),
(51, 'will', 2),
(51, 'plugin', 1),
(51, 'line', 1),
(51, 'together', 1),
(51, 'put', 1),
(51, 'i''ve', 1),
(51, 'example', 1),
(51, 'page', 3),
(51, 'template', 1),
(51, 'insert', 1),
(51, '&raquo', 2),
(51, 'extension', 1),
(51, 'button', 1),
(51, 'add', 1),
(51, 'use', 1),
(51, 'panel', 2),
(51, 'admin', 3),
(51, 'inside', 1),
(51, 'code', 4),
(51, 'php', 2),
(51, 'write', 2),
(51, 'allows', 1),
(51, 'basically', 1),
(51, 'tag', 5),
(51, 'simple', 2),
(51, 'made', 1),
(51, 'cms', 1),
(51, 'features', 1),
(51, 'known', 1),
(51, 'little', 1),
(51, 'one', 2),
(51, 'tags', 8),
(51, 'defined', 9),
(51, 'user', 10),
(53, 'extensions', 1),
(53, 'navigate', 1),
(53, 'read', 2),
(53, 'conjunction', 1),
(53, 'used', 2),
(53, 'parameters', 1),
(53, 'number', 1),
(53, 'left', 1),
(53, 'sidebar', 1),
(53, 'use', 1),
(53, 'see', 1),
(53, 'also', 1),
(53, 'can', 3),
(53, 'template', 1),
(53, 'inserted', 2),
(53, 'page', 2),
(53, 'tag', 3),
(53, 'insert', 1),
(53, 'items', 1),
(53, 'list', 1),
(53, 'display', 1),
(53, 'module', 4),
(53, 'using', 1),
(53, 'accomplish', 1),
(53, 'way', 1),
(53, 'best', 1),
(53, 'simple', 1),
(53, 'made', 1),
(53, 'cms', 1),
(53, 'latest', 1),
(53, 'section', 1),
(53, 'sites', 1),
(53, 'web', 1),
(53, 'news', 8),
(54, 'first', 1),
(54, 'download', 1),
(54, 'made', 2),
(54, 'ready', 1),
(54, 'themes', 1),
(54, 'worry', 1),
(54, 'don''t', 1),
(54, 'level', 1),
(54, 'basic', 2),
(54, 'least', 1),
(54, 'familiar', 1),
(54, 'should', 1),
(54, 'want', 1),
(54, 'way', 1),
(54, 'look', 1),
(54, 'get', 1),
(54, 'css', 2),
(54, 'done', 1),
(54, 'styling', 1),
(54, 'attached', 1),
(54, 'sheets', 4),
(54, 'style', 4),
(54, 'one', 1),
(54, 'styled', 1),
(54, 'structure', 1),
(54, 'filled', 1),
(54, 'generated', 1),
(54, 'automatically', 1),
(54, 'site', 2),
(54, 'visiting', 1),
(54, 'user', 1),
(54, 'areas', 1),
(54, 'navigation', 1),
(54, 'placeholders', 2),
(54, 'skills', 1),
(54, 'web', 1),
(54, 'need', 1),
(54, 'doesn''t', 1),
(54, 'content', 3),
(54, 'editing', 1),
(54, 'person', 1),
(54, 'meaning', 1),
(54, 'uses', 1),
(54, 'every', 1),
(54, 'used', 1),
(54, 'whatever', 1),
(54, 'designer', 1),
(54, 'work', 1),
(54, 'page', 3),
(54, 'design', 2),
(54, 'layout', 2),
(54, 'html', 3),
(54, 'basically', 1),
(54, 'template', 7),
(54, 'stylesheets', 4),
(54, 'templates', 9),
(55, 'unordered', 1),
(55, 'just', 1),
(55, 'basically', 1),
(55, 'situations', 1),
(55, 'work', 1),
(55, 'should', 1),
(55, 'templates', 1),
(55, 'default', 1),
(55, 'however', 1),
(55, 'manager', 1),
(55, 'customizing', 1),
(55, 'dream', 1),
(55, 'kind', 1),
(55, 'create', 1),
(55, 'placed', 1),
(55, 'determines', 1),
(55, 'template', 2),
(55, 'parents', 1),
(55, 'turn', 1),
(55, 'children', 2),
(55, 'parent', 2),
(55, 'level', 1),
(55, 'top', 1),
(55, 'generations', 1),
(55, 'tree', 1),
(55, 'like', 1),
(55, 'levels', 1),
(55, 'several', 1),
(55, 'left', 1),
(55, 'see', 2),
(55, 'drives', 1),
(55, 'hierarchy', 1),
(55, 'simple', 1),
(55, 'made', 1),
(55, 'cms', 1),
(55, 'created', 1),
(55, 'automatically', 1),
(55, 'navigate', 1),
(55, 'user', 1),
(55, 'help', 1),
(55, 'links', 3),
(55, 'another', 1),
(55, 'within', 1),
(55, 'link', 1),
(55, 'also', 1),
(55, 'can', 6),
(55, 'menu', 9),
(55, 'accessed', 1),
(55, 'set', 2),
(55, 'think', 1),
(55, 'page', 8),
(55, '&raquo', 2),
(55, 'content', 3),
(55, 'admin', 3),
(55, 'seen', 1),
(55, 'site', 3),
(55, 'web', 4),
(55, 'structure', 2),
(55, 'determine', 1),
(55, 'navigation', 8),
(55, 'pages', 15),
(57, 'also', 1),
(57, 'course', 1),
(57, 'content', 1),
(57, 'side', 1),
(57, 'will', 2),
(57, 'change', 1),
(57, 'element', 1),
(57, 'div#sidebar', 1),
(57, 'property', 1),
(57, 'sheet', 1),
(57, 'style', 1),
(57, 'layout', 1),
(57, 'look', 1),
(57, 'instead', 2),
(57, 'right', 4),
(57, 'float', 3),
(57, 'easily', 1),
(57, 'can', 1),
(57, 'vertical', 1),
(57, 'called', 1),
(57, 'stylesheet', 1),
(57, 'styled', 1),
(57, 'using', 1),
(57, 'sidebar', 5),
(57, 'menu', 5),
(57, 'template', 2),
(57, 'column', 5),
(57, 'navigation', 6),
(57, 'simple', 6),
(57, 'left', 8),
(173, 'goes', 1),
(173, 'local', 1),
(173, 'interesting', 1),
(173, 'comments', 1),
(173, 'etc', 1),
(173, '1902', 1),
(173, 'blah', 2),
(173, 'original', 1),
(173, 'dunvilla', 3),
(173, 'history', 6),
(159, 'occasion', 1),
(159, 'setting', 1),
(157, 'right', 1),
(157, ' the', 1),
(157, '&amp', 1),
(157, 'south', 2),
(157, 'falls', 1),
(157, 'fergus', 1),
(157, 'will', 1),
(157, 'hardware', 3),
(157, 'lakeland', 3),
(157, 'onto', 1),
(157, 'miles', 6),
(157, 'approx', 3),
(157, 'continue', 4),
(157, 'ramp', 1),
(157, 'end', 1),
(157, 'left', 4),
(157, 'make', 2),
(157, 'barnsville', 1),
(157, '2nd', 1),
(157, 'exit', 3),
(157, 'east', 3),
(157, 'take', 2),
(157, 'west', 2),
(157, 'fargo', 1),
(157, 'lakes', 3),
(157, 'detroit', 3),
(157, 'rapids', 1),
(157, 'pelican', 1),
(157, 'intersection', 4),
(157, 'north', 5),
(157, 'just', 1),
(157, 'located', 3),
(157, 'dunvilla', 4),
(157, 'barn', 4),
(157, 'directions', 5),
(129, 'consulting', 1),
(129, 'd2m', 1),
(159, 'season', 1),
(159, 'four', 1),
(109, 'jpg', 1),
(109, 'loft01', 1),
(109, 'photo', 1),
(108, 'jpg', 1),
(108, 'large', 1),
(102, 'come', 1),
(102, 'meetings', 4),
(60, 'insert', 1),
(60, 'list', 1),
(60, 'left', 1),
(60, 'menu', 1),
(60, 'name', 1),
(60, 'module', 2),
(60, 'click', 1),
(60, 'used', 1),
(60, 'explain', 1),
(60, 'pages', 1),
(60, 'following', 1),
(60, 'simple', 1),
(60, 'made', 1),
(60, 'cms', 1),
(60, 'installation', 1),
(60, 'default', 1),
(60, 'come', 1),
(60, 'six', 1),
(60, 'modules', 5),
(62, 'parameters', 1),
(62, 'take', 1),
(62, 'also', 1),
(62, 'can', 1),
(62, 'like', 1),
(62, 'template', 1),
(62, 'put', 1),
(62, 'simply', 1),
(62, 'tag', 2),
(62, 'use', 1),
(62, 'one', 1),
(62, 'next', 1),
(62, 'defined', 1),
(62, 'user', 1),
(62, 'page', 2),
(62, 'following', 1),
(62, 'demonstrated', 1),
(62, 'described', 2),
(62, 'installation', 1),
(62, 'simple', 1),
(62, 'made', 1),
(62, 'cms', 1),
(62, 'default', 1),
(62, 'included', 1),
(62, 'custom', 1),
(62, 'number', 1),
(62, 'tags', 8),
(63, 'inclusion', 1),
(63, 'enable', 1),
(63, 'name', 1),
(63, 'footer', 3),
(63, 'simple', 2),
(63, 'cms', 3),
(63, 'number', 1),
(63, 'version', 2),
(63, 'current', 2),
(63, 'displays', 2),
(63, 'cms_module', 1),
(63, 'made', 3),
(63, 'though', 1),
(63, 'inserting', 1),
(63, 'wrapper', 1),
(63, 'default', 1),
(63, 'download', 1),
(63, 'module', 1),
(63, 'templates', 2),
(63, 'modules', 2),
(63, 'insert', 2),
(63, 'tag', 3),
(63, 'header', 1),
(63, 'find', 1),
(63, 'viewed', 1),
(63, 'currently', 1),
(63, 'home', 1),
(63, 'leading', 1),
(63, 'pages', 2),
(63, 'visited', 1),
(63, 'displaying', 1),
(63, 'technique', 1),
(63, 'navigational', 1),
(63, 'breadcrumbs', 1),
(63, 'bottom', 1),
(63, '^top', 1),
(63, 'example', 3),
(63, 'page', 9),
(63, 'anchor', 1),
(63, 'link', 2),
(63, 'creates', 1),
(63, 'display', 7),
(63, 'used', 18),
(63, 'syntax', 14),
(63, 'help', 1),
(63, 'see', 3),
(63, 'please', 1),
(63, 'else', 1),
(63, 'anything', 1),
(63, 'take', 1),
(63, 'can', 1),
(63, 'parameters', 1),
(63, 'questions', 1),
(63, 'demonstrated', 1),
(63, 'cmsms', 1),
(63, 'included', 1),
(63, 'plenty', 1),
(63, 'core', 5),
(63, 'tags', 7),
(64, 'options', 2),
(64, 'setting', 2),
(64, 'along', 2),
(64, 'destination', 2),
(64, 'another', 2),
(64, 'part', 1),
(64, 'also', 4),
(64, 'target', 3),
(64, 'occurs', 1),
(64, 'shows', 3),
(64, 'errors', 1),
(64, 'found', 1),
(64, '404', 2),
(64, 'set', 3),
(64, 'like', 4),
(64, 'sounds', 4),
(64, 'just', 5),
(64, 'works', 1),
(64, 'exactly', 1),
(64, 'see', 1),
(64, 'change', 1),
(64, 'login', 1),
(64, 'parent', 4),
(64, 'going', 3),
(64, 'title', 4),
(64, 'must', 1),
(64, 'create', 1),
(64, 'templates', 1),
(64, 'controlled', 1),
(64, 'pages', 3),
(64, 'layout', 1),
(64, 'would', 1),
(64, 'put', 2),
(64, 'reading', 1),
(64, 'normally', 1),
(64, 'regular', 2),
(64, 'simply', 1),
(64, 'separator', 3),
(64, 'header', 2),
(64, 'section', 3),
(64, 'internal', 4),
(64, 'link', 8),
(64, 'external', 4),
(64, 'error', 3),
(64, 'item', 1),
(64, 'menu', 7),
(64, 'type', 15),
(64, 'determine', 1),
(64, 'version', 1),
(64, 'main', 1),
(64, 'currently', 1),
(64, 'types', 4),
(64, 'tags', 1),
(64, '&raquo', 1),
(64, 'extensions', 1),
(64, 'panel', 1),
(64, 'admin', 2),
(64, 'cmsms', 1),
(64, 'help', 1),
(64, 'parameters', 1),
(64, 'read', 1),
(64, 'tag', 2),
(64, '=true', 1),
(64, 'oneline', 1),
(64, 'parameter', 1),
(64, 'using', 1),
(64, 'area', 1),
(64, 'full', 2),
(64, 'instead', 1),
(64, 'line', 1),
(64, 'block', 1),
(64, 'make', 1),
(64, 'uses', 2),
(64, 'edit', 1),
(64, 'text', 6),
(64, 'appear', 1),
(64, 'will', 3),
(64, 'blocks', 3),
(64, 'areas', 2),
(64, 'several', 1),
(64, 'one', 3),
(64, 'define', 1),
(64, 'can', 6),
(64, 'selected', 1),
(64, 'placeholders', 1),
(64, 'placed', 1),
(64, 'automatically', 1),
(64, 'add', 7),
(64, 'use', 4),
(64, 'template', 8),
(64, 'choose', 6),
(64, 'site', 1),
(64, 'mentioned', 1),
(64, 'already', 1),
(64, 'page', 26),
(64, 'information', 1),
(64, 'content', 26),
(66, 'page', 2),
(66, 'use', 1),
(66, 'select', 1),
(66, 'add', 1),
(66, 'css', 1),
(66, 'content', 3),
(66, 'stylesheets', 1),
(66, 'attach', 1),
(66, 'style', 2),
(66, 'layout', 2),
(66, 'template', 5),
(66, 'several', 1),
(66, 'one', 2),
(66, 'templates', 2),
(66, 'create', 4),
(66, 'design', 1),
(66, 'look', 1),
(66, 'structure', 1),
(66, 'want', 2),
(66, 'pages', 5),
(66, 'determine', 2),
(66, 'plan', 1),
(66, 'simple', 1),
(66, 'made', 1),
(66, 'cms', 1),
(66, 'website', 1),
(66, 'creating', 1),
(66, 'steps', 1),
(66, 'basic', 1),
(66, 'workflow', 4),
(67, 'database', 1),
(67, 'import', 1),
(67, 'clicking', 1),
(67, 'simple', 1),
(67, 'customizing', 1),
(67, 'console', 1),
(67, 'administration', 1),
(67, '&raquo', 1),
(67, 'layout', 3),
(67, 'click', 1),
(67, 'screen', 1),
(67, 'side', 1),
(67, 'right', 1),
(67, 'found', 2),
(67, 'help', 2),
(67, 'explanation', 1),
(67, 'see', 1),
(67, 'can', 4),
(67, 'behavior', 1),
(67, 'customize', 1),
(67, 'allow', 2),
(67, 'tag', 1),
(67, 'parameters', 2),
(67, 'attributes', 1),
(67, 'optional', 1),
(67, 'various', 1),
(67, 'accepts', 1),
(67, 'also', 1),
(67, 'css', 1),
(67, 'styled', 1),
(67, 'list', 2),
(67, 'unordered', 1),
(67, 'just', 1),
(67, 'basically', 1),
(67, 'enough', 1),
(67, 'users', 1),
(67, 'installation', 1),
(67, 'included', 1),
(67, 'templates', 2),
(67, 'sample', 1),
(67, 'default', 2),
(67, 'template', 5),
(67, 'using', 1),
(67, 'navigation', 2),
(67, 'builds', 1),
(67, 'hierarchy', 1),
(67, 'page', 1),
(67, 'reads', 1),
(67, 'module', 2),
(67, 'manager', 13),
(67, 'menu', 15),
(68, 'can', 1),
(68, 'converted', 1),
(68, 'already', 1),
(68, 'like', 1),
(68, 'many', 1),
(68, 'simple', 1),
(68, 'made', 1),
(68, 'cms', 1),
(68, 'used', 1),
(68, 'template', 1),
(68, 'kind', 1),
(68, 'convert', 1),
(68, 'easy', 1),
(68, 'users', 1),
(68, 'cmsms', 2),
(68, 'feel', 1),
(68, 'look', 1),
(68, 'share', 1),
(68, 'themes', 2),
(68, 'use', 2),
(68, 'images', 1),
(68, 'including', 1),
(68, 'stylesheets', 1),
(68, 'attached', 1),
(68, 'templates', 2),
(68, 'export', 1),
(68, 'import', 1),
(68, 'allows', 2),
(68, 'module', 1),
(68, 'manager', 6),
(68, 'theme', 6),
(69, 'familiar', 1),
(69, 'environments', 1),
(69, 'kinds', 1),
(69, 'different', 1),
(69, 'online', 1),
(69, 'browser', 1),
(69, 'cross', 1),
(69, 'create', 1),
(69, 'difficult', 1),
(69, 'however', 1),
(69, 'features', 1),
(69, 'customizable', 1),
(69, 'following', 1),
(69, 'large', 1),
(69, 'updates', 1),
(69, 'regular', 1),
(69, 'developed', 1),
(69, 'tinymce', 2),
(69, 'version', 1),
(69, 'stripped', 1),
(69, 'use', 1),
(69, 'decided', 1),
(69, 'simple', 1),
(69, 'made', 1),
(69, 'cms', 1),
(69, 'editors', 2),
(69, 'available', 2),
(69, 'among', 2),
(69, 'page', 2),
(69, 'look', 1),
(69, 'going', 1),
(69, 'content', 1),
(69, 'style', 1),
(69, 'select', 2),
(69, 'can', 2),
(69, 'processor', 1),
(69, 'word', 1),
(69, 'similar', 1),
(69, 'works', 2),
(69, 'get', 1),
(69, 'see', 2),
(69, 'stands', 1),
(69, 'pages', 1),
(69, 'editing', 1),
(69, 'editor', 3),
(69, 'wysiwyg', 6),
(69, 'called', 1),
(69, 'microtiny', 6),
(70, 'resultpage', 1),
(70, 'parameter', 1),
(70, 'specify', 1),
(70, 'different', 1),
(70, 'appear', 2),
(70, 'form', 1),
(70, 'want', 2),
(70, 'template', 1),
(70, 'simply', 1),
(70, 'page', 2),
(70, 'like', 1),
(70, 'templates', 1),
(70, 'default', 1),
(70, 'use', 1),
(70, 'see', 2),
(70, 'can', 2),
(70, 'results', 2),
(70, 'relevant', 1),
(70, 'matching', 1),
(70, 'back', 1),
(70, 'gives', 1),
(70, 'two', 1),
(70, 'word', 1),
(70, 'put', 2),
(70, 'modules', 1),
(70, 'registered', 1),
(70, 'certain', 1),
(70, 'along', 1),
(70, 'content', 1),
(70, 'core', 1),
(70, 'searching', 1),
(70, 'module', 3),
(70, 'search', 9),
(72, 'tags', 1),
(72, 'modules', 2),
(72, 'specify', 1),
(72, 'allow', 1),
(72, 'admin', 1),
(72, 'pages', 1),
(72, 'selfreg', 1),
(72, 'still', 1),
(72, 'configured', 1),
(72, 'users', 1),
(72, 'frontend', 1),
(72, 'uploads', 1),
(72, 'moment', 2),
(72, 'there''s', 1),
(72, 'etc', 6),
(72, 'editpage', 1),
(72, 'fileuploaded', 1),
(72, 'newfronteenduser', 1),
(72, 'newnews', 1),
(72, 'register', 1),
(72, 'can', 1),
(72, 'core', 2),
(72, 'module', 2),
(72, 'works', 1),
(72, 'here''s', 1),
(72, 'brief', 1),
(72, 'happens', 1),
(72, 'executed', 1),
(72, 'code', 1),
(72, 'add', 1),
(72, 'could', 1),
(72, 'user', 2),
(72, 'another', 1),
(72, 'created', 1),
(72, 'page', 1),
(72, 'uploaded', 1),
(72, 'file', 1),
(72, 'administrator', 1),
(72, 'site', 1),
(72, 'email', 1),
(72, 'send', 4),
(72, 'like', 1),
(72, 'would', 1),
(72, 'example', 1),
(72, 'actions', 1),
(72, 'assigning', 1),
(72, 'way', 1),
(72, 'powerful', 1),
(72, 'new', 3),
(72, 'events', 7),
(72, 'manager', 4),
(72, 'event', 8),
(73, 'written', 1),
(73, 'programming', 1),
(73, 'application', 1),
(73, 'api', 1),
(73, 'well', 1),
(73, 'extremely', 1),
(73, 'settings', 1),
(73, 'data', 1),
(73, 'manipulating', 1),
(73, 'interface', 2),
(73, 'administrative', 1),
(73, 'additionally', 1),
(73, 'forms', 1),
(73, 'reports', 1),
(73, 'numerous', 1),
(73, 'may', 2),
(73, 'ways', 1),
(73, 'database', 1),
(73, 'interacts', 1),
(73, 'usually', 1),
(73, 'advanced', 1),
(73, 'provides', 1),
(73, 'module', 5),
(73, 'cmsms', 2),
(73, 'within', 2),
(73, 'complex', 3),
(73, 'implement', 1),
(73, 'allow', 3),
(73, 'environment', 1),
(73, 'plugin', 1),
(73, 'level', 1),
(73, 'highest', 1),
(73, 'tasks', 2),
(73, 'another', 1),
(73, 'need', 1),
(73, 'won''t', 1),
(73, 'likely', 1),
(73, 'special', 1),
(73, 'utility', 1),
(73, 'provide', 2),
(73, 'typically', 3),
(73, 'like', 1),
(73, 'inserted', 1),
(73, 'site', 2),
(73, 'pieces', 1),
(73, 'usable', 1),
(73, 'ability', 1),
(73, 'providing', 1),
(73, 'surrounding', 1),
(73, '&gt', 1),
(73, '&lt', 1),
(73, 'without', 1),
(73, 'code', 1),
(73, 'snippets', 1),
(73, 'pages', 2),
(73, 'templates', 2),
(73, 'also', 2),
(73, 'users', 2),
(73, 'share', 1),
(73, 'create', 2),
(73, 'easy', 1),
(73, 'will', 1),
(73, 'experience', 1),
(73, 'php', 4),
(73, 'bit', 1),
(73, 'developers', 3),
(73, 'website', 5),
(73, 'etc', 1),
(73, 'breadcrumbs', 1),
(73, 'navigation', 1),
(73, 'content', 1),
(73, 'placeholders', 2),
(73, 'used', 3),
(73, 'smarty', 1),
(73, 'type', 1),
(73, 'simply', 1),
(73, 'page', 2),
(73, 'template', 3),
(73, 'insert', 3),
(73, 'panel', 1),
(73, 'admin', 1),
(73, '&raquo', 1),
(73, 'look', 1),
(73, 'kind', 1),
(73, 'find', 2),
(73, 'available', 3),
(73, 'custom', 2),
(73, 'number', 1),
(73, 'task', 1),
(73, 'specific', 1),
(73, 'small', 2),
(73, 'one', 1),
(73, 'just', 2),
(73, 'accomplish', 1),
(73, 'designed', 2),
(73, 'form', 2),
(73, 'simplest', 1),
(73, 'modules', 7),
(73, 'defined', 6),
(73, 'user', 5),
(73, 'tags', 15),
(73, 'called', 2),
(73, 'install', 1),
(73, 'simple', 6),
(73, 'made', 5),
(73, 'cms', 5),
(73, 'default', 3),
(73, 'functionality', 3),
(73, 'many', 2),
(73, 'add', 2),
(73, 'can', 3),
(73, 'kinds', 2),
(73, 'three', 1),
(73, 'extensions', 8),
(74, 'patient', 1),
(74, 'available', 1),
(74, 'might', 1),
(74, 'duties', 1),
(74, 'jobs', 1),
(74, 'day', 1),
(74, 'cmsms', 1),
(74, 'supporting', 1),
(74, 'developing', 1),
(74, 'involved', 2),
(74, 'people', 1),
(74, 'remember', 1),
(74, 'please', 1),
(74, 'give', 1),
(74, 'discuss', 1),
(74, 'ready', 1),
(74, 'others', 1),
(74, 'hang', 1),
(74, 'developers', 1),
(74, 'many', 1),
(74, 'like', 1),
(74, 'chat', 2),
(74, 'relay', 1),
(74, 'internet', 1),
(74, 'short', 1),
(74, 'irc', 1),
(74, 'anything', 1),
(74, 'just', 1),
(74, 'ask', 1),
(74, 'questions', 1),
(74, 'answers', 2),
(74, 'search', 1),
(74, 'edit', 1),
(74, 'add', 1),
(74, 'can', 3),
(74, 'forums', 1),
(74, 'registered', 1),
(74, 'anyone', 1),
(74, 'effort', 1),
(74, 'documentation', 1),
(74, 'start', 1),
(74, 'support', 2),
(74, 'information', 1),
(74, 'find', 1),
(74, 'site', 1),
(74, 'need', 1),
(74, 'service', 1),
(74, 'always', 1),
(74, 'community', 3),
(74, 'simple', 2),
(74, 'made', 2),
(74, 'cms', 2),
(74, 'help', 5),
(74, 'get', 6),
(75, 'three', 1),
(75, 'last', 1),
(75, 'display', 1),
(75, 'news', 7),
(75, 'omit', 1),
(75, 'directly', 1),
(75, 'database', 1),
(75, 'import', 1),
(75, 'easily', 1),
(75, 'extension', 2),
(75, 'tpl', 2),
(75, 'see', 1),
(75, 'that''s', 2),
(75, 'files', 1),
(75, 'stored', 1),
(75, 'menus', 1),
(75, 'manager', 3),
(75, 'actually', 1),
(75, 'appear', 2),
(75, 'want', 1),
(75, 'menu', 6),
(75, 'navigation', 1),
(75, 'entries', 1),
(75, 'separates', 1),
(75, 'select', 1),
(75, 'delimiter', 2),
(75, 'even', 1),
(75, 'root', 1),
(75, 'always', 1),
(75, 'home', 1),
(75, 'force', 1),
(75, 'here', 1),
(75, 'you', 1),
(75, 'chosen', 2),
(75, 'current', 1),
(75, 'path', 4),
(75, 'breadcrumbs', 2),
(75, 'modules', 3),
(75, 'module', 5),
(75, 'remember', 1),
(75, 'easier', 2),
(75, 'it''s', 2),
(75, 'wrapper', 3),
(75, 'matters', 1),
(75, 'simplify', 1),
(75, 'simply', 2),
(75, 'form', 1),
(75, 'variable', 1),
(75, '$sitename', 1),
(75, 'text', 4),
(75, 'get', 1),
(75, 'parameter', 8),
(75, '="start', 1),
(75, 'dir', 2),
(75, 'selected', 1),
(75, 'link', 4),
(75, 'h1&gt', 1),
(75, 'image', 1),
(75, 'logo', 1),
(75, 'header', 2),
(75, 'visual', 1),
(75, 'hidden', 2),
(75, 'readers', 1),
(75, 'screen', 1),
(75, 'visible', 1),
(75, 'inserted', 1),
(75, 'anchor', 2),
(75, 'skip', 2),
(75, 'beginning', 1),
(75, 'browsers', 2),
(75, 'set', 4),
(75, 'browser', 1),
(75, 'understand', 1),
(75, 'doesn''t', 1),
(75, 'fluid', 1),
(75, 'javascript', 2),
(75, 'insert', 4),
(75, 'displays', 1),
(75, 'really', 1),
(75, 'isn''t', 2),
(75, '[endif', 1),
(75, 'style&gt', 1),
(75, '#container', 1),
(75, '#pagewrapper', 1),
(75, 'css"&gt', 1),
(75, ']&gt', 1),
(75, 'lte', 1),
(75, '[if', 1),
(75, 'script&gt', 1),
(75, '&gt', 2),
(75, 'return', 1),
(75, 'w&gt', 1),
(75, 'clientwidth', 1),
(75, 'documentelement', 1),
(75, '=document', 1),
(75, '="auto', 1),
(75, 'var', 1),
(75, 'p7_minmaxw', 1),
(75, 'function', 1),
(75, 'window', 2),
(75, 'measured', 1),
(75, 'max', 3),
(75, 'min', 3),
(75, 'pass', 1),
(75, 'javascript"&gt', 1),
(75, '="text', 2),
(75, 'type', 2),
(75, 'script', 2),
(75, 'explorer', 2),
(75, 'internet', 2),
(75, 'width', 7),
(75, 'optmization', 1),
(75, 'engine', 1),
(75, 'search', 4),
(75, 'accessibility', 2),
(75, 'good', 1),
(75, 'pages', 4),
(75, 'interconnections', 1),
(75, 'relational', 2),
(75, 'cached', 1),
(75, 'images', 1),
(75, 'front', 1),
(75, 'put', 6),
(75, '[root_url', 1),
(75, 'requires', 1),
(75, 'layout', 2),
(75, 'througout', 1),
(75, 'change', 2),
(75, 'one', 1),
(75, 'color', 1),
(75, 'indicate', 1),
(75, '$red', 1),
(75, 'like', 3),
(75, 'variables', 1),
(75, 'smarty', 1),
(75, 'allows', 1),
(75, 'new', 2),
(75, 'version', 1),
(75, 'newer', 1),
(75, 'automatically', 2),
(75, 'linked', 2),
(75, 'will', 6),
(75, 'means', 3),
(75, 'attached', 4),
(75, 'css', 4),
(75, 'sheets', 5),
(75, 'style', 6),
(75, 'links', 11),
(75, 'deprecated', 1),
(75, 'stylesheets', 3),
(75, 'use', 5),
(75, 'remove', 1),
(75, 'don''t', 1),
(75, 'urls', 2),
(75, 'pretty', 2),
(75, 'folder', 1),
(75, 'base', 1),
(75, 'knowing', 1),
(75, 'editing', 1),
(75, 'adding', 1),
(75, 'tab', 1),
(75, 'options', 1),
(75, 'also', 4),
(75, 'specified', 1),
(75, 'adds', 1),
(75, 'tag', 34),
(75, 'metadata', 3),
(75, 'panel', 16),
(75, 'extensions', 14),
(75, 'edit', 2),
(75, 'add', 4),
(75, 'settings', 2),
(75, 'global', 6),
(75, '&raquo', 16),
(75, 'admin', 18),
(75, 'specify', 2),
(75, 'name', 3),
(75, 'site', 6),
(75, 'replaced', 1),
(75, 'template', 9),
(75, 'using', 3),
(75, 'title&gt', 2),
(75, '&lt', 12),
(75, 'title', 3),
(75, 'page', 24),
(75, 'read', 16),
(75, 'can', 5),
(75, 'html', 2),
(75, 'pure', 1),
(75, 'just', 2),
(75, 'rest', 1),
(75, 'simple', 1),
(75, 'made', 1),
(75, 'cms', 1),
(75, 'specific', 2),
(75, 'default', 8),
(75, 'used', 7),
(75, 'explain', 1),
(75, 'templates', 15),
(75, 'tags', 20),
(75, 'cmsms', 5),
(76, 'admin', 2),
(76, 'directly', 1),
(76, 'download', 1),
(76, 'can', 2),
(76, 'means', 1),
(76, 'short', 1),
(76, 'versions', 1),
(76, 'newer', 1),
(76, 'shows', 1),
(76, 'tab', 1),
(76, 'new', 1),
(76, 'also', 1),
(76, 'met', 1),
(76, 'wont', 1),
(76, 'set', 1),
(76, 'dependencies', 3),
(76, 'checks', 1),
(76, 'now', 1),
(76, 'modulemanager', 1),
(76, 'automatically', 1),
(76, 'expanded', 1),
(76, 'verified', 1),
(76, 'integrity', 1),
(76, 'soap', 1),
(76, 'using', 1),
(76, 'downloaded', 2),
(76, 'files', 1),
(76, 'xml', 2),
(76, 'archives', 1),
(76, 'unzipping', 1),
(76, 'ftp''ing', 1),
(76, 'need', 1),
(76, 'without', 1),
(76, 'sites', 1),
(76, 'remote', 1),
(76, 'install', 3),
(76, 'letting', 1),
(76, 'help', 1),
(76, 'read', 1),
(76, 'installed', 3),
(76, 'already', 1),
(76, 'whether', 1),
(76, 'action', 1),
(76, 'status', 1),
(76, 'size', 1),
(76, 'number', 1),
(76, 'version', 1),
(76, 'available', 2),
(76, 'modules', 5),
(76, 'see', 2),
(76, 'allows', 1),
(76, 'modulerepository', 1),
(76, 'client', 1),
(76, 'manager', 5),
(76, 'module', 10),
(80, 'except', 1),
(80, 'respectively', 1),
(80, 'column', 1),
(80, 'columns', 1),
(80, 'cssmenu', 2),
(80, 'layout', 1),
(80, 'left', 2),
(80, 'right', 1),
(80, 'sub', 2),
(80, 'top', 2),
(80, 'point', 1),
(80, 'will', 1),
(80, 'step', 1),
(80, 'first', 1),
(80, 'shadowed', 1),
(80, 'version', 1),
(80, 'another', 1),
(80, 'submenus', 1),
(80, 'next', 1),
(80, 'nuno', 1),
(80, 'thanks', 1),
(80, 'say', 1),
(80, 'theme', 1),
(80, 'cool', 1),
(80, 'way', 1),
(80, 'search', 1),
(80, 'scheme', 1),
(80, 'color', 1),
(80, 'great', 2),
(80, 'footer', 1),
(80, 'header', 1),
(80, 'effect', 1),
(80, 'drop', 2),
(80, 'real', 2),
(80, 'goes', 1),
(80, 'tabbed', 1),
(80, 'subtle', 1),
(80, 'really', 1),
(80, 'get', 2),
(80, 'ncleanblue', 1),
(80, 'starting', 1),
(80, 'differences', 1),
(80, 'can', 2),
(80, 'upgrade', 1),
(80, 'just', 2),
(80, 'grant', 1),
(80, 'nice', 4),
(80, 'still', 1),
(80, 'it''s', 3),
(80, 'mean', 1),
(80, 'browser', 2),
(80, 'compliant', 1),
(80, 'standards', 1),
(80, 'using', 1),
(80, 'shadow', 1),
(80, 'effects', 1),
(80, 'best', 2),
(80, 'see', 2),
(80, 'won''t', 1),
(80, 'ie6', 1),
(80, 'forewarned', 1),
(80, 'css', 2),
(80, 'power', 1),
(80, 'shows', 1),
(80, 'template', 2),
(80, 'menu', 4),
(80, 'use', 2),
(80, 'menus', 3),
(80, 'especially', 1),
(80, 'templates', 1),
(80, 'complex', 1),
(80, 'end', 4),
(80, 'higher', 4),
(71, 'manager', 1),
(71, 'navigation', 2),
(71, 'using', 1),
(71, 'page', 1),
(71, 'menu', 4),
(71, 'right', 1),
(71, 'content', 1),
(71, 'floating', 1),
(71, 'used', 2),
(71, 'styling', 1),
(71, 'inline', 1),
(71, 'appealing', 1),
(71, 'slightly', 1),
(71, 'make', 1),
(71, 'however', 1),
(71, 'nice', 1),
(71, 'look', 1),
(71, 'doesn''t', 1),
(71, 'attached', 1),
(71, 'stylesheet', 1),
(71, 'cmsms', 1),
(71, 'needs', 1),
(71, 'example', 1),
(71, 'template', 9),
(71, 'minimal', 6),
(32, '&nbsp', 6),
(32, 'navigation', 1),
(32, 'news', 1),
(108, '1837171', 1),
(103, 'contact', 4),
(95, 'come', 1),
(95, 'patio', 4),
(95, 'deck', 4),
(143, 'come', 1),
(143, 'amenities', 4),
(141, 'come', 1),
(141, 'space', 4),
(93, 'come', 1),
(93, 'loft', 4),
(93, 'barn', 4),
(92, 'come', 1),
(92, 'fireplace', 2),
(92, 'lounge', 4),
(92, 'hearth', 2),
(92, 'stone', 2),
(107, 'jpg', 1),
(107, 'fireplace', 1),
(107, 'mendota', 1),
(111, 'slideshow1', 1),
(115, 'mainbannershow', 1),
(159, 'ideal', 1),
(159, 'provides', 1),
(159, 'farmland', 1),
(159, 'sprawling', 1),
(159, 'lizzie', 1),
(159, 'lake', 1),
(159, 'views', 1),
(159, 'breathtaking', 1),
(159, 'deck', 1),
(159, 'patio', 1),
(159, 'outdoor', 1),
(159, 'dancing', 1),
(159, 'dining', 1),
(159, 'areas', 1),
(159, 'separate', 1),
(159, 'people', 1),
(159, '250', 1),
(159, 'accomodate', 1),
(159, 'space', 1),
(79, 'adipiscing', 1),
(79, 'tempor', 1),
(79, 'nullam', 1),
(79, 'neque', 1),
(79, 'dictum', 2),
(79, 'euismod', 2),
(79, 'amet', 1),
(79, 'sit', 1),
(79, 'varius', 1),
(79, 'justo', 1),
(79, 'eros', 1),
(79, 'nam', 2),
(79, 'urna', 1),
(79, 'morbi', 1),
(79, 'ipsum', 1),
(79, 'elementum', 1),
(79, 'suscipit', 1),
(79, 'aliquam', 2),
(79, 'facilisi', 1),
(79, 'nulla', 2),
(79, 'sem', 1),
(79, 'pede', 1),
(79, 'augue', 2),
(79, 'volutpat', 1),
(79, 'dui', 1),
(79, 'iaculis', 1),
(79, 'purus', 2),
(79, 'sapien', 1),
(79, 'feugiat', 1),
(79, 'auctor', 1),
(79, 'odio', 2),
(79, 'facilisis', 1),
(79, 'proin', 1),
(79, 'orci', 1),
(79, 'lectus', 1),
(79, 'est', 1),
(79, 'accumsan', 2),
(79, 'wisi', 1),
(79, 'imperdiet', 1),
(79, 'leo', 1),
(79, 'nibh', 1),
(79, 'luctus', 2),
(79, 'eleifend', 1),
(79, 'nec', 4),
(79, 'tortor', 1),
(79, 'tristique', 1),
(79, 'maecenas', 1),
(79, 'text', 1),
(79, 'filler', 1),
(79, 'hold', 1),
(79, 'used', 1),
(79, 'li&gt', 1),
(79, 'nbsp', 1),
(79, '&amp', 1),
(79, '&gt', 1),
(79, 'none', 1),
(79, 'type', 1),
(79, '="list', 1),
(79, 'once', 1),
(79, '="separator', 1),
(79, 'class', 1),
(79, '&lt', 2),
(79, 'child', 1),
(79, 'bottom', 2),
(79, 'extra', 1),
(79, 'top', 1),
(79, 'going', 1),
(79, 'second', 1),
(79, 'image', 2),
(79, 'pages', 2),
(79, 'children', 1),
(79, 'drop', 1),
(79, 'style', 3),
(79, 'can', 1),
(79, 'template', 1),
(79, 'menu', 1),
(79, 'new', 1),
(79, 'using', 2),
(79, 'one', 1),
(79, 'designs', 1),
(79, 'looking', 1),
(79, 'great', 1),
(79, 'another', 1),
(79, 'supplied', 1),
(79, 'graciously', 1),
(79, 'nuno', 1),
(79, 'ncleanblue', 4),
(35, 'navigation', 1),
(35, 'news', 1),
(78, 'ipsum', 1),
(78, 'elementum', 1),
(78, 'suscipit', 1),
(78, 'facilisi', 1),
(78, 'pede', 1),
(78, 'iaculis', 1),
(78, 'sapien', 1),
(78, 'feugiat', 1),
(78, 'auctor', 1),
(78, 'odio', 2),
(78, 'proin', 1),
(78, 'orci', 1),
(78, 'est', 1),
(78, 'accumsan', 2),
(78, 'wisi', 1),
(78, 'imperdiet', 1),
(78, 'leo', 1),
(78, 'luctus', 2),
(78, 'eleifend', 1),
(78, 'tortor', 1),
(78, 'tristique', 1),
(78, 'nam', 3),
(78, 'vulputate', 1),
(78, 'praesent', 1),
(78, 'dui', 3),
(78, 'phasellus', 1),
(78, 'tellus', 1),
(78, 'pulvinar', 1),
(78, 'lorem', 1),
(78, 'tempor', 2),
(78, 'gravida', 1),
(78, 'aenean', 1),
(78, 'aliquam', 3),
(78, 'lectus', 2),
(78, 'non', 3),
(78, 'viverra', 1),
(78, 'ante', 1),
(78, 'cursus', 2),
(78, 'laoreet', 1),
(78, 'eget', 4),
(78, 'sem', 3),
(78, 'vestibulum', 3),
(78, 'augue', 3),
(78, 'placerat', 2),
(78, 'sollicitudin', 1),
(78, 'consectetuer', 2),
(78, 'malesuada', 1),
(78, 'sed', 3),
(78, 'purus', 3),
(78, 'nec', 5),
(78, 'erat', 3),
(78, 'nibh', 2),
(78, 'convallis', 1),
(78, 'congue', 2),
(78, 'turpis', 3),
(78, 'rutrum', 1),
(78, 'elit', 1),
(78, 'urna', 3),
(78, 'mollis', 2),
(78, 'pellentesque', 2),
(78, 'eros', 2),
(78, 'volutpat', 3),
(78, 'maecenas', 2),
(78, 'facilisis', 2),
(78, 'fermentum', 2),
(78, 'fusce', 1),
(78, 'nulla', 5),
(78, 'molestie', 1),
(78, 'velit', 3),
(78, 'ornare', 1),
(78, 'curabitur', 1),
(78, 'text', 1),
(78, 'filler', 1),
(78, 'arrow', 1),
(78, 'now', 1),
(78, 'third', 1),
(78, 'level', 2),
(78, 'second', 1),
(78, 'note', 1),
(78, 'shape', 1),
(78, 'images', 1),
(78, 'padding', 1),
(78, 'margin', 1),
(78, 'changing', 1),
(78, 'involves', 1),
(78, 'image', 2),
(78, 'top', 1),
(78, 'different', 2),
(78, 'use', 1),
(78, 'css', 1),
(78, 'child', 1),
(78, 'changed', 1),
(78, 'themes', 1),
(78, 'previous', 1),
(78, 'two', 1),
(78, 'template', 1),
(78, 'menu', 1),
(78, 'using', 2),
(78, 'column', 4),
(78, 'left', 5),
(78, 'shadowmenu', 4),
(37, 'navigation', 1),
(37, 'news', 1),
(77, 'neque', 2),
(77, 'dictum', 2),
(77, 'euismod', 3),
(77, 'amet', 4),
(77, 'sit', 4),
(77, 'varius', 3),
(77, 'justo', 2),
(77, 'morbi', 2),
(77, 'ipsum', 3),
(77, 'elementum', 1),
(77, 'suscipit', 1),
(77, 'facilisi', 1),
(77, 'pede', 1),
(77, 'iaculis', 2),
(77, 'sapien', 1),
(77, 'feugiat', 1),
(77, 'auctor', 1),
(77, 'odio', 2),
(77, 'proin', 2),
(77, 'orci', 1),
(77, 'est', 3),
(77, 'accumsan', 2),
(77, 'wisi', 2),
(77, 'imperdiet', 1),
(77, 'leo', 2),
(77, 'luctus', 2),
(77, 'eleifend', 2),
(77, 'tortor', 2),
(77, 'tristique', 1),
(77, 'nam', 3),
(77, 'vulputate', 1),
(77, 'praesent', 1),
(77, 'dui', 3),
(77, 'phasellus', 2),
(77, 'tellus', 2),
(77, 'pulvinar', 1),
(77, 'lorem', 3),
(77, 'tempor', 2),
(77, 'gravida', 2),
(77, 'aenean', 2),
(77, 'aliquam', 4),
(77, 'lectus', 2),
(77, 'non', 3),
(77, 'viverra', 1),
(77, 'ante', 1),
(77, 'cursus', 2),
(77, 'laoreet', 2),
(77, 'eget', 5),
(77, 'sem', 4),
(77, 'vestibulum', 5),
(77, 'augue', 3),
(77, 'placerat', 2),
(77, 'sollicitudin', 1),
(77, 'consectetuer', 3),
(77, 'malesuada', 1),
(77, 'sed', 5),
(77, 'purus', 3),
(77, 'nec', 5),
(77, 'erat', 4),
(77, 'nibh', 2),
(77, 'convallis', 3),
(77, 'congue', 2),
(77, 'turpis', 3),
(77, 'rutrum', 2),
(77, 'elit', 3),
(77, 'urna', 3),
(77, 'mollis', 2),
(77, 'pellentesque', 2),
(77, 'eros', 2),
(77, 'volutpat', 4),
(77, 'maecenas', 3),
(77, 'facilisis', 3),
(77, 'fermentum', 2),
(77, 'fusce', 1),
(77, 'nulla', 6),
(77, 'molestie', 1),
(77, 'velit', 3),
(77, 'ornare', 1),
(77, 'curabitur', 1),
(77, 'text', 2),
(77, 'filler', 2),
(77, 'left', 1),
(77, 'arrow', 2),
(77, 'one', 1),
(77, 'third', 1),
(77, 'level', 2),
(77, 'second', 1),
(77, 'difference', 1),
(77, 'note', 1),
(77, 'shape', 1),
(77, 'images', 2),
(77, 'padding', 1),
(77, 'margin', 1),
(77, 'changing', 1),
(77, 'involves', 1),
(77, 'image', 1),
(77, 'top', 1),
(77, 'different', 2),
(77, 'use', 1),
(77, 'css', 1),
(77, 'child', 1),
(77, 'changed', 1),
(77, 'theme', 1),
(77, 'previous', 1),
(77, 'template', 1),
(77, 'menu', 1),
(77, 'using', 1),
(77, 'columns', 4),
(77, 'tab', 4),
(77, 'shadowmenu', 4),
(47, 'system', 1),
(47, 'management', 1),
(47, 'content', 1),
(81, '=''#f39c2c', 1),
(81, '=''orange', 1),
(81, '=''#fff', 1),
(81, '=''white', 1),
(81, '=''#555', 1),
(81, '=''dark_grey', 1),
(81, '=''#e9e9e9', 1),
(81, '=''grey', 1),
(81, '=''#f1f1f1', 1),
(81, '=''light_grey', 1),
(81, 'gif', 1),
(81, '$path`', 1),
(81, 'url', 1),
(81, '="#d1d1d1', 1),
(81, 'value', 8),
(81, '=''boxed_bg', 1),
(81, 'var', 8),
(81, '[assign', 8),
(81, 'tags', 1),
(81, 'assign', 1),
(81, 'hex', 1),
(81, 'changing', 1),
(81, 'simply', 2),
(81, 'scheme', 1),
(81, 'color', 1),
(81, 'well', 1),
(81, 'smarty', 1),
(81, 'plugin', 1),
(81, 'additional', 1),
(81, 'like', 3),
(81, 'module', 1),
(81, 'single', 1),
(81, 'without', 1),
(81, 'slideshow', 1),
(81, 'demonstartes', 1),
(81, 'slider', 2),
(81, 'templates', 1),
(81, 'power', 1),
(81, 'meant', 1),
(81, 'covers', 1),
(81, 'part', 1),
(81, 'navigating', 1),
(81, 'makes', 1),
(81, 'functions', 1),
(81, 'file', 1),
(81, 'section', 2),
(81, 'head&gt', 1),
(81, 'jquery', 2),
(81, 'include', 2),
(81, 'modules', 1),
(81, 'using', 4),
(81, 'carefull', 1),
(81, 'bottom', 1),
(81, 'note', 2),
(81, 'requires', 1),
(81, 'towards', 1),
(81, 'step', 1),
(81, 'small', 1),
(81, 'one', 1),
(81, 'project', 3),
(81, 'current', 1),
(81, 'use', 2),
(81, 'technique', 2),
(81, 'decide', 2),
(81, 'should', 7),
(81, 'developer', 4),
(81, 'perfect', 1),
(81, 'means', 1),
(81, 'versatile', 1),
(81, 'world', 1),
(81, 'developement', 1),
(81, 'point', 3),
(81, 'starting', 3),
(81, 'gives', 1),
(81, 'mentioned', 1),
(81, 'devices', 4),
(81, 'support', 4),
(81, 'right', 1),
(81, 'left', 1),
(81, 'aligned', 1),
(81, 'whole', 1),
(81, 'rightaligned', 1),
(81, 'leftaligned', 1),
(81, 'div', 1),
(81, 'wrapper', 1),
(81, 'class', 1),
(81, 'allignement', 1),
(81, 'also', 1),
(81, 'can', 1),
(81, 'background', 1),
(81, 'white', 1),
(81, 'face', 1),
(81, 'would', 2),
(81, 'changed', 1),
(81, 'removed', 1),
(81, 'tag', 3),
(81, 'body&gt', 1),
(81, '&lt', 2),
(81, 'boxed', 2),
(81, 'code', 4),
(81, 'page', 2),
(81, 'look', 1),
(81, 'site', 4),
(81, 'complete', 2),
(81, 'appearance', 1),
(81, 'change', 4),
(81, 'quickly', 4),
(81, 'easy', 3),
(81, 'width', 1),
(81, 'screen', 1),
(81, 'flexible', 1),
(81, 'make', 4),
(81, 'used', 3),
(81, 'based', 2),
(81, 'grid', 1),
(81, 'fluid', 1),
(81, 'simple', 3),
(81, 'contains', 1),
(81, 'stylesheet', 2),
(81, 'main', 1),
(81, 'print', 1),
(81, 'layout', 7),
(81, 'core', 2),
(81, 'attached', 1),
(81, 'stylesheets', 2),
(81, 'four', 1),
(81, 'find', 2),
(81, 'will', 8),
(81, 'template', 5),
(81, 'included', 8),
(81, 'ease', 1),
(81, 'layouts', 1),
(81, 'capabale', 1),
(81, 'mobile', 8),
(81, 'responsive', 4),
(81, 'create', 3),
(81, 'possible', 5),
(81, 'making', 1),
(81, 'framework', 4),
(81, 'css', 1),
(81, 'shipped', 2),
(81, 'simple&trade', 2),
(81, 'made', 2),
(81, 'cms', 2),
(81, 'within', 3),
(81, 'functionality', 2),
(81, 'css3', 1),
(81, 'html5', 1),
(81, 'demonstrate', 1),
(81, 'created', 1),
(81, 'example', 5),
(81, 'theme', 14),
(81, 'simplex', 11),
(81, 'welcome', 2),
(41, 'horizontal', 1),
(41, 'ruler', 1),
(41, 'hidden', 1),
(41, 'visual', 1),
(41, 'browsers', 1),
(41, 'css', 1),
(41, 'navigation', 2),
(41, 'sub', 1),
(41, 'news', 1),
(61, 'float', 3),
(61, 'right', 5),
(61, 'sidebar', 4),
(61, 'floating', 1),
(61, 'get', 1),
(61, 'css', 1),
(61, 'code', 1),
(61, 'output', 1),
(61, 'see', 1),
(61, 'could', 1),
(61, 'however', 1),
(61, 'using', 2),
(61, 'contains', 1),
(61, 'hand', 1),
(61, 'styling', 1),
(61, 'template', 3),
(61, 'vertical', 2),
(61, 'horizontal', 3),
(61, 'one', 1),
(61, 'differently', 2),
(61, 'styled', 2),
(61, 'need', 1),
(61, 'main', 2),
(61, 'sheets', 2),
(61, 'style', 4),
(61, 'attached', 2),
(61, 'like', 1),
(61, 'looks', 1),
(61, 'pages', 1),
(61, 'current', 1),
(61, 'unless', 1),
(61, 'collapsed', 1),
(61, 'hidden', 1),
(61, 'otherwise', 1),
(61, 'clicked', 1),
(61, 'parent', 1),
(61, 'display', 1),
(61, 'links', 1),
(61, 'third', 1),
(61, 'also', 2),
(61, 'first', 1),
(61, 'selected', 1),
(61, 'second', 3),
(61, 'contain', 1),
(61, 'should', 2),
(61, 'tag', 2),
(61, 'explained', 1),
(61, 'templates', 1),
(61, 'default', 1),
(61, 'children', 1),
(61, 'levels', 1),
(61, 'displays', 1),
(61, 'case', 1),
(61, 'vertically', 1),
(61, 'sub', 9),
(61, 'localized', 1),
(61, 'depending', 2),
(61, 'horizontally', 1),
(61, 'displayed', 3),
(61, 'hierarchy', 1),
(61, 'level', 6),
(61, 'page', 5),
(61, 'parts', 3),
(61, 'two', 3),
(61, 'split', 1),
(61, 'easily', 2),
(61, 'can', 2),
(61, 'manager', 3),
(61, 'menu', 9),
(61, 'column', 4),
(61, 'subnavigation', 4),
(61, 'left', 9),
(61, 'navigation', 15),
(61, 'simple', 6),
(61, 'top', 6),
(129, 'by ', 1),
(129, 'design', 1),
(129, ' site', 1),
(129, 'llc', 2),
(129, 'dunvilla', 1),
(129, 'barn', 1),
(129, 'copyright', 1),
(44, 'news', 5),
(44, 'module', 3),
(44, 'installed', 3),
(44, 'exciting', 1),
(44, 'article', 2),
(44, 'using', 1),
(44, 'summary', 1),
(44, 'field', 1),
(44, 'therefore', 1),
(44, 'link', 1),
(44, 'read', 2),
(44, 'can', 1),
(44, 'click', 1),
(44, 'heading', 1),
(159, 'lifetime', 1),
(159, 'last', 1),
(159, 'memory', 1),
(159, 'guests', 1),
(159, 'leave', 1),
(159, 'will', 2),
(159, 'charm', 1),
(159, 'loft', 1),
(47, 'way', 1),
(47, 'meant', 1),
(159, 'events', 1),
(159, 'special', 1),
(159, 'conferences', 1),
(159, 'parties', 1),
(159, 'reunions', 1),
(159, 'weddings', 1),
(159, 'perfect', 1),
(159, 'destination', 1),
(50, 'system', 1),
(50, 'web', 1),
(50, 'site', 1),
(51, 'rotate', 1),
(51, 'banners', 1),
(51, 'work', 1),
(51, 'just', 1),
(51, 'fine', 1),
(51, 'note', 1),
(51, 'also', 1),
(51, 'written', 1),
(51, 'without', 1),
(51, 'opening', 1),
(51, '&lt', 1),
(51, 'ending', 1),
(51, '&gt', 1),
(53, '&raquo', 1),
(53, 'modules', 1),
(53, 'admin', 1),
(53, 'panel', 1),
(53, 'click', 1),
(53, 'help', 1),
(53, 'want', 1),
(54, 'install', 1),
(54, 'cms', 1),
(54, 'simple', 1),
(54, 'can', 1),
(54, 'use', 1),
(54, 'customize', 1),
(54, 'needs', 1),
(54, 'described', 1),
(54, 'section', 1),
(54, 'cmsms', 2),
(54, 'admin', 2),
(54, 'panel', 2),
(54, 'will', 1),
(54, 'find', 1),
(54, 'menu', 1),
(55, 'list', 2),
(55, 'style', 1),
(55, 'liking', 1),
(55, 'css', 1),
(55, 'full', 1),
(55, 'good', 1),
(55, 'articles', 1),
(55, 'styling', 1),
(55, 'one', 1),
(55, 'best', 1),
(55, 'cmsms', 2),
(55, 'panel', 2),
(55, 'add', 1),
(55, 'well', 1),
(55, 'next', 1),
(55, 'chapter', 1),
(56, 'stylesheet', 1),
(56, 'navigation', 2),
(56, 'safe', 1),
(56, 'side', 1),
(56, 'copy', 1),
(56, 'sheet', 4),
(56, 'attach', 1),
(56, 'new', 2),
(56, 'instead', 1),
(56, 'make', 1),
(56, 'changes', 1),
(56, 'always', 1),
(56, 'revert', 1),
(56, 'something', 1),
(56, 'wrong', 1),
(57, 'adjust', 1),
(57, 'margins', 2),
(57, 'div#main', 1),
(57, 'basically', 1),
(57, 'just', 1),
(57, 'swap', 1),
(58, 'lacus', 1),
(58, 'rhoncus', 1),
(58, 'venenatis', 1),
(58, 'ornare', 1),
(58, 'semper', 1),
(58, 'odio', 1),
(58, 'ante', 1),
(58, 'libero', 1),
(58, 'risus', 1),
(58, 'mattis', 1),
(58, 'euismod', 1),
(58, 'morbi', 2),
(58, 'fermentum', 1),
(58, 'vel', 1),
(58, 'diam', 1),
(58, 'quam', 1),
(58, 'wisi', 1),
(58, 'etiam', 1),
(58, 'dictum', 1),
(58, 'vulputate', 1),
(58, 'aliquam', 1),
(58, 'proin', 1),
(58, 'imperdiet', 1),
(58, 'nonummy', 1),
(58, 'lacinia', 1),
(102, 'conferences', 4),
(101, 'come', 1),
(101, 'parties', 4),
(101, 'holiday', 4),
(100, 'come', 1),
(100, 'reunions', 4),
(99, 'come', 1),
(99, 'parties', 4),
(99, 'holiday', 4),
(98, 'come', 1),
(98, 'weddings', 4),
(97, 'events', 4),
(60, 'template', 1),
(60, 'page', 1),
(60, 'normally', 1),
(60, 'use', 1),
(61, 'instead', 2),
(61, 'look', 1),
(61, 'layout', 1),
(61, 'columns', 1),
(61, 'sheet', 1),
(61, 'property', 1),
(61, 'div#sidebar', 1),
(61, 'element', 1),
(61, 'change', 1),
(61, 'will', 2),
(61, 'side', 1),
(61, 'content', 1),
(61, 'course', 1),
(61, 'adjust', 1),
(61, 'margins', 2),
(61, 'div#main', 1),
(61, 'basically', 1),
(61, 'just', 1),
(61, 'swap', 1),
(62, 'help', 1),
(62, 'accessible', 1),
(62, 'extensions', 1),
(62, '&raquo', 1),
(62, 'admin', 1),
(62, 'panel', 1),
(63, 'embeding', 1),
(63, 'application', 1),
(63, 'usual', 1),
(63, 'use', 1),
(63, 'could', 1),
(63, 'forum', 1),
(63, 'inserts', 1),
(63, 'global', 2),
(63, 'content', 2),
(63, 'block', 2),
(63, 'previously', 1),
(63, 'known', 1),
(63, 'html', 1),
(63, 'blob', 1),
(63, 'template', 1),
(63, 'code', 1),
(64, 'following', 2),
(64, 'hierarchy', 4),
(64, 'rules', 2),
(64, 'used', 2),
(64, 'break', 1),
(64, 'menus', 2),
(64, 'groupings', 1),
(64, 'sections', 1),
(64, 'unrelated', 1),
(64, 'headers', 1),
(64, 'associated', 1),
(64, 'group', 1),
(64, 'links', 2),
(64, 'similar', 1),
(64, 'little', 1),
(64, 'bit', 1),
(64, 'say', 1),
(64, 'next', 1),
(64, 'reference', 1),
(64, 'appears', 1),
(64, 'follows', 1),
(64, 'management', 1),
(66, 'user', 1),
(66, 'navigates', 1),
(66, 'site', 1),
(66, 'created', 1),
(66, 'adding', 1),
(66, 'placeholder', 1),
(67, 'button', 1),
(67, 'will', 1),
(67, 'create', 1),
(67, 'new', 3),
(67, 'name', 2),
(67, 'modify', 1),
(67, 'use', 1),
(67, 'specifying', 1),
(67, 'call', 1),
(67, 'cmsms', 2),
(67, 'admin', 2),
(67, 'panel', 2),
(67, 'read', 1),
(68, 'installed', 1),
(68, 'using', 1),
(68, 'community', 1),
(68, 'also', 1),
(68, 'shares', 1),
(68, 'anyone', 1),
(68, 'download', 1),
(69, 'html', 1),
(69, 'preferences', 2),
(69, '&raquo', 1),
(69, 'user', 1),
(69, 'admin', 1),
(69, 'panel', 1),
(69, 'gives', 1),
(69, 'control', 1),
(69, 'code', 1),
(69, 'will', 1),
(69, 'also', 1),
(69, 'modules', 1),
(69, 'download', 1),
(70, '=''page', 1),
(70, 'alias', 1),
(70, 'information', 1),
(70, 'admin', 1),
(70, 'panel', 1),
(70, 'extensions', 1),
(70, 'menu', 1),
(71, 'accessibility', 1),
(71, 'stuff', 1),
(71, 'it''s', 1),
(71, 'recommended', 1),
(71, 'simple', 1),
(71, 'rather', 1),
(72, 'should', 2),
(72, 'handle', 1),
(72, 'order', 1),
(72, 'handlers', 2),
(72, 'called', 2),
(72, 'one', 1),
(72, 'doevent', 1),
(72, 'method', 1),
(72, 'name', 1),
(72, 'whatever', 1),
(72, 'data', 1),
(72, 'wants', 1),
(72, 'triggered', 1),
(72, 'needs', 1),
(72, 'documented', 1),
(73, 'write', 1),
(73, 'intricate', 1),
(73, 'fully', 1),
(73, 'functioning', 1),
(73, 'applications', 1),
(73, 'use', 2),
(73, 'powered', 1),
(73, 'installation', 1),
(73, 'popular', 1),
(73, 'frontend', 1),
(73, 'album', 1),
(73, 'calendar', 1),
(73, 'guestbook', 1),
(73, 'builder', 1),
(73, 'modulemanager', 1),
(73, 'included', 1),
(73, 'allows', 1),
(73, 'browsing', 1),
(73, 'list', 1),
(73, 'reading', 1),
(73, 'installing', 1),
(73, 'actually', 1),
(73, 'name', 1),
(73, 'parameter', 1),
(73, 'normal', 1),
(73, 'accept', 1),
(73, 'parameters', 1),
(73, 'effect', 1),
(73, 'changes', 1),
(73, 'behavior', 1),
(73, 'though', 1),
(73, 'always', 1),
(73, 'required', 1),
(73, 'read', 2),
(74, 'polite', 1),
(74, 'will', 2),
(74, 'better', 1),
(74, 'hope', 1),
(74, 'enjoy', 1),
(74, 'using', 1),
(74, 'creating', 1),
(74, 'web', 1),
(74, 'sites', 1),
(74, 'want', 1),
(74, 'contribute', 1),
(74, 'development', 1),
(74, 'welcome', 1),
(74, 'contact', 1),
(75, 'articles', 1),
(75, 'clicking', 2),
(75, 'article', 1),
(75, 'details', 1),
(75, 'opened', 1),
(75, 'alias', 1),
(75, 'detailpage', 1),
(75, 'core', 1),
(75, 'make', 1),
(75, 'print', 3),
(75, 'button', 3),
(75, 'showbutton', 1),
(75, 'true', 2),
(75, 'told', 1),
(75, 'output', 1),
(75, 'instead', 2),
(75, 'dialog', 1),
(75, 'opens', 1),
(75, 'immediate', 1),
(75, 'printing', 1),
(75, 'content', 9),
(75, 'h2&gt', 2),
(75, 'maybe', 1),
(75, 'important', 1),
(75, 'every', 1),
(75, 'required', 1),
(75, 'previous', 2),
(75, 'next', 2),
(75, 'internal', 1),
(75, 'hierarchy', 1),
(75, 'separators', 1),
(75, 'section', 1),
(75, 'headers', 1),
(75, 'omitted', 1),
(75, 'footer', 3),
(75, 'bloating', 1),
(75, 'lots', 1),
(75, 'code', 3),
(75, 'block', 3),
(75, 'call', 1),
(75, 'useful', 1),
(75, 'reused', 1),
(75, 'several', 1),
(75, 'find', 1),
(75, 'blocks', 1),
(76, 'panel', 2),
(76, 'released', 1),
(76, 'file', 1),
(76, 'extensions', 1),
(76, '&raquo', 1),
(76, 'list', 1),
(76, 'official', 1),
(76, 'cmsms', 2),
(76, 'repository', 1),
(76, 'development', 1),
(76, 'forge', 1),
(77, 'nullam', 2),
(77, 'adipiscing', 2),
(77, 'quisque', 1),
(77, 'hendrerit', 2),
(77, 'nunc', 1),
(77, 'tincidunt', 1),
(77, 'sodales', 2),
(77, 'arcu', 1),
(77, 'porta', 1),
(77, 'sagittis', 2),
(77, 'quam', 1),
(77, 'vivamus', 1),
(77, 'egestas', 1),
(77, 'dolor', 2),
(77, 'cras', 1),
(77, 'enim', 1),
(77, 'quis', 3),
(77, 'felis', 1),
(77, 'tempus', 2),
(77, 'diam', 2),
(77, 'metus', 1),
(77, 'vel', 1),
(77, 'lobortis', 1),
(77, 'ultrices', 1),
(77, 'mauris', 1),
(77, 'blandit', 1),
(77, 'posuere', 2),
(78, 'morbi', 1),
(78, 'justo', 1),
(78, 'varius', 1),
(78, 'sit', 1),
(78, 'amet', 1),
(78, 'euismod', 2),
(78, 'dictum', 2),
(78, 'neque', 1),
(78, 'nullam', 1),
(78, 'adipiscing', 1),
(78, 'quisque', 1),
(78, 'hendrerit', 1),
(78, 'nunc', 1),
(78, 'tincidunt', 1),
(78, 'sodales', 1),
(78, 'arcu', 1),
(78, 'porta', 1),
(78, 'sagittis', 1),
(78, 'quam', 1),
(78, 'vivamus', 1),
(78, 'egestas', 1),
(79, 'quisque', 1),
(79, 'hendrerit', 1),
(79, 'nunc', 1),
(79, 'erat', 1),
(79, 'pellentesque', 1),
(79, 'tincidunt', 1),
(79, 'sodales', 1),
(79, 'arcu', 1),
(79, 'porta', 1),
(79, 'sagittis', 1),
(79, 'quam', 1),
(79, 'vivamus', 1),
(79, 'eget', 1),
(79, 'egestas', 1),
(79, 'velit', 1),
(79, 'congue', 1),
(79, 'consectetuer', 1),
(80, 'hope', 1),
(80, 'enjoy', 1),
(80, 'changes', 1),
(80, 'want', 1),
(80, 'make', 1),
(80, 'always', 1),
(80, 'copy', 1),
(80, 'original', 1),
(80, 'style', 1),
(80, 'sheet', 1),
(80, 'safe', 1),
(80, 'keeping', 1),
(80, 'never', 1),
(80, 'know', 1),
(80, 'may', 1),
(80, 'need', 1),
(81, '=''dark_orange', 1),
(81, '=''#e6870e', 1),
(81, '=''yellow', 1),
(81, '=''#fdbd34', 1),
(81, 'modern', 1),
(81, 'browser', 2),
(81, 'notice', 1),
(81, 'techniques', 2),
(81, 'internet', 5),
(81, 'explorer', 5),
(81, 'fallbacks', 1),
(81, 'doesn''t', 1),
(81, 'mean', 1),
(81, 'work', 1),
(81, 'visitor', 1),
(81, 'see', 1),
(81, 'gracefull', 1),
(81, 'fallback', 1),
(81, 'meaning', 1),
(81, 'animations', 1),
(81, 'animate', 1),
(81, 'rounded', 1),
(81, 'corners', 1),
(81, 'edges', 1),
(81, 'develper', 1),
(81, 'goran', 1),
(81, 'ilic', 1),
(81, 'uniqu3e', 1),
(81, 'kept', 1),
(81, 'simplistic', 1),
(81, 'easily', 1),
(81, 'read', 1),
(81, 'either', 1),
(81, 'new', 1),
(81, 'editing', 1),
(81, 'full', 1),
(81, 'intentionally', 1),
(81, 'far', 1),
(81, 'old', 1),
(81, 'wants', 1),
(81, 'different', 2),
(81, 'need', 1),
(141, 'outdoor', 4),
(140, 'xhtml', 1),
(140, 'css', 1),
(140, 'updated', 1),
(140, 'recently', 1),
(140, 'categories', 2),
(140, 'news', 1),
(140, 'events', 1),
(140, 'explore', 1),
(159, 'country', 1),
(159, 'unique', 1),
(159, 'dunvilla', 1),
(159, 'barn', 5),
(159, 'home', 2),
(159, 'welcome', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_items`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_search_items`
--

INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES
(1, 'Search', 15, 'template', NULL),
(58, 'Search', 18, 'content', NULL),
(3, 'Search', 16, 'template', NULL),
(56, 'Search', 16, 'content', NULL),
(5, 'Search', 17, 'template', NULL),
(50, 'Search', 40, 'content', NULL),
(51, 'Search', 28, 'content', NULL),
(98, 'Search', 62, 'content', NULL),
(53, 'Search', 39, 'content', NULL),
(54, 'Search', 36, 'content', NULL),
(55, 'Search', 37, 'content', NULL),
(57, 'Search', 13, 'content', NULL),
(97, 'Search', 61, 'content', NULL),
(60, 'Search', 20, 'content', NULL),
(62, 'Search', 25, 'content', NULL),
(63, 'Search', 26, 'content', NULL),
(64, 'Search', 29, 'content', NULL),
(99, 'Search', 63, 'content', NULL),
(66, 'Search', 38, 'content', NULL),
(67, 'Search', 30, 'content', NULL),
(68, 'Search', 41, 'content', NULL),
(69, 'Search', 42, 'content', NULL),
(70, 'Search', 43, 'content', NULL),
(72, 'Search', 45, 'content', NULL),
(73, 'Search', 46, 'content', NULL),
(74, 'Search', 47, 'content', NULL),
(75, 'Search', 49, 'content', NULL),
(76, 'Search', 50, 'content', NULL),
(80, 'Search', 55, 'content', NULL),
(30, 'Search', 19, 'template', NULL),
(71, 'Search', 44, 'content', NULL),
(32, 'Search', 22, 'template', NULL),
(159, 'Search', 15, 'content', NULL),
(79, 'Search', 54, 'content', NULL),
(35, 'Search', 21, 'template', NULL),
(78, 'Search', 52, 'content', NULL),
(37, 'Search', 20, 'template', NULL),
(77, 'Search', 51, 'content', NULL),
(47, 'Search', 23, 'template', NULL),
(81, 'Search', 56, 'content', NULL),
(41, 'Search', 18, 'template', NULL),
(61, 'Search', 22, 'content', NULL),
(129, 'Search', 1, 'global_content', NULL),
(44, 'News', 1, 'article', NULL),
(45, 'Search', 24, 'template', NULL),
(140, 'Search', 26, 'template', NULL),
(92, 'Search', 57, 'content', NULL),
(93, 'Search', 58, 'content', NULL),
(95, 'Search', 59, 'content', NULL),
(103, 'Search', 60, 'content', NULL),
(100, 'Search', 64, 'content', NULL),
(101, 'Search', 65, 'content', NULL),
(102, 'Search', 66, 'content', NULL),
(111, 'Album', 1, 'album', NULL),
(107, 'Album', 1, 'album_picture', NULL),
(108, 'Album', 2, 'album_picture', NULL),
(109, 'Album', 3, 'album_picture', NULL),
(115, 'Showtime', 1, 'show', NULL),
(141, 'Search', 67, 'content', NULL),
(143, 'Search', 68, 'content', NULL),
(157, 'Search', 69, 'content', NULL),
(173, 'Search', 70, 'content', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_items_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_search_items_seq`
--

INSERT INTO `cms_module_search_items_seq` (`id`) VALUES
(173);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_words`
--

CREATE TABLE IF NOT EXISTS `cms_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime`
--

CREATE TABLE IF NOT EXISTS `cms_module_showtime` (
  `picture_id` int(11) NOT NULL,
  `active` tinyint(4) DEFAULT '1',
  `show_id` int(11) DEFAULT NULL,
  `picture_name` varchar(80) DEFAULT NULL,
  `picture_number` int(11) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `picture_url_target` varchar(10) DEFAULT NULL,
  `picture_url_nature` varchar(20) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`picture_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime`
--

INSERT INTO `cms_module_showtime` (`picture_id`, `active`, `show_id`, `picture_name`, `picture_number`, `picture_url`, `picture_url_target`, `picture_url_nature`, `thumbnail_path`, `picture_path`, `comment`) VALUES
(1, 1, 1, 'bannerslide1.jpg', 1, NULL, NULL, NULL, '/thumb_bannerslide1.jpg', '/bannerslide1.jpg', NULL),
(2, 1, 1, 'bannerslide2.jpg', 2, NULL, NULL, NULL, '/thumb_bannerslide2.jpg', '/bannerslide2.jpg', NULL),
(6, 1, 1, 'bannerslide4.jpg', 4, NULL, NULL, NULL, '/thumb_bannerslide4.jpg', '/bannerslide4.jpg', NULL),
(5, 1, 1, 'bannerslide3.jpg', 5, NULL, NULL, NULL, '/thumb_bannerslide3.jpg', '/bannerslide3.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime_name`
--

CREATE TABLE IF NOT EXISTS `cms_module_showtime_name` (
  `show_id` int(11) NOT NULL,
  `show_name` varchar(80) DEFAULT NULL,
  `st_animationtype` varchar(15) DEFAULT NULL,
  `st_height` int(11) DEFAULT NULL,
  `st_width` int(11) DEFAULT NULL,
  `st_rotatetime` double DEFAULT NULL,
  `st_transitiontime` double DEFAULT NULL,
  `st_transition` varchar(30) DEFAULT NULL,
  `st_easeFunc` varchar(30) DEFAULT NULL,
  `st_ease` varchar(30) DEFAULT NULL,
  `st_autoplay` tinyint(4) DEFAULT NULL,
  `st_showcontrols` tinyint(4) DEFAULT NULL,
  `st_showcontrolssub` int(11) DEFAULT NULL,
  `st_textbgcolor` varchar(10) DEFAULT NULL,
  `st_showtext` tinyint(4) DEFAULT NULL,
  `st_showcomment` tinyint(4) DEFAULT NULL,
  `st_showalt` tinyint(4) DEFAULT NULL,
  `st_textcolor` varchar(10) DEFAULT NULL,
  `st_textsize` int(11) DEFAULT NULL,
  `st_titlesize` int(11) DEFAULT NULL,
  `st_fonttype` varchar(50) DEFAULT NULL,
  `st_bgcolor` varchar(10) DEFAULT NULL,
  `st_scale` varchar(30) DEFAULT NULL,
  `st_shuffle` tinyint(4) DEFAULT NULL,
  `st_wmode` varchar(20) DEFAULT NULL,
  `st_commentpos` varchar(10) DEFAULT NULL,
  `st_navbut` tinyint(4) DEFAULT NULL,
  `st_nav_bordercolor` varchar(10) DEFAULT NULL,
  `st_nav_bordersize` int(11) DEFAULT NULL,
  `st_nav_radius` int(11) DEFAULT NULL,
  `st_nav_bgcolor` varchar(10) DEFAULT NULL,
  `st_nav_bgactivecolor` varchar(10) DEFAULT NULL,
  `st_nav_textcolor` varchar(10) DEFAULT NULL,
  `st_nav_showtext` tinyint(4) DEFAULT NULL,
  `st_nav_size` int(11) DEFAULT NULL,
  `st_nav_pos` varchar(20) DEFAULT NULL,
  `st_nav_padding` int(11) DEFAULT NULL,
  `st_target` varchar(15) DEFAULT NULL,
  `st_link` varchar(20) DEFAULT NULL,
  `st_theme` varchar(10) DEFAULT NULL,
  `st_slices` int(11) DEFAULT NULL,
  `st_box_x` int(11) DEFAULT NULL,
  `st_box_y` int(11) DEFAULT NULL,
  `st_thumb_nav` tinyint(4) DEFAULT NULL,
  `st_start_slide` int(11) DEFAULT NULL,
  `st_pauseonhover` tinyint(4) DEFAULT NULL,
  `st_controlshide` tinyint(4) DEFAULT NULL,
  `st_captionopacity` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime_name`
--

INSERT INTO `cms_module_showtime_name` (`show_id`, `show_name`, `st_animationtype`, `st_height`, `st_width`, `st_rotatetime`, `st_transitiontime`, `st_transition`, `st_easeFunc`, `st_ease`, `st_autoplay`, `st_showcontrols`, `st_showcontrolssub`, `st_textbgcolor`, `st_showtext`, `st_showcomment`, `st_showalt`, `st_textcolor`, `st_textsize`, `st_titlesize`, `st_fonttype`, `st_bgcolor`, `st_scale`, `st_shuffle`, `st_wmode`, `st_commentpos`, `st_navbut`, `st_nav_bordercolor`, `st_nav_bordersize`, `st_nav_radius`, `st_nav_bgcolor`, `st_nav_bgactivecolor`, `st_nav_textcolor`, `st_nav_showtext`, `st_nav_size`, `st_nav_pos`, `st_nav_padding`, `st_target`, `st_link`, `st_theme`, `st_slices`, `st_box_x`, `st_box_y`, `st_thumb_nav`, `st_start_slide`, `st_pauseonhover`, `st_controlshide`, `st_captionopacity`) VALUES
(1, 'mainbannershow', 'jQuery', 290, 890, 5, 1, 'fade', 'Linear', 'easeOut', 1, 0, 0, '#000000', 0, 0, 0, '#eeeeee', 12, 16, 'sans', '#000000', 'noscale', 0, 'window', 'top', 0, '#444040', 2, 8, '#ededed', '#61d3ff', '#333333', 0, 10, 'bottom_right', 5, '_self', 'internal page', 'default', 15, 8, 4, 0, 0, 1, 0, '0.8');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime_name_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_showtime_name_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime_name_seq`
--

INSERT INTO `cms_module_showtime_name_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime_seq`
--

CREATE TABLE IF NOT EXISTS `cms_module_showtime_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime_seq`
--

INSERT INTO `cms_module_showtime_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_smarty_plugins`
--

CREATE TABLE IF NOT EXISTS `cms_module_smarty_plugins` (
  `sig` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `module` varchar(160) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sig`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_smarty_plugins`
--

INSERT INTO `cms_module_smarty_plugins` (`sig`, `name`, `module`, `type`, `callback`, `available`, `cachable`) VALUES
('a13f88201fd98d2fbb219f4bb4d4d75e', 'FileManager', 'FileManager', 'function', 's:15:"function_plugin";', 1, 0),
('d077ec0a46ac7ac76f7ebb22bf223dd5', 'MenuManager', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 0),
('0d66b5f48afdb3ab28b1b00f23e3251f', 'menu', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 1),
('042ecc80bd5585fce43393f9d3f434b6', 'cms_breadcrumbs', 'MenuManager', 'function', 's:22:"smarty_cms_breadcrumbs";', 1, 1),
('6db731a58353c03d0b79fe4e4adacdbd', 'News', 'News', 'function', 's:15:"function_plugin";', 1, 0),
('1ec62e1e885cc0fd80237da2d5ea8778', 'news', 'News', 'function', 's:15:"function_plugin";', 1, 1),
('bb0d76390dd2c0ab4e365e2e49d534b0', 'Search', 'Search', 'function', 's:15:"function_plugin";', 1, 0),
('f3114372c8995dd5974b0306430a3ce3', 'search', 'Search', 'function', 's:15:"function_plugin";', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_templates`
--

CREATE TABLE IF NOT EXISTS `cms_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_module_templates_by_module_name_template_name` (`module_name`,`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_templates`
--

INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('CMSPrinting', 'linktemplate', '{if isset($imgsrc)}\n{capture assign=''image''}\n  <img src="{$imgsrc}" title="{$linktext}" alt="{$linktext}" {if isset($imgclass) && $imgclass!=''''}class="{$imgclass}"{/if} />\n{/capture}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$image}</a>\n{else}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$linktext}</a>\n{/if}\n', '2013-07-13 19:09:02', '2013-07-13 19:09:02'),
('CMSPrinting', 'printtemplate', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n  <head>\n    <title>Printing {title}</title>\n    <meta name="robots" content="noindex" />\n    <base href="{$rooturl}" />\n    <meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\n    <meta http-equiv="Content-Type" content="text/html; charset={$encoding}" />\n\n    {cms_stylesheet media=''print'' templateid=$templateid}\n\n    {if $overridestylesheet!=''''}\n    <style type="text/css">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style="background-color: white; color: black; background-image: none; text-align: left;">	\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n', '2013-07-13 19:09:02', '2013-07-13 19:09:02'),
('News', 'summarySample', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsSummaryField">\n        {if $field->type == ''file''}\n          <img src="{$entry->file_location}/{$field->value}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('News', 'summarySummary_Simplex', '{strip}\r\n\r\n<!-- .news-summary wrapper -->\r\n<article class=''news-summary''>\r\n<span class=''heading''><span>News</span></span>\r\n        <ul class=''category-list cf''>\r\n        {foreach from=$cats item=''node''}\r\n        {if $node.depth > $node.prevdepth}\r\n            {repeat string=''<ul>'' times=$node.depth-$node.prevdepth}\r\n        {elseif $node.depth < $node.prevdepth}\r\n            {repeat string=''</li></ul>'' times=$node.prevdepth-$node.depth}\r\n            </li>\r\n            {elseif $node.index > 0}</li>\r\n            {/if}\r\n            <li{if $node.index == 0} class=''first''{/if}>\r\n        {if $node.count > 0}\r\n                <a href=''{$node.url}''>{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\r\n        {/foreach}\r\n        {repeat string=''</li></ul>'' times=$node.depth-1}</li>\r\n        </ul>\r\n    {foreach from=$items item=''entry''}\r\n    <!-- .news-article (wrapping each article) -->\r\n    <section class=''news-article''>\r\n        <header>\r\n            <h2><a href=''{$entry->moreurl}'' title=''{$entry->title|cms_escape:htmlall}''>{$entry->title|cms_escape}</a></h2>\r\n            <div class=''meta cf''>\r\n                <time class=''date'' datetime=''{$entry->postdate|date_format:''%Y-%m-%d''}''>\r\n                    <span class=''day''> {$entry->postdate|date_format:''%d''} </span>\r\n                    <span class=''month''> {$entry->postdate|date_format:''%b''} </span>\r\n                </time>\r\n                <span class=''author''> {$author_label} {$entry->author} </span>\r\n                <span class=''category''> {$category_label} {$entry->category}</span>\r\n            </div>\r\n        </header>\r\n        {if $entry->summary}\r\n            <p>{eval var=$entry->summary|strip_tags}</p>\r\n            <span class=''more''>{$entry->morelink} →</span>\r\n        {else if $entry->content}\r\n            <p>{eval var=$entry->content|strip_tags}</p>\r\n        {/if}\r\n    </section>\r\n    <!-- .news-article //-->\r\n    {/foreach}\r\n        <!-- news pagination -->\r\n        {if $pagecount > 1}\r\n        <span class=''paginate''>\r\n            {if $pagenumber > 1}\r\n                {$firstpage} {$prevpage}\r\n            {/if}\r\n                {$pagetext} {$pagenumber} {$oftext} {$pagecount}\r\n            {if $pagenumber < $pagecount}\r\n                {$nextpage} {$lastpage}\r\n            {/if}\r\n        </span>\r\n        {/if}\r\n</article>\r\n<!-- .news-summary //-->\r\n\r\n{/strip}', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('News', 'detailSample', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsDetailField">\n        {if $field->type == ''file''}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src="{$entry->file_location}/{$field->value}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('News', 'detailSimplex_Detail', '{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=''canonical'' value=$entry->canonical}\r\n{/if}\r\n\r\n<h2>{$entry->title|cms_escape:htmlall}</h2>\r\n{if $entry->summary}\r\n    {eval var=$entry->summary}\r\n{/if}\r\n    {eval var=$entry->content}\r\n{if $entry->extra}\r\n		{$extra_label} {$entry->extra}\r\n{/if}\r\n{if $return_url != ""}\r\n    <br />\r\n        <span class=''back''>← {$return_url}{if $category_name != ''''} - {$category_link}{/if}</span>\r\n{/if}\r\n\r\n{if isset($entry->fields)}\r\n  {foreach from=$entry->fields item=''field''}\r\n     <div>\r\n        {if $field->type == ''file''}\r\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\r\n          <img src=''{$entry->file_location}/{$field->value}'' alt='''' />\r\n        {else}\r\n          {$field->name}: {eval var=$field->value}\r\n        {/if}\r\n     </div>\r\n  {/foreach}\r\n{/if}\r\n    <footer class=''news-meta''>\r\n    {if $entry->postdate}\r\n        {$entry->postdate|cms_date_format}\r\n    {/if}\r\n    {if $entry->category}\r\n        <strong>{$category_label}</strong> {$entry->category}\r\n    {/if}\r\n    {if $entry->author}\r\n        <strong>{$author_label}</strong> {$entry->author}\r\n    {/if}\r\n    </footer>', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('News', 'formSample', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=''onefield''}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('News', 'browsecatSample', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('News', 'email_template', 'A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nPost Date:  {$postdate|date_format}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
('Search', 'displaysearch', '\n{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" value="{$searchtext}" {$hogan}/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', '2013-07-13 19:09:07', '2013-07-13 19:09:07'),
('Search', 'displayresult', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == ''News''}{News action=''detail'' article_id=$entry->modulerecord detailpage=''News''} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', '2013-07-13 19:09:07', '2013-07-13 19:09:07'),
('MenuManager', 'culinary // minimal_menu', '{* CSS classes used in this template:\r\n.currentpage - The active/current page\r\n.bullet_sectionheader - To style section header\r\nhr.separator - To style the ruler for the separator *} \r\n{if $count > 0}\r\n<ul class="clearfix">\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string="<ul>" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string="</li></ul>" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->current == true}\r\n<li><a href="{$node->url}" class="currentpage"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->parent == true && $node->depth == 1 and $node->type != ''sectionheader'' and $node->type != ''separator''}\r\n<li class="activeparent"> <a href="{$node->url}" class="activeparent"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->type == ''sectionheader''}\r\n<li class="sectionheader">{$node->menutext}\r\n\r\n{elseif $node->type == ''separator''}\r\n<li style="list-style-type: none;"> <hr class="separator" />\r\n\r\n{else}\r\n<li><a href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n\r\n{repeat string="</li></ul>" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}\r\n', '2013-07-13 19:29:14', '2013-07-13 19:29:14'),
('MenuManager', 'unbound // minimal_menu', '{* CSS classes used in this template:\n.currentpage - The active/current page\n.bullet_sectionheader - To style section header\nhr.separator - To style the ruler for the separator *} \n{if $count > 0}\n<ul class="clearfix">\n{foreach from=$nodelist item=node}\n{if $node->depth > $node->prevdepth}\n{repeat string="<ul>" times=$node->depth-$node->prevdepth}\n{elseif $node->depth < $node->prevdepth}\n{repeat string="</li></ul>" times=$node->prevdepth-$node->depth}\n</li>\n{elseif $node->index > 0}</li>\n{/if}\n\n{if $node->current == true}\n<li><a href="{$node->url}" class="currentpage"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\n\n{elseif $node->parent == true && $node->depth == 1 and $node->type != ''sectionheader'' and $node->type != ''separator''}\n<li class="activeparent"> <a href="{$node->url}" class="activeparent"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\n\n{elseif $node->type == ''sectionheader''}\n<li class="sectionheader">{$node->menutext}\n\n{elseif $node->type == ''separator''}\n<li style="list-style-type: none;"> <hr class="separator" />\n\n{else}\n<li><a href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\n\n{/if}\n\n{/foreach}\n\n{repeat string="</li></ul>" times=$node->depth-1}</li>\n</ul>\n{/if}\n', '2013-07-13 20:10:29', '2013-07-13 20:10:29'),
('FormBuilder', 'fb_1', '{* DEFAULT FORM LAYOUT / pure CSS *}\r\n{$fb_form_header}\r\n{if $fb_form_done == 1}\r\n	{* This first section is for displaying submission errors *}\r\n	{if isset($fb_submission_error) && $fb_submission_error}\r\n		<div class="error_message">{$fb_submission_error}</div>\r\n		{if isset($fb_show_submission_errors) && $fb_show_submission_errors}\r\n			<div class="error">\r\n			<ul>\r\n			{foreach from=$fb_submission_error_list item=thisErr}\r\n				<li>{$thisErr}</li>\r\n			{/foreach}\r\n			</ul>\r\n		</div>\r\n		{/if}\r\n	{/if}\r\n{else}\r\n	{* this section is for displaying the form *}\r\n	{* we start with validation errors *}\r\n	{if isset($fb_form_has_validation_errors) && $fb_form_has_validation_errors}\r\n		<div class="error_message">\r\n		<ul>\r\n		{foreach from=$fb_form_validation_errors item=thisErr}\r\n			<li>{$thisErr}</li>\r\n		{/foreach}\r\n		</ul>\r\n		</div>\r\n	{/if}\r\n	{if isset($captcha_error) && $captcha_error}\r\n		<div class="error_message">{$captcha_error}</div>\r\n	{/if}\r\n\r\n	{* and now the form itself *}\r\n	{$fb_form_start}\r\n	<div>{$fb_hidden}</div>\r\n	<div{if $css_class != ''''} class="{$css_class}"{/if}>\r\n	{if $total_pages gt 1}<span>{$title_page_x_of_y}</span>{/if}\r\n	{foreach from=$fields item=entry}\r\n		{if $entry->display == 1}\r\n        	{strip}\r\n         	{if $entry->needs_div == 1}\r\n            	<div\r\n            	{if $entry->required == 1 || $entry->css_class != '''' || $entry->valid == 0} class="\r\n              		{if $entry->required == 1}required{/if}\r\n              		{if $entry->css_class != ''''} {$entry->css_class}{/if}\r\n                    {if $entry->valid == 0} fb_invalid{/if}\r\n              		"\r\n            	{/if}\r\n            	>\r\n         	{/if}\r\n         	{if $entry->hide_name == 0}\r\n            	<label{if $entry->multiple_parts != 1} for="{$entry->input_id}"{/if}>{$entry->name}\r\n            	{if $entry->required_symbol != ''''}\r\n               		{$entry->required_symbol}\r\n            	{/if}\r\n            	</label>\r\n         	{/if}\r\n         	{if $entry->multiple_parts == 1}\r\n            	{section name=numloop loop=$entry->input}\r\n               		{if $entry->label_parts == 1}\r\n               			<div>{$entry->input[numloop]->input}&nbsp;{$entry->input[numloop]->name}</div>\r\n               		{else}\r\n               			{$entry->input[numloop]->input}\r\n               		{/if}\r\n               		{if isset($entry->input[numloop]->op) && $entry->input[numloop]->op}{$entry->input[numloop]->op}{/if}\r\n            	{/section}\r\n         	{else}\r\n            	{if $entry->smarty_eval == ''1''}{eval var=$entry->input}{else}{$entry->input}{/if}\r\n         	{/if}\r\n         	{if $entry->valid == 0} &lt;--- {$entry->error}{/if}\r\n         	{if $entry->needs_div == 1}\r\n            	</div>\r\n         	{/if}\r\n         	{/strip}\r\n     	{/if}\r\n	{/foreach}\r\n	{if $has_captcha == 1}\r\n		<div class="captcha">{$graphic_captcha}{$title_captcha}<br />{$input_captcha}</div>\r\n	{/if}\r\n	<div class="submit">{$prev}{$submit}</div>\r\n	</div>\r\n	{$fb_form_end}\r\n{/if}\r\n{$fb_form_footer}', '2013-07-13 21:58:47', '2013-07-13 21:58:48'),
('FormBuilder', 'fb_2', '{* DEFAULT FORM LAYOUT / pure CSS *}\n{$fb_form_header}\n{if $fb_form_done == 1}\n	{* This first section is for displaying submission errors *}\n	{if isset($fb_submission_error) && $fb_submission_error}\n		<div class="error_message">{$fb_submission_error}</div>\n		{if isset($fb_show_submission_errors) && $fb_show_submission_errors}\n			<div class="error">\n			<ul>\n			{foreach from=$fb_submission_error_list item=thisErr}\n				<li>{$thisErr}</li>\n			{/foreach}\n			</ul>\n		</div>\n		{/if}\n	{/if}\n{else}\n	{* this section is for displaying the form *}\n	{* we start with validation errors *}\n	{if isset($fb_form_has_validation_errors) && $fb_form_has_validation_errors}\n		<div class="error_message">\n		<ul>\n		{foreach from=$fb_form_validation_errors item=thisErr}\n			<li>{$thisErr}</li>\n		{/foreach}\n		</ul>\n		</div>\n	{/if}\n	{if isset($captcha_error) && $captcha_error}\n		<div class="error_message">{$captcha_error}</div>\n	{/if}\n\n	{* and now the form itself *}\n	{$fb_form_start}\n	<div>{$fb_hidden}</div>\n	<div{if $css_class != ''''} class="{$css_class}"{/if}>\n	{if $total_pages gt 1}<span>{$title_page_x_of_y}</span>{/if}\n	{foreach from=$fields item=entry}\n		{if $entry->display == 1}\n        	{strip}\n         	{if $entry->needs_div == 1}\n            	<div\n            	{if $entry->required == 1 || $entry->css_class != '''' || $entry->valid == 0} class="\n              		{if $entry->required == 1}required{/if}\n              		{if $entry->css_class != ''''} {$entry->css_class}{/if}\n                    {if $entry->valid == 0} fb_invalid{/if}\n              		"\n            	{/if}\n            	>\n         	{/if}\n         	{if $entry->hide_name == 0}\n            	<label{if $entry->multiple_parts != 1} for="{$entry->input_id}"{/if}>{$entry->name}\n            	{if $entry->required_symbol != ''''}\n               		{$entry->required_symbol}\n            	{/if}\n            	</label>\n         	{/if}\n         	{if $entry->multiple_parts == 1}\n            	{section name=numloop loop=$entry->input}\n               		{if $entry->label_parts == 1}\n               			<div>{$entry->input[numloop]->input}&nbsp;{$entry->input[numloop]->name}</div>\n               		{else}\n               			{$entry->input[numloop]->input}\n               		{/if}\n               		{if isset($entry->input[numloop]->op) && $entry->input[numloop]->op}{$entry->input[numloop]->op}{/if}\n            	{/section}\n         	{else}\n            	{if $entry->smarty_eval == ''1''}{eval var=$entry->input}{else}{$entry->input}{/if}\n         	{/if}\n         	{if $entry->valid == 0} &lt;--- {$entry->error}{/if}\n         	{if $entry->needs_div == 1}\n            	</div>\n         	{/if}\n         	{/strip}\n     	{/if}\n	{/foreach}\n	{if $has_captcha == 1}\n		<div class="captcha">{$graphic_captcha}{$title_captcha}<br />{$input_captcha}</div>\n	{/if}\n	<div class="submit">{$prev}{$submit}</div>\n	</div>\n	{$fb_form_end}\n{/if}\n{$fb_form_footer}', '2013-07-13 21:58:48', '2013-07-13 21:58:48'),
('FormBuilder', 'fb_3', '{* DEFAULT FORM LAYOUT / pure CSS *}\r\n{$fb_form_header}\r\n{if $fb_form_done == 1}\r\n	{* This first section is for displaying submission errors *}\r\n	{if $fb_submission_error}\r\n		<div class="error_message">{$fb_submission_error}</div>\r\n		{if $fb_show_submission_errors}\r\n			<div class="error">\r\n			<ul>\r\n			{foreach from=$fb_submission_error_list item=thisErr}\r\n				<li>{$thisErr}</li>\r\n			{/foreach}\r\n			</ul>\r\n		</div>\r\n		{/if}\r\n	{/if}\r\n{else}\r\n	{* this section is for displaying the form *}\r\n	{* we start with validation errors *}\r\n	{if $fb_form_has_validation_errors}\r\n		<div class="error_message">\r\n		<ul>\r\n		{foreach from=$fb_form_validation_errors item=thisErr}\r\n			<li>{$thisErr}</li>\r\n		{/foreach}\r\n		</ul>\r\n		</div>\r\n	{/if}\r\n	{if $captcha_error}\r\n		<div class="error_message">{$captcha_error}</div>\r\n	{/if}\r\n\r\n	{* and now the form itself *}\r\n	{$fb_form_start}\r\n	<div>{$fb_hidden}</div>\r\n	<div{if $css_class != ''''} class="{$css_class}"{/if}>\r\n	{if $total_pages gt 1}<span>{$title_page_x_of_y}</span>{/if}\r\n	{foreach from=$fields item=entry}\r\n		{if $entry->display == 1}\r\n        	{strip}\r\n         	{if $entry->needs_div == 1}\r\n            	<div\r\n            	{if $entry->required == 1 || $entry->css_class != ''''} class="\r\n              		{if $entry->required == 1}\r\n                		required\r\n              		{/if}\r\n              		{if $entry->required == 1 && $entry->css_class != ''''} {/if}\r\n              		{if $entry->css_class != ''''}\r\n                		{$entry->css_class}\r\n              		{/if}\r\n              		"\r\n            	{/if}\r\n            	>\r\n         	{/if}\r\n         	{if $entry->hide_name == 0}\r\n            	<label{if $entry->multiple_parts != 1} for="{$entry->input_id}"{/if}>{$entry->name}\r\n            	{if $entry->required_symbol != ''''}\r\n               		{$entry->required_symbol}\r\n            	{/if}\r\n            	</label>\r\n         	{/if}\r\n         	{if $entry->multiple_parts == 1}\r\n            	{section name=numloop loop=$entry->input}\r\n               		{if $entry->label_parts == 1}\r\n               			<div>{$entry->input[numloop]->input}&nbsp;{$entry->input[numloop]->name}</div>\r\n               		{else}\r\n               			{$entry->input[numloop]->input}\r\n               		{/if}\r\n               		{if $entry->input[numloop]->op}{$entry->input[numloop]->op}{/if}\r\n            	{/section}\r\n         	{else}\r\n            	{if $entry->smarty_eval == ''1''}{eval var=$entry->input}{else}{$entry->input}{/if}\r\n         	{/if}\r\n         	{if $entry->valid == 0} &lt;--- {$entry->error}{/if}\r\n         	{if $entry->needs_div == 1}\r\n            	</div>\r\n         	{/if}\r\n         	{/strip}\r\n     	{/if}\r\n	{/foreach}\r\n	{if $has_captcha == 1}\r\n		<div class="captcha">{$graphic_captcha}{$title_captcha}<br />{$input_captcha}</div>\r\n	{/if}\r\n	<div class="submit">{$prev}{$submit}</div>\r\n	</div>\r\n	{$fb_form_end}\r\n{/if}\r\n{$fb_form_footer}', '2013-07-13 21:58:48', '2013-07-13 21:58:48'),
('Album', 'album_list', '<ul class="picturelist">\n	{foreach from=$albums item=album}\n	<li class="thumb">\n<p class="albumname">{$album->name}</p>\n 	<a href="{$album->link}">\n<img src="{$album->thumbnail}" alt="{$album->name}" title="{$album->name} - {$album->comment}"{$album->autothumbnailsize} /></a>\n<p><span class="albumpicturecount">({$album->picturecount} images)</span></p>\n<p><span class="albumcomment">{$album->comment|truncate:75}&nbsp;</span></p>\n</li>\n	{/foreach}\n</ul>\n<div style="width:100px">&nbsp;</div>', '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
('Album', 'default', '{* same as Thickbox *}\n{* Album List *}\n{if !$album}\n<ul class="picturelist">\n{foreach from=$albums item=album}\n <li class="thumb">\n  <p class="albumname">{$album->name|strip_tags}</p>\n   <a href="{$album->link}"><img src="{$album->thumbnail}" alt="{$album->name}" title="{$album->name}"{$album->autothumbnailsize} /></a></a>\n    <p><span class="albumpicturecount">({$album->picturecount} images)</span></p>\n     <p><span class="albumcomment">{$album->comment|truncate:75|strip_tags}&nbsp;</span></p>\n </li>\n{/foreach}\n</ul>\n\n{else}\n{* Photo List *}\n{if $pagecount>1}\n<p class="albumnav">\n<a href="{$link.page.first}" title="first page">&lt;&lt;&nbsp;</a>\n{if $link.page.previous}<a href="{$link.page.previous}" title="previous page">&lt;&nbsp;</a>{/if}\n page {$pagenumber}/{$pagecount}\n {if $link.page.next}<a href="{$link.page.next}" title="next page">&nbsp;&gt;</a>{/if}\n<a href="{$link.page.last}" title="last page">&nbsp;&gt;&gt;</a>\n</p>\n{/if}\n\n<p><strong>{$album->name}</strong><br />\n{$album->comment|strip_tags}<br />\n<span class="instructiontext">Click on a thumbnail to view a larger image. Click anywhere on or outside the larger image or use the ''Esc'' (escape) key to close it.<br/>{if $returnlink}<a href="{$returnlink}">Return to the album index page</a>{/if}</span></p>\n\n<ul class="picturelist">\n{foreach from=$pictures item=picturesrow}\n{foreach from=$picturesrow item=onepicture}\n <li class="thumb">\n  <a href="{$onepicture->picture}" rel="{$album->name|escape:''html''}" class="thickbox" title="{$onepicture->name|escape:''html''}{if ($onepicture->comment != "")} - {$onepicture->comment|escape:''html''}{/if}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''}" title="{$onepicture->name|escape:''html''}"{$onepicture->autothumbnailsize} />\n  </a>\n </li>\n{if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}{/foreach}{/foreach}\n</ul>\n{if $picturecount==0}No image{/if}\n{/if}\n<div style="width:100px">&nbsp;</div>', '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
('Album', 'recently_updated', '<ul class="picturelist">\n	{foreach from=$pictures item=onepicture}\n   		<li class="thumb"><a href="{$onepicture->link}" title="{$onepicture->name|escape:''html''}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''}" title="{$onepicture->name|escape:''html''}"{$onepicture->autothumbnailsize} /></a>\n		</li>\n	{/foreach}\n</ul>\n<div style="width:100px">&nbsp;</div>', '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
('Album', 'random_image', '{* Include JS files. You can move this to the head of your page template if you want *}\n<!--Greybox-->\n<script type="text/javascript">\n    var GB_ROOT_DIR = "modules/Album/templates/db/greybox/";\n</script>\n\n<script type="text/javascript" src="modules/Album/templates/db/greybox/AJS.js"></script>\n<script type="text/javascript" src="modules/Album/templates/db/greybox/AJS_fx.js"></script>\n<script type="text/javascript" src="modules/Album/templates/db/greybox/gb_scripts.js"></script>\n\n\n\n\n<ul class="picturelist">\n	{foreach from=$pictures item=onepicture}\n	    <li class="thumb"><a href="{$onepicture->picture}" rel="gb_imageset[random]" title="{$onepicture->name|escape:''html''} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:''html''}{/if}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:''html''}{/if}" title="{$onepicture->name|escape:''html''} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:''html''}{/if}"{$onepicture->autothumbnailsize} /></a>\n   	   </li>\n	{/foreach}\n</ul>\n\n<div style="width:100px">&nbsp;</div>', '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
('Album', 'categories', '{section name=album loop=$categories}\n<div class="album_content">\n	<h3>{$categories[album].category->name}</h3>\n	{if !empty($categories[album].category->comment)}<p>{$categories[album].category->comment}</p>{/if}\n	{$categories[album].albums_content}\n</div>\n{/section}\n<div style="width:100px">&nbsp;</div>', '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
('Showtime', 'nivoslider_default_caption_css', '\r\n/* Caption styles */\r\n.nivo-caption {\r\n	position:absolute;\r\n	/*background-color:#000000;*/\r\n	/*use RGBA value if you dont want opacity inheritance*/\r\n 	background-color: rgba(0, 0, 0, 0.60);\r\n	font-family:_sans,Helvetica,Arial;\r\n	font-size:12px;\r\n	color:#eeeeee !important;\r\n	\r\n	/* For caption position bottom*/\r\n	bottom:0;\r\n	\r\n	/* For caption position right side*/\r\n	/*\r\n	right:0;\r\n	*/\r\n	\r\n	/* For left and right caption position*/\r\n	/*	\r\n	width:-moz-min-content;\r\n	height:100%;\r\n	width: 30%;"\r\n	*/\r\n	\r\n	/* for top or bottom caption position */\r\n	width:100%;\r\n\r\n	z-index:8;			\r\n}\r\n\r\n.nivo-caption a {\r\n	color:#fff;\r\n	border-bottom:1px dotted #fff;\r\n	display:inline !important;\r\n}\r\n.nivo-caption a:hover {\r\n	color:#fff;\r\n}\r\n.nivo-caption p {\r\n	padding:5px ;\r\n	margin:0;\r\n	color:#eeeeee !important;\r\n}\r\n.nivo-caption p h2{\r\n	font-family:_sans,Helvetica,Arial !important !important;\r\n	font-size:16px !important;\r\n	color:#eeeeee !important;\r\n        border: none !important;\r\n}\r\n\r\n.nivo-caption p img{\r\n	display:block;\r\n	width:auto;\r\n	height:auto;\r\n	margin: 5px;\r\n	position: relative;\r\n}\r\n\r\n.nivo-html-caption {\r\n	display:none;\r\n}\r\n						\r\n', '2013-07-14 11:30:40', '2013-07-14 11:30:40'),
('Showtime', 'nivoslider_preset_caption_css02', '\r\n/* Caption styles */\r\n.nivo-caption {\r\n	position:absolute;\r\n	/*background-color:#000000;*/\r\n	/*use RGBA value if you dont want opacity inheritance*/\r\n 	background-color: rgba(255, 255, 255, 0.60);\r\n	font-family:_sans,Helvetica,Arial;\r\n	font-size:12px;\r\n	color:#eeeeee !important;\r\n	\r\n	/* For caption position bottom*/\r\n	/*bottom:0;*/\r\n\r\n	/* For caption position top*/\r\n	top:50%;\r\n	margin-top:-30px;\r\n	\r\n	/* For caption position right side*/\r\n	/*\r\n	right:0;\r\n	*/\r\n\r\n	/* For caption position left side*/\r\n	left:0;\r\n	\r\n	/* For left and right caption position*/\r\n	width:-moz-min-content;\r\n	height:60px;\r\n	width: 190px;\r\n	\r\n	/* for top or bottom caption position */\r\n	/*width:100%;*/\r\n\r\n	z-index:8;			\r\n}\r\n\r\n.nivo-caption a {\r\n	color:#ee0000;\r\n	border-bottom:1px dotted #fff;\r\n	display:inline !important;\r\n}\r\n.nivo-caption a:hover {\r\n	color:#555;\r\n}\r\n.nivo-caption p {\r\n	padding:5px ;\r\n	margin:0;\r\n	color:#333!important;\r\n}\r\n.nivo-caption p h2{\r\n	font-family:_sans,Helvetica,Arial !important !important;\r\n	font-size:16px !important;\r\n	color:#333!important;\r\n        border: none !important;       \r\n}\r\n\r\n.nivo-caption p img{\r\n	display:block;\r\n	width:auto;\r\n	height:auto;\r\n	margin: 5px;\r\n	position: relative;\r\n}\r\n\r\n.nivo-html-caption {\r\n	display:none;\r\n}\r\n', '2013-07-14 11:30:40', '2013-07-14 11:30:40'),
('Showtime', 'nivoslider_preset_caption_css03', '\r\n/* Caption styles */\r\n.nivo-caption {\r\n	position:absolute;\r\n	/*background-color:#000000;*/\r\n	/*use RGBA value if you dont want opacity inheritance*/\r\n 	background-color: rgba(255, 255, 255, 0.60);\r\n	font-family:_sans,Helvetica,Arial;\r\n	font-size:12px;\r\n	color:#eeeeee !important;\r\n	\r\n	/* For caption position bottom*/\r\n	bottom:0;\r\n\r\n	/* For caption position top*/\r\n	/*top:50%;\r\n	margin-top:-30px;*/\r\n	\r\n	/* For caption position right side*/\r\n	/*\r\n	right:0;\r\n	*/\r\n\r\n	/* For caption position left side*/\r\n	left:50%;\r\n	margin-left:-150px;\r\n	\r\n	/* For left and right caption position*/\r\n	width:-moz-min-content;\r\n	height:60px;\r\n\r\n	width: 300px;\r\n\r\n\r\n	z-index:8;			\r\n}\r\n\r\n.nivo-caption a {\r\n	color:#ee0000;\r\n	border-bottom:1px dotted #fff;\r\n	display:inline !important;\r\n}\r\n.nivo-caption a:hover {\r\n	color:#555;\r\n}\r\n.nivo-caption p {\r\n	padding:5px ;\r\n	margin:0;\r\n	color:#333!important;\r\n}\r\n.nivo-caption p h2{\r\n	font-family:_sans,Helvetica,Arial !important !important;\r\n	font-size:16px !important;\r\n	color:#333!important;\r\n        border: none !important;\r\n}\r\n\r\n.nivo-caption p img{\r\n	display:block;\r\n	width:auto;\r\n	height:auto;\r\n	margin: 5px;\r\n	position: relative;\r\n}\r\n\r\n.nivo-html-caption {\r\n	display:none;\r\n}\r\n', '2013-07-14 11:30:40', '2013-07-14 11:30:40'),
('Showtime', 'nivoslider_preset_caption_css04', '\r\n/* Caption styles */\r\n.nivo-caption {\r\n	position:absolute;\r\n	/*background-color:#000000;*/\r\n	/*use RGBA value if you dont want opacity inheritance*/\r\n 	background-color: rgba(0, 0, 0, 0.60);\r\n	font-family:_sans,Helvetica,Arial;\r\n	font-size:12px;\r\n	color:#eeeeee !important;\r\n	\r\n	/* For caption position bottom*/\r\n	bottom:0;\r\n	\r\n	/* For caption position right side*/\r\n	left:100%;\r\n	\r\n	\r\n	/* For left and right caption position*/\r\n	width:-moz-min-content;\r\n	height:100%;\r\n	width: 200px;"\r\n	\r\n	/* for top or bottom caption position */\r\n	width:100%;\r\n\r\n	z-index:8;			\r\n}\r\n\r\n.nivo-caption a {\r\n	color:#fff;\r\n	border-bottom:1px dotted #fff;\r\n	display:inline !important;\r\n}\r\n.nivo-caption a:hover {\r\n	color:#fff;\r\n}\r\n.nivo-caption p {\r\n	padding:5px ;\r\n	margin:0;\r\n	color:#eeeeee !important;\r\n}\r\n.nivo-caption p h2{\r\n	font-family:_sans,Helvetica,Arial !important !important;\r\n	font-size:16px !important;\r\n	color:#eeeeee !important;\r\n        border: none !important;\r\n}\r\n\r\n.nivo-caption p img{\r\n	display:block;\r\n	width:auto;\r\n	height:auto;\r\n	margin: 5px;\r\n	position: relative;\r\n}\r\n\r\n.nivo-html-caption {\r\n	display:none;\r\n}\r\n						\r\n\r\n', '2013-07-14 11:30:40', '2013-07-14 11:30:40'),
('MenuManager', 'EventMenu', '{* CSS classes used in this template:\r\n.currentpage - The active/current page\r\n.bullet_sectionheader - To style section header\r\nhr.separator - To style the ruler for the separator *} \r\n{if $count > 0}\r\n<ul class="clearfix">\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string="<ul>" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string="</li></ul>" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n\r\n\r\n<!--\r\n{if $node->current == true}\r\n<li><a href="{$node->url}" class="currentpage"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\r\n\r\n\r\n{elseif $node->parent == true && $node->depth == 1 and $node->type != ''sectionheader'' and $node->type != ''separator''}\r\n<li class="activeparent"> <a href="{$node->url}" class="activeparent"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\r\n\r\n{elseif $node->type == ''sectionheader''}\r\n<li class="sectionheader">{$node->menutext}\r\n\r\n{elseif $node->type == ''separator''}\r\n<li style="list-style-type: none;"> <hr class="separator" />\r\n\r\n{else}\r\n<li><a href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n\r\n{repeat string="</li></ul>" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}\r\n-->', '2013-07-14 20:26:23', '2013-07-14 20:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `cms_permissions`
--

CREATE TABLE IF NOT EXISTS `cms_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_permissions`
--

INSERT INTO `cms_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES
(1, 'Add Pages', 'Add Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 'Add Groups', 'Add Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(4, 'Add Templates', 'Add Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(5, 'Add Users', 'Add Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(6, 'Modify Any Page', 'Modify Any Page', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(7, 'Modify Groups', 'Modify Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(8, 'Modify Group Assignments', 'Modify Group Assignments', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(9, 'Modify Permissions', 'Modify Permissions for Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(11, 'Modify Templates', 'Modify Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(12, 'Modify Users', 'Modify Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(13, 'Remove Pages', 'Remove Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(14, 'Remove Groups', 'Remove Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(16, 'Remove Templates', 'Remove Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(17, 'Remove Users', 'Remove Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(18, 'Modify Modules', 'Modify Modules', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(20, 'Modify Files', 'Modify Files', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(21, 'Modify Site Preferences', 'Modify Site Preferences', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(22, 'Modify Stylesheets', 'Modify Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(23, 'Add Stylesheets', 'Add Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(24, 'Remove Stylesheets', 'Remove Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(25, 'Add Stylesheet Assoc', 'Add Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(26, 'Modify Stylesheet Assoc', 'Modify Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(27, 'Remove Stylesheet Assoc', 'Remove Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(28, 'Modify User-defined Tags', 'Modify User defined Tags', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(29, 'Clear Admin Log', 'Clear Admin Log', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(30, 'Add Global Content Blocks', 'Add Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(31, 'Modify Global Content Blocks', 'Modify Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(32, 'Remove Global Content Blocks', 'Remove Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(35, 'Modify Events', 'Modify Events', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
(36, 'View Tag Help', 'View Tag Help', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
(44, 'Manage All Content', 'Manage All Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
(46, 'Reorder Content', 'Reorder Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
(47, 'Use FileManager Advanced', 'Advanced usage of the File Manager module', '2013-07-13 19:09:02', '2013-07-13 19:09:02'),
(48, 'Manage Menu', 'Manage Menu', '2013-07-13 19:09:02', '2013-07-13 19:09:02'),
(49, 'MicroTiny View HTML Source', 'MicroTiny View HTML Source', '2013-07-13 19:09:02', '2013-07-13 19:09:02'),
(50, 'Modify News', 'Modify News', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
(51, 'Approve News', 'Approve News For Frontend Display', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
(52, 'Delete News', 'Delete News Articles', '2013-07-13 19:09:04', '2013-07-13 19:09:04'),
(53, 'Manage Themes', 'Manage Themes', '2013-07-13 19:09:07', '2013-07-13 19:09:07'),
(54, 'Modify Forms', 'Modify Forms', '2013-07-13 21:58:47', '2013-07-13 21:58:47'),
(55, 'Use Album', 'Use Album', '2013-07-14 08:21:27', '2013-07-14 08:21:27'),
(56, 'Use Showtime', 'Use Showtime', '2013-07-14 11:30:40', '2013-07-14 11:30:40'),
(57, 'Use Showtime Prefs', 'Use Showtime Prefs', '2013-07-14 11:30:40', '2013-07-14 11:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `cms_permissions_seq`
--

CREATE TABLE IF NOT EXISTS `cms_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_permissions_seq`
--

INSERT INTO `cms_permissions_seq` (`id`) VALUES
(57);

-- --------------------------------------------------------

--
-- Table structure for table `cms_routes`
--

CREATE TABLE IF NOT EXISTS `cms_routes` (
  `term` varchar(255) NOT NULL,
  `key1` varchar(50) NOT NULL,
  `key2` varchar(50) DEFAULT NULL,
  `key3` varchar(50) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`term`,`key1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_routes`
--

INSERT INTO `cms_routes` (`term`, `key1`, `key2`, `key3`, `data`, `created`) VALUES
('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:97:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-07-13 20:12:38'),
('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:70:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-07-13 20:12:38'),
('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:55:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-07-13 20:12:38'),
('/[nN]ews\\/(?P<articleid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:33:"/[nN]ews\\/(?P<articleid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2013-07-13 20:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `cms_siteprefs`
--

CREATE TABLE IF NOT EXISTS `cms_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_siteprefs`
--

INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
('enablesitedownmessage', '0', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('sitedownmessage', '<p>Site is currently down for maintenance.</p>', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('sitedownmessagetemplate', '-1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('useadvancedcss', '1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('metadata', '<meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n ', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('xmlmodulerepository', '', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('logintheme', 'OneEleven', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('global_umask', '022', NULL, NULL),
('frontendlang', '', NULL, NULL),
('frontendwysiwyg', '', NULL, NULL),
('nogcbwysiwyg', '0', NULL, NULL),
('urlcheckversion', '', NULL, NULL),
('defaultdateformat', '', NULL, NULL),
('css_max_age', '0', NULL, NULL),
('backendwysiwyg', 'MicroTiny', NULL, NULL),
('disablesafemodewarning', '0', NULL, NULL),
('allowparamcheckwarnings', '0', NULL, NULL),
('enablenotifications', '1', NULL, NULL),
('page_active', '1', NULL, NULL),
('page_showinmenu', '1', NULL, NULL),
('page_cachable', '1', NULL, NULL),
('page_metadata', '{* Add code here that should appear in the metadata section of all new pages *}', NULL, NULL),
('defaultpagecontent', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, NULL),
('default_parent_page', '-1', NULL, NULL),
('additional_editors', '', NULL, NULL),
('page_searchable', '1', NULL, NULL),
('page_extra1', '', NULL, NULL),
('page_extra2', '', NULL, NULL),
('page_extra3', '', NULL, NULL),
('sitedownexcludes', '', NULL, NULL),
('clear_vc_cache', '0', NULL, NULL),
('sitename', 'The Barn at Dunvilla', NULL, NULL),
('sitemask', 'GSv9if%sxFV@&zaP', NULL, NULL),
('CMSMailer_mapi_pref_mailer', 'smtp', NULL, NULL),
('CMSMailer_mapi_pref_host', 'localhost', NULL, NULL),
('CMSMailer_mapi_pref_port', '25', NULL, NULL),
('CMSMailer_mapi_pref_from', 'root@localhost', NULL, NULL),
('CMSMailer_mapi_pref_fromuser', 'CMS Administrator', NULL, NULL),
('CMSMailer_mapi_pref_sendmail', '/usr/sbin/sendmail', NULL, NULL),
('CMSMailer_mapi_pref_timeout', '1000', NULL, NULL),
('CMSMailer_mapi_pref_smtpauth', '0', NULL, NULL),
('CMSMailer_mapi_pref_username', '', NULL, NULL),
('CMSMailer_mapi_pref_password', '', NULL, NULL),
('CMSMailer_mapi_pref_secure', '', NULL, NULL),
('CMSPrinting_mapi_pref_overridestyle', '/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don''t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/', NULL, NULL),
('FileManager_mapi_pref_iconsize', '32px', NULL, NULL),
('FileManager_mapi_pref_uploadboxes', '5', NULL, NULL),
('FileManager_mapi_pref_showhiddenfiles', '0', NULL, NULL),
('ModuleManager_mapi_pref_module_repository', 'http://www.cmsmadesimple.org/ModuleRepository/request/v2/', NULL, NULL),
('News_mapi_pref_default_summary_template_contents', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsSummaryField">\n        {if $field->type == ''file''}\n          <img src="{$entry->file_location}/{$field->value}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, NULL),
('News_mapi_pref_current_summary_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_detail_template_contents', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsDetailField">\n        {if $field->type == ''file''}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src="{$entry->file_location}/{$field->value}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, NULL),
('News_mapi_pref_current_detail_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_form_template_contents', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=''onefield''}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', NULL, NULL),
('News_mapi_pref_current_form_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_browsecat_template_contents', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, NULL),
('News_mapi_pref_current_browsecat_template', 'Sample', NULL, NULL),
('News_mapi_pref_email_subject', 'A new News article has been posted', NULL, NULL),
('News_mapi_pref_allowed_upload_types', 'gif,png,jpeg,jpg', NULL, NULL),
('News_mapi_pref_auto_create_thumbnails', 'gif,png,jpeg,jpg', NULL, NULL),
('Search_mapi_pref_stopwords', 'i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very', NULL, NULL),
('Search_mapi_pref_usestemming', 'false', NULL, NULL),
('Search_mapi_pref_searchtext', 'Enter Search...', NULL, NULL),
('__NOTIFICATIONS__', 'a:1:{i:0;O:8:"stdClass":5:{s:8:"priority";i:1;s:4:"link";s:99:"http://localhost/barn/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=c58cfe71";s:4:"html";s:448:"Your mail settings have not been configured.  This could interfere with the ability of your website to send email messages.  You should go to <a href="http://localhost/barn/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=c58cfe71">Extensions >> CMSMailer</a> and configure the mail settings with the information provided by your host.&nbsp;This test is generated on an infrequent basis.  It may take some time for it to go away";s:4:"name";s:9:"CMSMailer";s:12:"friendlyname";s:9:"CMSMailer";}}', NULL, NULL),
('PruneAdminlog_lastexecute', '1374283590', NULL, NULL),
('pseudocron_lastrun', '1374357402', NULL, NULL),
('cms_is_uptodate', '1', NULL, NULL),
('lastcmsversioncheck', '1374296395', NULL, NULL),
('Album_mapi_pref_template', 'album_list', NULL, NULL),
('Album_mapi_pref_defaulttemplate', 'default', NULL, NULL),
('Album_mapi_pref_useinlinelinks', '1', NULL, NULL),
('Showtime_mapi_pref_uploadmethode', 'swf', NULL, NULL),
('Showtime_mapi_pref_watermark_file', 'watermark.png', NULL, NULL),
('Showtime_mapi_pref_watermark_pos', 'bottom_right', NULL, NULL),
('Showtime_mapi_pref_watermark_transparant', '70', NULL, NULL),
('Showtime_mapi_pref_watermark_padding_x', '10', NULL, NULL),
('Showtime_mapi_pref_watermark_padding_y', '10', NULL, NULL),
('Showtime_mapi_pref_load_jQuery_scripts', '1', NULL, NULL),
('MenuManager_mapi_pref_default_template', 'cssmenu_ulshadow.tpl', NULL, NULL),
('MicroTiny_mapi_pref_show_statusbar', '0', NULL, NULL),
('MicroTiny_mapi_pref_allow_resize', '1', NULL, NULL),
('MicroTiny_mapi_pref_strip_background', '1', NULL, NULL),
('MicroTiny_mapi_pref_force_blackonwhite', '0', NULL, NULL),
('MicroTiny_mapi_pref_allowimages', '1', NULL, NULL),
('MicroTiny_mapi_pref_css_styles', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates`
--

CREATE TABLE IF NOT EXISTS `cms_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `default_template` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `cms_index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_templates`
--

INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
(19, 'Minimal template', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style="float: left; width: 25%;">\r\n         {menu loadprops=0 template=''minimal_menu.tpl''}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>', NULL, NULL, 1, 0, '2006-07-25 21:22:33', '2013-07-13 20:10:54'),
(15, 'CSSMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=''Home''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: CSSMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu.tpl''}\n            <hr class="accessibility" />\n{* End Navigation *}\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2013-07-13 22:14:04'),
(16, 'CSSMenu top + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation *}\r\n      <div id="menu_vert">\r\n{* stylesheet  "Navigation: CSSMenu - Horizontal" *}\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu.tpl''}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {cms_breadcrumbs root=''Home''}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=''Sidebar''}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=''3'' detailpage=''news''}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2013-07-13 20:10:54'),
(17, 'Left simple navigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Left sidebar + 1 column" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything with class="accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1> \n       \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=''Home''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' collapse=''1''}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class="back">        \n          <div id="main">\n            <div style="float: right;">{print showbutton=true script=true}</div>\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class="accessibility" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class="clear"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2013-07-13 20:10:54'),
(18, 'Top simple navigation + left subnavigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>\n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id="menu_horiz">\n{* stylesheet  "Navigation: Simple - Horizontal" *}\n        <h2 class="accessibility">Navigation</h2>\n        {menu loadprops=0 template=''simple_navigation.tpl'' number_of_levels=''1''}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=''Home''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Sub Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Sub Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' start_level=''2'' collapse=''1''}\n                <hr class="accessibility" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2013-07-13 20:10:54'),
(20, 'ShadowMenu Tab + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation, stylesheet "Navigation: ShadowMenu - Horizontal" *}\r\n      <div id="menu_vert">\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {cms_breadcrumbs root=''Home''}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=''Sidebar''}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=''3'' detailpage=''news''}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-01 04:30:42', '2013-07-13 20:10:54'),
(21, 'ShadowMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=''Home''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: ShadowMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\n            <hr class="accessibility" />\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2009-05-01 23:17:51', '2013-07-13 20:10:54'),
(22, 'NCleanBlue', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel="canonical" href="{$canonical}" />{elseif isset($content_obj)}<link rel="canonical" href="{$content_obj->GetURL()}" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir="start" rellink=1}\r\n{cms_selflink dir="prev" rellink=1}\r\n{cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type="text/javascript"  src="uploads/NCleanBlue/js/ie6fix.js"></script>\r\n<script type="text/javascript">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(''.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version'');\r\n</script>\r\n<style type="text/css">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand("BackgroundImageCache", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="ncleanblue">\r\n      <div id="pagewrapper" class="core-wrap-960 core-center">\r\n{* start accessibility skip links *}\r\n        <ul class="accessibility">\r\n          <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n          <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id="header" class="util-clearfix">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  "Layout: NCleanBlue" *}\r\n          <div id="logo" class="core-float-left">\r\n            {cms_selflink dir="start" text="$sitename"}\r\n          </div>\r\n          \r\n{* Start Search, the input "Submit" is using an image, CSS: div#search input.search-button *}\r\n          <div id="search" class="core-float-right">\r\n            {search search_method="post"}\r\n          </div>\r\n{* End Search *}\r\n          <span class="util-clearb">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  "Layout: NCleanBlue", starting at Menu  ROOT *}\r\n          <h2 class="accessibility util-clearb">Navigation</h2>\r\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\r\n          <div class="page-menu util-clearfix">\r\n          {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n          </div>\r\n          <hr class="accessibility util-clearb" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id="content" class="util-clearfix"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          <div title="CMS - {cms_version} - {cms_versionname}" id="version">\r\n          {capture assign=''cms_version''}{cms_version|lower}{/capture}{"/-([a-z]).*/"|preg_replace:"":$cms_version}\r\n          </div>\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id="bar" class="util-clearfix">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class="breadcrumbs core-float-right">\r\n              {cms_breadcrumbs root=''Home''}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class="accessibility util-clearb" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id="left" class="core-float-left">\r\n            <div class="sbar-top">\r\n              <h2 class="sbar-title">News</h2>\r\n            </div>\r\n            <div class="sbar-main">\r\n{* Start News *}\r\n              <div id="news">\r\n              {news number=''3'' detailpage=''news''}\r\n              </div>\r\n              <img class="screen" src="uploads/NCleanBlue/screen-1.6.jpg" width="139" height="142" title="CMS - {cms_version} - {cms_versionname}" alt="CMS - {cms_version} - {cms_versionname}" />\r\n{* End News *} \r\n            </div>\r\n            <span class="sbar-bottom">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id="main"  class="core-float-right">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class="main-top">\r\n              <div class="print core-float-right">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class="main-main util-clearfix">\r\n              <h1 class="title">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class="main-bottom">\r\n              <div class="right49 core-float-right">\r\n              {anchor anchor=''main'' text=''^&nbsp;&nbsp;Top''}\r\n              </div>\r\n              <div class="left49 core-float-left">\r\n                <span>\r\n                  {cms_selflink dir="previous" label="Previous page: "}&nbsp;\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir="next"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class="accessibility" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class="util-clearb">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id="footer-wrapper">\r\n        <div id="footer" class="core-wrap-960">\r\n{* first foot menu *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  number_of_levels=''1''}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  start_level="2"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called "footer" *}\r\n          <div class="block cms core-float-left">\r\n            {global_content name=''footer''}\r\n          </div>\r\n          \r\n          <span class="util-clearb">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-06 14:20:10', '2013-07-13 20:10:54');
INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
(23, 'Simplex', '{strip}\r\n{process_pagedata}\r\n\r\n{* With cms_lang_info we retrieve current language information, assign gives us $nls variable we can work with *}\r\n{cms_lang_info assign=''nls''}\r\n\r\n{* using strip as we don''t want useless whitespace, especially not before doctype *}\r\n{/strip}<!doctype html>\r\n<html lang=''{if isset($nls)}{$nls->htmlarea()}{/if}'' dir=''{if isset($nls)}{$nls->direction()}{/if}''>\r\n<head>\r\n<meta charset=''{if isset($nls)}{$nls->encoding()}{/if}''>\r\n<title>{title} - {sitename}</title>\r\n<meta name=''viewport'' content=''initial-scale=1.0 maximum-scale=1.0 user-scalable=no'' />\r\n<meta name=''HandheldFriendly'' content=''true'' />\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n{metadata}\r\n{* See in news detail template how cannonical url can be assigned from module *}\r\n{if isset($canonical)}<link rel=''canonical'' href=''{$canonical}'' />{elseif isset($content_obj)}<link rel=''canonical'' href=''{$content_obj->GetURL()}'' />{/if}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n{cms_stylesheet}\r\n{* using google fonts *}\r\n<link href=''//fonts.googleapis.com/css?family=Oswald:400,700'' rel=''stylesheet'' type=''text/css''>\r\n{* learning IE lower then Version 9 some html5 *}\r\n<!--[if lt IE 9]>\r\n<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>\r\n<![endif]-->\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n{cms_selflink dir=''start'' rellink=''1''}\r\n{cms_selflink dir=''prev'' rellink=''1''}\r\n{cms_selflink dir=''next'' rellink=''1''}\r\n</head>\r\n<body id=''boxed''>\r\n<!-- #wrapper (wrapping content in a box) -->\r\n<div class=''container centered'' id=''wrapper''>\r\n    <!-- accessibility links, jump to nav or content -->\r\n    <ul class="visuallyhidden">\r\n        <li>{anchor anchor=''nav'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n    </ul>\r\n    <!-- accessibility //-->\r\n    <!-- .top (top section of page containing logo, navigation search...) -->\r\n    <header class=''top''>\r\n        <div class=''row header''>\r\n            <!-- .logo (cmsms logo on the left side) -->\r\n            <div class=''logo grid_4''>\r\n                <a href=''{root_url}'' title=''{sitename}''>\r\n                    <img src=''{uploads_url}/simplex/images/cmsmadesimple-logo.png'' width=''227'' height=''59'' alt=''{sitename}'' />\r\n                    <span class=''palm''></span>\r\n                </a>\r\n            </div>\r\n            <!-- .logo //-->\r\n            <!-- .main-navigation (main navigation on the right side) -->\r\n            <nav class=''main-navigation grid_8 noprint'' id=''nav'' role=''navigation''>\r\n                {menu template=''Simplex_Navigation.tpl''}\r\n            </nav>\r\n            <!-- .main-navigation //-->\r\n        </div>\r\n        <!-- .header-bottom (bottom part of header containing catchphrase and search field) -->\r\n        <div class=''row header-bottom''>\r\n            <section class=''phrase''>\r\n                <span class=''grid_7''>Content Management System the way it was meant to be.</span>\r\n                {strip}\r\n                {search assign=''is_search''}{* assigned search module tag, now we can build different search template for this site template and have fun with html5, Read http://www.w3.org/TR/html-markup/input.search.html for full attirbute specs *}\r\n                {if isset($is_search)}\r\n                <div class=''grid_5 search noprint'' role=''search''>\r\n                        {$startform}\r\n                        <label for=''{$search_actionid}searchinput'' class=''visuallyhidden''>{$searchprompt}:</label>\r\n                            <input type=''search'' class=''search-input'' id=''{$search_actionid}searchinput'' name=''{$search_actionid}searchinput'' size=''20'' maxlength=''50'' value='''' placeholder=''{$searchtext}'' />\r\n                            {if isset($hidden)}{$hidden}{/if}\r\n                        {$endform}\r\n                </div>\r\n                {/if}{/strip}\r\n            </section>\r\n        </div>\r\n        <div class=''clear''></div>\r\n        <!-- .header-bottom //-->\r\n        <!-- .banner (banner area for a slider or teaser image) -->\r\n        <section class=''banner row noprint'' role=''banner''>\r\n            <div class=''banner-text''>\r\n                <ul>\r\n                    <li>Weddings</li>\r\n                    <li>Reunions</li>\r\n                    <li>Parties</li>\r\n                    <li>Special Events</li>\r\n                </ul>\r\n            </div>\r\n            <div class=''banner-image cf''>\r\n            {strip}\r\n                {* you do not need a module for every simple site functionality. For example you can build a simple slideshow\r\n                with php glob function (http://www.php.net/manual/en/function.glob.php) without wasting your system resources \r\n                by using modules or plugins.\r\n                Below would search for files matching .jpg in folder named teaser in simplex theme folder *}\r\n                {assign var=''teaser'' value=''uploads/simplex/teaser/*.jpg''|glob}\r\n                    {foreach from=$teaser item=''one''}\r\n                        <div><img src=''{root_url}/{$one}'' width=''852'' height=''275'' alt='''' /></div>\r\n                    {/foreach}\r\n            {/strip}\r\n            </div>\r\n        </section>\r\n        <!-- .banner //-->\r\n    </header>\r\n    <!-- .top //-->\r\n    <!-- .content-wrapper (wrapping div for content area) -->\r\n    <div class=''content-wrapper cf''>\r\n        <!-- .content (display content first) -->\r\n        <div class=''content-inner grid_8 push_4''>\r\n            <!-- .content-top (breadcrumbs and print button) -->\r\n            <div class=''content-top cf'' itemscope itemtype=''http://data-vocabulary.org/Breadcrumb''>            \r\n                {* menu manager has action breadcrumbs since 1.11, you can use {cms_breadcrumbs} tag or {menu action=''breadcrumbs''} as below *}\r\n                {menu action=''breadcrumbs''}                \r\n                {* print tag from CMSPrinting Module *}\r\n                {print showbutton=''false'' class=''printbutton noprint''}                \r\n            </div>\r\n            <!-- .content-top //-->\r\n            <!-- .content (actual content with title and content tags) -->\r\n            <article class=''content'' id=''main'' role=''main''>\r\n                <h1>{title}</h1> {* title tag *}\r\n                    {content} {* content entered in page editor area *}\r\n            </article>\r\n            <!-- .content //-->\r\n        </div>\r\n        <!-- .content-inner //-->\r\n        <!-- .sidebar (then show sidebar) -->\r\n        <aside class=''sidebar grid_4 pull_8''>\r\n            {* sample of using News Module tag for summary of latest two articles *}\r\n            {news summarytemplate=''Summary_Simplex'' number=''2'' detailpage=''news'' detailtemplate=''Simplex_Detail''}\r\n        </aside>\r\n        <!-- .sidebar //-->\r\n        <div class=''cf grid_8 prefix_4''>\r\n            <span class=''previous''>{cms_selflink dir=''previous''}</span>\r\n            <span class=''next''>{cms_selflink dir=''next''}</span>\r\n        </div>\r\n    </div>\r\n    <!-- .content-wrapper //-->\r\n    <!-- .footer (footer area) -->\r\n    <footer class=''row footer''>\r\n        <span class=''back-top''>{anchor anchor=''main'' text=''&uarr;''}</span>\r\n        <section class=''grid_4 copyright''>\r\n            <ul class=''social cf''>\r\n                <li class=''twitter''><a title=''Twitter'' href=''http://twitter.com/#!/cmsms''>Twitter</a></li>\r\n                <li class=''facebook''><a title=''Facebook'' href=''https://www.facebook.com/cmsmadesimple''>Facebook</a></li>\r\n                <li class=''linkedin''><a title=''LinkedIn'' href=''http://www.linkedin.com/groups?gid=1139537''>LinkedIn</a></li>\r\n                <li class=''youtube''><a title=''YouTube'' href=''http://www.youtube.com/user/cmsmadesimple''>YouTube</a></li>\r\n            </ul>\r\n            {global_content name=''footer''}\r\n        </section>\r\n        <section class=''grid_8 noprint''>\r\n            <nav class=''footer-navigation row''>\r\n                {menu template=''Simplex_Navigation.tpl'' excludeprefix=''home'' number_of_levels=''2'' loadprops=''0''}\r\n            </nav>\r\n        </section> \r\n    </footer>\r\n    <div class=''clear''></div>\r\n</div>\r\n<!-- #wrapper //--> \r\n{cms_jquery exclude=''jquery-ui.min.js,jquery.ui.nestedSortable.js,jquery.json.min.js'' append=''uploads/simplex/js/functions.min.js''}\r\n</body>\r\n</html>', '', '', 1, 0, '2012-04-23 13:36:19', '2013-07-13 20:10:54'),
(24, 'modliv', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir="start" rellink=1}\r\n{cms_selflink dir="prev" rellink=1}\r\n{cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--Fireworks 8 Dreamweaver 8 target.  Created Sun Apr 05 10:26:58 GMT+1000 (AUS Eastern Standard Time) 2009-->\r\n<link rel="stylesheet" type="text/css" href="images/template/modliv/stylesheet.css">\r\n</head>\r\n<body bgcolor="#ffffff" topmargin="0">\r\n<div align="center">\r\n   		 <!-- Begin TopArea -->\r\n		 <div id="toparea">\r\n		 <div id="search">{search}</div>\r\n		  <!-- Begin TopImage -->\r\n\r\n\r\n <!-- Begin Wrapper -->\r\n   <div id="wrapper">\r\n		 \r\n		 <!-- Begin Left Column -->\r\n		 <div id="leftcolumn">\r\n		 \r\n		 <div id="button">{menu collapse=''1''}</div>		\r\n		 <div id="content">{global_content name=''news4''}</div>\r\n		 </div>\r\n		 <!-- End Left Column -->\r\n		 \r\n		 <!-- Begin Right Column -->\r\n		 <div id="rightcolumn">\r\n		       \r\n	     <div id="pagetitle">{title}</div>\r\n	     <div id="content">{content}</div>		 \r\n		 </div>\r\n		 <!-- End Right Column -->\r\n		 \r\n   </div>\r\n   <!-- End Wrapper -->\r\n      		 <!-- Begin Base -->\r\n		 <div id="base">\r\n		 <div id="sitename">{sitename}</div>\r\n</div>\r\n</body>\r\n</html>\r\n', '', '', 1, 0, '2013-07-13 19:15:27', '2013-07-13 20:10:54'),
(25, 'culinary // culinary', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<title>{sitename} - {title}</title>\r\n{metadata}\r\n{cms_stylesheet}\r\n</head>\r\n<body>\r\n<div id="wrapper">\r\n  <div id="header">\r\n    <div id="logo">\r\n      <h1>{sitename}</h1>\r\n      <h2>your slogan here</h2>\r\n    </div>\r\n    <!-- end div#logo -->\r\n  </div>\r\n  <!-- end div#header -->\r\n  <div id="menu">\r\n    {menu template="culinary // minimal_menu" number_of_levels="1"}\r\n  </div>\r\n  <!-- end div#menu -->\r\n  <div id="page">\r\n    <div id="page-bgtop">\r\n      <div id="content">\r\n        <div class="post">\r\n          <h2 class="title">{title}</h2>\r\n\r\n          <div class="entry">\r\n            {content}\r\n          </div>\r\n          <div class="meta">\r\n            <p class="links">{edit} | {print}</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <!-- end div#content -->\r\n      <div id="sidebar">\r\n        <ul>\r\n          <li>\r\n            <h2>Navigation</h2>\r\n            {menu template="culinary // minimal_menu" start_level="1" collapse="1"}\r\n          </li>\r\n          <li>\r\n            <h2>Bebindum Mauris</h2>\r\n            <ul>\r\n              <li><a href="#">Nec metus sed donec</a></li>\r\n              <li><a href="#">Magna lacus bibendum mauris</a></li>\r\n              <li><a href="#">Velit semper nisi molestie</a></li>\r\n              <li><a href="#">Eget tempor eget nonummy</a></li>\r\n              <li><a href="#">Nec metus sed donec</a></li>\r\n              <li><a href="#">Velit semper nisi molestie</a></li>\r\n              <li><a href="#">Eget tempor eget nonummy</a></li>\r\n              <li><a href="#">Velit semper nisi molestie</a></li>\r\n            </ul>\r\n          </li>\r\n        </ul>\r\n      </div>\r\n      <!-- end div#sidebar -->\r\n      <div style="clear: both; height: 1px"></div>\r\n    </div>\r\n  </div>\r\n  <!-- end div#page -->\r\n\r\n<!-- \r\nThis theme is released free for use under creative commons licence. \r\nAll links in the footer should remain intact. \r\nThese links are all family friendly and will not hurt your site in any way. \r\n-->\r\n\r\n  <div id="footer">\r\n    <p>Copyright &copy; 2010 {sitename}. All Rights Reserved. Design by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>.</p>\r\n  </div>\r\n  <!-- end div#footer -->\r\n</div>\r\n<!-- end div#wrapper -->\r\n</body>\r\n</html>', '', '', 1, 0, '2013-07-13 19:29:14', '2013-07-13 20:10:54'),
(26, 'unbound // Unbound', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{if empty($lang)}en{else}{$lang}{/if}" >\r\n<head>\r\n<title>{sitename} - {title}</title>\r\n{if isset($canonical)}<link rel="canonical" href="{$canonical}" />{elseif isset($content_obj)}<link rel="canonical" href="{$content_obj->GetURL()}" />{/if}\r\n\r\n{metadata}\r\n{cms_stylesheet}\r\n\r\n{cms_selflink dir=''start'' rellink=1}\r\n{cms_selflink dir=''prev'' rellink=1}\r\n{cms_selflink dir=''next'' rellink=1}\r\n\r\n</head>\r\n<body>\r\n\r\n<!-- TEMPLATE BUILDER -->\r\n{content block="Display Extra Page Data" oneline="true" size="1" default="+" assign="show_extra"}\r\n{if empty($show_extra)}{assign var="show_extra" value="+"}{/if}\r\n{content block="Display Search" oneline="true" size="1" default="+" assign="show_search"}\r\n{if empty($show_search)}{assign var="show_search" value="+"}{/if}\r\n<!-- END TEMPLATE BUILDER -->\r\n	\r\n<a name="main"></a>\r\n\r\n	<!-- HEADER -->\r\n	<div id="header-wrap">			\r\n		<div id="header-photo">\r\n		<!--<img alt="header photo" src="/barn/uploads/unbound/header-photo.jpg" width="890" height="290" />-->\r\n{Showtime show=''1''}\r\n	</div>\r\n		\r\n	<!--<h1 id="logo-text"><a href="{root_url}" title="{sitename}">{sitename}</a></h1>-->	\r\n	<p id="intro">{page_attr key="extra1"}</p>		\r\n	\r\n	<!-- TOP-NAVIGATION -->	\r\n	<div  id="nav">\r\n		{menu template="unbound // minimal_menu" number_of_levels="1"}\r\n	        \r\n	</div>		\r\n		\r\n	{if $show_search == "+"}\r\n	<!-- SEARCH -->		\r\n    <div id="quick-search">\r\n        {cms_module module=''Search'' resultpage=''search'' search_method=''post''}\r\n	</div>\r\n	<!-- END SEARCH -->\r\n	{/if}	\r\n	\r\n	</div>\r\n	<!-- END HEADER -->\r\n	\r\n	\r\n	<div id="content-outer" class="clear">\r\n	<div id="content-wrapper">\r\n	\r\n	<!-- CONTENT -->\r\n	<div id="content">\r\n	<div class="col-one">\r\n	{if $show_extra == "+"}\r\n	<h2>{title}</h2>\r\n	{/if}\r\n	\r\n	{content}\r\n\r\n	</div>\r\n	</div>\r\n	<!-- END CONTENT -->\r\n	\r\n	<!-- TEMPLATE BUILDER -->\r\n		{content block="Display News" oneline="true" size="1" default="+" assign="show_news"}\r\n		{if empty($show_news)}{assign var="show_news" value="+"}{/if}\r\n		{content block="Display Sidebar Menu" oneline="true" size="1" default="+" assign="show_sidebarmenu"}\r\n		{if empty($show_sidebarmenu)}{assign var="show_sidebarmenu" value="+"}{/if}\r\n		{content block="Display Recently Updated" oneline="true" size="1" default="+" assign="show_recently"}\r\n		{if empty($show_recently)}{assign var="show_recently" value="+"}{/if}\r\n		{content block="Display News Categories" oneline="true" size="1" default="+" assign="show_newscat"}\r\n		{if empty($show_newscat)}{assign var="show_newscat" value="+"}{/if}\r\n		{content block="Display Footer Menu" oneline="true" size="1" default="+" assign="show_footermenu"}\r\n		{if empty($show_footermenu)}{assign var="show_footermenu" value="+"}{/if}\r\n	<!-- END TEMPLATE BUILDER -->	\r\n		\r\n	<!-- SIDEBAR -->\r\n	<div class="col-two">\r\n	\r\n	{if $show_sidebarmenu == "+"}\r\n	<!-- MENU -->	\r\n	<h3>Explore...</h3>\r\n    <div class="sidemenu">\r\n	{menu template="unbound // minimal_menu" start_level="2"}\r\n    </div>\r\n    <div class-"second menu">\r\n      <h3>Events</h3>\r\n         {menu template="EventMenu" start_level="1"}\r\n    </div>\r\n	<!-- END MENU -->\r\n	{/if}\r\n			\r\n	</div>\r\n		\r\n	<div class="col-three">\r\n	{photoblock1}\r\n	{if $show_news == "+"}\r\n	<!-- NEWS -->\r\n	<div class="news">\r\n	{cms_module module=''News'' detailpage=''news'' number=''3''}\r\n	</div>\r\n	<!-- END NEWS -->\r\n	{/if}				\r\n		\r\n	</div>	\r\n	\r\n	</div></div>\r\n\r\n	<!-- FOOTER -->\r\n	<div id="footer-wrapper">	\r\n	<div id="footer"><div class="col-one">	\r\n	\r\n	{if $show_newscat == "+"}\r\n	<!-- NEWS CATEGORIES -->\r\n	<h3>News Categories</h3>\r\n	{cms_module module=''News'' action=''browsecat'' detailpage=''news''}\r\n	<!-- END NEWS CATEGORIES -->\r\n	{/if}	\r\n						\r\n	</div></div>\r\n		\r\n	<div class="col-two">\r\n	\r\n	{if $show_recently == "+"}\r\n	<!-- RECENTLY UPDATED -->\r\n	<h3>Recently Updated</h3>			\r\n		{recently_updated number=''3'' leadin=''Updated: '' dateformat=''D d M Y G:i''}\r\n	<!-- END RECENTLY UPDATED -->\r\n	{/if}	\r\n				\r\n	</div>		\r\n	\r\n	<div class="col-three">	\r\n		{if $show_footermenu == "+"}\r\n		<!-- FOOTER MENU -->\r\n		<h3>Categories</h3>\r\n		{cms_module module=''menumanager'' template=''bulletmenu'' number_of_levels=''1'' template=''minimal_menu.tpl'' loadprops=''1''}\r\n		<!-- END FOOTER MENU -->\r\n		{/if}		\r\n	</div>	\r\n	\r\n		<div id="footer-bottom">\r\n		<div class="bottom-left">			\r\n		{global_content name=''footer''}\r\n		<!-- \r\n		  @Template by [icms.info]\r\n		  @Version: 2.1-20090805\r\n\r\n		-->\r\n<!-- <a href="http://www.icms.info/">Create Website with CMS Made Simple</a>	|| Design by : <a href="index.html">styleshout</a>	-->											\r\n		</div>	\r\n			\r\n			<p class="bottom-right" >\r\n				{cms_selflink dir="prev" label="◄◄ "} |\r\n				{cms_selflink dir="next" label=" ►►" label_side="right"} |					\r\n				<a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | \r\n		   	<a href="http://validator.w3.org/check/referer">XHTML</a>\r\n\r\n			</p>\r\n	\r\n		</div>	\r\n			\r\n	</div>\r\n	<!-- footer ends here -->\r\n\r\n</body>\r\n</html>', '', '', 1, 1, '2013-07-13 20:10:29', '2013-07-19 07:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates_seq`
--

CREATE TABLE IF NOT EXISTS `cms_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_templates_seq`
--

INSERT INTO `cms_templates_seq` (`id`) VALUES
(26);

-- --------------------------------------------------------

--
-- Table structure for table `cms_userplugins`
--

CREATE TABLE IF NOT EXISTS `cms_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text,
  `description` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_userplugins`
--

INSERT INTO `cms_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES
(1, 'user_agent', '//Code to show the user''s user agent information.\r\necho $_SERVER["HTTP_USER_AGENT"];', 'Code to show the users user agent information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 'custom_copyright', '//set start to date your site was published\r\n$startCopyRight=''2004'';\r\n\r\n// check if start year is this year\r\nif(date(''Y'') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.''-''. date(''Y'');\r\n}', 'Code to output copyright information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(3, 'photoblock1', 'echo "Photo Gallery";\r\necho ''<div>\r\n<img src="uploads/images/1-mendota-fireplace.jpg" width="150">\r\n\r\n<img src="uploads/images/1837171-large.jpg" width="150">\r\n\r\n\r\n</div>'';\r\n\r\n//<img src="uploads/images/1837171-large.jpg" width="150">', '', '2013-07-14 10:30:50', '2013-07-14 11:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_userplugins_seq`
--

CREATE TABLE IF NOT EXISTS `cms_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_userplugins_seq`
--

INSERT INTO `cms_userplugins_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_userprefs`
--

CREATE TABLE IF NOT EXISTS `cms_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`preference`),
  KEY `cms_index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_userprefs`
--

INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES
(1, 'use_wysiwyg', '1', NULL),
(1, 'default_cms_language', 'en_US', NULL),
(1, 'date_format_string', '%x %X', NULL),
(1, 'admintheme', 'OneEleven', NULL),
(1, 'bookmarks', 'on', NULL),
(1, 'recent', 'on', NULL),
(1, 'indent', 'on', NULL),
(1, 'ajax', '0', NULL),
(1, 'paging', '0', NULL),
(1, 'hide_help_links', '0', NULL),
(1, 'wysiwyg', 'MicroTiny', NULL),
(1, 'collapse', '', NULL),
(1, 'filemanager_cwd', 'uploads/images', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES
(1, 'dunnadmin', '5c1fb5e12b102308c140568ed3d0b956', 1, '', '', 'wmcltd@gmail.com', 1, '2006-07-25 21:22:33', '2009-05-13 07:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users_seq`
--

CREATE TABLE IF NOT EXISTS `cms_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users_seq`
--

INSERT INTO `cms_users_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_groups`
--

CREATE TABLE IF NOT EXISTS `cms_user_groups` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_user_groups`
--

INSERT INTO `cms_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES
(1, 1, '2006-07-25 21:22:33', '2006-07-25 21:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `cms_version`
--

CREATE TABLE IF NOT EXISTS `cms_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_version`
--

INSERT INTO `cms_version` (`version`) VALUES
(36);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
