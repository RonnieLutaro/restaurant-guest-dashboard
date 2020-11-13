-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant_guest
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sorting` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,0,'admin','admin','','98724_user.jpg');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_app_home`
--

DROP TABLE IF EXISTS `tbl_app_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_app_home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(10000) NOT NULL,
  `position_order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_app_home`
--

LOCK TABLES `tbl_app_home` WRITE;
/*!40000 ALTER TABLE `tbl_app_home` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_app_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cashback`
--

DROP TABLE IF EXISTS `tbl_cashback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cashback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `u_id` varchar(250) NOT NULL,
  `cashback_amount` varchar(250) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cashback`
--

LOCK TABLES `tbl_cashback` WRITE;
/*!40000 ALTER TABLE `tbl_cashback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cashback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_type`
--

DROP TABLE IF EXISTS `tbl_category_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_type`
--

LOCK TABLES `tbl_category_type` WRITE;
/*!40000 ALTER TABLE `tbl_category_type` DISABLE KEYS */;
INSERT INTO `tbl_category_type` VALUES (1,'instock'),(2,'advance');
/*!40000 ALTER TABLE `tbl_category_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_name` mediumtext NOT NULL,
  `delivery_amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_city`
--

LOCK TABLES `tbl_city` WRITE;
/*!40000 ALTER TABLE `tbl_city` DISABLE KEYS */;
INSERT INTO `tbl_city` VALUES (1,'Bishop-Stage',1000),(2,'Bugujju',1000),(3,'Kawuga',1000),(9,'Nabuuti',2000),(10,'Wantoni',2000),(11,'Wandegeya',1000);
/*!40000 ALTER TABLE `tbl_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_city_list`
--

DROP TABLE IF EXISTS `tbl_city_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_city_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `sub_city` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_city_list`
--

LOCK TABLES `tbl_city_list` WRITE;
/*!40000 ALTER TABLE `tbl_city_list` DISABLE KEYS */;
INSERT INTO `tbl_city_list` VALUES (37,11,'Sarameck Hostel'),(38,2,'Kanyikwa Hostel'),(39,3,'Fes Hostel'),(40,2,'Bethany Hostel'),(41,2,'Bishop Kamanyire Hostel'),(42,3,'Alpha and Omega Hostel');
/*!40000 ALTER TABLE `tbl_city_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_coupon_code`
--

DROP TABLE IF EXISTS `tbl_coupon_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_coupon_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `tandc` varchar(100) NOT NULL,
  `min_order` varchar(100) NOT NULL,
  `exp_date` varchar(20) NOT NULL,
  `no_uses` varchar(100) NOT NULL,
  `coupon_code` varchar(100) NOT NULL,
  `coupon_type` varchar(100) NOT NULL,
  `coupon_value` varchar(100) NOT NULL,
  `visibility` varchar(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_coupon_code`
--

LOCK TABLES `tbl_coupon_code` WRITE;
/*!40000 ALTER TABLE `tbl_coupon_code` DISABLE KEYS */;
INSERT INTO `tbl_coupon_code` VALUES (1,'Get Free Delivery','Use Code DELFREE5 & get free delivery on order of ugx. 3500 & above.','3500','2020-12-14','1','DELFREE5','amount','3500','1');
/*!40000 ALTER TABLE `tbl_coupon_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_coupon_type`
--

DROP TABLE IF EXISTS `tbl_coupon_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_coupon_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_coupon_type`
--

LOCK TABLES `tbl_coupon_type` WRITE;
/*!40000 ALTER TABLE `tbl_coupon_type` DISABLE KEYS */;
INSERT INTO `tbl_coupon_type` VALUES (1,'percentage'),(2,'amount');
/*!40000 ALTER TABLE `tbl_coupon_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_coupon_users`
--

DROP TABLE IF EXISTS `tbl_coupon_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_coupon_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `user_id` int NOT NULL,
  `availability` varchar(10) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `pay_amount` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_coupon_users`
--

LOCK TABLES `tbl_coupon_users` WRITE;
/*!40000 ALTER TABLE `tbl_coupon_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_coupon_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_flavour`
--

DROP TABLE IF EXISTS `tbl_flavour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_flavour` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `flavour_name` varchar(500) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_flavour`
--

LOCK TABLES `tbl_flavour` WRITE;
/*!40000 ALTER TABLE `tbl_flavour` DISABLE KEYS */;
INSERT INTO `tbl_flavour` VALUES (1,'Black Forest');
/*!40000 ALTER TABLE `tbl_flavour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_home_banner`
--

DROP TABLE IF EXISTS `tbl_home_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_home_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotelid` int NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_home_banner`
--

LOCK TABLES `tbl_home_banner` WRITE;
/*!40000 ALTER TABLE `tbl_home_banner` DISABLE KEYS */;
INSERT INTO `tbl_home_banner` VALUES (8,1,'1','13330_banner.jpeg'),(9,1,'2','38628_banner2.jpeg');
/*!40000 ALTER TABLE `tbl_home_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menucategory`
--

DROP TABLE IF EXISTS `tbl_menucategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menucategory` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cat_type` varchar(100) NOT NULL,
  `hotelid` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `visibility` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menucategory`
--

LOCK TABLES `tbl_menucategory` WRITE;
/*!40000 ALTER TABLE `tbl_menucategory` DISABLE KEYS */;
INSERT INTO `tbl_menucategory` VALUES (12,'instock',1,'Local Food','26488_local-food.jpg',1),(11,'instock',1,'Snacks','56405_snacks.jpg',1),(9,'instock',1,'2 Chapatis','7324_chapati.jpg',1),(8,'instock',1,'Vegetable Rice','77017_vegetable rice.jpg',1),(7,'instock',1,'Chips','49871_chips.jpg',1),(13,'instock',1,'Tea','45241_tea.jpg',1),(14,'instock',1,'Drinks','38942_drinks.jpg',1),(15,'instock',1,'Pizza (Medium)','52319_pizza.jpg',1);
/*!40000 ALTER TABLE `tbl_menucategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menuwallpaper`
--

DROP TABLE IF EXISTS `tbl_menuwallpaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menuwallpaper` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_type` int NOT NULL DEFAULT '1',
  `hotelid` int NOT NULL,
  `cat_id` int NOT NULL,
  `f_id` varchar(100) NOT NULL,
  `cat_food_type` varchar(250) NOT NULL,
  `food_opening_time` varchar(250) NOT NULL DEFAULT '0',
  `food_closing_time` varchar(250) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `des` text NOT NULL,
  `image_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(20) NOT NULL,
  `min_kg` varchar(250) NOT NULL,
  `max_kg` varchar(250) NOT NULL,
  `total_views` int NOT NULL DEFAULT '0',
  `visibility` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menuwallpaper`
--

LOCK TABLES `tbl_menuwallpaper` WRITE;
/*!40000 ALTER TABLE `tbl_menuwallpaper` DISABLE KEYS */;
INSERT INTO `tbl_menuwallpaper` VALUES (20,0,1,13,'','','14:10','01:10','African Tea','','2020-11-13','40648_african-tea.jpg','2000','','',0,1),(21,0,1,11,'','','','','Beef Samosa','','2020-11-13','43266_beef-samosa.jpg','500','','',0,1),(22,0,1,13,'','','','','Black Tea','','2020-11-13','89260_black-tea.jpg','1500','','',0,1),(23,0,1,11,'','','','','Burger','','2020-11-13','80704_burger.jpg','5000','','',0,1),(24,0,1,11,'','','','','Chap','','2020-11-13','83482_chap.jpg','1500','','',0,1),(25,0,1,9,'','','','','Chapatti, Beans','','2020-11-13','2137_chapati-beans.jpg','3500','','',0,1),(26,0,1,9,'','','','','Chapatti, Beef','','2020-11-13','86823_chapati-beef.jpg','5000','','',0,1),(27,0,1,9,'','','','','Chapatti, Gravy','','2020-11-13','38508_chapati-gravy.jpg','3500','','',0,1),(28,0,1,9,'','','','','Chapatti, Liver','','2020-11-13','73095_chapati-liver.jpg','6000','','',0,1),(29,0,1,7,'','','','','Chips, Beef','','2020-11-13','40725_chips-beef.jpg','8000','','',0,1),(30,0,1,7,'','','','','Chips, Chicken','','2020-11-13','28314_chips-chicken.jpg','11000','','',0,1),(31,0,1,7,'','','','','Chips, Liver','','2020-11-13','62200_chips-liver.jpg','9000','','',0,1),(32,0,1,7,'','','','','Chips, Plain','','2020-11-13','36193_chips-plain.jpg','5000','','',0,1),(33,0,1,7,'','','','','Chips, Sausage','','2020-11-13','87322_chips-sausage.jpg','7000','','',0,1),(34,0,1,13,'','','','','Coffee','','2020-11-13','57315_cofee.jpg','2000','','',0,1),(35,0,1,14,'','','','','Glass of juice','','2020-11-13','92793_glass-of-juice.jpg','1500','','',0,1),(36,0,1,11,'','','','','Kebab','','2020-11-13','49791_kebab.jpg','1000','','',0,1),(37,0,1,12,'','','','','Matooke, Meat','<p>Served with Matooke, Sweet potatoes, Rice, Posho.</p>\r\n','2020-11-13','27705_matooke-meat.jpg','5000','','',0,1),(38,0,1,11,'','','','','Meat pie','','2020-11-13','67020_meat-pie.jpg','2000','','',0,1),(39,0,1,8,'','','','','Pilau gravy','','2020-11-13','19101_pilau-gravy.jpg','7000','','',0,1),(40,0,1,15,'','','','','Pizza, Beef','','2020-11-13','33574_pizza-beef.jpg','15000','','',0,1),(41,0,1,15,'','','','','Pizza, Chicken','','2020-11-13','13106_pizza-chicken.jpg','17000','','',0,1),(42,1,1,15,'','','','','Pizza, Vegetable','','2020-11-13','97205_pizza-vegetable.jpg','13000','','',0,1),(43,1,1,11,'','','','','Rolex','','2020-11-13','90181_rolex-chapati.jpg','3000','','',0,1),(44,0,1,11,'','','','','Sausages (pair)','','2020-11-13','44168_sausage-pair.jpg','2000','','',0,1),(45,1,1,8,'','','','','Vegetable Rice, Liver','','2020-11-13','32524_vegetable-liver.jpg','10000','','',0,1),(46,1,1,8,'','','','','Vegetable Rice, Beans','','2020-11-13','90748_vegetable-rice-beans.jpg','7500','','',0,1),(47,1,1,8,'','','','','Vegetable Rice, Beef','','2020-11-13','53383_vegetable-rice-beef.jpg','9000','','',0,1),(48,1,1,8,'','','','','Vegetable Rice, Goat\'s Meat','','2020-11-13','29501_vegetable-rice-goat-meat.jpg','6000','','',0,1),(49,1,1,8,'','','','','Vegetable Rice, Gravy','','2020-11-13','74142_vegetable-rice-gravy.jpg','6000','','',0,1),(50,0,1,14,'','','','','Water','','2020-11-13','39092_water.jpg','1500','','',0,1);
/*!40000 ALTER TABLE `tbl_menuwallpaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_normal_notification`
--

DROP TABLE IF EXISTS `tbl_normal_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_normal_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotelid` int NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_msg` text NOT NULL,
  `notification_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_normal_notification`
--

LOCK TABLES `tbl_normal_notification` WRITE;
/*!40000 ALTER TABLE `tbl_normal_notification` DISABLE KEYS */;
INSERT INTO `tbl_normal_notification` VALUES (1,1,'Update your app for exciting new features!','Download Now!','82591_Google-Play-Store-For-PC-3.png'),(2,1,'Get 20% Caskback on All Fastfoods. ','10% Cashback on Cakes. Order Now !! ','29575_FBPOST.png'),(3,1,'Get 20% Caskback on All Fastfoods.','10% Cashback on Cakes. Order Now !!','74109_hb.png'),(4,1,'10% Cashback on Cakes. Order Now !!','Get 20% Caskback on All Fastfoods.','32371_122121.png'),(5,1,' Happy Monsoon ! Rains + Sunday !!!','Order and enjoy Food at your doorstep.','72959_121212.png');
/*!40000 ALTER TABLE `tbl_normal_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reservation`
--

DROP TABLE IF EXISTS `tbl_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reservation` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `hotelid` int NOT NULL,
  `user_id` int NOT NULL,
  `cat_type` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number_of_people` varchar(50) NOT NULL,
  `date_time` varchar(250) NOT NULL,
  `advance_date` varchar(250) NOT NULL,
  `advance_time` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `order_list` text NOT NULL,
  `json_order_list` mediumtext NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `cancel_status` int NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_type` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobileid` varchar(100) NOT NULL,
  `city_name` varchar(1000) NOT NULL,
  `sub_city_name` varchar(250) NOT NULL,
  `delivery_time` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reservation`
--

LOCK TABLES `tbl_reservation` WRITE;
/*!40000 ALTER TABLE `tbl_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sc_users`
--

DROP TABLE IF EXISTS `tbl_sc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sc_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sc_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sc_users`
--

LOCK TABLES `tbl_sc_users` WRITE;
/*!40000 ALTER TABLE `tbl_sc_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_scratch_coupons`
--

DROP TABLE IF EXISTS `tbl_scratch_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_scratch_coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `coupon_text` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `visibility` varchar(122) NOT NULL DEFAULT '1',
  `type` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_scratch_coupons`
--

LOCK TABLES `tbl_scratch_coupons` WRITE;
/*!40000 ALTER TABLE `tbl_scratch_coupons` DISABLE KEYS */;
INSERT INTO `tbl_scratch_coupons` VALUES (4,'Better luck next time','Better luck next time','0','Better luck next time','','1','text');
/*!40000 ALTER TABLE `tbl_scratch_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotelid` int NOT NULL,
  `sort` int NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_email` varchar(255) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  `app_author` varchar(255) NOT NULL,
  `app_contact` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `app_description` text NOT NULL,
  `app_developed_by` varchar(255) NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `email_desc` mediumtext NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `message_desc` mediumtext NOT NULL,
  `complete_message_desc` mediumtext NOT NULL,
  `min_amount_rs` varchar(250) NOT NULL,
  `min_amount_msg` longtext NOT NULL,
  `fast_food_name` varchar(1000) NOT NULL,
  `sc_master_title` varchar(250) NOT NULL,
  `sc_master_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES (1,1,1,'Bobics Restaurant','ic_launcher.png','ronnielutaro@gmail.com','1.0.0','Food Cart','+256772622186','https://www.linkedin.com/in/ronnie-lutaro-b73240aa/','','Ronnie Lutaro','','ronnielutaro@gmail.com','<p>Thank you for order at Bobics Restaurant.</p>\r\n','+256772622186','Thank you for order at  Bobics Restaurant, your order is placed.','Thank you for order at Bobics Restaurant, your order is delivered.','2000','Minimum value of the order must be ugx.2000!','20% OFF on all Fast-Foods','Total Rewards','sc1.png');
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_token`
--

DROP TABLE IF EXISTS `tbl_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobileid` varchar(100) NOT NULL,
  `token` text NOT NULL,
  `receive_order_notification` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_token`
--

LOCK TABLES `tbl_user_token` WRITE;
/*!40000 ALTER TABLE `tbl_user_token` DISABLE KEYS */;
INSERT INTO `tbl_user_token` VALUES (1,'Bhavika','9586084876','','b7ca9ff8a26dc152','eduLlkb_vtk:APA91bGzqbN08hoB4G_btBj9MC6PnJoNEAPeUb8mpg0v_2G7ATu-ZKlCpBPTQIRZVUv5orRQaFXAt8M0u_6B1IBNVXvyNxDHQToGorQIAux_ZCSWPIOQ7G6Q_OWySBr1MrHMBGi6uslo',0);
/*!40000 ALTER TABLE `tbl_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `wallet` int NOT NULL,
  `image` varchar(1000) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `doa` varchar(100) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `location` mediumtext NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `receive_order_notification` int NOT NULL DEFAULT '0',
  `removeAt` int NOT NULL DEFAULT '0',
  `versioncode` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'Hiren','','9898256173','','',0,'','11/1/2000','','','','','','',0,1,''),(2,'Bhavika','','9586084876','','',0,'','3/12/1997','','','','','','',0,1,'1.0');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_uses_coupon`
--

DROP TABLE IF EXISTS `tbl_uses_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_uses_coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_of_uses_coupon` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_uses_coupon`
--

LOCK TABLES `tbl_uses_coupon` WRITE;
/*!40000 ALTER TABLE `tbl_uses_coupon` DISABLE KEYS */;
INSERT INTO `tbl_uses_coupon` VALUES (1,'1'),(2,'2');
/*!40000 ALTER TABLE `tbl_uses_coupon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 20:58:49
