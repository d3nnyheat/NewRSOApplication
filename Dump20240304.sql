-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: rsopp
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
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
INSERT INTO `award` VALUES (1,'Почётный знак РСО \"За активную работу в студенческих отрядах\"'),(2,'Почётная грамота РСО со знаком отличия'),(3,'Благодарность РСО');
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'Значок \"Я есть Грут\"',65),(2,'Значок \"Медведи\"',65),(3,'Шеврон ХРО',100),(4,'Шеврон \"Сибирские волки\"',130),(5,'Лычка командира отряда',85),(6,'Бойцовка',1400),(7,'Значок \"Ирбис\"',65),(8,'Лычка комиссара отряда',85),(9,'Шеврон \"Еноты\"',130),(10,'Значок \"Имперcкий\"',65),(11,'Шеврон РСО',100),(12,'Семестровка РЖД',100);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ID_Type` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Открытие ТТС',1,'Открытие ТТС является торжественным мероприятием Российских студенческих отрядов перед началом трудового сезона'),(2,'Закрытие ТТС',1,'В рамках Закрытия ТТС состоится подведение итогов трудового лета, конкурса на звание \"Лучшего студенческого отряда Хакасии\"'),(3,'Конкурс фотографий',2,'Всероссийский конкурс фотографий среди студенческих отрядов «В объективе РСО»'),(4,'Слёт студенческих отрядов',2,'Самое ожидаемое мероприятие после трудового семестра – Всероссийский слет студенческих отрядов'),(5,'Снежный десант РСО',3,'Молодежная волонтерская акция, которая включает в себя комплекс мероприятий, направленных на развитие добровольчества в молодежной среде');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laureate`
--

DROP TABLE IF EXISTS `laureate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laureate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Surname` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ID_Award` int DEFAULT NULL,
  `ID_Staff` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laureate`
--

LOCK TABLES `laureate` WRITE;
/*!40000 ALTER TABLE `laureate` DISABLE KEYS */;
INSERT INTO `laureate` VALUES (1,'Максимов','Александр',1,6),(2,'Горелов','Артём',2,6),(3,'Кузнецова','Арина',3,7),(4,'Харитонов','Иван',1,6),(5,'Зайцев','Владислав',2,6),(6,'Захарова','Варвара',3,7),(7,'Крылова','Алиса',1,5),(8,'Крылов','Егор',2,5);
/*!40000 ALTER TABLE `laureate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_events`
--

DROP TABLE IF EXISTS `list_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_events` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Event` int DEFAULT NULL,
  `ID_Squad` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_events`
--

LOCK TABLES `list_events` WRITE;
/*!40000 ALTER TABLE `list_events` DISABLE KEYS */;
INSERT INTO `list_events` VALUES (1,1,1,12),(2,1,4,15),(3,2,3,17),(4,3,5,7),(5,4,4,1),(6,5,7,13),(7,4,2,3);
/*!40000 ALTER TABLE `list_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Surname` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `ID_Squad` varchar(45) NOT NULL,
  `Age` int DEFAULT NULL,
  `Phone` varchar(13) DEFAULT NULL,
  `Adress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Уварова','Дарья','1',20,'79137143291','Чкалова 7'),(2,'Шапошников','Михаил','2',16,'79133899177','Заречная 170'),(3,'Куликов','Дмитрий','3',21,'79230488374','Солнечная 25'),(4,'Лебедева','Александра','1',16,'79137289572','Вокзальная 69'),(5,'Зайцев','Иван','1',17,'79235879518','Вишнёвая 21'),(6,'Назарова','Василиса','6',19,'79961120909','Тихая 24'),(7,'Егоров','Глеб','7',21,'79968228244','Спортивная 60'),(8,'Александрова','Елизавета','8',22,'79967553001','Зелёный 139'),(9,'Уваров','Дмитрий','4',21,'79135267436','Советская 97'),(10,'Антонов','Павел','5',19,'79130592286','Советская 13');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Member` int DEFAULT NULL,
  `ID_Catalog` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,12,1),(2,3,8,1),(3,2,7,5),(4,7,10,2),(5,6,2,9),(6,5,7,6),(7,4,1,4);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Педагогический'),(2,'Сервисный'),(3,'Строительный'),(4,'Отряд снежного десанта'),(5,'Отряд проводников');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `squad`
--

DROP TABLE IF EXISTS `squad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `squad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ID_Specialization` int DEFAULT NULL,
  `ID_Staff` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `squad`
--

LOCK TABLES `squad` WRITE;
/*!40000 ALTER TABLE `squad` DISABLE KEYS */;
INSERT INTO `squad` VALUES (1,'Медведи',1,2),(2,'Сибирские волки',1,2),(3,'Ирбис',1,2),(4,'Я Есть Грут',2,1),(5,'Еноты',2,1),(6,'Бобры',3,3),(7,'Холодное Сердце',4,4),(8,'Имперский',5,8);
/*!40000 ALTER TABLE `squad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Surname` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Хоменко','Дмитрий','Куратор сервисного направления'),(2,'Пыскова','Виктория','Куратор педагогического направления'),(3,'Лебедева','Софья','Куратор строительного направления'),(4,'Потапова','Валерия','Куратор отрядов снежного десанта'),(5,'Гурьева','Валерия','Мастер регионального штаба'),(6,'Шестакова','Мария','Командир регионального штаба'),(7,'Кострицын','Илья','Комиссар регионального штаба'),(8,'Величко','Аркадий','Куратор отрядов проводников');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Региональное'),(2,'Всероссийское'),(3,'Окружное');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04  4:46:27
