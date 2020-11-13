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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 15:20:33
