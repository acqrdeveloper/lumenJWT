/*
SQLyog Ultimate v12.4.0 (64 bit)
MySQL - 10.1.36-MariaDB : Database - db_jwt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_jwt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_jwt`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2018_11_09_173248_create_users_table',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`created_at`,`updated_at`) values 
(1,'Carmine Conroy V','dietrich.carissa@yahoo.com','$2y$10$UgGvELbiHa.fkI8JuTOndOrxqT4GOq78psh2QpqH5AQtveEDm64by','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(2,'Otha Lemke MD','jmccullough@pfeffer.net','$2y$10$FqTZjnqSCmcNNYiw65oOreST7Nxw5jfB6JJE8vFIpPwzeCJueXd2e','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(3,'Adolfo Johnston','rowe.sydney@yahoo.com','$2y$10$bBWioWA25EYeA0JFVOVilO8PZyCtFkDUaICV1iNpwXw0CUxqiIQ0O','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(4,'Arely Fadel','francisco.ryan@green.com','$2y$10$t0YZ1h35nYitJ/OqHD.Bq.G1/JtcKz/eAsAUogtdVI.rURle/1lQq','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(5,'Maybell Gulgowski','eusebio.jerde@keeling.biz','$2y$10$ma45hb1c.zRuIwFs6g5Ecug8D/IzR.yv8ERCCR.5lVSwZLKR66b0K','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(6,'Mr. Waylon Friesen','ktowne@yahoo.com','$2y$10$FI6ShZ1Wd7qpNyMVPprd1u9ZUzG9ZSyE7AOWeWf6war.wypRtod8e','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(7,'Shyanne Stroman','keebler.judy@johns.com','$2y$10$z98aMrKvVIu4H6gOQ/Gr.eiSALABpstQNbC.A7xaHRtxXMYGpmkIq','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(8,'Chandler Effertz','carter.saul@bechtelar.com','$2y$10$E8vOWpq41w/VjGzKXSzHW.cyo5HlzliQ2oUSHoDI0SFN4UWlZTqly','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(9,'Dr. Otto Carter Jr.','leo67@hotmail.com','$2y$10$Y1kI4RO.YJpk6JKP8sWtdOspfAPebzGW4kSZhxn.zAVzoBYjZytw6','2018-11-09 12:47:23','2018-11-09 12:47:23'),
(10,'Madisyn Nolan Sr.','brody54@bins.com','$2y$10$UAguEUZ6XtotijWCykrxx.ts12UCtFF1XFBM5rdr.TP7Po6qHgAXO','2018-11-09 12:47:23','2018-11-09 12:47:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
