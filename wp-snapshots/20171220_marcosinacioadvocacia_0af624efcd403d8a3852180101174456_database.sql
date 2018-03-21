/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2018-01-01 17:45:09 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "Um comentarista do WordPress", "wapuu@wordpress.example", "https://wordpress.org/", "", "2017-12-02 16:42:35", "2017-12-02 18:42:35", "Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "1", "", "", "0", "0");
INSERT INTO `wp_comments` VALUES("2", "123", "pochar", "pocharr@gmail.com", "", "::1", "2017-12-13 16:58:46", "2017-12-13 18:58:46", "Testando comentários", "0", "1", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36", "", "0", "1");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("1", "20171220_marcosinacioadvocacia", "4b6c5034b0162ba07422171220175103", "100", "2017-12-20 18:10:28", "pochar", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-12-20 17:51:03\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.37\";s:10:\"VersionPHP\";s:6:\"5.6.31\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:30:\"20171220_marcosinacioadvocacia\";s:4:\"Hash\";s:32:\"4b6c5034b0162ba07422171220175103\";s:8:\"NameHash\";s:63:\"20171220_marcosinacioadvocacia_4b6c5034b0162ba07422171220175103\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:66:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp\";s:8:\"StoreURL\";s:47:\"http://localhost/advocacia-marcos/wp-snapshots/\";s:8:\"ScanFile\";s:73:\"20171220_marcosinacioadvocacia_4b6c5034b0162ba07422171220175103_scan.json\";s:7:\"Runtime\";s:10:\"23.71 sec.\";s:7:\"ExeSize\";s:8:\"443.39KB\";s:7:\"ZipSize\";s:7:\"87.57MB\";s:6:\"Status\";N;s:6:\"WPUser\";s:6:\"pochar\";s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:75:\"20171220_marcosinacioadvocacia_4b6c5034b0162ba07422171220175103_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:49:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos\";s:4:\"Size\";i:91820067;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:58:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-admin\";i:1;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/uploads\";i:2;s:70:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/languages\";i:3;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/plugins\";i:4;s:67:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/themes\";i:5;s:61:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-includes\";}}s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:77:\"20171220_marcosinacioadvocacia_4b6c5034b0162ba07422171220175103_installer.php\";s:4:\"Size\";i:454027;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:187151;s:4:\"File\";s:76:\"20171220_marcosinacioadvocacia_4b6c5034b0162ba07422171220175103_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";s:143:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp/20171220_marcosinacioadvocacia_4b6c5034b0162ba07422171220175103_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}");
INSERT INTO `wp_duplicator_packages` VALUES("2", "20171220_marcosinacioadvocacia", "60a133f3f1f7ad069539171220232132", "100", "2017-12-20 23:22:15", "pochar", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-12-20 23:21:32\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.37\";s:10:\"VersionPHP\";s:6:\"5.6.31\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:2;s:4:\"Name\";s:30:\"20171220_marcosinacioadvocacia\";s:4:\"Hash\";s:32:\"60a133f3f1f7ad069539171220232132\";s:8:\"NameHash\";s:63:\"20171220_marcosinacioadvocacia_60a133f3f1f7ad069539171220232132\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:66:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp\";s:8:\"StoreURL\";s:47:\"http://localhost/advocacia-marcos/wp-snapshots/\";s:8:\"ScanFile\";s:73:\"20171220_marcosinacioadvocacia_60a133f3f1f7ad069539171220232132_scan.json\";s:7:\"Runtime\";s:10:\"13.86 sec.\";s:7:\"ExeSize\";s:8:\"443.39KB\";s:7:\"ZipSize\";s:7:\"87.57MB\";s:6:\"Status\";N;s:6:\"WPUser\";s:6:\"pochar\";s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:75:\"20171220_marcosinacioadvocacia_60a133f3f1f7ad069539171220232132_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:49:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos\";s:4:\"Size\";i:91820263;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:58:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-admin\";i:1;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/uploads\";i:2;s:70:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/languages\";i:3;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/plugins\";i:4;s:67:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/themes\";i:5;s:61:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-includes\";}}s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:77:\"20171220_marcosinacioadvocacia_60a133f3f1f7ad069539171220232132_installer.php\";s:4:\"Size\";i:454027;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:190590;s:4:\"File\";s:76:\"20171220_marcosinacioadvocacia_60a133f3f1f7ad069539171220232132_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";s:143:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp/20171220_marcosinacioadvocacia_60a133f3f1f7ad069539171220232132_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}");
INSERT INTO `wp_duplicator_packages` VALUES("3", "20171220_marcosinacioadvocacia", "0af624efcd403d8a3852180101174456", "20", "2018-01-01 17:45:09", "pochar", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-01 17:44:56\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.37\";s:10:\"VersionPHP\";s:6:\"5.6.31\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:3;s:4:\"Name\";s:30:\"20171220_marcosinacioadvocacia\";s:4:\"Hash\";s:32:\"0af624efcd403d8a3852180101174456\";s:8:\"NameHash\";s:63:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:66:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp\";s:8:\"StoreURL\";s:47:\"http://localhost/advocacia-marcos/wp-snapshots/\";s:8:\"ScanFile\";s:73:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";s:6:\"pochar\";s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:75:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:49:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-01 17:44:56\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.37\";s:10:\"VersionPHP\";s:6:\"5.6.31\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:30:\"20171220_marcosinacioadvocacia\";s:4:\"Hash\";s:32:\"0af624efcd403d8a3852180101174456\";s:8:\"NameHash\";s:63:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:66:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp\";s:8:\"StoreURL\";s:47:\"http://localhost/advocacia-marcos/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:77:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:76:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:58:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-admin\";i:1;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/uploads\";i:2;s:70:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/languages\";i:3;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/plugins\";i:4;s:67:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/themes\";i:5;s:61:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://localhost/advocacia-marcos", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://localhost/advocacia-marcos", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "Marcos Inácio Advocacia", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Só mais um site WordPress", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "pocharr@gmail.com", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "0", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "j \\d\\e F \\d\\e Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "H:i", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "j \\d\\e F \\d\\e Y, H:i", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:25:\"duplicator/duplicator.php\";i:2;s:49:\"fb-messenger-live-chat/fb-messenger-live-chat.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "advocacia-m", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "advocacia-m", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_whitelist", "1", "yes");
INSERT INTO `wp_options` VALUES("43", "blacklist_keys", "", "no");
INSERT INTO `wp_options` VALUES("44", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("46", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("47", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("48", "db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("49", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("51", "blog_public", "1", "yes");
INSERT INTO `wp_options` VALUES("52", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("53", "show_on_front", "posts", "yes");
INSERT INTO `wp_options` VALUES("54", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("55", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("56", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("57", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("59", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("60", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("61", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("62", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("63", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("64", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("65", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("67", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("68", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("69", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("70", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("71", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("72", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("73", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("74", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("75", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("76", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("77", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_categories", "a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categorias\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("79", "widget_text", "a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:10:\"Quem Somos\";s:4:\"text\";s:207:\"A Marcos Inácio Advocacia atua desde 1990, trabalhando e evoluindo para bem servir a seus clientes, nas mais diversas áreas do Direito, sempre de forma criativa, segura , inovadora, personalizada e eficaz.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("80", "widget_rss", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("81", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("82", "timezone_string", "America/Sao_Paulo", "yes");
INSERT INTO `wp_options` VALUES("83", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "page_on_front", "0", "yes");
INSERT INTO `wp_options` VALUES("85", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("86", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("88", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("90", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("91", "initial_db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("92", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("93", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("94", "WPLANG", "pt_BR", "yes");
INSERT INTO `wp_options` VALUES("95", "widget_search", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("96", "widget_recent-posts", "a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:29:\"Talvez você não tenha visto\";s:6:\"number\";i:3;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("97", "widget_recent-comments", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_archives", "a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "widget_meta", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("100", "sidebars_widgets", "a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"main-sidebar\";a:5:{i:0;s:12:\"categories-3\";i:1;s:7:\"pages-2\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-2\";i:4;s:24:\"odin_facebook_like_box-2\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_pages", "a:2:{i:2;a:3:{s:5:\"title\";s:19:\"Áreas de Atuação\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:14:\"88,90,9,28,100\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("104", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("107", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("108", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "cron", "a:4:{i:1514832155;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1514832182;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1514834203;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("111", "theme_mods_twentyseventeen", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512240185;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("123", "can_compress_scripts", "1", "no");
INSERT INTO `wp_options` VALUES("140", "current_theme", "Odin", "yes");
INSERT INTO `wp_options` VALUES("141", "theme_mods_advocacia-marcos", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512240847;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}", "yes");
INSERT INTO `wp_options` VALUES("142", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("144", "theme_mods_advocacia-m", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"main-menu\";i:4;s:11:\"header-menu\";i:0;s:11:\"footer-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `wp_options` VALUES("145", "widget_odin_facebook_like_box", "a:2:{i:2;a:9:{s:5:\"title\";s:31:\"Curta Nossa Página do Facebook\";s:3:\"url\";s:47:\"https://www.facebook.com/MarcosInacioAdvocacia/\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:12:\"color_scheme\";s:5:\"light\";s:13:\"friends_faces\";i:1;s:10:\"show_posts\";i:1;s:11:\"show_header\";i:0;s:11:\"show_border\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("148", "recently_activated", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("149", "acf_version", "5.6.6", "yes");
INSERT INTO `wp_options` VALUES("159", "category_children", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("167", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("230", "ztb_status_message", "1", "yes");
INSERT INTO `wp_options` VALUES("231", "ztb_source", "", "yes");
INSERT INTO `wp_options` VALUES("232", "ztb_id", "284331", "yes");
INSERT INTO `wp_options` VALUES("233", "ztb_domainid", "e19a9dcc58df0641addfa678a385fd75", "yes");
INSERT INTO `wp_options` VALUES("234", "ztb_email", "matheusbelt@hotmail.com", "yes");
INSERT INTO `wp_options` VALUES("235", "access_key", "", "yes");
INSERT INTO `wp_options` VALUES("236", "ztb_access_key", "8fd9210895731a7963a952363200affe3c7158c3d6e98176c23291e88236dac74ec064752c97143bc0aa9d6a69d2d5bcb308d2202ec6f4c515069e562aeb4fab11830dde82ae053993b5141734b98d20de69b8b53682fbcdcda42ec9f2fd0d6d3bd3209eef7ceed5493cca8b019ef3581cde693c9e7fc1dab6551e4205fc8f08", "yes");
INSERT INTO `wp_options` VALUES("237", "ztb_status_disconnect", "2", "yes");
INSERT INTO `wp_options` VALUES("272", "duplicator_settings", "a:10:{s:7:\"version\";s:6:\"1.2.30\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}", "yes");
INSERT INTO `wp_options` VALUES("273", "duplicator_version_plugin", "1.2.30", "yes");
INSERT INTO `wp_options` VALUES("274", "duplicator_ui_view_state", "a:3:{s:22:\"dup-pack-archive-panel\";s:1:\"0\";s:24:\"dup-pack-installer-panel\";s:1:\"0\";s:22:\"dup-pack-storage-panel\";s:1:\"0\";}", "yes");
INSERT INTO `wp_options` VALUES("275", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-01 17:44:56\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.37\";s:10:\"VersionPHP\";s:6:\"5.6.31\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:30:\"20171220_marcosinacioadvocacia\";s:4:\"Hash\";s:32:\"0af624efcd403d8a3852180101174456\";s:8:\"NameHash\";s:63:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:66:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp\";s:8:\"StoreURL\";s:47:\"http://localhost/advocacia-marcos/wp-snapshots/\";s:8:\"ScanFile\";s:73:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:49:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-01 17:44:56\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.37\";s:10:\"VersionPHP\";s:6:\"5.6.31\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:30:\"20171220_marcosinacioadvocacia\";s:4:\"Hash\";s:32:\"0af624efcd403d8a3852180101174456\";s:8:\"NameHash\";s:63:\"20171220_marcosinacioadvocacia_0af624efcd403d8a3852180101174456\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:66:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-snapshots/tmp\";s:8:\"StoreURL\";s:47:\"http://localhost/advocacia-marcos/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:57;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:58:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-admin\";i:1;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/uploads\";i:2;s:70:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/languages\";i:3;s:68:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/plugins\";i:4;s:67:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-content/themes\";i:5;s:61:\"C:/Program Files (x86)/Ampps/www/advocacia-marcos/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}", "yes");
INSERT INTO `wp_options` VALUES("303", "_site_transient_timeout_theme_roots", "1514830153", "no");
INSERT INTO `wp_options` VALUES("304", "_site_transient_theme_roots", "a:4:{s:11:\"advocacia-m\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("306", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1514828358;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("307", "_site_transient_update_themes", "O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1514828361;s:7:\"checked\";a:4:{s:11:\"advocacia-m\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("308", "_site_transient_update_plugins", "O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1514828360;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.6.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.30\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.30.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:7:\"default\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";s:7:\"default\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"fb-messenger-live-chat/fb-messenger-live-chat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/fb-messenger-live-chat\";s:4:\"slug\";s:22:\"fb-messenger-live-chat\";s:6:\"plugin\";s:49:\"fb-messenger-live-chat/fb-messenger-live-chat.php\";s:11:\"new_version\";s:5:\"1.3.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/fb-messenger-live-chat/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/fb-messenger-live-chat.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/fb-messenger-live-chat/assets/icon-128x128.png?rev=1533505\";s:2:\"2x\";s:75:\"https://ps.w.org/fb-messenger-live-chat/assets/icon-256x256.png?rev=1533505\";s:7:\"default\";s:75:\"https://ps.w.org/fb-messenger-live-chat/assets/icon-256x256.png?rev=1533505\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}", "no");
INSERT INTO `wp_options` VALUES("309", "_site_transient_timeout_browser_da4804949398f905dcef757ac82cf2c1", "1515433179", "no");
INSERT INTO `wp_options` VALUES("310", "_site_transient_browser_da4804949398f905dcef757ac82cf2c1", "a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"63.0.3239.84\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}", "no");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("2", "4", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("3", "4", "_edit_lock", "1512513204:1");
INSERT INTO `wp_postmeta` VALUES("15", "9", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("16", "9", "_edit_lock", "1513824867:1");
INSERT INTO `wp_postmeta` VALUES("17", "9", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("18", "9", "chamada", "Ética, transparência e respeito");
INSERT INTO `wp_postmeta` VALUES("19", "9", "_chamada", "field_5a22fc20b9480");
INSERT INTO `wp_postmeta` VALUES("20", "10", "chamada", "");
INSERT INTO `wp_postmeta` VALUES("21", "10", "_chamada", "field_5a22fc20b9480");
INSERT INTO `wp_postmeta` VALUES("22", "11", "chamada", "Ética, transparência e respeito");
INSERT INTO `wp_postmeta` VALUES("23", "11", "_chamada", "field_5a22fc20b9480");
INSERT INTO `wp_postmeta` VALUES("27", "15", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("28", "15", "_edit_lock", "1512485791:1");
INSERT INTO `wp_postmeta` VALUES("42", "25", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("43", "25", "_edit_lock", "1512511128:1");
INSERT INTO `wp_postmeta` VALUES("47", "28", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("48", "28", "_edit_lock", "1513825091:1");
INSERT INTO `wp_postmeta` VALUES("49", "28", "_wp_page_template", "page-perfil.php");
INSERT INTO `wp_postmeta` VALUES("50", "28", "perfil", "<div id=\"SITE_ROOT\" class=\"SITE_ROOT\">\r\n<div id=\"masterPage\">\r\n<div id=\"PAGES_CONTAINER\" class=\"pc1\" data-state=\"\">\r\n<div id=\"PAGES_CONTAINERcenteredContent\" class=\"pc1centeredContent\">\r\n<div id=\"PAGES_CONTAINERinlineContent\" class=\"pc1inlineContent\">\r\n<div id=\"SITE_PAGES\" class=\"s_VOwPageGroupSkin\">\r\n<div id=\"brpot\" class=\"p1\">\r\n<div id=\"brpotinlineContent\" class=\"p1inlineContent\">\r\n<div id=\"comp-j8vzw8tu\" class=\"txtNew\">\r\n<h4 class=\"font_8\"><strong>Estrutura</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">Unindo uma estrutura de excelência com o melhor capital de inteligência e tecnologia do mercado, a Marcos Inácio Advocacia está plenamente apta a atender às demandas e interesses dos clientes com agilidade, dedicação, lealdade e eﬁciência.</p>\r\n<p class=\"font_8\">O esmero no relacionamento com o cliente é uma das principais marcas de quem tem como lema não apenas satisfazê-lo, mas encantá-lo com o serviço prestado, alcançando, assim, o prestígio e a respeitabilidade no mercado.</p>\r\n<p class=\"font_8\"></p>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n\r\n<h4 class=\"font_8\"><strong>Expertise</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">A MARCOS INÁCIO ADVOCACIA presta serviços especializados nas mais diversas áreas do Direito, principalmente, nos seguimentos Previdenciário e Tributário, Empresarial, Trabalhista, Administrativo e Cível.</p>\r\n<p class=\"font_8\">Com a utilização de uma plataforma de trabalho customizada, pensada e criada na própria Marcos Inácio Advocacia, promove a gestão otimizada de seus processos, mediante o controle rigoroso dos prazos e atenção ao andamento processual.</p>\r\n<p class=\"font_8\">Com permanente atualização jurisprudencial e doutrinária, a equipe de proﬁssionais da Marcos Inácio Advocacia busca sempre as melhores formas de prevenção e solução de conﬂitos, judicial ou extrajudicialmente, atenta às novas questões do Direito e preparada para as tomadas de decisões processuais estratégicas.</p>\r\n<p class=\"font_8\"></p>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n\r\n<h4 class=\"font_8\"><strong>Equipe de Proﬁssionais</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">Composta por centenas de proﬁssionais conceituados, com diferentes especialidades, inclusive, mestrado e doutorado, a MARCOS INÁCIO ADVOCACIA tem uma equipe coesa, integrada e apta a atender a todas as necessidades de cada cliente. Assim, é possível oferecer serviços sempre sob medida, com o formato mais adequado e a cobertura mais abrangente em todos os aspectos que envolvam negócios e litígios.</p>\r\n<p class=\"font_8\">A constante atualização de seus integrantes permite atingir realizações únicas, dando suporte e embasamento às decisões estratégicas, superando as expectativas e permitindo a prestação de um serviço reconhecido e respeitado no meio jurídico.</p>\r\n<p class=\"font_8\"></p>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n\r\n<h4 class=\"font_8\"><strong>Responsabilidade Socioambiental</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">A MARCOS INÁCIO ADVOCACIA contribue diretamente para um mundo mais justo, assumindo compromisso com as futuras gerações, através da promoção de políticas, programas e ações voltadas para o consumo sustentável, bem como, o fomento e a execução de projetos ﬁlantrópicos de elevado alcance social.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"WIX_ADS\" class=\"wrapper visible\"></div>");
INSERT INTO `wp_postmeta` VALUES("51", "28", "_perfil", "field_5a27157d9148b");
INSERT INTO `wp_postmeta` VALUES("52", "29", "perfil", "<div id=\"SITE_ROOT\" class=\"SITE_ROOT\">\r\n<div id=\"masterPage\">\r\n<div id=\"PAGES_CONTAINER\" class=\"pc1\" data-state=\"\">\r\n<div id=\"PAGES_CONTAINERcenteredContent\" class=\"pc1centeredContent\">\r\n<div id=\"PAGES_CONTAINERinlineContent\" class=\"pc1inlineContent\">\r\n<div id=\"SITE_PAGES\" class=\"s_VOwPageGroupSkin\">\r\n<div id=\"brpot\" class=\"p1\">\r\n<div id=\"brpotinlineContent\" class=\"p1inlineContent\">\r\n<div id=\"comp-j8vzw8tu\" class=\"txtNew\">\r\n<h4 class=\"font_8\"><strong>Estrutura</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">Unindo uma estrutura de excelência com o melhor capital de inteligência e tecnologia do mercado, a Marcos Inácio Advocacia está plenamente apta a atender às demandas e interesses dos clientes com agilidade, dedicação, lealdade e eﬁciência.</p>\r\n<p class=\"font_8\">O esmero no relacionamento com o cliente é uma das principais marcas de quem tem como lema não apenas satisfazê-lo, mas encantá-lo com o serviço prestado, alcançando, assim, o prestígio e a respeitabilidade no mercado.</p>\r\n<p class=\"font_8\"></p>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n\r\n<h4 class=\"font_8\"><strong>Expertise</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">A MARCOS INÁCIO ADVOCACIA presta serviços especializados nas mais diversas áreas do Direito, principalmente, nos seguimentos Previdenciário e Tributário, Empresarial, Trabalhista, Administrativo e Cível.</p>\r\n<p class=\"font_8\">Com a utilização de uma plataforma de trabalho customizada, pensada e criada na própria Marcos Inácio Advocacia, promove a gestão otimizada de seus processos, mediante o controle rigoroso dos prazos e atenção ao andamento processual.</p>\r\n<p class=\"font_8\">Com permanente atualização jurisprudencial e doutrinária, a equipe de proﬁssionais da Marcos Inácio Advocacia busca sempre as melhores formas de prevenção e solução de conﬂitos, judicial ou extrajudicialmente, atenta às novas questões do Direito e preparada para as tomadas de decisões processuais estratégicas.</p>\r\n<p class=\"font_8\"></p>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n\r\n<h4 class=\"font_8\"><strong>Equipe de Proﬁssionais</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">Composta por centenas de proﬁssionais conceituados, com diferentes especialidades, inclusive, mestrado e doutorado, a MARCOS INÁCIO ADVOCACIA tem uma equipe coesa, integrada e apta a atender a todas as necessidades de cada cliente. Assim, é possível oferecer serviços sempre sob medida, com o formato mais adequado e a cobertura mais abrangente em todos os aspectos que envolvam negócios e litígios.</p>\r\n<p class=\"font_8\">A constante atualização de seus integrantes permite atingir realizações únicas, dando suporte e embasamento às decisões estratégicas, superando as expectativas e permitindo a prestação de um serviço reconhecido e respeitado no meio jurídico.</p>\r\n<p class=\"font_8\"></p>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n\r\n<h4 class=\"font_8\"><strong>Responsabilidade Socioambiental</strong></h4>\r\n<p class=\"font_8\"><span class=\"wixGuard\">​</span></p>\r\n<p class=\"font_8\">A MARCOS INÁCIO ADVOCACIA contribue diretamente para um mundo mais justo, assumindo compromisso com as futuras gerações, através da promoção de políticas, programas e ações voltadas para o consumo sustentável, bem como, o fomento e a execução de projetos ﬁlantrópicos de elevado alcance social.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"WIX_ADS\" class=\"wrapper visible\"></div>");
INSERT INTO `wp_postmeta` VALUES("53", "29", "_perfil", "field_5a27157d9148b");
INSERT INTO `wp_postmeta` VALUES("64", "31", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("66", "31", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("68", "31", "_menu_item_object_id", "2");
INSERT INTO `wp_postmeta` VALUES("70", "31", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("72", "31", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("74", "31", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("76", "31", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("78", "31", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("80", "31", "_menu_item_orphaned", "1512512772");
INSERT INTO `wp_postmeta` VALUES("81", "33", "_menu_item_type", "taxonomy");
INSERT INTO `wp_postmeta` VALUES("82", "33", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("83", "33", "_menu_item_object_id", "3");
INSERT INTO `wp_postmeta` VALUES("84", "33", "_menu_item_object", "category");
INSERT INTO `wp_postmeta` VALUES("85", "33", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("86", "33", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("87", "33", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("88", "33", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("89", "33", "_menu_item_orphaned", "1512512772");
INSERT INTO `wp_postmeta` VALUES("90", "9", "texto_endereco", "Está precisando de conselho legal perto de você? Consulte o endereço do escritório mais perto.");
INSERT INTO `wp_postmeta` VALUES("91", "9", "_texto_endereco", "field_5a271e9528544");
INSERT INTO `wp_postmeta` VALUES("92", "9", "texto_atendimento", "Temos um atendimento dedicado a resolução de problemas com agilidade e presteza para que você ligue e sinta que está um paço mais próximo de ter o melhor conselho legal possível.");
INSERT INTO `wp_postmeta` VALUES("93", "9", "_texto_atendimento", "field_5a271ef428545");
INSERT INTO `wp_postmeta` VALUES("94", "9", "texto_equipe", "Nossa equipe jurídica exclusiva é preparada e está sempre pronta para resolver seus problemas legais dae forma eficaz e simples");
INSERT INTO `wp_postmeta` VALUES("95", "9", "_texto_equipe", "field_5a271f0f28546");
INSERT INTO `wp_postmeta` VALUES("96", "40", "chamada", "Ética, transparência e respeito");
INSERT INTO `wp_postmeta` VALUES("97", "40", "_chamada", "field_5a22fc20b9480");
INSERT INTO `wp_postmeta` VALUES("98", "40", "texto_endereco", "Está precisando de conselho legal perto de você? Consulte o endereço do escritório mais perto.");
INSERT INTO `wp_postmeta` VALUES("99", "40", "_texto_endereco", "field_5a271e9528544");
INSERT INTO `wp_postmeta` VALUES("100", "40", "texto_atendimento", "Temos um atendimento dedicado a resolução de problemas com agilidade e presteza para que você ligue e sinta que está um paço mais próximo de ter o melhor conselho legal possível.");
INSERT INTO `wp_postmeta` VALUES("101", "40", "_texto_atendimento", "field_5a271ef428545");
INSERT INTO `wp_postmeta` VALUES("102", "40", "texto_equipe", "Nossa equipe jurídica exclusiva é preparada e está sempre pronta para resolver seus problemas legais da forma mais eficaz e simples possível");
INSERT INTO `wp_postmeta` VALUES("103", "40", "_texto_equipe", "field_5a271f0f28546");
INSERT INTO `wp_postmeta` VALUES("104", "41", "chamada", "Ética, transparência e respeito");
INSERT INTO `wp_postmeta` VALUES("105", "41", "_chamada", "field_5a22fc20b9480");
INSERT INTO `wp_postmeta` VALUES("106", "41", "texto_endereco", "Está precisando de conselho legal perto de você? Consulte o endereço do escritório mais perto.");
INSERT INTO `wp_postmeta` VALUES("107", "41", "_texto_endereco", "field_5a271e9528544");
INSERT INTO `wp_postmeta` VALUES("108", "41", "texto_atendimento", "Temos um atendimento dedicado a resolução de problemas com agilidade e presteza para que você ligue e sinta que está um paço mais próximo de ter o melhor conselho legal possível.");
INSERT INTO `wp_postmeta` VALUES("109", "41", "_texto_atendimento", "field_5a271ef428545");
INSERT INTO `wp_postmeta` VALUES("110", "41", "texto_equipe", "Nossa equipe jurídica exclusiva é preparada e está sempre pronta para resolver seus problemas legais dae forma eficaz e simples");
INSERT INTO `wp_postmeta` VALUES("111", "41", "_texto_equipe", "field_5a271f0f28546");
INSERT INTO `wp_postmeta` VALUES("112", "42", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("113", "42", "_edit_lock", "1513825326:1");
INSERT INTO `wp_postmeta` VALUES("114", "42", "_wp_page_template", "page-categorias.php");
INSERT INTO `wp_postmeta` VALUES("115", "44", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("116", "44", "_edit_lock", "1513540401:1");
INSERT INTO `wp_postmeta` VALUES("117", "42", "categoria", "direito-empresarial");
INSERT INTO `wp_postmeta` VALUES("118", "42", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("119", "46", "categoria", "direito-empresarial");
INSERT INTO `wp_postmeta` VALUES("120", "46", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("121", "42", "topico_1", "Quero refinanciar meus tributos.\r\nO que fazer?");
INSERT INTO `wp_postmeta` VALUES("122", "42", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("123", "42", "topico_2", "Preciso de uma Assessoria Jurídica. \r\nComo contratar?");
INSERT INTO `wp_postmeta` VALUES("124", "42", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("125", "42", "topico_3", "Como fazer o parcelamento\r\ndo Simples Nacional?");
INSERT INTO `wp_postmeta` VALUES("126", "42", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("127", "52", "categoria", "direito-empresarial");
INSERT INTO `wp_postmeta` VALUES("128", "52", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("129", "52", "topico_1", "Quero refinanciar meus tributos. O que fazer?");
INSERT INTO `wp_postmeta` VALUES("130", "52", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("131", "52", "topico_2", "Preciso de uma Assessoria Jurídica. Como contratar?");
INSERT INTO `wp_postmeta` VALUES("132", "52", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("133", "52", "topico_3", "Como fazer o parcelamento do Simples Nacional?");
INSERT INTO `wp_postmeta` VALUES("134", "52", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("135", "42", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("136", "42", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("137", "54", "categoria", "direito-empresarial");
INSERT INTO `wp_postmeta` VALUES("138", "54", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("139", "54", "topico_1", "Quero refinanciar meus tributos.\r\nO que fazer?");
INSERT INTO `wp_postmeta` VALUES("140", "54", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("141", "54", "topico_2", "Preciso de uma Assessoria Jurídica. \r\nComo contratar?");
INSERT INTO `wp_postmeta` VALUES("142", "54", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("143", "54", "topico_3", "Como fazer o parcelamento\r\ndo Simples Nacional?");
INSERT INTO `wp_postmeta` VALUES("144", "54", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("145", "54", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("146", "54", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("147", "55", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("148", "55", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("149", "55", "_menu_item_object_id", "42");
INSERT INTO `wp_postmeta` VALUES("150", "55", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("151", "55", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("152", "55", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("153", "55", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("154", "55", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("156", "56", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("157", "56", "_edit_lock", "1513540703:1");
INSERT INTO `wp_postmeta` VALUES("158", "56", "_wp_page_template", "page-categorias.php");
INSERT INTO `wp_postmeta` VALUES("159", "56", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("160", "56", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("161", "56", "topico_1", "Quero refinanciar meus tributos.\r\nO que fazer?");
INSERT INTO `wp_postmeta` VALUES("162", "56", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("163", "56", "topico_2", "Preciso de uma Assessoria Jurídica.\r\nComo contratar?");
INSERT INTO `wp_postmeta` VALUES("164", "56", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("165", "56", "topico_3", "Como fazer o parcelamento\r\ndo Simples Nacional?");
INSERT INTO `wp_postmeta` VALUES("166", "56", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("167", "56", "categoria", "direito-do-trabalho	");
INSERT INTO `wp_postmeta` VALUES("168", "56", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("169", "57", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("170", "57", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("171", "57", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("172", "57", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("173", "57", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("174", "57", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("175", "57", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("176", "57", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("177", "57", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("178", "57", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("179", "58", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("180", "58", "_edit_lock", "1512697627:1");
INSERT INTO `wp_postmeta` VALUES("181", "58", "_wp_page_template", "page-categorias.php");
INSERT INTO `wp_postmeta` VALUES("182", "58", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("183", "58", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("184", "58", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("185", "58", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("186", "58", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("187", "58", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("188", "58", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("189", "58", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("190", "58", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("191", "58", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("192", "59", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("193", "59", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("194", "59", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("195", "59", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("196", "59", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("197", "59", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("198", "59", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("199", "59", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("200", "59", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("201", "59", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("202", "60", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("203", "60", "_edit_lock", "1512697963:1");
INSERT INTO `wp_postmeta` VALUES("204", "60", "_wp_page_template", "page-categorias.php");
INSERT INTO `wp_postmeta` VALUES("205", "60", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("206", "60", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("207", "60", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("208", "60", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("209", "60", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("210", "60", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("211", "60", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("212", "60", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("213", "60", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("214", "60", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("215", "61", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("216", "61", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("217", "61", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("218", "61", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("219", "61", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("220", "61", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("221", "61", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("222", "61", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("223", "61", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("224", "61", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("225", "62", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("226", "62", "_edit_lock", "1512697984:1");
INSERT INTO `wp_postmeta` VALUES("227", "62", "_wp_page_template", "page-categorias.php");
INSERT INTO `wp_postmeta` VALUES("228", "62", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("229", "62", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("230", "62", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("231", "62", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("232", "62", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("233", "62", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("234", "62", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("235", "62", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("236", "62", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("237", "62", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("238", "63", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("239", "63", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("240", "63", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("241", "63", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("242", "63", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("243", "63", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("244", "63", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("245", "63", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("246", "63", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("247", "63", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("248", "64", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("249", "64", "_edit_lock", "1512698014:1");
INSERT INTO `wp_postmeta` VALUES("250", "64", "_wp_page_template", "page-categorias.php");
INSERT INTO `wp_postmeta` VALUES("251", "64", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("252", "64", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("253", "64", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("254", "64", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("255", "64", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("256", "64", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("257", "64", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("258", "64", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("259", "64", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("260", "64", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("261", "65", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("262", "65", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("263", "65", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("264", "65", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("265", "65", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("266", "65", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("267", "65", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("268", "65", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("269", "65", "categoria", "");
INSERT INTO `wp_postmeta` VALUES("270", "65", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("271", "66", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("272", "66", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("273", "66", "_menu_item_object_id", "64");
INSERT INTO `wp_postmeta` VALUES("274", "66", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("275", "66", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("276", "66", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("277", "66", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("278", "66", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("280", "67", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("281", "67", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("282", "67", "_menu_item_object_id", "62");
INSERT INTO `wp_postmeta` VALUES("283", "67", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("284", "67", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("285", "67", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("286", "67", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("287", "67", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("289", "68", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("290", "68", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("291", "68", "_menu_item_object_id", "60");
INSERT INTO `wp_postmeta` VALUES("292", "68", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("293", "68", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("294", "68", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("295", "68", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("296", "68", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("298", "69", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("299", "69", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("300", "69", "_menu_item_object_id", "58");
INSERT INTO `wp_postmeta` VALUES("301", "69", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("302", "69", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("303", "69", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("304", "69", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("305", "69", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("307", "70", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("308", "70", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("309", "70", "_menu_item_object_id", "56");
INSERT INTO `wp_postmeta` VALUES("310", "70", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("311", "70", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("312", "70", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("313", "70", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("314", "70", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("316", "71", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("317", "71", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("318", "71", "_menu_item_object_id", "42");
INSERT INTO `wp_postmeta` VALUES("319", "71", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("320", "71", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("321", "71", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("322", "71", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("323", "71", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("325", "72", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("326", "72", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("327", "72", "_menu_item_object_id", "64");
INSERT INTO `wp_postmeta` VALUES("328", "72", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("329", "72", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("330", "72", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("331", "72", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("332", "72", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("334", "73", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("335", "73", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("336", "73", "_menu_item_object_id", "62");
INSERT INTO `wp_postmeta` VALUES("337", "73", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("338", "73", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("339", "73", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("340", "73", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("341", "73", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("343", "74", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("344", "74", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("345", "74", "_menu_item_object_id", "60");
INSERT INTO `wp_postmeta` VALUES("346", "74", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("347", "74", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("348", "74", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("349", "74", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("350", "74", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("352", "75", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("353", "75", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("354", "75", "_menu_item_object_id", "58");
INSERT INTO `wp_postmeta` VALUES("355", "75", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("356", "75", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("357", "75", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("358", "75", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("359", "75", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("361", "76", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("362", "76", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("363", "76", "_menu_item_object_id", "56");
INSERT INTO `wp_postmeta` VALUES("364", "76", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("365", "76", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("366", "76", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("367", "76", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("368", "76", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("376", "77", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("377", "77", "_edit_lock", "1513127201:1");
INSERT INTO `wp_postmeta` VALUES("380", "79", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("381", "79", "_edit_lock", "1513169755:1");
INSERT INTO `wp_postmeta` VALUES("384", "81", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("385", "81", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("386", "81", "topico_1", "");
INSERT INTO `wp_postmeta` VALUES("387", "81", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("388", "81", "topico_2", "");
INSERT INTO `wp_postmeta` VALUES("389", "81", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("390", "81", "topico_3", "");
INSERT INTO `wp_postmeta` VALUES("391", "81", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("392", "81", "categoria", "direito-do-trabalho	");
INSERT INTO `wp_postmeta` VALUES("393", "81", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("394", "82", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("395", "82", "_edit_lock", "1513541150:1");
INSERT INTO `wp_postmeta` VALUES("400", "86", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("401", "86", "_edit_lock", "1512701085:1");
INSERT INTO `wp_postmeta` VALUES("402", "87", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("403", "87", "_edit_lock", "1512703845:1");
INSERT INTO `wp_postmeta` VALUES("404", "88", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("405", "88", "_wp_page_template", "page-CEP.php");
INSERT INTO `wp_postmeta` VALUES("406", "88", "_edit_lock", "1513825205:1");
INSERT INTO `wp_postmeta` VALUES("407", "90", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("408", "90", "_edit_lock", "1513824984:1");
INSERT INTO `wp_postmeta` VALUES("409", "90", "_wp_page_template", "page-CEP-result.php");
INSERT INTO `wp_postmeta` VALUES("412", "100", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("413", "100", "_wp_page_template", "page-perguntas.php");
INSERT INTO `wp_postmeta` VALUES("414", "100", "_edit_lock", "1513824942:1");
INSERT INTO `wp_postmeta` VALUES("418", "106", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("419", "106", "_edit_lock", "1513111272:1");
INSERT INTO `wp_postmeta` VALUES("420", "100", "perguntas_0_titulo_pergunta", "Como faço para obter minha aposentadoria?");
INSERT INTO `wp_postmeta` VALUES("421", "100", "_perguntas_0_titulo_pergunta", "field_5a303e92b9746");
INSERT INTO `wp_postmeta` VALUES("422", "100", "perguntas_0_resposta", "Se você é empregado e trabalha com carteira assinada, paga a guia do INSS (GPS) como trabalhador autônomo ou facultativo, e não está vinculado a nenhum outro regime de previdência, você está protegido pelo Regime Geral de Previdência Social – RGPS.\r\nO INSS oferece vários benefícios e serviços, que garantem a renda do trabalhador e de sua família em situações de impossibilidade de trabalhar como: doença, idade avançada, maternidade, morte, acidente e até mesmo prisão. \r\nO requerimento do benefício deve ser agendado via internet (www.previdencia.gov.br) ou através do número 135.\r\n\r\nPara a concessão de cada benefício, o segurado ou dependente deverá preencher alguns requisitos: \r\n\r\nAposentadoria Por idade:\r\n15 anos de contribuição + idade mínima (60 anos mulher, 65 anos homem); OBS: trabalhadores rurais podem receber com 5 anos menos (55 anos mulher, 60 anos homem);\r\n\r\nAposentadoria por tempo de contribuição:\r\n35 anos de contribuição (homem) 30 anos de contribuição (mulher);\r\nExige carência de 15 anos de contribuição;\r\nNão há idade mínima; \r\n\r\nAposentadoria por invalidez: Para o segurado que estiver impossibilitado definitivamente para qualquer trabalho.\r\nÉ sempre precedido de auxílio-doença.\r\nNecessário ter pelo menos 12 meses de contribuição. Contudo, é isenta de carência se a incapacidade for decorrente de acidente ou se a doença for considerada grave.\r\nNão há idade mínima; \r\n\r\nAposentadoria Especial:\r\nPara o segurado, homem ou mulher, que trabalhar exposto a agente nocivos ou em condições perigosas.\r\nDeve comprovar o trabalho exercido sob condições prejudiciais à saúde por 15, 20 ou 25 anos.\r\nNão há idade mínima\r\n\r\nAuxílio-doença:\r\nPara o segurado que estiver temporariamente incapaz de trabalhar (por mais de 30 dias).\r\nNecessário ter 12 meses de contribuição. Contudo, é isenta de carência se a incapacidade for decorrente de acidente ou se a doença for considerada grave.\r\nNão há idade mínima; \r\n\r\nSalário-Maternidade:\r\nBenefício devido à segurada, em 4 prestações mensais, em caso de nascimento de um filho (vivo ou morto), de aborto não criminoso, em caso de adoção ou guarda judicial.\r\nNecessário ter 10 (dez) meses de contribuição. Contuso, são isentas de carência a Micro empreendedora individual (MEI), a empregada doméstica e a trabalhadora avulsa. \r\n\r\nAuxílio-acidente:\r\nBenefício devido ao segurado que apresentar sequelas de acidente de qualquer natureza e que diminua a sua capacidade de trabalhar permanentemente (exemplo: amputação de um dedo).\r\nO benefício é sempre precedido de auxílio-doença, ou seja, somente após a recuperação e remanescendo a sequela é que será concedido.\r\nNão é necessário ter tempo mínimo de contribuição.\r\nNão tem direito ao benefício os segurados: contribuinte individual, empregado doméstico, contribuinte facultativo.\r\n\r\nAuxílio-reclusão:\r\nBenefício devido aos dependentes do segurado que vier a ser preso (regime fechado ou semi-aberto). O segurado deve ser considerado de baixa renda (deve receber valor um pouco maior que o salário mínimo. A partir de Janeiro de 2015 o limite é de até R$ 1.089,72).\r\nO tempo mínimo de contribuição é de 24 meses.");
INSERT INTO `wp_postmeta` VALUES("423", "100", "_perguntas_0_resposta", "field_5a303ea0b9747");
INSERT INTO `wp_postmeta` VALUES("424", "100", "perguntas", "2");
INSERT INTO `wp_postmeta` VALUES("425", "100", "_perguntas", "field_5a303e83b9745");
INSERT INTO `wp_postmeta` VALUES("426", "110", "perguntas_0_titulo_pergunta", "Como faço para obter minha aposentadoria?");
INSERT INTO `wp_postmeta` VALUES("427", "110", "_perguntas_0_titulo_pergunta", "field_5a303e92b9746");
INSERT INTO `wp_postmeta` VALUES("428", "110", "perguntas_0_resposta", "Se você é empregado e trabalha com carteira assinada, paga a guia do INSS (GPS) como trabalhador autônomo ou facultativo, e não está vinculado a nenhum outro regime de previdência, você está protegido pelo Regime Geral de Previdência Social – RGPS.\r\nO INSS oferece vários benefícios e serviços, que garantem a renda do trabalhador e de sua família em situações de impossibilidade de trabalhar como: doença, idade avançada, maternidade, morte, acidente e até mesmo prisão. \r\nO requerimento do benefício deve ser agendado via internet (www.previdencia.gov.br) ou através do número 135.\r\n\r\nPara a concessão de cada benefício, o segurado ou dependente deverá preencher alguns requisitos: \r\n\r\nAposentadoria Por idade:\r\n15 anos de contribuição + idade mínima (60 anos mulher, 65 anos homem); OBS: trabalhadores rurais podem receber com 5 anos menos (55 anos mulher, 60 anos homem);\r\n\r\nAposentadoria por tempo de contribuição:\r\n35 anos de contribuição (homem) 30 anos de contribuição (mulher);\r\nExige carência de 15 anos de contribuição;\r\nNão há idade mínima; \r\n\r\nAposentadoria por invalidez: Para o segurado que estiver impossibilitado definitivamente para qualquer trabalho.\r\nÉ sempre precedido de auxílio-doença.\r\nNecessário ter pelo menos 12 meses de contribuição. Contudo, é isenta de carência se a incapacidade for decorrente de acidente ou se a doença for considerada grave.\r\nNão há idade mínima; \r\n\r\nAposentadoria Especial:\r\nPara o segurado, homem ou mulher, que trabalhar exposto a agente nocivos ou em condições perigosas.\r\nDeve comprovar o trabalho exercido sob condições prejudiciais à saúde por 15, 20 ou 25 anos.\r\nNão há idade mínima\r\n\r\nAuxílio-doença:\r\nPara o segurado que estiver temporariamente incapaz de trabalhar (por mais de 30 dias).\r\nNecessário ter 12 meses de contribuição. Contudo, é isenta de carência se a incapacidade for decorrente de acidente ou se a doença for considerada grave.\r\nNão há idade mínima; \r\n\r\nSalário-Maternidade:\r\nBenefício devido à segurada, em 4 prestações mensais, em caso de nascimento de um filho (vivo ou morto), de aborto não criminoso, em caso de adoção ou guarda judicial.\r\nNecessário ter 10 (dez) meses de contribuição. Contuso, são isentas de carência a Micro empreendedora individual (MEI), a empregada doméstica e a trabalhadora avulsa. \r\n\r\nAuxílio-acidente:\r\nBenefício devido ao segurado que apresentar sequelas de acidente de qualquer natureza e que diminua a sua capacidade de trabalhar permanentemente (exemplo: amputação de um dedo).\r\nO benefício é sempre precedido de auxílio-doença, ou seja, somente após a recuperação e remanescendo a sequela é que será concedido.\r\nNão é necessário ter tempo mínimo de contribuição.\r\nNão tem direito ao benefício os segurados: contribuinte individual, empregado doméstico, contribuinte facultativo.\r\n\r\nAuxílio-reclusão:\r\nBenefício devido aos dependentes do segurado que vier a ser preso (regime fechado ou semi-aberto). O segurado deve ser considerado de baixa renda (deve receber valor um pouco maior que o salário mínimo. A partir de Janeiro de 2015 o limite é de até R$ 1.089,72).\r\nO tempo mínimo de contribuição é de 24 meses.");
INSERT INTO `wp_postmeta` VALUES("429", "110", "_perguntas_0_resposta", "field_5a303ea0b9747");
INSERT INTO `wp_postmeta` VALUES("430", "110", "perguntas", "1");
INSERT INTO `wp_postmeta` VALUES("431", "110", "_perguntas", "field_5a303e83b9745");
INSERT INTO `wp_postmeta` VALUES("432", "100", "perguntas_1_titulo_pergunta", "Nunca paguei INSS. Posso receber algum benefício?");
INSERT INTO `wp_postmeta` VALUES("433", "100", "_perguntas_1_titulo_pergunta", "field_5a303e92b9746");
INSERT INTO `wp_postmeta` VALUES("434", "100", "perguntas_1_resposta", "Existe uma espécie de benefício, que é administrado pelo INSS, para aquelas pessoas que nunca contribuíram ou deixaram de contribuir há muito tempo: é o benefício assistencial (ou benefício de prestação continuada).\r\n\r\nSão duas modalidades:\r\nBenefício assistencial ao idoso: é devido ao idoso, a partir dos 65 anos, que não seja segurada do INSS ou de qualquer outro regime, e que tenha renda familiar per capita inferior a ¼ do salário mínimo. \r\nBenefício assistencial ao deficiente: é devido à pessoa com deficiência que a impeça de trabalhar, que não seja segurada do INSS ou de qualquer outro regime. Não há idade mínima. A renda familiar per capita deve ser inferior a ¼ do salário mínimo.");
INSERT INTO `wp_postmeta` VALUES("435", "100", "_perguntas_1_resposta", "field_5a303ea0b9747");
INSERT INTO `wp_postmeta` VALUES("436", "111", "perguntas_0_titulo_pergunta", "Como faço para obter minha aposentadoria?");
INSERT INTO `wp_postmeta` VALUES("437", "111", "_perguntas_0_titulo_pergunta", "field_5a303e92b9746");
INSERT INTO `wp_postmeta` VALUES("438", "111", "perguntas_0_resposta", "Se você é empregado e trabalha com carteira assinada, paga a guia do INSS (GPS) como trabalhador autônomo ou facultativo, e não está vinculado a nenhum outro regime de previdência, você está protegido pelo Regime Geral de Previdência Social – RGPS.\r\nO INSS oferece vários benefícios e serviços, que garantem a renda do trabalhador e de sua família em situações de impossibilidade de trabalhar como: doença, idade avançada, maternidade, morte, acidente e até mesmo prisão. \r\nO requerimento do benefício deve ser agendado via internet (www.previdencia.gov.br) ou através do número 135.\r\n\r\nPara a concessão de cada benefício, o segurado ou dependente deverá preencher alguns requisitos: \r\n\r\nAposentadoria Por idade:\r\n15 anos de contribuição + idade mínima (60 anos mulher, 65 anos homem); OBS: trabalhadores rurais podem receber com 5 anos menos (55 anos mulher, 60 anos homem);\r\n\r\nAposentadoria por tempo de contribuição:\r\n35 anos de contribuição (homem) 30 anos de contribuição (mulher);\r\nExige carência de 15 anos de contribuição;\r\nNão há idade mínima; \r\n\r\nAposentadoria por invalidez: Para o segurado que estiver impossibilitado definitivamente para qualquer trabalho.\r\nÉ sempre precedido de auxílio-doença.\r\nNecessário ter pelo menos 12 meses de contribuição. Contudo, é isenta de carência se a incapacidade for decorrente de acidente ou se a doença for considerada grave.\r\nNão há idade mínima; \r\n\r\nAposentadoria Especial:\r\nPara o segurado, homem ou mulher, que trabalhar exposto a agente nocivos ou em condições perigosas.\r\nDeve comprovar o trabalho exercido sob condições prejudiciais à saúde por 15, 20 ou 25 anos.\r\nNão há idade mínima\r\n\r\nAuxílio-doença:\r\nPara o segurado que estiver temporariamente incapaz de trabalhar (por mais de 30 dias).\r\nNecessário ter 12 meses de contribuição. Contudo, é isenta de carência se a incapacidade for decorrente de acidente ou se a doença for considerada grave.\r\nNão há idade mínima; \r\n\r\nSalário-Maternidade:\r\nBenefício devido à segurada, em 4 prestações mensais, em caso de nascimento de um filho (vivo ou morto), de aborto não criminoso, em caso de adoção ou guarda judicial.\r\nNecessário ter 10 (dez) meses de contribuição. Contuso, são isentas de carência a Micro empreendedora individual (MEI), a empregada doméstica e a trabalhadora avulsa. \r\n\r\nAuxílio-acidente:\r\nBenefício devido ao segurado que apresentar sequelas de acidente de qualquer natureza e que diminua a sua capacidade de trabalhar permanentemente (exemplo: amputação de um dedo).\r\nO benefício é sempre precedido de auxílio-doença, ou seja, somente após a recuperação e remanescendo a sequela é que será concedido.\r\nNão é necessário ter tempo mínimo de contribuição.\r\nNão tem direito ao benefício os segurados: contribuinte individual, empregado doméstico, contribuinte facultativo.\r\n\r\nAuxílio-reclusão:\r\nBenefício devido aos dependentes do segurado que vier a ser preso (regime fechado ou semi-aberto). O segurado deve ser considerado de baixa renda (deve receber valor um pouco maior que o salário mínimo. A partir de Janeiro de 2015 o limite é de até R$ 1.089,72).\r\nO tempo mínimo de contribuição é de 24 meses.");
INSERT INTO `wp_postmeta` VALUES("439", "111", "_perguntas_0_resposta", "field_5a303ea0b9747");
INSERT INTO `wp_postmeta` VALUES("440", "111", "perguntas", "2");
INSERT INTO `wp_postmeta` VALUES("441", "111", "_perguntas", "field_5a303e83b9745");
INSERT INTO `wp_postmeta` VALUES("442", "111", "perguntas_1_titulo_pergunta", "Nunca paguei INSS. Posso receber algum benefício?");
INSERT INTO `wp_postmeta` VALUES("443", "111", "_perguntas_1_titulo_pergunta", "field_5a303e92b9746");
INSERT INTO `wp_postmeta` VALUES("444", "111", "perguntas_1_resposta", "Existe uma espécie de benefício, que é administrado pelo INSS, para aquelas pessoas que nunca contribuíram ou deixaram de contribuir há muito tempo: é o benefício assistencial (ou benefício de prestação continuada).\r\n\r\nSão duas modalidades:\r\nBenefício assistencial ao idoso: é devido ao idoso, a partir dos 65 anos, que não seja segurada do INSS ou de qualquer outro regime, e que tenha renda familiar per capita inferior a ¼ do salário mínimo. \r\nBenefício assistencial ao deficiente: é devido à pessoa com deficiência que a impeça de trabalhar, que não seja segurada do INSS ou de qualquer outro regime. Não há idade mínima. A renda familiar per capita deve ser inferior a ¼ do salário mínimo.");
INSERT INTO `wp_postmeta` VALUES("445", "111", "_perguntas_1_resposta", "field_5a303ea0b9747");
INSERT INTO `wp_postmeta` VALUES("451", "114", "_wp_attached_file", "2017/12/autores-nordestinos-e1513134781657.jpg");
INSERT INTO `wp_postmeta` VALUES("452", "114", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:712;s:6:\"height\";i:350;s:4:\"file\";s:46:\"2017/12/autores-nordestinos-e1513134781657.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"autores-nordestinos-e1513134781657-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"autores-nordestinos-e1513134781657-300x147.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("453", "115", "_wp_attached_file", "2017/12/Júri-justiça-julgamento.jpeg");
INSERT INTO `wp_postmeta` VALUES("454", "115", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:38:\"2017/12/Júri-justiça-julgamento.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Júri-justiça-julgamento-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Júri-justiça-julgamento-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"Júri-justiça-julgamento-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"Júri-justiça-julgamento-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("455", "116", "_wp_attached_file", "2017/12/Justiça.jpg");
INSERT INTO `wp_postmeta` VALUES("456", "116", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:563;s:6:\"height\";i:302;s:4:\"file\";s:20:\"2017/12/Justiça.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Justiça-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Justiça-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"tali 1\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1479714720\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("457", "77", "_thumbnail_id", "114");
INSERT INTO `wp_postmeta` VALUES("460", "117", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("461", "117", "_edit_lock", "1513132662:1");
INSERT INTO `wp_postmeta` VALUES("464", "119", "_wp_attached_file", "2017/12/joaopessoa_interna.jpg");
INSERT INTO `wp_postmeta` VALUES("465", "119", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:848;s:4:\"file\";s:30:\"2017/12/joaopessoa_interna.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"joaopessoa_interna-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"joaopessoa_interna-300x133.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"joaopessoa_interna-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"joaopessoa_interna-1024x452.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("466", "117", "_thumbnail_id", "119");
INSERT INTO `wp_postmeta` VALUES("469", "117", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("470", "117", "_wp_trash_meta_time", "1513132809");
INSERT INTO `wp_postmeta` VALUES("471", "117", "_wp_desired_post_slug", "beatriz");
INSERT INTO `wp_postmeta` VALUES("474", "82", "_thumbnail_id", "126");
INSERT INTO `wp_postmeta` VALUES("479", "121", "_wp_attached_file", "2017/12/F-15_vertical_deploy.jpg");
INSERT INTO `wp_postmeta` VALUES("480", "121", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:2149;s:4:\"file\";s:32:\"2017/12/F-15_vertical_deploy.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"F-15_vertical_deploy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"F-15_vertical_deploy-195x300.jpg\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"F-15_vertical_deploy-768x1179.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"F-15_vertical_deploy-667x1024.jpg\";s:5:\"width\";i:667;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:24:\"Staff Sgt. Jeffrey Allen\";s:6:\"camera\";s:9:\"NIKON D1X\";s:7:\"caption\";s:43:\"Tyndall aerials of the 1st Fighter Squadron\";s:17:\"created_timestamp\";s:10:\"1060955042\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:15:\"030814-F-2171A-\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("485", "114", "_wp_attachment_backup_sizes", "a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:712;s:6:\"height\";i:350;s:4:\"file\";s:23:\"autores-nordestinos.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:31:\"autores-nordestinos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:31:\"autores-nordestinos-300x147.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}}");
INSERT INTO `wp_postmeta` VALUES("486", "122", "_wp_attached_file", "2017/12/unnamed.png");
INSERT INTO `wp_postmeta` VALUES("487", "122", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2017/12/unnamed.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("490", "79", "_thumbnail_id", "125");
INSERT INTO `wp_postmeta` VALUES("491", "123", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("492", "123", "_edit_lock", "1513183227:1");
INSERT INTO `wp_postmeta` VALUES("495", "123", "_thumbnail_id", "119");
INSERT INTO `wp_postmeta` VALUES("498", "125", "_wp_attached_file", "2017/12/justice.jpg");
INSERT INTO `wp_postmeta` VALUES("499", "125", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:3008;s:6:\"height\";i:1820;s:4:\"file\";s:19:\"2017/12/justice.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"justice-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"justice-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"justice-768x465.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:465;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"justice-1024x620.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("502", "126", "_wp_attached_file", "2017/12/BehaveSci-CrimJusticeResearch-YCP1.jpg");
INSERT INTO `wp_postmeta` VALUES("503", "126", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:434;s:6:\"height\";i:289;s:4:\"file\";s:46:\"2017/12/BehaveSci-CrimJusticeResearch-YCP1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"BehaveSci-CrimJusticeResearch-YCP1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"BehaveSci-CrimJusticeResearch-YCP1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:9:\"946685010\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"60\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("508", "128", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("509", "128", "_edit_lock", "1513193536:1");
INSERT INTO `wp_postmeta` VALUES("510", "130", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("511", "130", "_edit_lock", "1513193140:1");
INSERT INTO `wp_postmeta` VALUES("512", "131", "_wp_attached_file", "2017/12/Curriculo-Matheus-Beltrao.pdf");
INSERT INTO `wp_postmeta` VALUES("513", "130", "arquivo_pdf", "131");
INSERT INTO `wp_postmeta` VALUES("514", "130", "_arquivo_pdf", "field_5a3158921cf64");
INSERT INTO `wp_postmeta` VALUES("515", "133", "bg_categoria", "");
INSERT INTO `wp_postmeta` VALUES("516", "133", "_bg_categoria", "field_5a29849140ddd");
INSERT INTO `wp_postmeta` VALUES("517", "133", "topico_1", "Quero refinanciar meus tributos.\r\nO que fazer?");
INSERT INTO `wp_postmeta` VALUES("518", "133", "_topico_1", "field_5a282693720ad");
INSERT INTO `wp_postmeta` VALUES("519", "133", "topico_2", "Preciso de uma Assessoria Jurídica.\r\nComo contratar?");
INSERT INTO `wp_postmeta` VALUES("520", "133", "_topico_2", "field_5a2826ef720ae");
INSERT INTO `wp_postmeta` VALUES("521", "133", "topico_3", "Como fazer o parcelamento\r\ndo Simples Nacional?");
INSERT INTO `wp_postmeta` VALUES("522", "133", "_topico_3", "field_5a2826fc720af");
INSERT INTO `wp_postmeta` VALUES("523", "133", "categoria", "direito-do-trabalho	");
INSERT INTO `wp_postmeta` VALUES("524", "133", "_categoria", "field_5a28087a5ce44");
INSERT INTO `wp_postmeta` VALUES("525", "136", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("526", "136", "_edit_lock", "1513825478:1");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2017-12-02 16:42:35", "2017-12-02 18:42:35", "Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!", "Olá, mundo!", "", "publish", "open", "open", "", "ola-mundo", "", "", "2017-12-02 16:42:35", "2017-12-02 18:42:35", "", "0", "http://localhost/advocacia-marcos/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("4", "1", "2017-12-02 17:17:36", "2017-12-02 19:17:36", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:6:\"format\";i:6;s:14:\"featured_image\";i:7;s:10:\"categories\";i:8;s:4:\"tags\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "Home", "home", "publish", "closed", "closed", "", "group_5a22fc1b7e293", "", "", "2017-12-05 20:35:43", "2017-12-05 22:35:43", "", "0", "http://localhost/advocacia-marcos/?post_type=acf-field-group&#038;p=4", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("5", "1", "2017-12-02 17:17:36", "2017-12-02 19:17:36", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"Texto que aparece na página principal\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "chamada", "chamada", "publish", "closed", "closed", "", "field_5a22fc20b9480", "", "", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "", "4", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=5", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("9", "1", "2017-12-02 17:21:30", "2017-12-02 19:21:30", "", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2017-12-05 20:39:28", "2017-12-05 22:39:28", "", "0", "http://localhost/advocacia-marcos/?page_id=9", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("10", "1", "2017-12-02 17:21:31", "2017-12-02 19:21:31", "", "Home", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2017-12-02 17:21:31", "2017-12-02 19:21:31", "", "9", "http://localhost/advocacia-marcos/2017/12/02/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("11", "1", "2017-12-02 17:26:11", "2017-12-02 19:26:11", "", "Home", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2017-12-02 17:26:11", "2017-12-02 19:26:11", "", "9", "http://localhost/advocacia-marcos/2017/12/02/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("15", "1", "2017-12-05 12:58:34", "2017-12-05 14:58:34", "testando", "Direito Empresarial", "", "publish", "open", "open", "", "direito-empresarial", "", "", "2017-12-05 12:58:34", "2017-12-05 14:58:34", "", "0", "http://localhost/advocacia-marcos/?p=15", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("16", "1", "2017-12-05 12:58:34", "2017-12-05 14:58:34", "testando", "Direito Empresarial", "", "inherit", "closed", "closed", "", "15-revision-v1", "", "", "2017-12-05 12:58:34", "2017-12-05 14:58:34", "", "15", "http://localhost/advocacia-marcos/2017/12/05/15-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("25", "1", "2017-12-05 19:59:51", "2017-12-05 21:59:51", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"page-perfil.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:6:\"author\";i:6;s:6:\"format\";i:7;s:14:\"featured_image\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "Página Perfil", "pagina-perfil", "publish", "closed", "closed", "", "group_5a271578459df", "", "", "2017-12-05 19:59:51", "2017-12-05 21:59:51", "", "0", "http://localhost/advocacia-marcos/?post_type=acf-field-group&#038;p=25", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("26", "1", "2017-12-05 19:59:51", "2017-12-05 21:59:51", "a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:101:\"Coloque aqui o texto da página \"Perfil\" sobre a empresa. Evite parágrafos muito extensos e imagens.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}", "perfil", "perfil", "publish", "closed", "closed", "", "field_5a27157d9148b", "", "", "2017-12-05 19:59:51", "2017-12-05 21:59:51", "", "25", "http://localhost/advocacia-marcos/?post_type=acf-field&p=26", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("28", "1", "2017-12-05 20:02:36", "2017-12-05 22:02:36", "", "Perfil", "", "publish", "closed", "closed", "", "perfil", "", "", "2017-12-05 20:02:36", "2017-12-05 22:02:36", "", "0", "http://localhost/advocacia-marcos/?page_id=28", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("29", "1", "2017-12-05 20:02:36", "2017-12-05 22:02:36", "", "Perfil", "", "inherit", "closed", "closed", "", "28-revision-v1", "", "", "2017-12-05 20:02:36", "2017-12-05 22:02:36", "", "28", "http://localhost/advocacia-marcos/2017/12/05/28-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("31", "1", "2017-12-05 20:26:11", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2017-12-05 20:26:11", "0000-00-00 00:00:00", "", "0", "http://localhost/advocacia-marcos/?p=31", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("33", "1", "2017-12-05 20:26:12", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2017-12-05 20:26:12", "0000-00-00 00:00:00", "", "0", "http://localhost/advocacia-marcos/?p=33", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Página inicial", "", "publish", "closed", "closed", "", "field_5a271e8828543", "", "", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "", "4", "http://localhost/advocacia-marcos/?post_type=acf-field&p=35", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Rodapé / Footer", "", "publish", "closed", "closed", "", "field_5a271e7528542", "", "", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "", "4", "http://localhost/advocacia-marcos/?post_type=acf-field&p=36", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:134:\"Indique aqui o texto de chamada para o endereço que aparecerá nas páginas secundárias. Não coloque o endereço propriamente dito.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Texto Endereço", "texto_endereco", "publish", "closed", "closed", "", "field_5a271e9528544", "", "", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "", "4", "http://localhost/advocacia-marcos/?post_type=acf-field&p=37", "3", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("38", "1", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:54:\"Texto de chamada para falar do atendimento da empresa.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Texto Atendimento", "texto_atendimento", "publish", "closed", "closed", "", "field_5a271ef428545", "", "", "2017-12-05 20:35:43", "2017-12-05 22:35:43", "", "4", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=38", "4", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Texto de chamada para a \"Equipe Jurídica\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Texto Equipe", "texto_equipe", "publish", "closed", "closed", "", "field_5a271f0f28546", "", "", "2017-12-05 20:35:33", "2017-12-05 22:35:33", "", "4", "http://localhost/advocacia-marcos/?post_type=acf-field&p=39", "5", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("40", "1", "2017-12-05 20:38:52", "2017-12-05 22:38:52", "", "Home", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2017-12-05 20:38:52", "2017-12-05 22:38:52", "", "9", "http://localhost/advocacia-marcos/2017/12/05/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("41", "1", "2017-12-05 20:39:28", "2017-12-05 22:39:28", "", "Home", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2017-12-05 20:39:28", "2017-12-05 22:39:28", "", "9", "http://localhost/advocacia-marcos/2017/12/05/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("42", "1", "2017-12-06 12:45:55", "2017-12-06 14:45:55", "", "Direito Empresarial", "", "publish", "closed", "closed", "", "direito-empresarial", "", "", "2017-12-07 17:05:11", "2017-12-07 19:05:11", "", "0", "http://localhost/advocacia-marcos/?page_id=42", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2017-12-06 12:45:55", "2017-12-06 14:45:55", "", "Direito Empresarial", "", "inherit", "closed", "closed", "", "42-revision-v1", "", "", "2017-12-06 12:45:55", "2017-12-06 14:45:55", "", "42", "http://localhost/advocacia-marcos/2017/12/06/42-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("44", "1", "2017-12-06 13:11:31", "2017-12-06 15:11:31", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"page-categorias.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:6:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:6:\"author\";i:5;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}", "Página de Categoria", "pagina-de-categoria", "publish", "closed", "closed", "", "group_5a28087380765", "", "", "2017-12-07 17:05:01", "2017-12-07 19:05:01", "", "0", "http://localhost/advocacia-marcos/?post_type=acf-field-group&#038;p=44", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2017-12-06 13:11:31", "2017-12-06 15:11:31", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "categoria", "categoria", "publish", "closed", "closed", "", "field_5a28087a5ce44", "", "", "2017-12-07 16:13:43", "2017-12-07 18:13:43", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=45", "6", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2017-12-06 13:12:03", "2017-12-06 15:12:03", "", "Direito Empresarial", "", "inherit", "closed", "closed", "", "42-revision-v1", "", "", "2017-12-06 13:12:03", "2017-12-06 15:12:03", "", "42", "http://localhost/advocacia-marcos/2017/12/06/42-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("47", "1", "2017-12-06 15:21:13", "2017-12-06 17:21:13", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Conteúdo", "", "publish", "closed", "closed", "", "field_5a282683720ac", "", "", "2017-12-06 15:21:13", "2017-12-06 17:21:13", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&p=47", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("48", "1", "2017-12-06 15:21:13", "2017-12-06 17:21:13", "a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:74:\"Pergunta que aparecerá na parte superior do site. No máximo duas linhas.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:4:\"text\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}", "Tópico 1", "topico_1", "publish", "closed", "closed", "", "field_5a282693720ad", "", "", "2017-12-07 17:05:01", "2017-12-07 19:05:01", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=48", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2017-12-06 15:21:13", "2017-12-06 17:21:13", "a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:49:\"Pergunta que aparecerá na parte superior do site\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:4:\"text\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}", "Tópico 2", "topico_2", "publish", "closed", "closed", "", "field_5a2826ef720ae", "", "", "2017-12-07 17:05:01", "2017-12-07 19:05:01", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=49", "3", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("50", "1", "2017-12-06 15:21:13", "2017-12-06 17:21:13", "a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:49:\"Pergunta que aparecerá na parte superior do site\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}", "Tópico 3", "topico_3", "publish", "closed", "closed", "", "field_5a2826fc720af", "", "", "2017-12-07 17:05:01", "2017-12-07 19:05:01", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=50", "4", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2017-12-06 15:21:13", "2017-12-06 17:21:13", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}", "Categoria", "", "publish", "closed", "closed", "", "field_5a282677720ab", "", "", "2017-12-07 16:13:42", "2017-12-07 18:13:42", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=51", "5", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("52", "1", "2017-12-06 15:22:09", "2017-12-06 17:22:09", "", "Direito Empresarial", "", "inherit", "closed", "closed", "", "42-revision-v1", "", "", "2017-12-06 15:22:09", "2017-12-06 17:22:09", "", "42", "http://localhost/advocacia-marcos/2017/12/06/42-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("53", "1", "2017-12-07 16:13:42", "2017-12-07 18:13:42", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Background da parte inicial", "bg_categoria", "publish", "closed", "closed", "", "field_5a29849140ddd", "", "", "2017-12-07 16:13:42", "2017-12-07 18:13:42", "", "44", "http://localhost/advocacia-marcos/?post_type=acf-field&p=53", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("54", "1", "2017-12-07 17:03:28", "2017-12-07 19:03:28", "", "Direito Empresarial", "", "inherit", "closed", "closed", "", "42-revision-v1", "", "", "2017-12-07 17:03:28", "2017-12-07 19:03:28", "", "42", "http://localhost/advocacia-marcos/2017/12/07/42-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("55", "1", "2017-12-07 19:00:10", "2017-12-07 21:00:10", " ", "", "", "publish", "closed", "closed", "", "55", "", "", "2017-12-08 00:04:00", "2017-12-08 02:04:00", "", "0", "http://localhost/advocacia-marcos/?p=55", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("56", "1", "2017-12-07 23:49:12", "2017-12-08 01:49:12", "", "Direito do Trabalho", "", "publish", "closed", "closed", "", "direito-do-trabalho", "", "", "2017-12-17 17:56:35", "2017-12-17 19:56:35", "", "0", "http://localhost/advocacia-marcos/?page_id=56", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("57", "1", "2017-12-07 23:49:12", "2017-12-08 01:49:12", "", "Direito do Trabalho", "", "inherit", "closed", "closed", "", "56-revision-v1", "", "", "2017-12-07 23:49:12", "2017-12-08 01:49:12", "", "56", "http://localhost/advocacia-marcos/2017/12/07/56-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("58", "1", "2017-12-07 23:49:28", "2017-12-08 01:49:28", "", "Direito Civil", "", "publish", "closed", "closed", "", "direito-civil", "", "", "2017-12-07 23:49:28", "2017-12-08 01:49:28", "", "0", "http://localhost/advocacia-marcos/?page_id=58", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("59", "1", "2017-12-07 23:49:28", "2017-12-08 01:49:28", "", "Direito Civil", "", "inherit", "closed", "closed", "", "58-revision-v1", "", "", "2017-12-07 23:49:28", "2017-12-08 01:49:28", "", "58", "http://localhost/advocacia-marcos/2017/12/07/58-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("60", "1", "2017-12-07 23:49:43", "2017-12-08 01:49:43", "", "Direito Tributário", "", "publish", "closed", "closed", "", "direito-tributario", "", "", "2017-12-07 23:49:43", "2017-12-08 01:49:43", "", "0", "http://localhost/advocacia-marcos/?page_id=60", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("61", "1", "2017-12-07 23:49:43", "2017-12-08 01:49:43", "", "Direito Tributário", "", "inherit", "closed", "closed", "", "60-revision-v1", "", "", "2017-12-07 23:49:43", "2017-12-08 01:49:43", "", "60", "http://localhost/advocacia-marcos/2017/12/07/60-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("62", "1", "2017-12-07 23:55:23", "2017-12-08 01:55:23", "", "Direito Administrativo", "", "publish", "closed", "closed", "", "direito-administrativo", "", "", "2017-12-07 23:55:23", "2017-12-08 01:55:23", "", "0", "http://localhost/advocacia-marcos/?page_id=62", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("63", "1", "2017-12-07 23:55:23", "2017-12-08 01:55:23", "", "Direito Administrativo", "", "inherit", "closed", "closed", "", "62-revision-v1", "", "", "2017-12-07 23:55:23", "2017-12-08 01:55:23", "", "62", "http://localhost/advocacia-marcos/2017/12/07/62-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("64", "1", "2017-12-07 23:55:43", "2017-12-08 01:55:43", "", "Direito Previdenciário", "", "publish", "closed", "closed", "", "direito-previdenciario", "", "", "2017-12-07 23:55:43", "2017-12-08 01:55:43", "", "0", "http://localhost/advocacia-marcos/?page_id=64", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("65", "1", "2017-12-07 23:55:43", "2017-12-08 01:55:43", "", "Direito Previdenciário", "", "inherit", "closed", "closed", "", "64-revision-v1", "", "", "2017-12-07 23:55:43", "2017-12-08 01:55:43", "", "64", "http://localhost/advocacia-marcos/2017/12/07/64-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("66", "1", "2017-12-07 23:56:24", "2017-12-08 01:56:24", " ", "", "", "publish", "closed", "closed", "", "66", "", "", "2017-12-07 23:56:24", "2017-12-08 01:56:24", "", "0", "http://localhost/advocacia-marcos/?p=66", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("67", "1", "2017-12-07 23:56:24", "2017-12-08 01:56:24", " ", "", "", "publish", "closed", "closed", "", "67", "", "", "2017-12-07 23:56:24", "2017-12-08 01:56:24", "", "0", "http://localhost/advocacia-marcos/?p=67", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("68", "1", "2017-12-07 23:56:24", "2017-12-08 01:56:24", " ", "", "", "publish", "closed", "closed", "", "68", "", "", "2017-12-07 23:56:24", "2017-12-08 01:56:24", "", "0", "http://localhost/advocacia-marcos/?p=68", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("69", "1", "2017-12-07 23:56:24", "2017-12-08 01:56:24", " ", "", "", "publish", "closed", "closed", "", "69", "", "", "2017-12-07 23:56:24", "2017-12-08 01:56:24", "", "0", "http://localhost/advocacia-marcos/?p=69", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("70", "1", "2017-12-07 23:56:24", "2017-12-08 01:56:24", " ", "", "", "publish", "closed", "closed", "", "70", "", "", "2017-12-07 23:56:24", "2017-12-08 01:56:24", "", "0", "http://localhost/advocacia-marcos/?p=70", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("71", "1", "2017-12-07 23:56:24", "2017-12-08 01:56:24", " ", "", "", "publish", "closed", "closed", "", "71", "", "", "2017-12-07 23:56:24", "2017-12-08 01:56:24", "", "0", "http://localhost/advocacia-marcos/?p=71", "6", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("72", "1", "2017-12-08 00:04:00", "2017-12-08 02:04:00", " ", "", "", "publish", "closed", "closed", "", "72", "", "", "2017-12-08 00:04:00", "2017-12-08 02:04:00", "", "0", "http://localhost/advocacia-marcos/?p=72", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("73", "1", "2017-12-08 00:04:00", "2017-12-08 02:04:00", " ", "", "", "publish", "closed", "closed", "", "73", "", "", "2017-12-08 00:04:00", "2017-12-08 02:04:00", "", "0", "http://localhost/advocacia-marcos/?p=73", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("74", "1", "2017-12-08 00:04:00", "2017-12-08 02:04:00", " ", "", "", "publish", "closed", "closed", "", "74", "", "", "2017-12-08 00:04:00", "2017-12-08 02:04:00", "", "0", "http://localhost/advocacia-marcos/?p=74", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("75", "1", "2017-12-08 00:04:00", "2017-12-08 02:04:00", " ", "", "", "publish", "closed", "closed", "", "75", "", "", "2017-12-08 00:04:00", "2017-12-08 02:04:00", "", "0", "http://localhost/advocacia-marcos/?p=75", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("76", "1", "2017-12-08 00:04:00", "2017-12-08 02:04:00", " ", "", "", "publish", "closed", "closed", "", "76", "", "", "2017-12-08 00:04:00", "2017-12-08 02:04:00", "", "0", "http://localhost/advocacia-marcos/?p=76", "6", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("77", "1", "2017-12-08 00:31:53", "2017-12-08 02:31:53", "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.\r\n\r\n", "Direito do Trabalho", "", "publish", "open", "open", "", "direito-do-trabalho", "", "", "2017-12-12 19:22:50", "2017-12-12 21:22:50", "", "0", "http://localhost/advocacia-marcos/?p=77", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("78", "1", "2017-12-08 00:31:53", "2017-12-08 02:31:53", "asdasd", "Direito do Trabalho", "", "inherit", "closed", "closed", "", "77-revision-v1", "", "", "2017-12-08 00:31:53", "2017-12-08 02:31:53", "", "77", "http://localhost/advocacia-marcos/2017/12/08/77-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("79", "1", "2017-12-08 00:33:18", "2017-12-08 02:33:18", "adasd", "Direito do trabalho 2", "", "publish", "open", "open", "", "direito-do-trabalho-2", "", "", "2017-12-13 10:58:14", "2017-12-13 12:58:14", "", "0", "http://localhost/advocacia-marcos/?p=79", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("80", "1", "2017-12-08 00:33:18", "2017-12-08 02:33:18", "adasd", "Direito do trabalho 2", "", "inherit", "closed", "closed", "", "79-revision-v1", "", "", "2017-12-08 00:33:18", "2017-12-08 02:33:18", "", "79", "http://localhost/advocacia-marcos/2017/12/08/79-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("81", "1", "2017-12-08 00:33:38", "2017-12-08 02:33:38", "", "Direito do Trabalho", "", "inherit", "closed", "closed", "", "56-revision-v1", "", "", "2017-12-08 00:33:38", "2017-12-08 02:33:38", "", "56", "http://localhost/advocacia-marcos/2017/12/08/56-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("82", "1", "2017-12-08 00:34:21", "2017-12-08 02:34:21", "Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja.\r\n​\r\nPara personalizar este item, clique aqui > Adicionar e Gerenciar Itens.\r\nDiga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja.", "Post Direito do Trabalho", "", "publish", "open", "open", "", "direito-do-trabalho-3", "", "", "2017-12-17 18:01:02", "2017-12-17 20:01:02", "", "0", "http://localhost/advocacia-marcos/?p=82", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("83", "1", "2017-12-08 00:34:21", "2017-12-08 02:34:21", "", "Direito do Trabalho 3", "", "inherit", "closed", "closed", "", "82-revision-v1", "", "", "2017-12-08 00:34:21", "2017-12-08 02:34:21", "", "82", "http://localhost/advocacia-marcos/2017/12/08/82-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("86", "1", "2017-12-08 00:41:23", "2017-12-08 02:41:23", "adasd", "Pub 1", "", "publish", "closed", "closed", "", "pub-1", "", "", "2017-12-08 00:41:23", "2017-12-08 02:41:23", "", "0", "http://localhost/advocacia-marcos/?post_type=publicacoes&#038;p=86", "0", "publicacoes", "", "0");
INSERT INTO `wp_posts` VALUES("87", "1", "2017-12-08 00:47:14", "2017-12-08 02:47:14", "", "Pub 2", "", "publish", "closed", "closed", "", "pub-2", "", "", "2017-12-08 00:47:19", "2017-12-08 02:47:19", "", "0", "http://localhost/advocacia-marcos/?post_type=publicacoes&#038;p=87", "0", "publicacoes", "", "0");
INSERT INTO `wp_posts` VALUES("88", "1", "2017-12-11 22:30:47", "2017-12-12 00:30:47", "", "Ache o escritório mais próximo de você!", "", "publish", "closed", "closed", "", "cep", "", "", "2017-12-13 17:50:59", "2017-12-13 19:50:59", "", "0", "http://localhost/advocacia-marcos/?page_id=88", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("89", "1", "2017-12-11 22:30:47", "2017-12-12 00:30:47", "", "CEP", "", "inherit", "closed", "closed", "", "88-revision-v1", "", "", "2017-12-11 22:30:47", "2017-12-12 00:30:47", "", "88", "http://localhost/advocacia-marcos/2017/12/11/88-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("90", "1", "2017-12-11 22:51:57", "2017-12-12 00:51:57", "", "Sua Filial Mais Próxima", "", "publish", "closed", "closed", "", "cep-result", "", "", "2017-12-19 11:18:08", "2017-12-19 13:18:08", "", "0", "http://localhost/advocacia-marcos/?page_id=90", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("91", "1", "2017-12-11 22:51:57", "2017-12-12 00:51:57", "", "CEP Result", "", "inherit", "closed", "closed", "", "90-revision-v1", "", "", "2017-12-11 22:51:57", "2017-12-12 00:51:57", "", "90", "http://localhost/advocacia-marcos/2017/12/11/90-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("100", "1", "2017-12-12 14:32:52", "2017-12-12 16:32:52", "<div id=\"accordion\">\r\n  <h3 id=\"accordion\">Section 1</h3>\r\n  <div>\r\n    <p>\r\n    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer\r\n    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit\r\n    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut\r\n    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 2</h3>\r\n  <div>\r\n    <p>\r\n    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet\r\n    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor\r\n    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In\r\n    suscipit faucibus urna.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 3</h3>\r\n  <div>\r\n    <p>\r\n    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.\r\n    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero\r\n    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis\r\n    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.\r\n    </p>\r\n    <ul>\r\n      <li>List item one</li>\r\n      <li>List item two</li>\r\n      <li>List item three</li>\r\n    </ul>\r\n  </div>\r\n  <h3>Section 4</h3>\r\n  <div>\r\n    <p>\r\n    Cras dictum. Pellentesque habitant morbi tristique senectus et netus\r\n    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in\r\n    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia\r\n    mauris vel est.\r\n    </p>\r\n    <p>\r\n    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.\r\n    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\r\n    inceptos himenaeos.\r\n    </p>\r\n  </div>\r\n</div>", "Perguntas Frequentes", "", "publish", "closed", "closed", "", "perguntas-frequentes", "", "", "2017-12-12 18:45:29", "2017-12-12 20:45:29", "", "0", "http://localhost/advocacia-marcos/?page_id=100", "10", "page", "", "0");
INSERT INTO `wp_posts` VALUES("101", "1", "2017-12-12 14:32:52", "2017-12-12 16:32:52", "", "Perguntas Frequentes", "", "inherit", "closed", "closed", "", "100-revision-v1", "", "", "2017-12-12 14:32:52", "2017-12-12 16:32:52", "", "100", "http://localhost/advocacia-marcos/2017/12/12/100-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("103", "1", "2017-12-12 17:49:33", "2017-12-12 19:49:33", "<div id=\"accordion\">\r\n  <h3>Section 1</h3>\r\n  <div>\r\n    <p>\r\n    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer\r\n    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit\r\n    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut\r\n    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.\r\n    </p>\r\n  </div>\r\n  <h3>Section 2</h3>\r\n  <div>\r\n    <p>\r\n    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet\r\n    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor\r\n    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In\r\n    suscipit faucibus urna.\r\n    </p>\r\n  </div>\r\n  <h3>Section 3</h3>\r\n  <div>\r\n    <p>\r\n    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.\r\n    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero\r\n    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis\r\n    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.\r\n    </p>\r\n    <ul>\r\n      <li>List item one</li>\r\n      <li>List item two</li>\r\n      <li>List item three</li>\r\n    </ul>\r\n  </div>\r\n  <h3>Section 4</h3>\r\n  <div>\r\n    <p>\r\n    Cras dictum. Pellentesque habitant morbi tristique senectus et netus\r\n    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in\r\n    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia\r\n    mauris vel est.\r\n    </p>\r\n    <p>\r\n    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.\r\n    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\r\n    inceptos himenaeos.\r\n    </p>\r\n  </div>\r\n</div>", "Perguntas Frequentes", "", "inherit", "closed", "closed", "", "100-revision-v1", "", "", "2017-12-12 17:49:33", "2017-12-12 19:49:33", "", "100", "http://localhost/advocacia-marcos/2017/12/12/100-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("104", "1", "2017-12-12 18:02:46", "2017-12-12 20:02:46", "<div id=\"accordion\">\n  <h3 id=\"accordion\">Section 1</h3>\n  <div>\n    <p>\n    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer\n    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit\n    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut\n    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.\n    </p>\n  </div>\n  <h3>Section 2</h3>\n  <div>\n    <p>\n    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet\n    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor\n    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In\n    suscipit faucibus urna.\n    </p>\n  </div>\n  <h3>Section 3</h3>\n  <div>\n    <p>\n    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.\n    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero\n    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis\n    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.\n    </p>\n    <ul>\n      <li>List item one</li>\n      <li>List item two</li>\n      <li>List item three</li>\n    </ul>\n  </div>\n  <h3>Section 4</h3>\n  <div>\n    <p>\n    Cras dictum. Pellentesque habitant morbi tristique senectus et netus\n    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in\n    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia\n    mauris vel est.\n    </p>\n    <p>\n    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.\n    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\n    inceptos himenaeos.\n    </p>\n  </div>\n</div>", "Perguntas Frequentes", "", "inherit", "closed", "closed", "", "100-autosave-v1", "", "", "2017-12-12 18:02:46", "2017-12-12 20:02:46", "", "100", "http://localhost/advocacia-marcos/2017/12/12/100-autosave-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("105", "1", "2017-12-12 18:02:52", "2017-12-12 20:02:52", "<div id=\"accordion\">\r\n  <h3 id=\"accordion\">Section 1</h3>\r\n  <div>\r\n    <p>\r\n    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer\r\n    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit\r\n    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut\r\n    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 2</h3>\r\n  <div>\r\n    <p>\r\n    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet\r\n    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor\r\n    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In\r\n    suscipit faucibus urna.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 3</h3>\r\n  <div>\r\n    <p>\r\n    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.\r\n    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero\r\n    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis\r\n    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.\r\n    </p>\r\n    <ul>\r\n      <li>List item one</li>\r\n      <li>List item two</li>\r\n      <li>List item three</li>\r\n    </ul>\r\n  </div>\r\n  <h3>Section 4</h3>\r\n  <div>\r\n    <p>\r\n    Cras dictum. Pellentesque habitant morbi tristique senectus et netus\r\n    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in\r\n    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia\r\n    mauris vel est.\r\n    </p>\r\n    <p>\r\n    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.\r\n    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\r\n    inceptos himenaeos.\r\n    </p>\r\n  </div>\r\n</div>", "Perguntas Frequentes", "", "inherit", "closed", "closed", "", "100-revision-v1", "", "", "2017-12-12 18:02:52", "2017-12-12 20:02:52", "", "100", "http://localhost/advocacia-marcos/2017/12/12/100-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("106", "1", "2017-12-12 18:41:12", "2017-12-12 20:41:12", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"page-perguntas.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";}s:11:\"description\";s:0:\"\";}", "Perguntas", "perguntas", "publish", "closed", "closed", "", "group_5a303e6e7bbf2", "", "", "2017-12-12 18:43:31", "2017-12-12 20:43:31", "", "0", "http://localhost/advocacia-marcos/?post_type=acf-field-group&#038;p=106", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("107", "1", "2017-12-12 18:41:12", "2017-12-12 20:41:12", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_5a303e92b9746\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:18:\"Adicionar Pergunta\";}", "Perguntas", "perguntas", "publish", "closed", "closed", "", "field_5a303e83b9745", "", "", "2017-12-12 18:43:31", "2017-12-12 20:43:31", "", "106", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=107", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("108", "1", "2017-12-12 18:41:12", "2017-12-12 20:41:12", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Pergunta", "titulo_pergunta", "publish", "closed", "closed", "", "field_5a303e92b9746", "", "", "2017-12-12 18:41:12", "2017-12-12 20:41:12", "", "107", "http://localhost/advocacia-marcos/?post_type=acf-field&p=108", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("109", "1", "2017-12-12 18:41:12", "2017-12-12 20:41:12", "a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:4:\"text\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}", "Resposta", "resposta", "publish", "closed", "closed", "", "field_5a303ea0b9747", "", "", "2017-12-12 18:43:31", "2017-12-12 20:43:31", "", "107", "http://localhost/advocacia-marcos/?post_type=acf-field&#038;p=109", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("110", "1", "2017-12-12 18:42:32", "2017-12-12 20:42:32", "<div id=\"accordion\">\r\n  <h3 id=\"accordion\">Section 1</h3>\r\n  <div>\r\n    <p>\r\n    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer\r\n    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit\r\n    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut\r\n    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 2</h3>\r\n  <div>\r\n    <p>\r\n    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet\r\n    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor\r\n    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In\r\n    suscipit faucibus urna.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 3</h3>\r\n  <div>\r\n    <p>\r\n    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.\r\n    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero\r\n    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis\r\n    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.\r\n    </p>\r\n    <ul>\r\n      <li>List item one</li>\r\n      <li>List item two</li>\r\n      <li>List item three</li>\r\n    </ul>\r\n  </div>\r\n  <h3>Section 4</h3>\r\n  <div>\r\n    <p>\r\n    Cras dictum. Pellentesque habitant morbi tristique senectus et netus\r\n    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in\r\n    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia\r\n    mauris vel est.\r\n    </p>\r\n    <p>\r\n    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.\r\n    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\r\n    inceptos himenaeos.\r\n    </p>\r\n  </div>\r\n</div>", "Perguntas Frequentes", "", "inherit", "closed", "closed", "", "100-revision-v1", "", "", "2017-12-12 18:42:32", "2017-12-12 20:42:32", "", "100", "http://localhost/advocacia-marcos/2017/12/12/100-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("111", "1", "2017-12-12 18:45:29", "2017-12-12 20:45:29", "<div id=\"accordion\">\r\n  <h3 id=\"accordion\">Section 1</h3>\r\n  <div>\r\n    <p>\r\n    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer\r\n    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit\r\n    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut\r\n    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 2</h3>\r\n  <div>\r\n    <p>\r\n    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet\r\n    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor\r\n    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In\r\n    suscipit faucibus urna.\r\n    </p>\r\n  </div>\r\n  <h3 id=\"accordion\">Section 3</h3>\r\n  <div>\r\n    <p>\r\n    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.\r\n    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero\r\n    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis\r\n    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.\r\n    </p>\r\n    <ul>\r\n      <li>List item one</li>\r\n      <li>List item two</li>\r\n      <li>List item three</li>\r\n    </ul>\r\n  </div>\r\n  <h3>Section 4</h3>\r\n  <div>\r\n    <p>\r\n    Cras dictum. Pellentesque habitant morbi tristique senectus et netus\r\n    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in\r\n    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia\r\n    mauris vel est.\r\n    </p>\r\n    <p>\r\n    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.\r\n    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\r\n    inceptos himenaeos.\r\n    </p>\r\n  </div>\r\n</div>", "Perguntas Frequentes", "", "inherit", "closed", "closed", "", "100-revision-v1", "", "", "2017-12-12 18:45:29", "2017-12-12 20:45:29", "", "100", "http://localhost/advocacia-marcos/2017/12/12/100-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("113", "1", "2017-12-12 19:16:05", "2017-12-12 21:16:05", "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.\r\n\r\n", "Direito do Trabalho", "", "inherit", "closed", "closed", "", "77-revision-v1", "", "", "2017-12-12 19:16:05", "2017-12-12 21:16:05", "", "77", "http://localhost/advocacia-marcos/2017/12/12/77-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("114", "1", "2017-12-12 19:22:31", "2017-12-12 21:22:31", "", "autores-nordestinos", "", "inherit", "open", "closed", "", "autores-nordestinos", "", "", "2017-12-12 19:22:31", "2017-12-12 21:22:31", "", "77", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/autores-nordestinos.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("115", "1", "2017-12-12 19:22:33", "2017-12-12 21:22:33", "", "Júri justiça julgamento", "", "inherit", "open", "closed", "", "juri-justica-julgamento", "", "", "2017-12-12 19:22:33", "2017-12-12 21:22:33", "", "77", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/Júri-justiça-julgamento.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("116", "1", "2017-12-12 19:22:34", "2017-12-12 21:22:34", "", "Justiça", "", "inherit", "open", "closed", "", "justica", "", "", "2017-12-12 19:22:34", "2017-12-12 21:22:34", "", "77", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/Justiça.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("117", "1", "2017-12-12 23:36:02", "2017-12-13 01:36:02", "Só falo merda ", "Beatriz", "", "trash", "open", "open", "", "beatriz__trashed", "", "", "2017-12-13 00:40:09", "2017-12-13 02:40:09", "", "0", "http://localhost/advocacia-marcos/?p=117", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("118", "1", "2017-12-12 23:36:02", "2017-12-13 01:36:02", "Só falo merda ", "Beatriz", "", "inherit", "closed", "closed", "", "117-revision-v1", "", "", "2017-12-12 23:36:02", "2017-12-13 01:36:02", "", "117", "http://localhost/advocacia-marcos/2017/12/12/117-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("119", "1", "2017-12-12 23:36:30", "2017-12-13 01:36:30", "", "joaopessoa_interna", "", "inherit", "open", "closed", "", "joaopessoa_interna", "", "", "2017-12-12 23:36:30", "2017-12-13 01:36:30", "", "117", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/joaopessoa_interna.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("120", "1", "2017-12-13 00:40:18", "2017-12-13 02:40:18", "Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja.\r\n​\r\nPara personalizar este item, clique aqui > Adicionar e Gerenciar Itens.\r\nDiga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja.", "Direito do Trabalho 3", "", "inherit", "closed", "closed", "", "82-revision-v1", "", "", "2017-12-13 00:40:18", "2017-12-13 02:40:18", "", "82", "http://localhost/advocacia-marcos/2017/12/13/82-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("121", "1", "2017-12-13 00:45:31", "2017-12-13 02:45:31", "", "030814-F-2171A-", "Tyndall aerials of the 1st Fighter Squadron", "inherit", "open", "closed", "", "030814-f-2171a", "", "", "2017-12-13 00:45:31", "2017-12-13 02:45:31", "", "82", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/F-15_vertical_deploy.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("122", "1", "2017-12-13 01:18:03", "2017-12-13 03:18:03", "", "unnamed", "", "inherit", "open", "closed", "", "unnamed", "", "", "2017-12-13 01:18:03", "2017-12-13 03:18:03", "", "82", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/unnamed.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("123", "1", "2017-12-13 10:41:07", "2017-12-13 12:41:07", "Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.… Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.…\r\nDiga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.…", "Direito do trabalho", "", "publish", "open", "open", "", "direito-do-trabalho-4", "", "", "2017-12-13 11:07:40", "2017-12-13 13:07:40", "", "0", "http://localhost/advocacia-marcos/?p=123", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("124", "1", "2017-12-13 10:41:07", "2017-12-13 12:41:07", "Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.…", "Direito do trabalho", "", "inherit", "closed", "closed", "", "123-revision-v1", "", "", "2017-12-13 10:41:07", "2017-12-13 12:41:07", "", "123", "http://localhost/advocacia-marcos/2017/12/13/123-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("125", "1", "2017-12-13 10:58:03", "2017-12-13 12:58:03", "", "justice", "", "inherit", "open", "closed", "", "justice", "", "", "2017-12-13 10:58:03", "2017-12-13 12:58:03", "", "79", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/justice.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("126", "1", "2017-12-13 10:58:56", "2017-12-13 12:58:56", "", "BehaveSci-CrimJusticeResearch-YCP1", "", "inherit", "open", "closed", "", "behavesci-crimjusticeresearch-ycp1", "", "", "2017-12-13 10:58:56", "2017-12-13 12:58:56", "", "82", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/BehaveSci-CrimJusticeResearch-YCP1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("127", "1", "2017-12-13 11:07:40", "2017-12-13 13:07:40", "Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.… Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.…\r\nDiga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja. ​ Para personalizar este item, clique aqui > Adicionar e Gerenciar Itens. Diga mais sobre este item.…", "Direito do trabalho", "", "inherit", "closed", "closed", "", "123-revision-v1", "", "", "2017-12-13 11:07:40", "2017-12-13 13:07:40", "", "123", "http://localhost/advocacia-marcos/2017/12/13/123-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("128", "1", "2017-12-13 14:45:11", "2017-12-13 16:45:11", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"publicacoes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:6:\"author\";i:6;s:6:\"format\";i:7;s:14:\"featured_image\";i:8;s:4:\"tags\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "Lâminas", "laminas", "publish", "closed", "closed", "", "group_5a31588e0095f", "", "", "2017-12-13 14:45:34", "2017-12-13 16:45:34", "", "0", "http://localhost/advocacia-marcos/?post_type=acf-field-group&#038;p=128", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("129", "1", "2017-12-13 14:45:11", "2017-12-13 16:45:11", "a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:53:\"Adicione o arquivo pdf para ser baixado pelo usuário\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Arquivo Pdf", "arquivo_pdf", "publish", "closed", "closed", "", "field_5a3158921cf64", "", "", "2017-12-13 14:45:11", "2017-12-13 16:45:11", "", "128", "http://localhost/advocacia-marcos/?post_type=acf-field&p=129", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("130", "1", "2017-12-13 14:50:19", "2017-12-13 16:50:19", "", "Publicação 3", "", "publish", "closed", "closed", "", "publicacao-3", "", "", "2017-12-13 14:50:19", "2017-12-13 16:50:19", "", "0", "http://localhost/advocacia-marcos/?post_type=publicacoes&#038;p=130", "0", "publicacoes", "", "0");
INSERT INTO `wp_posts` VALUES("131", "1", "2017-12-13 14:50:02", "2017-12-13 16:50:02", "", "Curriculo Matheus Beltrao", "", "inherit", "open", "closed", "", "curriculo-matheus-beltrao", "", "", "2017-12-13 14:50:02", "2017-12-13 16:50:02", "", "130", "http://localhost/advocacia-marcos/wp-content/uploads/2017/12/Curriculo-Matheus-Beltrao.pdf", "0", "attachment", "application/pdf", "0");
INSERT INTO `wp_posts` VALUES("132", "1", "2017-12-13 17:50:59", "2017-12-13 19:50:59", "", "Ache o escritório mais próximo de você!", "", "inherit", "closed", "closed", "", "88-revision-v1", "", "", "2017-12-13 17:50:59", "2017-12-13 19:50:59", "", "88", "http://localhost/advocacia-marcos/2017/12/13/88-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("133", "1", "2017-12-17 17:56:35", "2017-12-17 19:56:35", "", "Direito do Trabalho", "", "inherit", "closed", "closed", "", "56-revision-v1", "", "", "2017-12-17 17:56:35", "2017-12-17 19:56:35", "", "56", "http://localhost/advocacia-marcos/2017/12/17/56-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("134", "1", "2017-12-17 18:01:02", "2017-12-17 20:01:02", "Diga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja.\r\n​\r\nPara personalizar este item, clique aqui > Adicionar e Gerenciar Itens.\r\nDiga mais sobre este item. Sobre o que é este item e o que há de interessante nele? Dê às pessoas as informações necessárias para continuar e tomar a ação que você deseja.", "Post Direito do Trabalho", "", "inherit", "closed", "closed", "", "82-revision-v1", "", "", "2017-12-17 18:01:02", "2017-12-17 20:01:02", "", "82", "http://localhost/advocacia-marcos/2017/12/17/82-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("135", "1", "2017-12-19 11:18:08", "2017-12-19 13:18:08", "", "Sua Filial Mais Próxima", "", "inherit", "closed", "closed", "", "90-revision-v1", "", "", "2017-12-19 11:18:08", "2017-12-19 13:18:08", "", "90", "http://localhost/advocacia-marcos/2017/12/19/90-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("136", "1", "2017-12-21 01:04:38", "0000-00-00 00:00:00", "", "Direito do Trabalho", "", "draft", "closed", "closed", "", "", "", "", "2017-12-21 01:04:38", "2017-12-21 03:04:38", "", "0", "http://localhost/advocacia-marcos/?page_id=136", "0", "page", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("15", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("55", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("66", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("67", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("68", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("69", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("70", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("71", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("72", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("73", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("74", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("75", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("76", "5", "0");
INSERT INTO `wp_term_relationships` VALUES("77", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("79", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("82", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("86", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("87", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("117", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("123", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("130", "3", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("2", "2", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("3", "3", "category", "", "0", "7");
INSERT INTO `wp_term_taxonomy` VALUES("4", "4", "nav_menu", "", "0", "6");
INSERT INTO `wp_term_taxonomy` VALUES("5", "5", "nav_menu", "", "0", "6");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Sem categoria", "sem-categoria", "0");
INSERT INTO `wp_terms` VALUES("2", "Direito Empresarial", "direito-empresarial", "0");
INSERT INTO `wp_terms` VALUES("3", "Direito do Trabalho", "direito-do-trabalho", "0");
INSERT INTO `wp_terms` VALUES("4", "Menu Principal", "menu-principal", "0");
INSERT INTO `wp_terms` VALUES("5", "Footer Menu", "footer-menu", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "pochar");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"b768a6c76be7240bb106ea926cfa098959b93f5fcfc6fc3bd8fb71f097c4479f\";a:4:{s:10:\"expiration\";i:1515001178;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\";s:5:\"login\";i:1514828378;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "3");
INSERT INTO `wp_usermeta` VALUES("18", "1", "community-events-location", "a:1:{s:2:\"ip\";s:2:\"::\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("20", "1", "metaboxhidden_nav-menus", "a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `wp_usermeta` VALUES("21", "1", "nav_menu_recently_edited", "5");
INSERT INTO `wp_usermeta` VALUES("22", "1", "wp_user-settings", "editor=html&libraryContent=browse");
INSERT INTO `wp_usermeta` VALUES("23", "1", "wp_user-settings-time", "1513113767");
INSERT INTO `wp_usermeta` VALUES("24", "1", "acf_user_settings", "a:1:{s:29:\"collapsed_field_5a303e83b9745\";s:1:\"0\";}");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "pochar", "$P$BasY.9PKj6fJoNDkKUEdHqbMzfK1NY/", "pochar", "pocharr@gmail.com", "", "2017-12-02 18:42:35", "", "0", "pochar");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2018-01-01 17:45:10*/
/* DUPLICATOR_MYSQLDUMP_EOF */