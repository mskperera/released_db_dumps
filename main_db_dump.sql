-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: main_db
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
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connections` (
  `connectionId` int(11) NOT NULL AUTO_INCREMENT,
  `hostName` varchar(45) NOT NULL,
  `dbUsername` varchar(45) NOT NULL,
  `dbPassword` varchar(500) NOT NULL,
  `dbName` varchar(45) DEFAULT NULL,
  `tenantId` varchar(45) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `jwtSecret` varchar(100) DEFAULT NULL,
  `isSettingupCompleted` bit(1) DEFAULT b'0',
  UNIQUE KEY `db_connection_id_UNIQUE` (`connectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES
(36,'192.168.8.171','developer','dev@123','lbposc_light','00001','2023-10-16 20:09:17','2023-10-17 01:39:17',NULL,NULL,3307,'12121j121j23',''),
(135,'cyberknights255@gmail.com','2589825a','6e9a00f10a88','posdb_135','00135','2023-10-28 19:50:17','2023-10-29 01:20:17',NULL,NULL,3307,'e7e8e29aba519a1817adb98d632d0bb4','\0'),
(136,'127.0.0.1','fbae0a68','dc07f6b66799','posdb_136','00136','2023-10-28 19:56:43','2023-10-29 01:26:43',NULL,NULL,3307,'f02129923a7f69526983eb6b6925d6b1','\0'),
(142,'127.0.0.1','c1bee398','a121ee052c63','posdb_142','00142','2024-05-19 10:35:31','2024-05-19 16:05:31',NULL,NULL,3307,'282e87abcd4134ffcced5fa55252d9d8','\0'),
(143,'127.0.0.1','6aeb63a6','9e5dcf4de9b0','posdb_143','00143','2024-05-19 10:38:03','2024-05-19 16:08:03',NULL,NULL,3307,'8dbcaeb4348b3c4087498c9f7d029f47','\0'),
(150,'127.0.0.1','f6e28bf7','57ba99d901f3','posdb_150','00150','2024-05-19 14:16:11','2024-05-19 19:46:11',NULL,NULL,3307,'27df57244ac2b4faa71a8aec86b85c86','\0'),
(151,'127.0.0.1','2ddb2f7f','dad0d40649c4','posdb_151','00151','2024-05-19 14:17:46','2024-05-19 19:47:46',NULL,NULL,3307,'cc3365c1ce69e971a91f5d3a0d609230','\0'),
(152,'127.0.0.1','72e252b8','a8685953a6f1','posdb_152','00152','2024-05-19 14:18:30','2024-05-19 19:48:30',NULL,NULL,3307,'3b8e7d65f26824954f31c2d31eef8ca8','\0'),
(153,'127.0.0.1','562e135b','0fd52818bf5b','posdb_153','00153','2024-05-19 14:19:24','2024-05-19 19:49:24',NULL,NULL,3307,'bc63b1d414be7f0aecd951584f3889d1','\0'),
(154,'127.0.0.1','43788b2b','9ac4267ab2b7','posdb_154','00154','2024-05-19 14:21:49','2024-05-19 19:51:49',NULL,NULL,3307,'cf51971acae9ca5f1dd1c3202072f33d','\0'),
(157,'127.0.0.1','22e85a40','223f0759f486','posdb_157','00157','2025-03-06 14:51:47','2025-03-06 20:21:47',NULL,NULL,3307,'2276c78fed06b6edd96f88314a791df5','\0'),
(158,'127.0.0.1','45b8986b','e86950e97ac7','posdb_158','00158','2025-03-06 14:54:00','2025-03-06 20:24:00',NULL,NULL,3307,'96c9f6dcb454efb5b723f2ca2b37d249','\0'),
(159,'127.0.0.1','e5493c72','3b5729c2b239','posdb_159','00159','2025-03-06 15:05:10','2025-03-06 20:35:10',NULL,NULL,3307,'5c94f2701ab1262249767df56798a406','\0'),
(160,'127.0.0.1','7c3c8f73','9b5585de8d53','posdb_160','00160','2025-03-06 15:54:45','2025-03-06 21:24:45',NULL,NULL,3307,'fca21fd5d41fd20821a523bdcd5dccac',''),
(161,'127.0.0.1','9ede9201','93e7c8f2da4a','posdb_161','00161','2025-03-06 15:58:08','2025-03-06 21:28:08',NULL,NULL,3307,'b2ad3d49289f208690c80ef0dd34d8c4','\0'),
(162,'127.0.0.1','af531838','3fb30d50884e','posdb_162','00162','2025-03-06 16:00:36','2025-03-06 21:30:36',NULL,NULL,3307,'7e21a6db2fd9f3eceef1dba40df5bd1f','\0'),
(163,'127.0.0.1','28d1811a','66d47de1b7df','posdb_163','00163','2025-03-06 16:01:26','2025-03-06 21:31:26',NULL,NULL,3307,'48713f710e5fb84c2222158210afd55a','\0'),
(164,'127.0.0.1','eb14c0be','f07ad72b3de5','posdb_164','00164','2025-03-06 16:04:25','2025-03-06 21:34:25',NULL,NULL,3307,'14a1d562f62b3c761829d2cf1badfcc3','\0'),
(165,'127.0.0.1','dd15c3e1','fa871827b576','posdb_165','00165','2025-03-06 16:10:45','2025-03-06 21:40:45',NULL,NULL,3307,'c556e8810743f60f987b97dcb42018f8',''),
(166,'127.0.0.1','3de2b22c','7efe3311831d','posdb_166','00166','2025-03-09 13:59:06','2025-03-09 19:29:06',NULL,NULL,3307,'227e7fe6e5eeae804ff8c017888dc4f1',''),
(167,'127.0.0.1','fbd6a557','7d77d2e466d3','posdb_167','00167','2025-03-09 14:01:45','2025-03-09 19:31:45',NULL,NULL,3307,'b9ababb43afab01d972017dbe7535f01',''),
(168,'127.0.0.1','78d99465','ce2c0c16eccf','posdb_168','00168','2025-03-09 15:01:16','2025-03-09 20:31:16',NULL,NULL,3307,'1b8bf8a47d9a55c8cccb1911418ee56e',''),
(169,'127.0.0.1','94ce7577','8b7a001603d7','posdb_169','00169','2025-03-11 13:20:23','2025-03-11 18:50:23',NULL,NULL,3307,'eb511a93538551acf6795866415ae10c','\0'),
(170,'127.0.0.1','06f6bbbf','6a3b33620b20','posdb_170','00170','2025-03-11 13:27:18','2025-03-11 18:57:18',NULL,NULL,3307,'9647d6071eb144d2a4e1c834e1679aec','');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `tenantId` varchar(50) DEFAULT NULL,
  `activity` varchar(10000) DEFAULT NULL,
  `errorLog` varchar(10000) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  UNIQUE KEY `activity_log_id_UNIQUE` (`activity_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log`
--

LOCK TABLES `error_log` WRITE;
/*!40000 ALTER TABLE `error_log` DISABLE KEYS */;
INSERT INTO `error_log` VALUES
(1,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\",\"name\":\"Error\",\"stack\":\"Error: Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at ClientHandshake.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 10:38:01','2023-10-22 16:08:01',NULL,NULL),
(2,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\",\"name\":\"Error\",\"stack\":\"Error: Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at ClientHandshake.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 10:48:08','2023-10-22 16:18:08',NULL,NULL),
(3,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\",\"name\":\"Error\",\"stack\":\"Error: Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at ClientHandshake.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 10:50:35','2023-10-22 16:20:35',NULL,NULL),
(4,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\",\"name\":\"Error\",\"stack\":\"Error: Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at ClientHandshake.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 10:50:36','2023-10-22 16:20:36',NULL,NULL),
(5,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"addConnToMainDbRes is not defined\",\"name\":\"ReferenceError\",\"stack\":\"ReferenceError: addConnToMainDbRes is not defined\\n    at exports.setupTenant (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\services\\\\operational.js:28:14)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\\n    at async exports.initializeDbAndConnection (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\controllers\\\\operational.js:22:6)\"}','2023-10-22 10:51:08','2023-10-22 16:21:08',NULL,NULL),
(6,'spmskperera1@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 10:52:16','2023-10-22 16:22:16',NULL,NULL),
(7,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"No database selected\",\"name\":\"Error\",\"stack\":\"Error: No database selected\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:22:37','2023-10-22 16:52:37',NULL,NULL),
(8,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"No database selected\",\"name\":\"Error\",\"stack\":\"Error: No database selected\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:23:58','2023-10-22 16:53:58',NULL,NULL),
(9,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"No database selected\",\"name\":\"Error\",\"stack\":\"Error: No database selected\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:24:00','2023-10-22 16:54:00',NULL,NULL),
(10,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"No database selected\",\"name\":\"Error\",\"stack\":\"Error: No database selected\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:26:27','2023-10-22 16:56:27',NULL,NULL),
(11,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"No database selected\",\"name\":\"Error\",\"stack\":\"Error: No database selected\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:27:17','2023-10-22 16:57:17',NULL,NULL),
(12,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"No database selected\",\"name\":\"Error\",\"stack\":\"Error: No database selected\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:27:18','2023-10-22 16:57:18',NULL,NULL),
(13,'spmskperera1@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:36:28','2023-10-22 17:06:28',NULL,NULL),
(14,'spmskperera1@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:38:54','2023-10-22 17:08:54',NULL,NULL),
(15,'spmskperera1@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:39:33','2023-10-22 17:09:33',NULL,NULL),
(16,'spmskperera1@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Operation CREATE USER failed for \'dbUsername1\'@\'127.0.0.1\'\",\"name\":\"Error\",\"stack\":\"Error: Operation CREATE USER failed for \'dbUsername1\'@\'127.0.0.1\'\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 11:42:05','2023-10-22 17:12:05',NULL,NULL),
(17,'spmskperera1@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:42:28','2023-10-22 17:12:28',NULL,NULL),
(18,'spmskperera1@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:43:09','2023-10-22 17:13:09',NULL,NULL),
(19,'spmskperera2@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:45:37','2023-10-22 17:15:37',NULL,NULL),
(20,'spmskperera2@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 11:48:41','2023-10-22 17:18:41',NULL,NULL),
(21,'spmskperera3@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:48:50','2023-10-22 17:18:50',NULL,NULL),
(22,'spmskperera3@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 11:50:44','2023-10-22 17:20:44',NULL,NULL),
(23,'spmskperera4@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 11:50:51','2023-10-22 17:20:51',NULL,NULL),
(24,'spmskperera4@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 12:18:10','2023-10-22 17:48:10',NULL,NULL),
(25,'spmskperera5@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Access denied for user \'admin\'@\'localhost\' (using password: YES)\",\"name\":\"Error\",\"stack\":\"Error: Access denied for user \'admin\'@\'localhost\' (using password: YES)\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at ClientHandshake.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 12:18:18','2023-10-22 17:48:18',NULL,NULL),
(26,'spmskperera5@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 12:19:08','2023-10-22 17:49:08',NULL,NULL),
(27,'spmskperera6@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 12:23:58','2023-10-22 17:53:58',NULL,NULL),
(28,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 12:24:39','2023-10-22 17:54:39',NULL,NULL),
(29,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 12:46:13','2023-10-22 18:16:13',NULL,NULL),
(30,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 12:46:15','2023-10-22 18:16:15',NULL,NULL),
(31,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 12:52:45','2023-10-22 18:22:45',NULL,NULL),
(32,'spmskperera7@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Cannot read properties of undefined (reading \'0\')\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot read properties of undefined (reading \'0\')\\n    at exports.get_tenantServerDetails (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\sql\\\\operational.js:277:31)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\\n    at async exports.setupTenant (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\services\\\\operational.js:14:26)\\n    at async exports.initializeDbAndConnection (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\controllers\\\\operational.js:22:6)\"}','2023-10-22 12:56:05','2023-10-22 18:26:05',NULL,NULL),
(33,'spmskperera7@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Cannot read properties of undefined (reading \'0\')\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot read properties of undefined (reading \'0\')\\n    at exports.get_tenantServerDetails (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\sql\\\\operational.js:277:31)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\\n    at async exports.setupTenant (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\services\\\\operational.js:14:26)\\n    at async exports.initializeDbAndConnection (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\controllers\\\\operational.js:22:6)\"}','2023-10-22 12:56:15','2023-10-22 18:26:15',NULL,NULL),
(34,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 12:56:39','2023-10-22 18:26:39',NULL,NULL),
(35,'spmskperera7@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Cannot read properties of undefined (reading \'0\')\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot read properties of undefined (reading \'0\')\\n    at exports.get_tenantServerDetails (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\sql\\\\operational.js:277:31)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\\n    at async exports.setupTenant (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\services\\\\operational.js:14:26)\\n    at async exports.initializeDbAndConnection (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\controllers\\\\operational.js:22:6)\"}','2023-10-22 12:57:47','2023-10-22 18:27:47',NULL,NULL),
(36,'spmskperera7@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"invalid hostname.\"}','2023-10-22 13:01:22','2023-10-22 18:31:22',NULL,NULL),
(37,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:01:38','2023-10-22 18:31:38',NULL,NULL),
(38,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:02:04','2023-10-22 18:32:04',NULL,NULL),
(39,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:02:25','2023-10-22 18:32:25',NULL,NULL),
(40,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:02:49','2023-10-22 18:32:49',NULL,NULL),
(41,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:02:54','2023-10-22 18:32:54',NULL,NULL),
(42,'spmskperera7@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:06:17','2023-10-22 18:36:17',NULL,NULL),
(43,'spmskperera7@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:09:57','2023-10-22 18:39:57',NULL,NULL),
(44,'spmskperera7@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:10:27','2023-10-22 18:40:27',NULL,NULL),
(45,'spmskperera8@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\",\"name\":\"Error\",\"stack\":\"Error: Access denied for user \'serverAdmin\'@\'localhost\' (using password: YES)\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at ClientHandshake.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-22 13:10:34','2023-10-22 18:40:34',NULL,NULL),
(46,'spmskperera8@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:11:03','2023-10-22 18:41:03',NULL,NULL),
(47,'spmskperera9@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:11:09','2023-10-22 18:41:09',NULL,NULL),
(48,'spmskperera9@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:15:19','2023-10-22 18:45:19',NULL,NULL),
(49,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:15:24','2023-10-22 18:45:24',NULL,NULL),
(50,'spmskperera9@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:15:40','2023-10-22 18:45:40',NULL,NULL),
(51,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:16:08','2023-10-22 18:46:08',NULL,NULL),
(52,'spmskperera9@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:16:21','2023-10-22 18:46:21',NULL,NULL),
(53,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:18:15','2023-10-22 18:48:15',NULL,NULL),
(54,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"invalid hostname.\"}','2023-10-22 13:19:17','2023-10-22 18:49:17',NULL,NULL),
(55,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"invalid hostname.\"}','2023-10-22 13:19:18','2023-10-22 18:49:18',NULL,NULL),
(56,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"invalid hostname.\"}','2023-10-22 13:19:32','2023-10-22 18:49:32',NULL,NULL),
(57,'spmskperera9@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:19:46','2023-10-22 18:49:46',NULL,NULL),
(58,'spmskperera10@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"invalid hostname.\"}','2023-10-22 13:19:58','2023-10-22 18:49:58',NULL,NULL),
(59,'spmskperera10@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:20:10','2023-10-22 18:50:10',NULL,NULL),
(60,'spmskperera10@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:23:45','2023-10-22 18:53:45',NULL,NULL),
(61,'spmskperera10@gmail.com','0','initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:23:46','2023-10-22 18:53:46',NULL,NULL),
(62,'spmskperera11@gmail.com','0','initializeDbAndConnection()',NULL,'2023-10-22 13:23:55','2023-10-22 18:53:55',NULL,NULL),
(63,'spmskperera13@gmail.com','0','run initializeDbAndConnection()',NULL,'2023-10-22 13:52:17','2023-10-22 19:22:17',NULL,NULL),
(64,'spmskperera13@gmail.com','0','run initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:52:46','2023-10-22 19:22:46',NULL,NULL),
(65,'spmskperera14@gmail.com','0','run initializeDbAndConnection()',NULL,'2023-10-22 13:52:54','2023-10-22 19:22:54',NULL,NULL),
(66,'spmskperera14@gmail.com','0','run initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 13:54:41','2023-10-22 19:24:41',NULL,NULL),
(67,'spmskperera15@gmail.com','0','run initializeDbAndConnection()',NULL,'2023-10-22 13:54:49','2023-10-22 19:24:49',NULL,NULL),
(68,'spmskperera15@gmail.com','0','run initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 14:09:16','2023-10-22 19:39:16',NULL,NULL),
(69,'spmskperera16@gmail.com','0','run initializeDbAndConnection()',NULL,'2023-10-22 14:09:24','2023-10-22 19:39:24',NULL,NULL),
(70,'spmskperera1@gmail.com','0','run initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 15:02:24','2023-10-22 20:32:24',NULL,NULL),
(71,'spmskperera14@gmail.com','0','run initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 15:02:48','2023-10-22 20:32:48',NULL,NULL),
(72,'spmskperera15@gmail.com','0','run initializeDbAndConnection()','{\"description\":\"initializeDbAndConnection() -> error: \",\"message\":\"account user already exists.\"}','2023-10-22 15:02:53','2023-10-22 20:32:53',NULL,NULL),
(73,'spmskperera20@gmail.com','0','run initializeDbAndConnection()',NULL,'2023-10-22 15:03:01','2023-10-22 20:33:01',NULL,NULL),
(74,'spmskperera21@gmail.com','0','run initializeDbAndConnection()',NULL,'2023-10-22 15:06:35','2023-10-22 20:36:35',NULL,NULL),
(75,'developer12@email.com','0','activity','{\"message\":\"Cannot destructure property \'userId\' of \'userRegRes\' as it is undefined.\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot destructure property \'userId\' of \'userRegRes\' as it is undefined.\\n    at exports.login (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\auth.js:124:7)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\"}','2023-10-26 10:34:56','2023-10-26 16:04:56',NULL,NULL),
(76,'developer5@email.com','0','activity','{\"message\":\"Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 0\",\"name\":\"Error\",\"stack\":\"Error: Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 0\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 17:16:14','2023-10-26 22:46:14',NULL,NULL),
(77,'developer5@email.com','0','activity','{\"message\":\"Unknown column \'p_user\' in \'field list\'\",\"name\":\"Error\",\"stack\":\"Error: Unknown column \'p_user\' in \'field list\'\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 17:19:34','2023-10-26 22:49:34',NULL,NULL),
(78,'developer5@email.com','0','activity','{\"message\":\"Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 1\",\"name\":\"Error\",\"stack\":\"Error: Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 1\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 17:20:44','2023-10-26 22:50:44',NULL,NULL),
(79,'developer5@email.com','0','activity','{\"message\":\"Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 1\",\"name\":\"Error\",\"stack\":\"Error: Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 1\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 17:21:20','2023-10-26 22:51:20',NULL,NULL),
(80,'developer5@email.com','0','activity','{\"message\":\"Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 1\",\"name\":\"Error\",\"stack\":\"Error: Incorrect integer value: \'developer5@email.com\' for column ``.``.`p_userId` at row 1\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 17:26:58','2023-10-26 22:56:58',NULL,NULL),
(81,'developer5@email.com','0','activity','{\"message\":\"Incorrect number of arguments for PROCEDURE main_db.unverified_user_select; expected 1, got 3\",\"name\":\"Error\",\"stack\":\"Error: Incorrect number of arguments for PROCEDURE main_db.unverified_user_select; expected 1, got 3\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 17:34:07','2023-10-26 23:04:07',NULL,NULL),
(82,'cyberknights1@gmail.com','0','activity','{\"message\":\"Unknown column \'userVerificationCode\' in \'where clause\'\",\"name\":\"Error\",\"stack\":\"Error: Unknown column \'userVerificationCode\' in \'where clause\'\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 20:40:16','2023-10-27 02:10:16',NULL,NULL),
(83,'cyberknights1@gmail.com','0','activity','{\"message\":\"Unknown column \'userVerificationCode\' in \'where clause\'\",\"name\":\"Error\",\"stack\":\"Error: Unknown column \'userVerificationCode\' in \'where clause\'\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 20:42:01','2023-10-27 02:12:01',NULL,NULL),
(84,'cyberknights1@gmail.com','0','activity','{\"message\":\"Unknown column \'userVerificationCode\' in \'where clause\'\",\"name\":\"Error\",\"stack\":\"Error: Unknown column \'userVerificationCode\' in \'where clause\'\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 20:43:32','2023-10-27 02:13:32',NULL,NULL),
(85,'cyberknights1@gmail.com','0','activity','{\"message\":\"Unknown column \'userVerificationCode\' in \'where clause\'\",\"name\":\"Error\",\"stack\":\"Error: Unknown column \'userVerificationCode\' in \'where clause\'\\n    at Packet.asError (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packets\\\\packet.js:728:17)\\n    at Query.execute (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\commands\\\\command.js:29:26)\\n    at PoolConnection.handlePacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:478:34)\\n    at PacketParser.onPacket (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:97:12)\\n    at PacketParser.executeStart (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\packet_parser.js:75:16)\\n    at Socket.<anonymous> (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\node_modules\\\\mysql2\\\\lib\\\\connection.js:104:25)\\n    at Socket.emit (node:events:513:28)\\n    at addChunk (node:internal/streams/readable:315:12)\\n    at readableAddChunk (node:internal/streams/readable:289:9)\\n    at Socket.Readable.push (node:internal/streams/readable:228:10)\"}','2023-10-26 20:44:39','2023-10-27 02:14:39',NULL,NULL),
(86,'cyberknightsk1@gmail.com','0','activity','{\"message\":\"Cannot destructure property \'userVerificationId\' of \'getUserVerificationRes\' as it is undefined.\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot destructure property \'userVerificationId\' of \'getUserVerificationRes\' as it is undefined.\\n    at exports.signUpVerifiedUser (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\auth.js:82:8)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\"}','2023-10-26 20:49:27','2023-10-27 02:19:27',NULL,NULL),
(87,'cyberknightsk1@gmail.com','0','activity','{\"message\":\"Cannot destructure property \'userVerificationId\' of \'getUserVerificationRes\' as it is undefined.\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot destructure property \'userVerificationId\' of \'getUserVerificationRes\' as it is undefined.\\n    at exports.signUpVerifiedUser (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\auth.js:82:8)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\"}','2023-10-26 20:52:07','2023-10-27 02:22:07',NULL,NULL),
(88,'cyberknightsk1@gmail.com','0','activity','{\"message\":\"Cannot destructure property \'userVerificationId\' of \'getUserVerificationRes\' as it is undefined.\",\"name\":\"TypeError\",\"stack\":\"TypeError: Cannot destructure property \'userVerificationId\' of \'getUserVerificationRes\' as it is undefined.\\n    at exports.signUpVerifiedUser (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\auth.js:89:8)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\"}','2023-10-26 20:52:25','2023-10-27 02:22:25',NULL,NULL),
(89,'admin oper','0','activity','{\"message\":\"SettingUp is already Completed\",\"name\":\"Error\",\"stack\":\"Error: SettingUp is already Completed\\n    at exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\services\\\\operational.js:79:15)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\\n    at async exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\operational.js:75:5)\"}','2023-10-27 14:30:27','2023-10-27 20:00:27',NULL,NULL),
(90,'admin oper','0','activity','{\"message\":\"MYSQL_PATH is not defined\",\"name\":\"ReferenceError\",\"stack\":\"ReferenceError: MYSQL_PATH is not defined\\n    at dropDatabase (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\services\\\\operational.js:117:29)\\n    at exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\services\\\\operational.js:90:14)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\\n    at async exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\operational.js:75:5)\"}','2023-10-27 14:30:58','2023-10-27 20:00:58',NULL,NULL),
(91,'admin oper','0','activity','{\"message\":\"Command failed: \\\"C:/Program Files/MariaDB 11.3/bin/mysql\\\" -h 127.0.0.1 -P 3307 -u serverAdmin -padmin@123 -e \\\"DROP USER \'316f793d\'@\'localhost\'\\\"\\nERROR 1396 (HY000) at line 1: Operation DROP USER failed for \'316f793d\'@\'localhost\'\\n\",\"name\":\"Error\",\"stack\":\"Error: Command failed: \\\"C:/Program Files/MariaDB 11.3/bin/mysql\\\" -h 127.0.0.1 -P 3307 -u serverAdmin -padmin@123 -e \\\"DROP USER \'316f793d\'@\'localhost\'\\\"\\nERROR 1396 (HY000) at line 1: Operation DROP USER failed for \'316f793d\'@\'localhost\'\\n\\n    at ChildProcess.exithandler (node:child_process:422:12)\\n    at ChildProcess.emit (node:events:514:28)\\n    at maybeClose (node:internal/child_process:1105:16)\\n    at ChildProcess._handle.onexit (node:internal/child_process:305:5)\"}','2023-10-27 14:39:40','2023-10-27 20:09:40',NULL,NULL),
(92,'admin oper','0','activity','{\"message\":\"Command failed: \\\"C:/Program Files/MariaDB 11.3/bin/mysql\\\" -h 127.0.0.1 -P 3307 -u serverAdmin -padmin@123 -e \\\"DROP USER \'316f793d\'@\'localhost\'\\\"\\nERROR 1396 (HY000) at line 1: Operation DROP USER failed for \'316f793d\'@\'localhost\'\\n\",\"name\":\"Error\",\"stack\":\"Error: Command failed: \\\"C:/Program Files/MariaDB 11.3/bin/mysql\\\" -h 127.0.0.1 -P 3307 -u serverAdmin -padmin@123 -e \\\"DROP USER \'316f793d\'@\'localhost\'\\\"\\nERROR 1396 (HY000) at line 1: Operation DROP USER failed for \'316f793d\'@\'localhost\'\\n\\n    at ChildProcess.exithandler (node:child_process:422:12)\\n    at ChildProcess.emit (node:events:514:28)\\n    at maybeClose (node:internal/child_process:1105:16)\\n    at ChildProcess._handle.onexit (node:internal/child_process:305:5)\"}','2023-10-27 14:40:13','2023-10-27 20:10:13',NULL,NULL),
(93,'admin oper','0','activity','{\"message\":\"add_error_log is not defined\",\"name\":\"ReferenceError\",\"stack\":\"ReferenceError: add_error_log is not defined\\n    at exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\services\\\\operational.js:108:8)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\\n    at async exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\operational.js:75:5)\"}','2023-10-27 14:53:22','2023-10-27 20:23:22',NULL,NULL),
(94,'admin oper','0','activity','{\"message\":\"add_error_log is not defined\",\"name\":\"ReferenceError\",\"stack\":\"ReferenceError: add_error_log is not defined\\n    at exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\services\\\\operational.js:108:8)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:95:5)\\n    at async exports.cleanupIncompleteTenancySetups (F:\\\\Projects\\\\Ongoing_Projects\\\\Legendbit_POS_cloud\\\\lb_cloud_pos\\\\backend_main\\\\controllers\\\\operational.js:75:5)\"}','2023-10-27 14:53:56','2023-10-27 20:23:56',NULL,NULL);
/*!40000 ALTER TABLE `error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_server`
--

DROP TABLE IF EXISTS `tenant_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_server` (
  `hostName` varchar(50) NOT NULL,
  `isCurrent` bit(1) DEFAULT b'0',
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `port` int(11) NOT NULL,
  `connectionLimit` int(11) NOT NULL,
  PRIMARY KEY (`hostName`),
  UNIQUE KEY `hostName_UNIQUE` (`hostName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_server`
--

LOCK TABLES `tenant_server` WRITE;
/*!40000 ALTER TABLE `tenant_server` DISABLE KEYS */;
INSERT INTO `tenant_server` VALUES
('127.0.0.1','','serverAdmin','admin@123',3307,10),
('222.244.43.5','\0','serverjr','dfdf',3434,10);
/*!40000 ALTER TABLE `tenant_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userassign`
--

DROP TABLE IF EXISTS `userassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userassign` (
  `userassign_id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`userassign_id`),
  UNIQUE KEY `userassign_id_UNIQUE` (`userassign_id`),
  KEY `fk_userassign_connections` (`connectionId`),
  KEY `fk_userassign_users` (`userId`),
  CONSTRAINT `fk_userassign_connections` FOREIGN KEY (`connectionId`) REFERENCES `connections` (`connectionId`),
  CONSTRAINT `fk_userassign_users` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userassign`
--

LOCK TABLES `userassign` WRITE;
/*!40000 ALTER TABLE `userassign` DISABLE KEYS */;
INSERT INTO `userassign` VALUES
(33,36,33,'2023-10-16 20:09:17','2023-10-17 01:39:17',NULL,NULL),
(132,135,132,'2023-10-28 19:50:17','2023-10-29 01:20:17',NULL,NULL),
(133,136,133,'2023-10-28 19:56:43','2023-10-29 01:26:43',NULL,NULL),
(139,142,139,'2024-05-19 10:35:31','2024-05-19 16:05:31',NULL,NULL),
(140,143,140,'2024-05-19 10:38:03','2024-05-19 16:08:03',NULL,NULL),
(147,150,147,'2024-05-19 14:16:11','2024-05-19 19:46:11',NULL,NULL),
(148,151,148,'2024-05-19 14:17:46','2024-05-19 19:47:46',NULL,NULL),
(149,152,149,'2024-05-19 14:18:30','2024-05-19 19:48:30',NULL,NULL),
(150,153,150,'2024-05-19 14:19:24','2024-05-19 19:49:24',NULL,NULL),
(151,154,151,'2024-05-19 14:21:49','2024-05-19 19:51:49',NULL,NULL),
(154,157,154,'2025-03-06 14:51:47','2025-03-06 20:21:47',NULL,NULL),
(155,158,155,'2025-03-06 14:54:00','2025-03-06 20:24:00',NULL,NULL),
(156,159,156,'2025-03-06 15:05:10','2025-03-06 20:35:10',NULL,NULL),
(157,160,157,'2025-03-06 15:54:45','2025-03-06 21:24:45',NULL,NULL),
(158,161,158,'2025-03-06 15:58:08','2025-03-06 21:28:08',NULL,NULL),
(159,162,159,'2025-03-06 16:00:36','2025-03-06 21:30:36',NULL,NULL),
(160,163,160,'2025-03-06 16:01:26','2025-03-06 21:31:26',NULL,NULL),
(161,164,161,'2025-03-06 16:04:25','2025-03-06 21:34:25',NULL,NULL),
(162,165,162,'2025-03-06 16:10:45','2025-03-06 21:40:45',NULL,NULL),
(163,166,163,'2025-03-09 13:59:06','2025-03-09 19:29:06',NULL,NULL),
(164,167,164,'2025-03-09 14:01:45','2025-03-09 19:31:45',NULL,NULL),
(165,168,165,'2025-03-09 15:01:16','2025-03-09 20:31:16',NULL,NULL),
(166,169,166,'2025-03-11 13:20:23','2025-03-11 18:50:23',NULL,NULL),
(167,170,167,'2025-03-11 13:27:18','2025-03-11 18:57:18',NULL,NULL);
/*!40000 ALTER TABLE `userassign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `accUsername` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(33,'spmskperera@gmail.com','spmskperera@gmail.com','2023-10-16 20:09:17','2023-10-17 01:39:17',NULL,NULL,1),
(132,'sp@1232','sp@1232','2023-10-28 19:50:17','2023-10-29 01:20:17',NULL,NULL,1),
(133,'cyberknights4444@gmail.com','cyberknights4444@gmail.com','2023-10-28 19:56:43','2023-10-29 01:26:43',NULL,NULL,1),
(139,'myhome@gmail.com','myhome@gmail.com','2024-05-19 10:35:31','2024-05-19 16:05:31',NULL,NULL,1),
(140,'myhome2@gmail.com','myhome2@gmail.com','2024-05-19 10:38:03','2024-05-19 16:08:03',NULL,NULL,1),
(147,'test5@gmail.com','test5@gmail.com','2024-05-19 14:16:11','2024-05-19 19:46:11',NULL,NULL,1),
(148,'test6@gmail.com','test6@gmail.com','2024-05-19 14:17:46','2024-05-19 19:47:46',NULL,NULL,1),
(149,'test7@gmail.com','test7@gmail.com','2024-05-19 14:18:30','2024-05-19 19:48:30',NULL,NULL,1),
(150,'test8@gmail.com','test8@gmail.com','2024-05-19 14:19:24','2024-05-19 19:49:24',NULL,NULL,1),
(151,'test9@gmail.com','test9@gmail.com','2024-05-19 14:21:49','2024-05-19 19:51:49',NULL,NULL,1),
(154,'posuser@gmail.com','posuser@gmail.com','2025-03-06 14:51:47','2025-03-06 20:21:47',NULL,NULL,1),
(155,'posuser1@gmail.com','posuser1@gmail.com','2025-03-06 14:54:00','2025-03-06 20:24:00',NULL,NULL,1),
(156,'posuser2@gmail.com','posuser2@gmail.com','2025-03-06 15:05:10','2025-03-06 20:35:10',NULL,NULL,1),
(157,'posuser3@gmail.com','posuser3@gmail.com','2025-03-06 15:54:45','2025-03-06 21:24:45',NULL,NULL,1),
(158,'posuser4@gmail.com','posuser4@gmail.com','2025-03-06 15:58:08','2025-03-06 21:28:08',NULL,NULL,1),
(159,'posuser5@gmail.com','posuser5@gmail.com','2025-03-06 16:00:36','2025-03-06 21:30:36',NULL,NULL,1),
(160,'posuser6@gmail.com','posuser6@gmail.com','2025-03-06 16:01:26','2025-03-06 21:31:26',NULL,NULL,1),
(161,'posuser7@gmail.com','posuser7@gmail.com','2025-03-06 16:04:25','2025-03-06 21:34:25',NULL,NULL,1),
(162,'posuser8@gmail.com','posuser8@gmail.com','2025-03-06 16:10:45','2025-03-06 21:40:45',NULL,NULL,1),
(163,'posuser10@gmail.com','posuser10@gmail.com','2025-03-09 13:59:06','2025-03-09 19:29:06',NULL,NULL,1),
(164,'posuser11@gmail.com','posuser11@gmail.com','2025-03-09 14:01:45','2025-03-09 19:31:45',NULL,NULL,1),
(165,'posuser11@gmail.com1','posuser11@gmail.com1','2025-03-09 15:01:16','2025-03-09 20:31:16',NULL,NULL,1),
(166,'testposgmail.com','testposgmail.com','2025-03-11 13:20:23','2025-03-11 18:50:23',NULL,NULL,1),
(167,'testpos2gmail.com','testpos2gmail.com','2025-03-11 13:27:18','2025-03-11 18:57:18',NULL,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userverification`
--

DROP TABLE IF EXISTS `userverification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userverification` (
  `userVerificationId` int(11) NOT NULL AUTO_INCREMENT,
  `expiresAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `userId` varchar(50) DEFAULT NULL,
  `verificationCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userVerificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userverification`
--

LOCK TABLES `userverification` WRITE;
/*!40000 ALTER TABLE `userverification` DISABLE KEYS */;
INSERT INTO `userverification` VALUES
(63,'2023-10-28 23:31:09','2023-10-28 23:21:09','cyberknights1lll@gmail.com','3ee1bc'),
(72,'2023-10-29 02:01:49','2023-10-29 01:51:49','cyberknights1@gmail.com','bbcf48'),
(74,'2023-10-29 22:00:56','2023-10-29 21:50:56','spmskperera@email.com','18bbb1');
/*!40000 ALTER TABLE `userverification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'main_db'
--

--
-- Dumping routines for database 'main_db'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_Connection_to_mainDb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_Connection_to_mainDb`(
    IN p_server VARCHAR(50),
    IN p_dbusername VARCHAR(50),
    IN p_dbpassword VARCHAR(100),
	IN p_port int,
	IN p_accUserName  VARCHAR(50),
	IN p_accPassword  VARCHAR(100),
    IN p_jwtSecret  VARCHAR(100),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_tenantId VARCHAR(50),
	OUT p_dbName VARCHAR(50),
	OUT p_connectionId int
)
sp: BEGIN

    START TRANSACTION;
        
        if(p_server is null) then
        set p_server=(select hostName from tenant_server where isCurrent=1);
         end if;
         
		if exists(select * from connections where dbUsername=p_dbusername) then
			SET p_ResponseStatus = 'failed';
			SET p_OutputMessage = 'db user already exists.';
			leave sp;
		end if;
    
         	if exists(select * from users where email=p_accUserName or accUsername=p_accUserName) then
			SET p_ResponseStatus = 'failed';
			SET p_OutputMessage = 'account user already exists.';
			leave sp;
		end if;
         
INSERT INTO `connections`(`hostName`,`dbUsername`,`dbPassword`,`dbName`,`tenantId`,`port`,jwtSecret) 
VALUES (p_server,p_dbusername,p_dbpassword,p_dbName,p_tenantId,p_port,p_jwtSecret);
SET @_connectionId = LAST_INSERT_ID();
SET @_tenantId = LPAD(@_connectionId, 5, '0');
update connections set tenantId=@_tenantId,dbName=concat('posdb_',@_connectionId) where connectionId=@_connectionId;
set p_tenantId=@_tenantId;

INSERT INTO `users`(accUsername,`email`,`roleId`) values (p_accUserName,p_accUserName,1);
SET @_userId = LAST_INSERT_ID();

INSERT INTO `userassign`(`connectionId`,`userId`) values(@_connectionId,@_userId);


    COMMIT;
    
   set p_dbName=(select dbName from connections where connectionId=@_connectionId);
   set p_connectionId=@_connectionId;
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'User account has been saved successfully.';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cleanup_incomplete_tenancy_setups` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cleanup_incomplete_tenancy_setups`(
    IN p_username VARCHAR(50),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN


   DROP TEMPORARY TABLE IF EXISTS tblIncompletedTenancies;
   create temporary table tblIncompletedTenancies(connectionId int,dbName varchar(50),dbUsername varchar(100));
    if(p_username is not null) then
    insert into tblIncompletedTenancies(connectionId,dbName,dbUsername)
    select c.connectionId,dbName,dbUsername from userassign  as ua inner join connections as c
     on ua.connectionId=c.connectionId inner join users as u ON
      ua.userId=u.userId where isSettingupCompleted=0 and u.accUsername=p_username;
    else 
     insert into tblIncompletedTenancies(connectionId,dbName,dbUsername)
    select connectionId,dbName,dbUsername from connections where isSettingupCompleted=0;
    end if;
    
    
set @totalItems_tblIncompletedTenancies=(select count(*) from tblIncompletedTenancies);
while (0< @totalItems_tblIncompletedTenancies) do

set @_dbUsername=(select dbUsername from tblIncompletedTenancies  limit 1);
set @_dbName=(select dbName from tblIncompletedTenancies  limit 1);
select  @_dbUsername,@_dbName;

delete  from tblIncompletedTenancies limit 1;
set @totalItems_tblIncompletedTenancies=(select count(*) from tblIncompletedTenancies);
end while;



    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'pending .';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user_for_a_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user_for_a_db`(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50),
    IN p_host varchar(50),
    IN p_dbName VARCHAR(50),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    
if exists ( SELECT user, host FROM mysql.user where user=p_username) then
	SET p_ResponseStatus = 'failed';
	SET p_OutputMessage = concat('User:',p_username,' is already exists');
    leave sp;
end if;

 -- Create a new MySQL user
    SET @createUserSQL = CONCAT('CREATE USER "', p_username, '"@"',p_host,'" IDENTIFIED BY "', p_password, '"');
    PREPARE createUserStmt FROM @createUserSQL;
    EXECUTE createUserStmt;
    DEALLOCATE PREPARE createUserStmt;
select 'user created';

    -- Grant privileges on the specified database
    SET @grantSQL = CONCAT('GRANT ALL PRIVILEGES ON ', p_dbName, '.* TO "', p_username, '"@"',p_host,'"');
    PREPARE grantStmt FROM @grantSQL;
    EXECUTE grantStmt;
    DEALLOCATE PREPARE grantStmt;
    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'User account was created successfully.';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `error_log_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `error_log_insert`(
    IN p_user VARCHAR(50),
    IN p_tenantId int,
    IN p_activity varchar(1000),
    IN p_errorLog VARCHAR(10000),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

INSERT INTO `error_log`(`user`,`tenantId`,`activity`,`errorLog`)
values(p_user,p_tenantId,p_activity,p_errorLog);
    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'activity_log was created successfully.';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `full_privieges_user_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `full_privieges_user_create`(
    IN p_host varchar(50),
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50)
    
)
sp: BEGIN

 -- Create a new MySQL user
    SET @createUserSQL = CONCAT('CREATE USER "', p_username, '"@"',p_host,'" IDENTIFIED BY "', p_password, '";');
    PREPARE createUserStmt FROM @createUserSQL;
    EXECUTE createUserStmt;
    DEALLOCATE PREPARE createUserStmt;
select 'user created';

    -- Grant privileges on the specified database
    SET @grantSQL = CONCAT('GRANT ALL PRIVILEGES ON *.* TO "', p_username, '"@"',p_host,'" WITH GRANT OPTION;');
    PREPARE grantStmt FROM @grantSQL;
    EXECUTE grantStmt;
    DEALLOCATE PREPARE grantStmt;
    
    -- Flush privileges to apply changes
    FLUSH PRIVILEGES;
         select 'permission granted';


    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_connectionDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_connectionDetails`(
    IN p_tenantId VARCHAR(50),
    IN p_accountName VARCHAR(50),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if(p_tenantId is not null and p_accountName is null) then

	if not exists (select * from connections as c 
	inner join userassign as ua on c.connectionId=ua.connectionid
	inner join  users as u ON ua.userId=u.userId where c.tenantId=p_tenantId) then
		SET p_ResponseStatus = 'failed';
		SET p_OutputMessage = concat('TenantId:',p_tenantId,' is not exists');
		leave sp;
	end if;


	select c.connectionId,c.hostName,c.dbUsername,c.dbPassword,c.dbName,c.tenantId,port,jwtSecret
	from connections as c where c.tenantId=p_tenantId;
	elseif (p_tenantId is null and p_accountName is not null) then
    
    if not exists (select * from connections as c 
	inner join userassign as ua on c.connectionId=ua.connectionid
	inner join  users as u ON ua.userId=u.userId where u.accUsername=p_accountName) then
		SET p_ResponseStatus = 'failed';
		SET p_OutputMessage = concat('TenantId:',p_tenantId,' is not exists');
		leave sp;
	end if;


	select c.connectionId,c.hostName,c.dbUsername,c.dbPassword,c.dbName,c.tenantId,port,jwtSecret
	from connections as c
    inner join userassign as ua on c.connectionId=ua.connectionid
	inner join  users as u ON ua.userId=u.userId where u.accUsername=p_accountName;
    
    end if;
    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'success.';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_connectionDetails_by_tenantId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_connectionDetails_by_tenantId`(
    IN p_tenantId VARCHAR(50),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if not exists (select * from connections as c 
inner join userassign as ua on c.connectionId=ua.connectionid
inner join  users as u ON ua.userId=u.userId where c.tenantId=p_tenantId) then
	SET p_ResponseStatus = 'failed';
	SET p_OutputMessage = concat('TenantId:',p_tenantId,' is not exists');
    leave sp;
end if;


select c.connectionId,c.hostName,c.dbUsername,c.dbPassword,c.dbName,c.tenantId,port,jwtSecret
from connections as c where c.tenantId=p_tenantId;
    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'success.';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_tenantServerDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_tenantServerDetails`(
    IN p_hostName VARCHAR(50),
    IN p_isCurrent bit,
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if(p_hostName is not null) then

	if not exists(select * from tenant_server where hostName=p_hostName) then
		SET p_ResponseStatus = 'failed';
		SET p_OutputMessage = 'invalid hostname.';
		leave sp;
	end if;

	select hostName,isCurrent,userName,password,port,connectionLimit from tenant_server  where hostName=p_hostName;
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'server credentials loaded by hostName';

end if;



if(p_isCurrent is not null) then
select hostName,isCurrent,userName,password,port,connectionLimit from tenant_server  where isCurrent=1;
SET p_ResponseStatus = 'success';
SET p_OutputMessage = 'server credentials loaded by isCurrent.';
end if;



    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `grant_database_privileges_to_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `grant_database_privileges_to_user`(
    IN p_username VARCHAR(50),
    IN p_dbName VARCHAR(50),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if not exists ( SELECT user, host FROM mysql.user where user=p_username) then
	SET p_ResponseStatus = 'failed';
	SET p_OutputMessage = concat('User:',p_username,' is not exists');
    leave sp;
end if;

    -- Grant privileges on the specified database
    SET @grantSQL = CONCAT('GRANT ALL PRIVILEGES ON ', p_dbName, '.* TO "', p_username, '"@"localhost"');
    PREPARE grantStmt FROM @grantSQL;
    EXECUTE grantStmt;
    DEALLOCATE PREPARE grantStmt;
    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'User account was created successfully.';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `is_tenancySettingUpCompleted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `is_tenancySettingUpCompleted`(
    IN p_connectionId int,
    OUT p_isCompleted bit
)
sp: BEGIN
    
	set p_isCompleted=(select isSettingupCompleted from connections where connectionId=p_connectionId);
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mark_tenancySetupAsCompleted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mark_tenancySetupAsCompleted`(
    IN p_connectionId int,
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    START TRANSACTION;
        
         
		if exists(select * from connections where isSettingupCompleted=1 and connectionId=p_connectionId) then
			SET p_ResponseStatus = 'failed';
			SET p_OutputMessage = 'Tenancy settingup is already exists.';
			leave sp;
		end if;
    
 update connections set isSettingupCompleted=1 where connectionId=p_connectionId;

    COMMIT;
    
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Tenancy settingup is marked as completed..';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_DbConnection_from_mainDb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_DbConnection_from_mainDb`(
	IN p_connectionid  int,
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    START TRANSACTION;
	DROP TEMPORARY TABLE IF EXISTS tblUsersTodelete;
   create temporary table tblUsersTodelete(userId int);
   insert into tblUsersTodelete(userId)
   select userId from userassign where connectionId=p_connectionid;

   delete from userassign where connectionid=p_connectionid;
   delete from connections where connectionid=p_connectionid;
   
   delete from users where userId in (select userid from tblUsersTodelete);
    
    COMMIT;

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'User Db connection including user/s has been removed successfully.';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tenant_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tenant_select`(
IN p_userName VARCHAR(100),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000))
BEGIN

SELECT * from connections;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userAccount_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userAccount_select`(
IN p_userName VARCHAR(100),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000))
BEGIN

SELECT * from users where accUserName=p_userName;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_verification_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_verification_delete`(
    IN p_userId VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
BEGIN

delete from userverification where userId=p_userId;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Verification code was deleted successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_verification_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_verification_insert`(
    IN p_userId VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
     OUT p_verification_code VARCHAR(10),
     OUT p_expirationTime_sec int
)
BEGIN
    DECLARE verification_code VARCHAR(10);
    DECLARE code_exists INT;
	declare expiresAt DATETIME;
    
   SET expiresAt = NOW() + INTERVAL 10 MINUTE;
    SET code_exists = 0;
    set p_expirationTime_sec=600;

    -- Loop until a unique verification code is generated
    REPEAT
        -- Generate a verification code
        SET verification_code = SUBSTRING(MD5(RAND()) FROM 1 FOR 6);

        -- Check if the generated code already exists
        SELECT COUNT(*) INTO code_exists
        FROM `userverification`
        WHERE `verificationCode` = verification_code;

    UNTIL code_exists = 0 END REPEAT;
    
if exists(select * from userverification where userId=p_userId) then
delete from userverification where userId=p_userId;
end if;
    -- Insert data into the userverification table
    INSERT INTO `userverification`(`expiresAt`, `userId`, `verificationCode`)
    VALUES (expiresAt, p_userId, verification_code);

set p_verification_code=verification_code;
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Data was inserted successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_verification_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_verification_select`(
    IN p_userId VARCHAR(50),
	OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
BEGIN

select userVerificationId,expiresAt,createdAt,userId,verificationCode from userverification where userId=p_userId;
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'loaded successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-11 20:08:57
