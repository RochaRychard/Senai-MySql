-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: mysql.wwonline.com.br    Database: wwonline10
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.36-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nome_mae` varchar(150) NOT NULL,
  `nome_pai` varchar(150) DEFAULT NULL,
  `endereco_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'33','João de Souza','326.595.789-45','27 98956-4267','joao@email.com','1979-05-23','Joana de Souza','Paulo Sauro de Souza',1),(2,'34','Maria de Souza','128.595.289-95','27 98923-4977','maria@email.com','1999-03-12','Joana de Souza','Paulo Sauro de Souza',2);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(150) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `uf_id` int(11) NOT NULL COMMENT 'Chave estrangeira do ID da tabela UF',
  `municipio_id` int(11) NOT NULL COMMENT 'Chave estrangeira do ID da tabela Municipio',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Avenida Claudio Manoel da costa','1625','Interlagos','29936-714',68,1),(2,' Av. Jerônimo Monteiro','21','centro','29450-000',68,8);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filho`
--

DROP TABLE IF EXISTS `filho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `data_nascimrnto` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filho`
--

LOCK TABLES `filho` WRITE;
/*!40000 ALTER TABLE `filho` DISABLE KEYS */;
/*!40000 ALTER TABLE `filho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Linhares'),(2,'Colatina'),(3,'Dores do Rio Preto'),(4,'Ponto Belo'),(5,'Ibitirama'),(6,'Atílio Vivácqua'),(7,'Itapemirim'),(8,'Apiacá'),(9,'Laranja da Terra'),(10,'Brejetuba');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo_ibge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (61,'AC','Acre',12),(62,'AL','Alagoas',27),(63,'AP','Amapá',16),(64,'AM','Amazonas',13),(65,'BA','Bahia',29),(66,'CE','Ceará',23),(67,'DF','Distrito Federal',53),(68,'ES','Espírito Santo',32),(69,'GO','Goiás',52),(70,'MA','Maranhão',21),(71,'MT','Mato Grosso',51),(72,'MS','Mato Grosso do Sul',50),(73,'MG','Minas Gerais',31),(74,'PA','Pará',15),(75,'PB','Paraíba',25),(76,'PR','Paraná',41),(77,'PE','Pernambuco',26),(78,'PI','Piauí',22),(79,'RJ','Rio de Janeiro',33),(80,'RN','Rio Grande do Norte',24),(81,'RS','Rio Grande do Sul',43),(82,'RO','Rondônia',11),(83,'RR','Roraima',14),(84,'SC','Santa Catarina',42),(85,'SP','São Paulo',35),(86,'SE','Sergipe',28),(87,'TO','Tocantins',17);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wwonline10'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 20:10:14
