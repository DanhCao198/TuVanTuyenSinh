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
  `idadmission` int NOT NULL,
  `typeoftraining` varchar(45) NOT NULL,
  PRIMARY KEY (`idadmission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (1,'Văn bằng 2'),(2,'Đào Tạo Từ Xa'),(3,'Liên Thông'),(4,'Cao Học'),(5,'Đại Trà');
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
  `users_idusers` int DEFAULT NULL,
  PRIMARY KEY (`idbanner`),
  KEY `fk_banner_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_banner_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (8,'https://res.cloudinary.com/dev7q6f9g/image/upload/v1693768375/evyn0fulrfzl9xrozfuj.jpg',10),(9,'https://res.cloudinary.com/dev7q6f9g/image/upload/v1693768467/cacghxxwpbzyx0uufdij.png',10),(10,'https://res.cloudinary.com/dev7q6f9g/image/upload/v1693768480/nychzn6f4o6nvmkbthdf.jpg',10);
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
  `faculty_idfaculty` int NOT NULL,
  PRIMARY KEY (`idbenmarks`),
  KEY `fk_benmarks_faculty1_idx` (`faculty_idfaculty`),
  CONSTRAINT `fk_benmarks_faculty1` FOREIGN KEY (`faculty_idfaculty`) REFERENCES `faculty` (`idfaculty`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benmarks`
--

LOCK TABLES `benmarks` WRITE;
/*!40000 ALTER TABLE `benmarks` DISABLE KEYS */;
INSERT INTO `benmarks` VALUES (4,'2022',30,23,500,1),(5,'2022',19,24,500,2),(6,'2023',18,25,500,3),(7,'2023',17,26,500,4),(8,'2018',16,27,500,5),(9,'2019',16,27,500,6);
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
  `commentinformation` varchar(45) DEFAULT NULL,
  `post_idpost` int NOT NULL,
  `users_idusers` int NOT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `post_idPost_idx` (`post_idpost`),
  KEY `fk_comment_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_comment_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`),
  CONSTRAINT `post_idPost` FOREIGN KEY (`post_idpost`) REFERENCES `post` (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'abc',4,11);
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
  PRIMARY KEY (`idfaculty`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Công nghệ thông tin','it',NULL),(2,'Xây Dựng','xd',NULL),(3,'Ngôn Ngữ','nn',NULL),(4,'Tài Chính Ngân Hàng','tcnh',NULL),(5,'Quản Trị Kinh Doanh','qtkd',NULL),(6,'Xã Hội Học','xh',NULL);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (4,'Đây là bài làm của Nguyễn Cao Danh và Trần Quang Huy','bú khá nhiều nguồn','abc','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693671342/uyuder3o25balarrhdqp.jpg',10,1,5),(18,'Tuyển sinh năm 2024','Trường đề xuất ....','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693648015/jbmu4leoaozhvinijkd0.png',10,1,5),(19,'Chuyển địa chỉ 3','Chuyển tới Nhà Bè 3','địa chỉ mới 2','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693671365/d9ni1am2sdp7vqomzo4d.png',10,6,5),(21,'Khuya quá còn nhiều môn','Cứu với 1234','Cứu','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693674729/nnnn5d8jciwig1bbiz7z.png',13,6,5),(25,'abcde','qưqwqwq\r</br>a\r</br>a\r</br>a','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693753716/grtg24plroelzmcrhhj1.jpg',10,6,5),(26,'trời ơi cứu tui','aaaaaa\r</br>aaa\r</br>aaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693768427/nbxzpvkb24ldxfxe6jrc.jpg',10,6,5);
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
INSERT INTO `role_user` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
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
  PRIMARY KEY (`idschool`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (9,'Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.\r</br>Với cam kết về chất lượng đào tạo và mục tiêu trở thành một trong những trường đại học hàng đầu ở Việt Nam, chúng tôi không ngừng phấn đấu để phát triển kiến thức và hỗ trợ cộng đồng. Trong hành trình của chúng tôi, hoạt động đào tạo từ xa và phát triển bền vững luôn là ưu tiên hàng đầu.\r</br>Năm 2006, trường Đại học Mở Thành phố Hồ Chí Minh đã thành công trong việc tự chủ về tài chính, đánh dấu bước ngoặt quan trọng trong sự phát triển của chúng tôi. Với mục tiêu và định hướng phát triển rõ ràng, chúng tôi tự tin vào tương lai sáng lạng của trường.','Trường Đại Học Mở Thành Phố Hồ Chí Minh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693754036/eilphpgtxuhgowgflmld.jpg');
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
  `email` varchar(45) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `school_idschool` int DEFAULT NULL,
  `role_user_id_roleuser` int DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  KEY `fk_users_role_user1_idx` (`role_user_id_roleuser`),
  KEY `school_idschool_idx` (`school_idschool`),
  CONSTRAINT `fk_school_idschool` FOREIGN KEY (`school_idschool`) REFERENCES `school` (`idschool`),
  CONSTRAINT `fk_users_role_user` FOREIGN KEY (`role_user_id_roleuser`) REFERENCES `role_user` (`id_roleuser`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693565580/voezzit4zcpw9qm4lwld.jpg','admin','$2a$10$ttgAIqaB5kQQSDABONOgT.J2TqaMqCMWeuKHGgFI3kqUYoHhhZT7S',NULL,NULL,NULL,1),(11,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693570758/yf9pcqgz41ozoik1pwuu.png','testuser','$2a$10$tmk29hLfVJO.yixKHJodB.KmStM4NVd3SakAg.ksWwgYQyamaRcF2',NULL,NULL,NULL,2),(12,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693643496/onuye3osums8b4qrgy9g.jpg','testuser1','$2a$10$G87HV7lWiFwmQwmjeFM.MujSKfGKEnCa5LH.vkZWEOBIP8TOWeDBm',NULL,NULL,NULL,2),(13,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693674643/co2wtxilujlfg8rgqzr8.png','admin1','$2a$10$RI8lu48ptQS14pqjx9J82.Rv38g/cjD8mRoW3TeMV.bDRiYt6E9qW',NULL,NULL,NULL,1);
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

-- Dump completed on 2023-09-04  2:17:00
