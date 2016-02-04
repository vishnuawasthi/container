/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.35 : Database - test
*********************************************************************
Server version : 5.5.35
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `test`;

USE `test`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `httpftpdetails` */

DROP TABLE IF EXISTS `httpftpdetails`;

CREATE TABLE `httpftpdetails` (
  `Id` int(32) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(20) NOT NULL,
  `httpUrl` varchar(500) NOT NULL,
  `ftpUrl` varchar(500) NOT NULL,
  `httpUrlUsername` varchar(255) NOT NULL,
  `ftpUrlUsername` varchar(255) NOT NULL,
  `httpUrlpwd` varchar(255) NOT NULL,
  `ftpUrlpwd` varchar(255) NOT NULL,
  `schedule` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `httpftpdetails` */

insert into `httpftpdetails` (`Id`,`jobName`,`httpUrl`,`ftpUrl`,`httpUrlUsername`,`ftpUrlUsername`,`httpUrlpwd`,`ftpUrlpwd`,`schedule`) values (1,'','https://www.google.co.in','https://www.google.co.in','sdfsdf','sdf','sdf','sdf','0000-00-00');
insert into `httpftpdetails` (`Id`,`jobName`,`httpUrl`,`ftpUrl`,`httpUrlUsername`,`ftpUrlUsername`,`httpUrlpwd`,`ftpUrlpwd`,`schedule`) values (2,'','https://www.google.co.in','https://www.google.co.in','afsf','sdf','vhnmjgh','jghj','0000-00-00');
insert into `httpftpdetails` (`Id`,`jobName`,`httpUrl`,`ftpUrl`,`httpUrlUsername`,`ftpUrlUsername`,`httpUrlpwd`,`ftpUrlpwd`,`schedule`) values (3,'','https://www.google.co.in','https://www.google.co.in','gfsdfsd','fadd','fsdadf','fdaf','2014-12-17');
insert into `httpftpdetails` (`Id`,`jobName`,`httpUrl`,`ftpUrl`,`httpUrlUsername`,`ftpUrlUsername`,`httpUrlpwd`,`ftpUrlpwd`,`schedule`) values (4,'','https://www.google.co.in','https://www.google.co.in','ghfh','gfhfh','fdgdg','gfh','2014-12-18');
insert into `httpftpdetails` (`Id`,`jobName`,`httpUrl`,`ftpUrl`,`httpUrlUsername`,`ftpUrlUsername`,`httpUrlpwd`,`ftpUrlpwd`,`schedule`) values (5,'abc','https://www.google.co.in','https://www.google.co.in','fdfsd','fdsaf','fdafd','fda','2014-12-19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert into `users` (`id`,`user_name`,`user_password`,`user_email`,`user_id`) values (1,'bharathsai','5f4dcc3b5aa765d61d8327deb882cf99','bharathsai007@gmail.com','bharath');
insert into `users` (`id`,`user_name`,`user_password`,`user_email`,`user_id`) values (9,'srikanth','5f4dcc3b5aa765d61d8327deb882cf99','srikanth.nagaboina@valuelabs.net','srikanth');
insert into `users` (`id`,`user_name`,`user_password`,`user_email`,`user_id`) values (22,'sdgds','5f4dcc3b5aa765d61d8327deb882cf99','bxcbcxbxccxb','admin');
insert into `users` (`id`,`user_name`,`user_password`,`user_email`,`user_id`) values (26,'saranya','5f4dcc3b5aa765d61d8327deb882cf99','saranya.test@gmail.com','saranya');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
