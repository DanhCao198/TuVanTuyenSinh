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
INSERT INTO `benmarks` VALUES (4,'2022',30,23,500,1),(6,'2023',18,25,500,3),(9,'2019',16,27,500,6);
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
  `post_idpost` int NOT NULL,
  `users_idusers` int NOT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `post_idPost_idx` (`post_idpost`),
  KEY `fk_comment_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_comment_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`),
  CONSTRAINT `post_idPost` FOREIGN KEY (`post_idpost`) REFERENCES `post` (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'abc',4,11,NULL),(2,'văn bằng 2',21,10,'2023-09-07'),(3,'asaa',21,10,'2023-09-07'),(4,'aaaaaaaa',21,10,'2023-09-07'),(5,'bbbbbb',21,10,'2023-09-07');
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
  PRIMARY KEY (`idfaculty`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Công nghệ thông tin','https://tuyensinh.xhh.edu.vn/','',NULL,NULL),(3,'Ngôn Ngữ','nn',NULL,NULL,NULL),(6,'Xã Hội Học','xh',NULL,NULL,NULL),(7,'Xây dựng','https://tuyensinh.xd.edu.vn/','',NULL,NULL),(9,'Du lịch','dulich.ou.edu.vn','','aaa','aaa'),(10,'Tài chính ngân hàng','tcng.ou.edu.vn','','aaa','aaa');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (4,'Đây là bài làm của Nguyễn Cao Danh và Trần Quang Huy','bú khá nhiều nguồn','abc','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693671342/uyuder3o25balarrhdqp.jpg',10,1,5),(18,'Tuyển sinh năm 2024','Trường đề xuất ....','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',10,6,3),(19,'Chuyển địa chỉ 3','Chuyển tới Nhà Bè 3','địa chỉ mới 2','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806832/sajyi6cexvgsg1su70nn.jpg',10,6,2),(21,'vb100','Cứu với 1234','Cứu','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806882/mux1rfiwaesdf5ixtxtc.jpg',10,6,1),(25,'abcde','qưqwqwq\r</br></br>a\r</br></br>a\r</br></br>a','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806902/zk1lr6aszz4gjzdvyqs9.jpg',10,6,4),(26,'trời ơi cứu tui','aaaaaa\r</br>aaa\r</br>aaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693768427/nbxzpvkb24ldxfxe6jrc.jpg',10,6,5),(27,'abcde','qưeqewqeweqe','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693807289/ffmpmbgjt0ll8dfrks9b.jpg',10,6,5),(28,'đăng ổn đi mà','aaaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693810054/d5f7s4rft3lfk4thwdio.png',10,6,1),(29,'đăng bài 123','a\r</br>a\r</br>a','','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693815638/f2wu2okrvefcoxao3qqq.jpg',10,6,1),(30,'đăng bài 12334','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693815721/fvkgvlgzncglmrmhri06.jpg',10,1,2),(31,'con chó Huy 21231232','jkvhdslfskfhaSDHfsahdfkn/asdjkfklsdfk;asnfd\r</br>slkdhaodhsa;dkga\r</br>oaishcs;oaughas\r</br>aklhcf;óah\r</br>','Cứu','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693819160/ocembur1paki7dypngc0.jpg',10,6,4),(32,'vb3','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(33,'vb3','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(34,'vb5','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(35,'vb7','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(36,'vb9','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(37,'vb10','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(38,'vb11','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(39,'vb12','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(40,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(41,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(42,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(43,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(44,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(45,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(46,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(47,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(48,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(49,'vb13','aaaa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694101575/axqxxjixozxjvoh4dqp3.png',10,10,1),(50,'đừng lỗi','aa','báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694107129/rrga7bhozvsef0towc4e.png',10,10,1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `idreply` int NOT NULL AUTO_INCREMENT,
  `replyinfomation` longtext,
  `fkreply_commentid` int DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `fkreply_userid` int DEFAULT NULL,
  PRIMARY KEY (`idreply`),
  KEY `fkreply_commentid_idx` (`fkreply_commentid`),
  KEY `fkreply_userid_idx` (`fkreply_userid`),
  CONSTRAINT `fkreply_commentid` FOREIGN KEY (`fkreply_commentid`) REFERENCES `comment` (`idcomment`),
  CONSTRAINT `fkreply_userid` FOREIGN KEY (`fkreply_userid`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'rep 1',2,NULL,13),(2,'rep 2',2,NULL,13),(4,'rep 3',2,'2023-09-07',10),(5,'rep 4',3,'2023-09-07',10),(6,'rep 5',3,'2023-09-07',10),(7,'rep 6',3,'2023-09-07',10);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
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

-- Dump completed on 2023-09-08  0:49:56
