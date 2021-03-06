/*
SQLyog Ultimate - MySQL GUI v8.22 
MySQL - 5.1.37 : Database - aqw_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aqw_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aqw_db`;

/*Table structure for table `actions` */

DROP TABLE IF EXISTS `actions`;

CREATE TABLE `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `animation` varchar(255) DEFAULT NULL,
  `ragne` int(11) DEFAULT NULL,
  `fx` varchar(255) DEFAULT NULL,
  `damage` varchar(255) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `dsrc` varchar(255) DEFAULT NULL,
  `auto` varchar(255) DEFAULT NULL,
  `tgt` varchar(255) DEFAULT NULL,
  `strl` varchar(255) DEFAULT NULL,
  `cd` int(11) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `actions` */

insert  into `actions`(`id`,`name`,`icon`,`ref`,`description`,`animation`,`ragne`,`fx`,`damage`,`mana`,`dsrc`,`auto`,`tgt`,`strl`,`cd`,`active`) values (1,'Auto attack','iwd1','none','A strong attack known only to disciplined fighters.','Attack1,Attack2',301,'m','1.1',0,'wDMG','true','h','',2000,'true');

/*Table structure for table `hairs` */

DROP TABLE IF EXISTS `hairs`;

CREATE TABLE `hairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hairs` */

insert  into `hairs`(`id`,`name`,`file_name`) values (1,'Default','hair/M/Default.swf');

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `linkage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`id`,`name`,`file_name`,`linkage`,`type`) values (1,'Royal Office','RoyalOffice.swf','RoyalOffice','co');

/*Table structure for table `maps` */

DROP TABLE IF EXISTS `maps`;

CREATE TABLE `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `maps` */

insert  into `maps`(`id`,`name`,`file_name`) values (1,'battleon','Battleon/town-Battleon-12Feb10.swf');

/*Table structure for table `servers` */

DROP TABLE IF EXISTS `servers`;

CREATE TABLE `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  `upgrade` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `servers` */

insert  into `servers`(`id`,`name`,`ip`,`count`,`max`,`online`,`upgrade`) values (1,'localhost','5.80.74.229',0,500,0,1);

/*Table structure for table `system_config` */

DROP TABLE IF EXISTS `system_config`;

CREATE TABLE `system_config` (
  `ckey` varchar(255) DEFAULT NULL,
  `cvalue` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `system_config` */

insert  into `system_config`(`ckey`,`cvalue`) values ('server.port','5588'),('server.max.connections','500'),('server.back.log','10'),('client.news','news/News-05Feb10.swf'),('client.map','news/Map-Jan1510.swf'),('client.book','news/Book-5Feb10.swf'),('server.motd','Private server concept and design by Syntax & Divien.'),('server.name','localhost'),('room.user.limit','10'),('map.first.join','1');

/*Table structure for table `user_items` */

DROP TABLE IF EXISTS `user_items`;

CREATE TABLE `user_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `equipped` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_items` */

insert  into `user_items`(`id`,`item_id`,`user_id`,`equipped`) values (1,1,1,1),(2,1,2,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '1',
  `age` int(11) DEFAULT '15',
  `hair_id` int(11) DEFAULT '1',
  `access` int(11) DEFAULT '0',
  `upg_days` int(11) DEFAULT '9999',
  `send_email` int(11) DEFAULT '0',
  `cc_only` tinyint(1) DEFAULT '0',
  `upg_expire_date` varchar(255) DEFAULT '01-01-3000T00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`password`,`email`,`salt`,`level`,`age`,`hair_id`,`access`,`upg_days`,`send_email`,`cc_only`,`upg_expire_date`) values (1,'demo','e91199d07f6c26b7cceaa20cf627b7768806e32f','demo@demo.com','demo',1,15,1,1,9999,0,0,'01-01-3000T00:00:00'),(2,'demo2','e91199d07f6c26b7cceaa20cf627b7768806e32f','demo@demo.com','demo',1,15,1,1,9999,0,0,'01-01-3000T00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
