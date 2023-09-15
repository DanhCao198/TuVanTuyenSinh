-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: tuyensinhdb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission` (
  `idadmission` int NOT NULL AUTO_INCREMENT,
  `typeoftraining` varchar(45) NOT NULL,
  PRIMARY KEY (`idadmission`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (1,'Chính quy'),(2,'Đào Tạo Từ Xa'),(3,'Liên Thông'),(4,'Cao Học'),(5,'Văn bằng 2');
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `idbanner` int NOT NULL AUTO_INCREMENT,
  `image` varchar(225) DEFAULT NULL,
  `users_idusers` int NOT NULL,
  PRIMARY KEY (`idbanner`),
  KEY `fk_banner_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_banner_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (12,'https://res.cloudinary.com/dev7q6f9g/image/upload/v1693809708/tjp2pjsos5gq76uq7l0u.png',10),(13,'https://res.cloudinary.com/dev7q6f9g/image/upload/v1693809762/aclirrc53gzlk5hukzze.png',10),(14,'https://res.cloudinary.com/dev7q6f9g/image/upload/v1693809773/mkss9antuu9hbp380ejn.png',10);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benmarks`
--

DROP TABLE IF EXISTS `benmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benmarks` (
  `idbenmarks` int NOT NULL AUTO_INCREMENT,
  `year` varchar(45) DEFAULT NULL,
  `diemhocba` double DEFAULT NULL,
  `diemthpt` double DEFAULT NULL,
  `diemdgnl` double DEFAULT NULL,
  `majors_idmajors` int NOT NULL,
  PRIMARY KEY (`idbenmarks`),
  KEY `fk_benmarks_majors1_idx` (`majors_idmajors`),
  CONSTRAINT `fk_benmarks_majors1` FOREIGN KEY (`majors_idmajors`) REFERENCES `majors` (`idmajors`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benmarks`
--

LOCK TABLES `benmarks` WRITE;
/*!40000 ALTER TABLE `benmarks` DISABLE KEYS */;
INSERT INTO `benmarks` VALUES (4,'2022',30,23,500,1),(6,'2023',18,25,500,1),(9,'2019',16,27,500,1),(11,'2024',15,15,600,1);
/*!40000 ALTER TABLE `benmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `idcomment` int NOT NULL AUTO_INCREMENT,
  `commentinformation` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `users_idusers` int NOT NULL,
  `comment_idcomment` int DEFAULT NULL,
  `post_idpost` int DEFAULT NULL,
  `livestreams_idlivestreams` int DEFAULT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `fk_comment_users1_idx` (`users_idusers`),
  KEY `fk_comment_comment1_idx` (`comment_idcomment`),
  KEY `fk_comment_post1_idx` (`post_idpost`),
  KEY `fk_comment_livestreams1_idx` (`livestreams_idlivestreams`),
  CONSTRAINT `fk_comment_comment1` FOREIGN KEY (`comment_idcomment`) REFERENCES `comment` (`idcomment`),
  CONSTRAINT `fk_comment_livestreams1` FOREIGN KEY (`livestreams_idlivestreams`) REFERENCES `livestreams` (`idlivestreams`),
  CONSTRAINT `fk_comment_post1` FOREIGN KEY (`post_idpost`) REFERENCES `post` (`idpost`),
  CONSTRAINT `fk_comment_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `idfaculty` int NOT NULL AUTO_INCREMENT,
  `facultyname` varchar(45) NOT NULL,
  `website` varchar(45) DEFAULT NULL,
  `introvideo` varchar(45) DEFAULT NULL,
  `gioiThieu` longtext,
  `moTaCTDT` longtext,
  `hocPhi` int DEFAULT NULL,
  PRIMARY KEY (`idfaculty`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Công nghệ thông tin','https://tuyensinh.ou.edu.vn/',NULL,NULL,NULL,20000000),(3,'Ngôn Ngữ','https://tuyensinh.ou.edu.vn/',NULL,NULL,NULL,20000000),(6,'Xã Hội Học','https://tuyensinh.ou.edu.vn/',NULL,'aaa','aa',20000000),(7,'Xây dựng','https://tuyensinh.ou.edu.vn/',NULL,NULL,NULL,20000000),(9,'Du lịch','https://tuyensinh.ou.edu.vn/',NULL,'aaa','aaa',20000000),(10,'Tài chính ngân hàng','https://tuyensinh.ou.edu.vn/',NULL,'aaa','aaa',20000000),(11,'Luật','https://tuyensinh.ou.edu.vn/',NULL,'Đây là khoa Luật','Luật',20000000);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livestreams`
--

DROP TABLE IF EXISTS `livestreams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livestreams` (
  `idlivestreams` int NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `livestreaminfomation` longtext,
  `picture` longtext,
  `linkstream` longtext,
  `startTime` date DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `users_idusers` int NOT NULL,
  PRIMARY KEY (`idlivestreams`),
  KEY `fk_livestreams_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_livestreams_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livestreams`
--

LOCK TABLES `livestreams` WRITE;
/*!40000 ALTER TABLE `livestreams` DISABLE KEYS */;
INSERT INTO `livestreams` VALUES (1,'TEST01','aaaaaaa',NULL,NULL,NULL,NULL,NULL,10);
/*!40000 ALTER TABLE `livestreams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `idmajors` int NOT NULL AUTO_INCREMENT,
  `majorname` longtext,
  `faculty_idfaculty` int NOT NULL,
  PRIMARY KEY (`idmajors`),
  KEY `fk_majors_faculty1_idx` (`faculty_idfaculty`),
  CONSTRAINT `fk_majors_faculty1` FOREIGN KEY (`faculty_idfaculty`) REFERENCES `faculty` (`idfaculty`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (1,'Khoa học máy tính',1),(2,'Công Nghệ Thông Tin',1),(3,'Hệ thống thông tin quản lý',1);
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `idpost` int NOT NULL AUTO_INCREMENT,
  `postName` longtext NOT NULL,
  `postinformation` longtext NOT NULL,
  `posttype` longtext,
  `postImg` varchar(255) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `users_idusers` int DEFAULT NULL,
  `faculty_idfaculty` int DEFAULT NULL,
  `admission_idadmission` int DEFAULT NULL,
  PRIMARY KEY (`idpost`),
  KEY `faculty_idFaculty_idx` (`faculty_idfaculty`),
  KEY `admission_idAdmission_idx` (`admission_idadmission`),
  KEY `usesr_idUsers_idx` (`users_idusers`),
  CONSTRAINT `admission_idAdmission` FOREIGN KEY (`admission_idadmission`) REFERENCES `admission` (`idadmission`),
  CONSTRAINT `faculty_idFaculty` FOREIGN KEY (`faculty_idfaculty`) REFERENCES `faculty` (`idfaculty`),
  CONSTRAINT `users_idusers` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (4,'Đề án tuyển sinh 2022-2023','đây là nội dung','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,1,5),(18,'Tuyển sinh năm 2024','Trường đề xuất ....','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,3),(19,'Chuyển địa chỉ 3','Chuyển tới Nhà Bè 3','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,2),(21,'vb100','1234','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,1),(25,'abcde','qưqwqwq\r</br></br>a\r</br></br>a\r</br></br>a','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,4),(26,'a1234','aaaaaa\r</br>aaa\r</br>aaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(27,'abcde','qưeqewqeweqe','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(28,'Hợp tác','aaaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,1),(29,'đăng bài 123','a\r</br>a\r</br>a','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,1),(30,'đăng bài 12334','aaaa','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693815721/fvkgvlgzncglmrmhri06.jpg',NULL,10,1,2),(31,'Chúc mừng 123','jkvhdslfskfhaSDHfsahdfkn/asdjkfklsdfk;asnfd\r</br>slkdhaodhsa;dkga\r</br>oaishcs;oaughas\r</br>aklhcf;óah\r</br>','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,4),(32,'vb3','aaaa','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(33,'vb3','aaaa','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(34,'vb5','aaaa','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(35,'vb7','aaaa','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(36,'vb9','aaaa','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(37,'vb10','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(38,'vb11','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(39,'vb12','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(40,'vb14','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(41,'vb15','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(42,'vb16','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(44,'vb18','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(45,'vb19','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(46,'vb20','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(47,'vb21','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(48,'vb22','aaaa','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(51,'Chào mừng tân sinh viên','Chào mừng tân sinh viên','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165358/z5ryddfaytatpxzrvgdk.jpg',NULL,10,1,1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id_roleuser` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_roleuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER'),(3,'ROLE_TUVAN');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `idschool` int NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `tieuDe` longtext,
  `imageSchool` varchar(255) DEFAULT NULL,
  `users_idusers` int NOT NULL,
  PRIMARY KEY (`idschool`),
  KEY `fk_school_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_school_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (9,'Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.\r</br>Với cam kết về chất lượng đào tạo và mục tiêu trở thành một trong những trường đại học hàng đầu ở Việt Nam, chúng tôi không ngừng phấn đấu để phát triển kiến thức và hỗ trợ cộng đồng. Trong hành trình của chúng tôi, hoạt động đào tạo từ xa và phát triển bền vững luôn là ưu tiên hàng đầu.\r</br>Năm 2006, trường Đại học Mở Thành phố Hồ Chí Minh đã thành công trong việc tự chủ về tài chính, đánh dấu bước ngoặt quan trọng trong sự phát triển của chúng tôi. Với mục tiêu và định hướng phát triển rõ ràng, chúng tôi tự tin vào tương lai sáng lạng của trường.','Trường Đại Học Mở Thành Phố Hồ Chí Minh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693754036/eilphpgtxuhgowgflmld.jpg',0);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `role_user_id_roleuser` int DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  KEY `fk_users_role_user1_idx` (`role_user_id_roleuser`),
  CONSTRAINT `fk_users_role_user` FOREIGN KEY (`role_user_id_roleuser`) REFERENCES `role_user` (`id_roleuser`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693565580/voezzit4zcpw9qm4lwld.jpg','admin','$2a$10$ttgAIqaB5kQQSDABONOgT.J2TqaMqCMWeuKHGgFI3kqUYoHhhZT7S','2051010035danh@ou.edu.vn',NULL,1),(11,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693570758/yf9pcqgz41ozoik1pwuu.png','testuser','$2a$10$tmk29hLfVJO.yixKHJodB.KmStM4NVd3SakAg.ksWwgYQyamaRcF2','2051010035danh@ou.edu.vn',NULL,2),(12,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693643496/onuye3osums8b4qrgy9g.jpg','testuser1','$2a$10$G87HV7lWiFwmQwmjeFM.MujSKfGKEnCa5LH.vkZWEOBIP8TOWeDBm','2051010035danh@ou.edu.vn',NULL,2),(13,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693674643/co2wtxilujlfg8rgqzr8.png','admin1','$2a$10$RI8lu48ptQS14pqjx9J82.Rv38g/cjD8mRoW3TeMV.bDRiYt6E9qW','2051010114huy@ou.edu.vn',NULL,1),(14,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165675/rekoewi3o7woj1ayyz4e.png','admin3','$2a$10$oG2IIGz5Fpaal.MqA3BZzO2x6LEETqG7xu1dQrBARGeeoTKtalPjG','2051010114huy@ou.edu.vn',NULL,1),(15,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165864/oaetvtnfrjfrf0emhojk.png','tuvan1','$2a$10$Tcu/6AMwtDAFT1akZHRx3OrYWYqEpsnn5Mm6GWCz7JARipLGTIbXq','2051010035danh@ou.edu.vn',NULL,3),(16,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694166083/mdlzlpfhktcaltctiqmd.png','tuvan2','$2a$10$7gZEPJcoLzVKHncOMOmI5Obp.GM491nNdEprJbcaE5Enx3CkIkPl6','2051010114huy@ou.edu.vn',NULL,3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-15 15:03:48
