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
INSERT INTO `admission` VALUES (1,'VĂN BẰNG 2'),(2,'CAO HỌC'),(3,'LIÊN THÔNG'),(4,'ĐÀO TẠO TỪ XA'),(5,'CHÍNH QUY');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benmarks`
--

LOCK TABLES `benmarks` WRITE;
/*!40000 ALTER TABLE `benmarks` DISABLE KEYS */;
INSERT INTO `benmarks` VALUES (4,'2022',30,23,500,1),(6,'2023',18,25,500,1),(9,'2019',16,27,500,2);
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
  `comment_idcommentReply` int DEFAULT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `fk_comment_users1_idx` (`users_idusers`),
  KEY `fk_comment_comment1_idx` (`comment_idcomment`),
  KEY `fk_comment_post1_idx` (`post_idpost`),
  KEY `fk_comment_livestreams1_idx` (`livestreams_idlivestreams`),
  KEY `fk_comment_idcommentReply_idx` (`comment_idcommentReply`),
  CONSTRAINT `fk_comment_comment1` FOREIGN KEY (`comment_idcomment`) REFERENCES `comment` (`idcomment`),
  CONSTRAINT `fk_comment_idcommentReply` FOREIGN KEY (`comment_idcommentReply`) REFERENCES `comment` (`idcomment`),
  CONSTRAINT `fk_comment_livestreams1` FOREIGN KEY (`livestreams_idlivestreams`) REFERENCES `livestreams` (`idlivestreams`),
  CONSTRAINT `fk_comment_post1` FOREIGN KEY (`post_idpost`) REFERENCES `post` (`idpost`),
  CONSTRAINT `fk_comment_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (50,'abcdef','2023-10-06',10,NULL,26,NULL,NULL),(51,'ádadsadsdasddasda','2023-10-06',10,50,26,NULL,50);
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
  `introvideo` longtext,
  `gioiThieu` longtext,
  `moTaCTDT` longtext,
  `hocPhi` int DEFAULT NULL,
  PRIMARY KEY (`idfaculty`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Công nghệ thông tin','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','Khoa Công Nghệ Thông Tin (CNTT) được thành lập từ tháng 09/1990 và là một trong những Khoa được thành lập đầu tiên của trường Đại Học Mở Tp. Hồ Chí Minh. Trải qua hơn 25 năm xây dựng và phát triển, hiện nay Khoa có đội ngũ giảng viên cơ hữu giàu kinh nghiệm và tận tâm gồm các Tiến sĩ, Thạc sĩ tốt nghiệp từ các trường danh tiếng trong và ngoài nước cùng với các giảng viên thỉnh giảng đến từ các trường Đại học, viện nghiên cứu uy tín ở TP HCM. Khoa đã đào tạo và cung cấp nguồn nhân lực có chất lượng cho xã hội với số lượng xấp xỉ 5.000 cử nhân khoa học hệ chính quy khối ngành Công nghệ thông tin (Khoa học máy tính, Tin học, Hệ thống thông tin quản lý) và hàng ngàn cử nhân Tin học hệ không chính quy.','Chương trình đào tạo của ngành khoa học máy tính gồm 122 tín chỉ và của ngành hệ thống thông tin quản lý là 127 tín chỉ với thời gian là 4 năm. Sinh viên có thể tốt nghiệp sớm hơn hoặc dài hơn thời gian trên tùy theo kế hoạch và năng lực học tập.',20000000),(3,'Ngôn Ngữ','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz',NULL,NULL,20000000),(6,'Xã Hội Học','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','aaa','aa',20000000),(7,'Xây dựng','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz',NULL,NULL,20000000),(9,'Du lịch','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','aaa','aaa',20000000),(10,'Tài chính ngân hàng','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','aaa','aaa',20000000),(11,'Luật','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','Đây là khoa Luật','Luật',20000000),(12,'Khoa test','https://tuyensinh.ou.edu.vn/','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','aaaaaa','aaaaaa',NULL);
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
  `startTime` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `users_idusers` int NOT NULL,
  PRIMARY KEY (`idlivestreams`),
  KEY `fk_livestreams_users1_idx` (`users_idusers`),
  CONSTRAINT `fk_livestreams_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livestreams`
--

LOCK TABLES `livestreams` WRITE;
/*!40000 ALTER TABLE `livestreams` DISABLE KEYS */;
INSERT INTO `livestreams` VALUES (1,'Thông báo danh sách thí sinh đủ điều kiện tham gia chương trình liên kết quốc tế năm 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.\r</br></br></br>Với cam kết về chất lượng đào tạo và mục tiêu trở thành một trong những trường đại học hàng đầu ở Việt Nam, chúng tôi không ngừng phấn đấu để phát triển kiến thức và hỗ trợ cộng đồng. Trong hành trình của chúng tôi, hoạt động đào tạo từ xa và phát triển bền vững luôn là ưu tiên hàng đầu.\r</br></br></br>Năm 2006, trường Đại học Mở Thành phố Hồ Chí Minh đã thành công trong việc tự chủ về tài chính, đánh dấu bước ngoặt quan trọng trong sự phát triển của chúng tôi. Với mục tiêu và định hướng phát triển rõ ràng, chúng tôi tự tin vào tương lai sáng lạng của trường.','https://res.cloudinary.com/dev7q6f9g/image/upload/v1696770730/bjirligakxlywzfukxwp.jpg','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','2023-10-10T12:00','2023-10-10T17:03',NULL,10),(3,'Thông báo danh sách thí sinh đủ điều kiện tham gia chương trình liên kết quốc tế năm 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','https://res.cloudinary.com/dev7q6f9g/image/upload/v1695893831/be2kextdnsunyxqpaqha.jpg','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','2023-10-10T12:00','2023-10-10T17:03',NULL,10),(4,'Thông báo danh sách thí sinh đủ điều kiện tham gia chương trình liên kết quốc tế năm 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','https://res.cloudinary.com/dev7q6f9g/image/upload/v1695893831/be2kextdnsunyxqpaqha.jpg','https://www.youtube.com/embed/RazMgFxOWDY?si=fXHRPa9ggDB2iOLz','2023-10-10T12:00','2023-10-10T17:03',NULL,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (1,'Khoa học máy tính',1),(2,'Công Nghệ Thông Tin',1),(4,'Ngành test1',12);
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
INSERT INTO `post` VALUES (4,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.\r</br>Với cam kết về chất lượng đào tạo và mục tiêu trở thành một trong những trường đại học hàng đầu ở Việt Nam, chúng tôi không ngừng phấn đấu để phát triển kiến thức và hỗ trợ cộng đồng. Trong hành trình của chúng tôi, hoạt động đào tạo từ xa và phát triển bền vững luôn là ưu tiên hàng đầu.\r</br>Năm 2006, trường Đại học Mở Thành phố Hồ Chí Minh đã thành công trong việc tự chủ về tài chính, đánh dấu bước ngoặt quan trọng trong sự phát triển của chúng tôi. Với mục tiêu và định hướng phát triển rõ ràng, chúng tôi tự tin vào tương lai sáng lạng của trường.','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1696768310/ytqsd4dqufujjxzplltv.jpg',NULL,10,12,5),(18,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(19,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(21,'Thông báo Ngưỡng điểm nhận hồ sơ đăng ký xét tuyển Kết quả thi tốt nghiệp THPT năm 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(25,'Thông báo danh sách thí sinh đủ điều kiện tham gia chương trình liên kết quốc tế năm 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(26,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(27,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,5),(28,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,4),(29,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,4),(30,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693815721/fvkgvlgzncglmrmhri06.jpg',NULL,10,1,4),(31,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,6,4),(32,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,4),(33,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(34,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(35,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(36,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo livestream','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(37,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,1),(38,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,2),(39,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,2),(40,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,2),(41,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,2),(42,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,2),(44,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,3),(45,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,3),(46,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,3),(47,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,3),(48,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693806861/aurmbmeqsxnc1bhf7kpg.jpg',NULL,10,10,3),(51,'Thông báo Xác nhận nhập học và nhập học trực tuyến Tân sinh viên khoá 2023','Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.','Thông báo tuyển sinh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165358/z5ryddfaytatpxzrvgdk.jpg',NULL,10,1,1);
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
INSERT INTO `school` VALUES (9,'Trường Đại học Mở Thành phố Hồ Chí Minh, ban đầu được thành lập với cái tên \"Viện Đào tạo Mở Rộng\". Vào ngày 15 tháng 6 năm 1990, trường đã trở thành một phần của hệ thống cán bộ quản lý, đại học trung học chuyên nghiệp và dạy nghề. Sau đó, vào năm 1993, trường đã được nâng cấp thành Đại học Mở, phục vụ đào tạo từ xa và phát triển dân tộc khu vực.\r</br>Với cam kết về chất lượng đào tạo và mục tiêu trở thành một trong những trường đại học hàng đầu ở Việt Nam, chúng tôi không ngừng phấn đấu để phát triển kiến thức và hỗ trợ cộng đồng. Trong hành trình của chúng tôi, hoạt động đào tạo từ xa và phát triển bền vững luôn là ưu tiên hàng đầu.\r</br>Năm 2006, trường Đại học Mở Thành phố Hồ Chí Minh đã thành công trong việc tự chủ về tài chính, đánh dấu bước ngoặt quan trọng trong sự phát triển của chúng tôi. Với mục tiêu và định hướng phát triển rõ ràng, chúng tôi tự tin vào tương lai sáng lạng của trường.','Trường Đại Học Mở Thành Phố Hồ Chí Minh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693754036/eilphpgtxuhgowgflmld.jpg',10);
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
INSERT INTO `users` VALUES (10,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693565580/voezzit4zcpw9qm4lwld.jpg','admin','$2a$10$ttgAIqaB5kQQSDABONOgT.J2TqaMqCMWeuKHGgFI3kqUYoHhhZT7S','2051010035danh@ou.edu.vn',NULL,1),(11,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693570758/yf9pcqgz41ozoik1pwuu.png','testuser','$2a$10$tmk29hLfVJO.yixKHJodB.KmStM4NVd3SakAg.ksWwgYQyamaRcF2','2051010035danh@ou.edu.vn',NULL,2),(12,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693643496/onuye3osums8b4qrgy9g.jpg','testuser1','$2a$10$/SMd6cJDJskefTyV0pH4neuRF.vpnuf8IoeGYfQPd2QWPizD/4tcW','2051010035danh@ou.edu.vn',NULL,2),(13,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1693674643/co2wtxilujlfg8rgqzr8.png','admin1','$2a$10$RI8lu48ptQS14pqjx9J82.Rv38g/cjD8mRoW3TeMV.bDRiYt6E9qW','2051010114huy@ou.edu.vn',NULL,1),(14,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165675/rekoewi3o7woj1ayyz4e.png','admin3','$2a$10$e8rO1R.xPx/oS4MEYxgtwOvXFoAjOA4sjdN0zL.Mzfz0oIWw4ZHiC','2051010114huy@ou.edu.vn',NULL,2),(15,'Nguyen','Danh','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694165864/oaetvtnfrjfrf0emhojk.png','tuvan1','$2a$10$Tcu/6AMwtDAFT1akZHRx3OrYWYqEpsnn5Mm6GWCz7JARipLGTIbXq','2051010035danh@ou.edu.vn',NULL,3),(16,'Tran','Huy','https://res.cloudinary.com/dev7q6f9g/image/upload/v1694166083/mdlzlpfhktcaltctiqmd.png','tuvan2','$2a$10$xnrG8VdDCdqxUuL1hZwMB.rDgRCodAVJKa7hGZv40.vzKUNPEPFSG','2051010114huy@ou.edu.vn',NULL,2);
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

-- Dump completed on 2023-10-08 20:18:44
