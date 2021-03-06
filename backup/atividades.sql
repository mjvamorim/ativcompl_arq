-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: atividades
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `atividades`
--

DROP TABLE IF EXISTS `atividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modalidade_id` int(11) DEFAULT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `horas_req` int(11) DEFAULT NULL,
  `horas_jul` int(11) DEFAULT NULL,
  `anexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `julgador_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_atividades_on_modalidade_id` (`modalidade_id`),
  KEY `index_atividades_on_aluno_id` (`aluno_id`),
  KEY `index_atividades_on_julgador_id` (`julgador_id`),
  CONSTRAINT `fk_rails_4a57019e21` FOREIGN KEY (`modalidade_id`) REFERENCES `modalidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividades`
--

LOCK TABLES `atividades` WRITE;
/*!40000 ALTER TABLE `atividades` DISABLE KEYS */;
INSERT INTO `atividades` VALUES (1,'Teste 01',1,3,1,NULL,'1.pdf',1,'2020-09-10 19:24:13','2020-09-10 19:24:13');
/*!40000 ALTER TABLE `atividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidades`
--

DROP TABLE IF EXISTS `modalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `limite` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidades`
--

LOCK TABLES `modalidades` WRITE;
/*!40000 ALTER TABLE `modalidades` DISABLE KEYS */;
INSERT INTO `modalidades` VALUES (1,'Cursos extra-curriculares de interesse na ├írea de forma├º├úo (carga hor├íria efetiva do curso)',120,'2020-08-18 13:12:36','2020-08-18 13:12:36'),(2,'Monitoria (20 horas por m├¬s completo)',120,'2020-08-18 13:14:03','2020-08-18 13:14:03'),(3,'Participa├º├úo em projetos de inicia├º├úo cient├¡fica (20 horas por m├¬s completo)',120,'2020-08-18 13:15:06','2020-08-18 13:15:06'),(4,'Cap├¡tulo de livro (80 horas por participa├º├úo)',160,'2020-08-18 13:16:02','2020-08-18 13:16:02'),(5,'Publica├º├Áes de artigos em anais de congresso (60 horas por publica├º├úo)',120,'2020-08-18 13:17:08','2020-08-18 13:17:08'),(6,'Publica├º├Áes de artigo em outras fontes como boletins, jornais, etc. (40 horas por publica├º├úo)',80,'2020-08-18 13:18:18','2020-08-18 13:18:18'),(7,'Publica├º├Áes de artigo em peri├│dicos (80 horas por publica├º├úo)',160,'2020-08-18 13:18:52','2020-08-18 13:18:52'),(8,'Participa├º├úo em eventos da ├írea com apresenta├º├úo oral (80 horas por apresenta├º├úo)',160,'2020-08-18 13:20:54','2020-08-18 13:20:54'),(9,'Participa├º├úo em eventos da ├írea  com apresenta├º├úo banner (40 horas por apresenta├º├úo de banner)',80,'2020-08-18 13:21:50','2020-08-18 13:21:50'),(10,'Participa├º├úo em eventos da ├írea como ouvinte (carga hor├íria efetiva da participa├º├úo)',120,'2020-08-18 13:22:23','2020-08-18 13:22:23'),(11,'Apresenta├º├úo em palestras (10 horas por apresenta├º├úo)',40,'2020-08-18 13:23:01','2020-08-18 13:23:01'),(12,'Participa├º├úo em projeto de extens├úo (20 horas por m├¬s completo)',120,'2020-08-18 13:24:13','2020-08-18 13:44:53'),(13,'Participa├º├úo em projeto de inicia├º├úo art├¡stica e cultural (20 horas por m├¬s completo)',120,'2020-08-18 13:25:03','2020-08-18 13:25:03'),(14,'Participa├º├úo em eventos art├¡sticos, esport├¡vos e/ou culturais (carga hor├íria efetiva da participa├º├úo)',120,'2020-08-18 13:27:26','2020-08-18 13:27:26'),(15,'Viagens de estudo acompanhadas por professores (12 horas por dia de viagem)',180,'2020-08-18 13:29:32','2020-08-18 13:29:32'),(16,'Viagens de estudos desacompanhadas por professores (6 horas por dia de viagem)',60,'2020-08-18 13:30:11','2020-08-18 13:30:11'),(17,'Participa├º├úo na organiza├º├úo de eventos (carga hor├íria efetiva da participa├º├úo)',60,'2020-08-18 13:30:49','2020-08-18 13:30:49'),(18,'Participa├º├úo na organiza├º├úo da semana acad├¬mica do Curso (carga hor├íria efetiva da participa├º├úo)',80,'2020-08-18 13:31:33','2020-08-18 13:31:33'),(19,'Apresenta├º├úo de trabalhos em concursos (40 horas por apresenta├º├úo)',120,'2020-08-18 13:32:19','2020-08-18 13:32:19'),(20,'Desenvolvimento de trabalho no escrit├│rio modelo (10 horas por m├¬s de trabalho)',120,'2020-08-18 13:33:03','2020-08-18 13:33:03'),(21,'Participa├º├úo em interc├ómbio (10 horas por m├¬s)',120,'2020-08-18 13:33:38','2020-08-18 13:33:38'),(22,'Bolsista de desenvolvimento acad├¬mico e apoio tecnol├│gico (20 horas por pelo menos 1 semestre conclu├¡do)',120,'2020-08-18 13:35:28','2020-08-18 13:36:22'),(23,'Participa├º├úo, como ouvinte, em bancas de monografias, disserta├º├Áes e teses (2 horas por apresenta├º├úo)',40,'2020-08-18 13:37:44','2020-08-18 13:45:53'),(24,'Participa├º├úo em empresa j├║nior (20 horas por m├¬s completo)',120,'2020-08-18 13:38:14','2020-08-18 13:44:21'),(25,'Participa├º├úo na Semana do Saber Fazer Saber (carga hor├íria efetiva da participa├º├úo)',60,'2020-08-18 13:38:51','2020-08-18 13:38:51'),(26,'Representantes de turma (10 horas por semestre)',20,'2020-08-18 13:39:44','2020-08-18 13:39:44'),(27,'Membro de colegiado e conselhos universit├írios (40 horas por semestre)',80,'2020-08-18 13:40:37','2020-08-18 13:40:37'),(28,'Membro da dire├º├úo de diret├│rios acad├¬micos (40 horas por semestre)',80,'2020-08-18 13:41:15','2020-08-18 13:41:15');
/*!40000 ALTER TABLE `modalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150827154015'),('20150827154259'),('20150827154330'),('20150827161547'),('20150828171008'),('20150828180147'),('20150901150235'),('20150904165242');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricula` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitation_created_at` datetime DEFAULT NULL,
  `invitation_sent_at` datetime DEFAULT NULL,
  `invitation_accepted_at` datetime DEFAULT NULL,
  `invitation_limit` int(11) DEFAULT NULL,
  `invited_by_id` int(11) DEFAULT NULL,
  `invited_by_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitations_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_invitation_token` (`invitation_token`),
  KEY `index_users_on_invitations_count` (`invitations_count`),
  KEY `index_users_on_invited_by_id` (`invited_by_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'mjvamorim@gmail.com','$2a$10$mnem.5jLtZ1DcLQrXEZA5.yuQpMBnSjG56KZw5wZfDhWNKMk0tEPm','9b2dbf302d47020a25189686d8a52f2d3846e754ea141869fdcb9ba44b404753','2020-09-08 19:05:27',NULL,7,'2020-09-10 14:54:44','2020-09-10 14:42:44','172.19.0.1','172.19.0.1','2020-07-27 19:55:27','2020-09-10 14:54:44','Mauricio Amorim','9999.9.999.9999','Bacharelao em Sistemas de Informa├º├úo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(1,'arqurb.centro@iff.edu.br','$2a$10$y6dceY0LwRWVnczFDo7/LeTo10mO1s3Fq18YF2eWnc5Yy3OLnV8kK',NULL,NULL,NULL,6,'2020-08-20 02:40:30','2020-08-18 17:46:25','10.15.0.14','10.15.0.14','2020-07-31 15:43:44','2020-08-20 02:40:30','Zander Ribeiro Pereira Filho','2069.8.67_.____','Bacharelao em Sistemas de Informa├º├úo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,'frgamorim@gmail.com','$2a$10$.qC.Eo/xvPwznXrP6k3Vq.JfBpoWNELXJjvx3r31OslJ3U2L8bXya',NULL,NULL,NULL,4,'2020-11-30 17:17:52','2020-09-10 15:19:43','172.18.0.1','172.19.0.1','2020-09-10 14:46:06','2020-11-30 17:17:52','Felipe Amorim','9999.9.999.9999','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricula` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 20:12:23
