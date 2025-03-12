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
(36,'192.168.8.171','developer','dev@123','lbposc_light','00001','2023-10-16 20:09:17','2023-10-17 01:39:17',NULL,NULL,3307,'12121j121j23','');
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
(33,36,33,'2023-10-16 20:09:17','2023-10-17 01:39:17',NULL,NULL);
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
(33,'spmskperera@gmail.com','spmskperera@gmail.com','2023-10-16 20:09:17','2023-10-17 01:39:17',NULL,NULL,1);
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

-- Dump completed on 2025-03-12 22:24:57
