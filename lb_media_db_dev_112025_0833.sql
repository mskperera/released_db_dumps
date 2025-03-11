-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: lb_media_db
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bucket`
--

DROP TABLE IF EXISTS `bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bucket` (
  `bucketId` int(11) NOT NULL AUTO_INCREMENT,
  `bucketName` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`bucketId`),
  UNIQUE KEY `bucketId` (`bucketId`),
  KEY `userId` (`userId`),
  CONSTRAINT `bucket_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bucket`
--

LOCK TABLES `bucket` WRITE;
/*!40000 ALTER TABLE `bucket` DISABLE KEYS */;
INSERT INTO `bucket` VALUES
(2,'bucket1',1,'2024-12-10 18:54:23');
/*!40000 ALTER TABLE `bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `folder_path` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_resized` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES
(1,'5af75b009c09bb36cfd03bfcf6e246a8','me.jpg','public\\uploads\\1732431243802-695588273.jpg','','2024-11-24 12:24:03',0),
(2,'f2c23d0a71a6726e99d146217cccb868','me.jpg','public\\uploads\\1732432218305-81578616.jpg','','2024-11-24 12:40:18',0),
(3,'07929636821fda056b88e0e31d127eb0','me.jpg','public\\uploads\\1732432243574-122704712.jpg','','2024-11-24 12:40:43',0),
(4,'fe4ed811c365cdcfa0e5787ae933106f','me.jpg','public\\uploads\\1732433570105-75476158.jpg','','2024-11-24 13:02:50',0),
(5,'fff6a759d8522d3e5958812bccbabc1c','me.jpg','public\\uploads\\1732433575822-182301928.jpg','','2024-11-24 13:02:55',0),
(6,'dbde5874db133e87540847c34cf7fcbb','124825644_3906725059356502_7926511559246451945_n.jpg','public\\uploads\\1732433585962-91827293.jpg','','2024-11-24 13:03:05',0),
(7,'6dd6f702be51c557b3697473e0d39547','me.jpg','public\\uploads\\1732434122358-65943737.jpg','','2024-11-24 13:12:02',0),
(8,'165cf142df8637a7a087b6d599663d8c','me.jpg','public\\uploads\\1732434216598-666507192.jpg','','2024-11-24 13:13:36',0),
(9,'3706c75baa66e3658f9db9306b75df93','me.jpg','public\\uploads\\1732434454824-998140966.jpg','','2024-11-24 13:17:34',0),
(10,'5a750e1c373cb4eca5cba57b2f01469a','me.jpg','public\\uploads\\1732434616167-352986224.jpg','','2024-11-24 13:20:16',0),
(11,'322320b47354600ac2adc2e5398d5d9b','me.jpg','public\\uploads\\1732435189628-810263952.jpg','','2024-11-24 13:29:49',0),
(12,'98e89628190808ee85fdb0a98be58cf4','me.jpg','public\\uploads\\1732435478301-544192192.jpg','','2024-11-24 13:34:38',0),
(13,'b9c96660262d22ea8fa57578714e01db','me.jpg','public\\uploads\\1732435601907-335600844.jpg','','2024-11-24 13:36:41',0),
(14,'3cb4c9928b10d9168ab22e5acc9942d5','me.jpg','public\\uploads\\1732435836614-910387576.jpg','','2024-11-24 13:40:36',0),
(15,'0cbc5c5aa5e2d6f8eb044a9c4948fcbb','me.jpg','..\\public\\uploads\\1732436045747-306997985.jpg','','2024-11-24 13:44:05',0),
(16,'bf375fb4a5f2e99a9b9376b5d3a83736','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732436558047-269490446.jpg','','2024-11-24 13:52:38',0),
(17,'08d4cc29ee65164734617b4c988db903','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732436564867-289634823.jpg','','2024-11-24 13:52:44',0),
(18,'f02182d9a79bd53f2b99401d6867bc2a','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732436598451-398037069.jpg','','2024-11-24 13:53:18',0),
(19,'9f1f6482e79befbb5850312b9bf15a5e','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732436880202-735770511.jpg','','2024-11-24 13:58:00',0),
(20,'c399188cdece224af59ee31126dd9647','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732437391326-713596866.jpg','','2024-11-24 14:06:31',0),
(21,'c0b2a9cd6af62210b37a322a54eb3e40','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732437399960-866415893.jpg','','2024-11-24 14:06:39',0),
(22,'ce4c6d5bf9cd92e0e6096b3de50a15c6','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732438046915-772028345.jpg','','2024-11-24 14:17:27',0),
(23,'95b60a7767eb8b4a9d089308b305f683','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732438561795-me.jpg','','2024-11-24 14:26:01',1),
(24,'6142267036938d7b5a115d93a7cfea73','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732438573650-me.jpg','','2024-11-24 14:26:13',1),
(25,'f65b8f452768c2bca4bd8e96c75660a2','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732438785418-449296517.jpg','','2024-11-24 14:29:45',0),
(26,'e9e09792692a963eb7ebcc0c28ca6827','me.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732439283088-137125109.jpg','','2024-11-24 14:38:03',0),
(27,'75a7db7bd066206a66809ec1b80f9614','124825644_3906725059356502_7926511559246451945_n.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732439760631-124825644_3906725059356502_7926511559246451945_n.jpg','','2024-11-24 14:46:00',1),
(28,'79356925075f5b56d7c547c3349c9f23','cofee-shop-banner.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732439813292-778156220.webp','','2024-11-24 14:46:53',0),
(29,'713e00a4a5ff0bd2c00fe2f23c38379c','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732439868412-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:47:48',1),
(30,'62f4a591174069435c67e155bb2b8076','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732439998143-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:49:58',1),
(31,'09401099ae15df85d58482c3ebfec668','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440040363-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:50:40',1),
(32,'0dbd162f52898f8a52ed00a93e0c0b5d','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440088948-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:51:29',1),
(33,'15b4cba04cc5921f9a57f3c7ce5657df','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440097330-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:51:37',1),
(34,'db34c9e00d18ea601bf950ae01aa10ab','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440105208-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:51:45',1),
(35,'cd60d2e9bf3457d0766ce5b371feafcc','cofee-shop-banner.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440112837-583078632.webp','','2024-11-24 14:51:52',0),
(36,'b389f77c5b545dd702a574bae963d58f','cofee-shop-banner.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440117896-589293957.webp','','2024-11-24 14:51:57',0),
(37,'29d1f21f3c87a8850d99d84fe7a89973','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732440152570-day-end-closing-calculator-jtl-pos.png','','2024-11-24 14:52:32',1),
(38,'f4ce8686e034bab91c2ff377ace2697b','124825644_3906725059356502_7926511559246451945_n.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732441264408-124825644_3906725059356502_7926511559246451945_n.jpg','','2024-11-24 15:11:04',1),
(39,'d651cf17962257a340984cfcc86bc797','phone-call (2).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732441578620-phone-call (2).png','','2024-11-24 15:16:18',1),
(40,'f09b800e069c11a29603b9978e2ea258','phone-call (1).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732441687524-phone-call (1).png','','2024-11-24 15:18:07',1),
(41,'7c1c90ee3f08dda1afe171818530cf09','phone-call (1).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732442043812-phone-call (1).png','','2024-11-24 15:24:04',1),
(42,'c869ac383aaf0bb46fa7c605426d9408','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732442078873-day-end-closing-calculator-jtl-pos.png','','2024-11-24 15:24:39',1),
(43,'adab228d3db8d51b4932b1160c571c5d','phone-call.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732442096509-phone-call.png','','2024-11-24 15:24:56',1),
(44,'83192e4f868cb33d0f86cf5d96ce7647','github (1).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732442186275-github (1).png','','2024-11-24 15:26:26',1),
(45,'745eecc799ad246e67f10485d85ffd12','email (1).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732442635963-email (1).png','','2024-11-24 15:33:56',1),
(46,'21e2643edc67eb2338218f00ea995b50','email (1).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732442827209-email (1).png','','2024-11-24 15:37:07',1),
(47,'25560e1d1facd4c578ff2a54cd0ff651','email (1).png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732443242382-email (1).png','','2024-11-24 15:44:02',1),
(48,'c41d75dbe317e59660a22b63d4a93a62','3.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732443275663-3.jpg','','2024-11-24 15:44:36',1),
(49,'c3ccb62177453678b809c9b3a5faab8d','WhatsApp Image 2024-10-20 at 16.48.11_da6e3c1e.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732443313430-WhatsApp Image 2024-10-20 at 16.48.11_da6e3c1e.jpg','','2024-11-24 15:45:13',1),
(50,'af269aa65231dafa7d4082d72cda771d','me.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732443513272-me.JPG','','2024-11-24 15:48:33',1),
(51,'99b83faff53d578d389cea9c1f11e443','3.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732443669017-3.jpg','','2024-11-24 15:51:09',1),
(52,'e74560b2db1aca42d7ff0795b9137189','WhatsApp Image 2024-10-20 at 16.48.11_da6e3c1e.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732443758159-WhatsApp Image 2024-10-20 at 16.48.11_da6e3c1e.jpg','','2024-11-24 15:52:38',1),
(53,'21b296e307563068ab355cf88c5596ed','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732444323652-day-end-closing-calculator-jtl-pos.png','','2024-11-24 16:02:03',1),
(54,'789d05c892ff50568a5cab3786e4b94c','day-end-closing-calculator-jtl-pos.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732445007293-day-end-closing-calculator-jtl-pos.png','','2024-11-24 16:13:27',1),
(55,'49c322d66b23f673cc7a820ffa726945','3.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732445096095-3.jpg','','2024-11-24 16:14:56',1),
(56,'73380f8a904de805925f740f28d32bec','124825644_3906725059356502_7926511559246451945_n.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732446425834-124825644_3906725059356502_7926511559246451945_n.jpg','','2024-11-24 16:37:06',1),
(57,'2a94cefab0219aec03df88563518708d','me.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732446542946-me.JPG','','2024-11-24 16:39:03',1),
(58,'c92fd00872dc0b6b44f5d0e383d1c1d8','rainbow_cake_20402_16x9.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732446622853-rainbow_cake_20402_16x9.jpg','','2024-11-24 16:40:23',1),
(59,'09200a0091f57ebec6aab4d595405e8a','images.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732446702204-images.jpg','','2024-11-24 16:41:42',1),
(60,'d0cd5a0069f6ad54e7d4bd85366e81d1','1-2-avocado-png-clipart.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732446987115-1-2-avocado-png-clipart.webp','','2024-11-24 16:46:27',1),
(61,'f05912b5d3dbb85f8393c27c4a06f01c','3005994-01.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732447102296-3005994-01.webp','','2024-11-24 16:48:22',1),
(62,'55579247a1b3b28416d09e6d89b3853d','5_dc1f82fa-e30c-47bc-969a-d7bbb26c02c2.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732453983580-5_dc1f82fa-e30c-47bc-969a-d7bbb26c02c2.webp','','2024-11-24 18:43:03',1),
(63,'95f61bbaeeee6f85ef8693e18428e822','download.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732652914512-download.webp','','2024-11-27 01:58:34',1),
(64,'6186ea6885d929417d70f902fd7702b3','images (1).jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732653047819-images (1).jpg','','2024-11-27 02:00:47',1),
(65,'0280ce47ce6342e03953ee4c45718a86','images (1).jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732653110615-images (1).jpg','','2024-11-27 02:01:50',1),
(66,'e2f5ea88c0ab8db401ed698efd4e6385','1-2-avocado-png-clipart.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732653355413-1-2-avocado-png-clipart.webp','','2024-11-27 02:05:55',1),
(67,'b9f39f8ef9ff0c2537a4d49241536020','images (1).jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732653401019-images (1).jpg','','2024-11-27 02:06:41',1),
(68,'2dd7b0fce868e2c171564a0ff62db9dd','download.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732733540116-download.webp','','2024-11-28 00:22:20',1),
(69,'32ce879e90fb3c4b2cac00e401e21951','1-2-avocado-png-clipart.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732733550777-1-2-avocado-png-clipart.webp','','2024-11-28 00:22:30',1),
(70,'0a13dd80643e5881f83a3f69ad2ded58','images (1).jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1732733566536-images (1).jpg','','2024-11-28 00:22:46',1),
(71,'560fa03ee4f2612ad96546934a771222','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733806064586-2-1.webp','','2024-12-10 10:17:44',1),
(72,'d9f45862665f2f558fc1323af3a2f65e','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733848988557-2-1.webp','1','2024-12-10 22:13:08',0),
(73,'41d11a6a2240e3c7d286df43259cd5cf','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849201168-2-1.webp','1','2024-12-10 22:16:41',0),
(74,'549c267e9c463df3ef3223b7aeb3fb29','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849347263-2-1.webp','1','2024-12-10 22:19:07',0),
(75,'5e495f90ac29239072161e85c4279751','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849367684-2-1.webp','1','2024-12-10 22:19:28',0),
(76,'df19b0ebfe1e415bea4a22795a1a5f2c','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849418052-2-1.webp','1','2024-12-10 22:20:18',0),
(77,'83b8c74f16b746ca3ac485c5616cc496','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849566008-2-1.webp','1','2024-12-10 22:22:46',0),
(78,'736c75eb133f8ab28a6590610ef16f7c','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849575347-2-1.webp','1','2024-12-10 22:22:55',0),
(79,'12f4ccf3608626c450d254c823ba36f3','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849636290-2-1.webp','1','2024-12-10 22:23:56',0),
(80,'50bca780204ce9ec709fe133d27bd28c','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733849649941-2-1.webp','1','2024-12-10 22:24:10',0),
(81,'d00ba74b2b09ef8a28d99d50b5df78e7','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733850188370-2-1.webp','1','2024-12-10 22:33:08',0),
(82,'c1571d5b999790584962fbfd768e888d','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\profile-pics\\1733850218015-2-1.webp','1','2024-12-10 22:33:38',0),
(83,'e6c01dc8526fba4c569ee964deed7a7c','2-1.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\upload\\profile-pics\\1733850255724-2-1.webp','1','2024-12-10 22:34:16',0),
(84,'f89cf7c29169731c518aac1e85088cca','IMG_6372.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\upload\\profile-pics\\1733850680491-IMG_6372.JPG','1','2024-12-10 22:41:20',0),
(85,'7a5990a78f255b8bfe31365caa0d6704','rainbow_cake_20402_16x9.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733853325682-rainbow_cake_20402_16x9.jpg','1','2024-12-10 23:25:26',0),
(86,'18c96dcf846f65c23aa517b23d014737','1.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733853377992-1.jpg','1','2024-12-10 23:26:18',0),
(87,'705df3d598617d639cd3456515b3aa2e','IMG_6331.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733853419151-IMG_6331.JPG','1','2024-12-10 23:26:59',0),
(88,'62b59d087d2ea9b47caa79135e4f6ad0','1.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733853461300-1.jpg','1','2024-12-10 23:27:41',0),
(89,'bb6e3ba99fa86dde2342647d73d1cb2e','IMG_6372.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\1733853656173-IMG_6372.JPG','1','2024-12-10 23:30:56',0),
(90,'a0f8c6d771873bc91f4a0cd30e9d37ee','IMG_6372.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1733853851435-IMG_6372.JPG','1','2024-12-10 23:34:11',0),
(91,'a7682d4aa5a6783364675ecba636cfd5','IMG_6372.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1733854247524-IMG_6372.JPG','1','2024-12-10 23:40:47',0),
(92,'95fdb4add958c33343d284ff1074970f','IMG_6372.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\hhhhh\\1733855050148-IMG_6372.JPG','1','2024-12-10 23:54:10',0),
(93,'8f272090ccb29bf2dbfc3ae94ce9ba6c','images (1).jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\eeeee\\1733855074660-images (1).jpg','1','2024-12-10 23:54:34',0),
(94,'63ca60b8228a765f365822bfe4de7009','rainbow_cake_20402_16x9.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1733855180021-rainbow_cake_20402_16x9.jpg','1','2024-12-10 23:56:20',0),
(95,'d2e134725b2aa1a36168973bb8b0f74f','1313c809-deef-4320-bae7-b974ad6a3e6a_2.930e3b520f82a5eb8a628d073bf2c203.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1735659894806-1313c809-deef-4320-bae7-b974ad6a3e6a_2.930e3b520f82a5eb8a628d073bf2c203.webp','1','2024-12-31 21:14:55',0),
(96,'6053e4b3262a319d871e0a5e64ac7157','23decd891c40009e6fc1a11c5ad2ebf3.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1735659909434-23decd891c40009e6fc1a11c5ad2ebf3.jpg','1','2024-12-31 21:15:09',0),
(97,'bbd686f8521421f35aeaae9dff9416a3','vintage-made-in-1964-limited-edition-original-parts-dark-t-shirt-unisex-tshirt.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1735659924682-vintage-made-in-1964-limited-edition-original-parts-dark-t-shirt-unisex-tshirt.png','1','2024-12-31 21:15:24',0),
(98,'226e4bdd44e71a0f4376c2c4e8080dcd','eedc76f6-3a47-472c-bb9a-8fa3af1cde62_1.dfe898ded6eb7eff03de7c5569a5f314.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1735659942833-eedc76f6-3a47-472c-bb9a-8fa3af1cde62_1.dfe898ded6eb7eff03de7c5569a5f314.webp','1','2024-12-31 21:15:43',0),
(99,'04f1f7cc5a705a62e08f0df0aacbcf7a','ccb157fa-b043-461c-92c9-efa2d33a0d4e_1.1c2b59765c29a0cc842b2c9de174c5f2.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1735659958356-ccb157fa-b043-461c-92c9-efa2d33a0d4e_1.1c2b59765c29a0cc842b2c9de174c5f2.webp','1','2024-12-31 21:15:58',0),
(100,'abba12d180c44e132c63e9526b2e4e5e','strawberry-small-pack-180-g-product-images-o590001814-p590116964-1-202412161658.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739031894449-strawberry-small-pack-180-g-product-images-o590001814-p590116964-1-202412161658.webp','1','2025-02-08 21:54:54',0),
(101,'f995a1b05e5012ada5e2a18dd2c9f774','images (1).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032035450-images (1).jpeg','1','2025-02-08 21:57:15',0),
(102,'5bf51bc9429f2f511b5b70da8f9596f4','images (2).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032231916-images (2).jpeg','1','2025-02-08 22:00:31',0),
(103,'44e11fd9e38e8f405859a84ae0d24723','images (4).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032315861-images (4).jpeg','1','2025-02-08 22:01:55',0),
(104,'2ec477296fecbcb3cc6b908edbe2ec41','images (5).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032487726-images (5).jpeg','1','2025-02-08 22:04:47',0),
(105,'c69267b605e8ada322ce4880711931ae','Fashion-Running-Sneaker-for-Men-Shoes-Casual.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032762118-Fashion-Running-Sneaker-for-Men-Shoes-Casual.webp','1','2025-02-08 22:09:22',0),
(106,'b142b7aea9a248b767d6edee3a01ee60','images (6).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032905104-images (6).jpeg','1','2025-02-08 22:11:45',0),
(107,'5537c921cb692b183c4f22a2ec11af96','k1-18-scaled.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739032971998-k1-18-scaled.webp','1','2025-02-08 22:12:52',0),
(108,'a165a5126cd23a234e7ed4ecef16a345','lb.JPG','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1739184750143-lb.JPG','1','2025-02-10 16:22:30',0),
(109,'d2e616693b1310d3a21e5e2d077cbf0a','images (4).jpeg','F:/Projects/Ongoing_Projects/Legendbit_POS_cloud/lb_cloud_pos/asset_management_service/public/uploads/hhhhh/1740770661729-images (4).jpeg','1','2025-03-01 00:54:21',0),
(110,'dcd89eb2adb89fb6d20ba6311accc4ec','vintage-made-in-1964-limited-edition-original-parts-dark-t-shirt-unisex-tshirt.png','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1741625482698-vintage-made-in-1964-limited-edition-original-parts-dark-t-shirt-unisex-tshirt.png','1','2025-03-10 22:21:22',0),
(111,'c428727860d2b83fe6e868022ba3bf2a','images (1).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1741685280185-images (1).jpeg','1','2025-03-11 14:58:00',0),
(112,'f520654f95f042173d72a1e29d7812d9','23decd891c40009e6fc1a11c5ad2ebf3.jpg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1741686730152-23decd891c40009e6fc1a11c5ad2ebf3.jpg','1','2025-03-11 15:22:10',0),
(113,'1ca06d087c7096fb309d3ddf8bc681e2','Fashion-Running-Sneaker-for-Men-Shoes-Casual.webp','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1741697028195-Fashion-Running-Sneaker-for-Men-Shoes-Casual.webp','1','2025-03-11 18:13:48',0),
(114,'78200329d648834220f87ddf5a467655','images (2).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00001\\productImages\\1741698935578-images (2).jpeg','1','2025-03-11 18:45:35',0),
(115,'11e71559a5ecbacfca361efbe199eae7','images (2).jpeg','F:\\Projects\\Ongoing_Projects\\Legendbit_POS_cloud\\lb_cloud_pos\\asset_management_service\\public\\uploads\\00170\\productImages\\1741699888792-images (2).jpeg','1','2025-03-11 19:01:28',0);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'spmskperera','spmskperera@gmail.com','1234','2024-12-10 18:54:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lb_media_db'
--

--
-- Dumping routines for database 'lb_media_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-11 20:33:45
