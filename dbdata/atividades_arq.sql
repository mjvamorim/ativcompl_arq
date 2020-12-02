-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: AtivCompl
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.16.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividades`
--

LOCK TABLES `atividades` WRITE;
/*!40000 ALTER TABLE `atividades` DISABLE KEYS */;
INSERT INTO `atividades` VALUES (1,'Teste',1,3,1,NULL,'1.pdf',1,'2020-09-10 20:22:52','2020-09-10 20:22:52'),(2,'Participação da Atividade de Extensão ArqIFF em casa sobre Gerenciamento e Compatibilização de Projetos em BIM',10,4,2,2,'2.pdf',2,'2020-09-18 20:13:09','2020-10-14 08:22:52'),(3,'WORKSHOP GRATUITO - GESTÃO DE PROJETOS NA CONSTRUÇÃO CIVIL',1,6,2,NULL,'3.pdf',2,'2020-10-14 10:32:02','2020-10-14 10:32:02'),(4,'V-ray 3.4 para SketchUp - Curso Básico',1,6,11,NULL,'4.pdf',2,'2020-10-14 10:33:40','2020-10-14 10:33:40'),(5,'oficina ACESSIBILIDADE EM AMBIENTES ESCOLARES ',10,11,4,NULL,'5.pdf',2,'2020-10-14 10:36:06','2020-10-14 10:36:06'),(6,'palestra PSICOLOGIA AMBIENTAL: UM OLHAR SOBRE AS INTER-RELAÇÕES ENTRE O INDIVÍDUO E O AMBIENTE',10,11,2,NULL,'6.pdf',2,'2020-10-14 10:37:31','2020-10-14 10:37:31'),(7,'USINA CTAH: ARQUITETURA COMO PRÁTICA POLÍTICA',10,6,1,NULL,'7.pdf',2,'2020-10-14 10:38:30','2020-10-14 10:38:30'),(8,'organizadora voluntária do evento IV SEMANA DE ARQUITETURA E URBANISMO – INOVAÇÃO E TECNOLOGIA',18,11,40,NULL,'8.pdf',2,'2020-10-14 10:39:38','2020-10-14 10:39:38'),(9,'PARKLETS: MENOS CARROS MAIS PESSOAS',13,6,20,NULL,'9.pdf',2,'2020-10-14 10:42:53','2020-10-14 10:42:53'),(10,'PLANO DIRETOR: DESAFIOS DA PRÓXIMA REVISÃO',10,6,1,NULL,'10.pdf',2,'2020-10-14 10:46:45','2020-10-14 10:46:45'),(11,'Organizadora voluntária da IV SEMANA DE ARQUITETURA E URBANISMO – INOVAÇÃO E TECNOLOGIA',18,12,40,NULL,'11.pdf',2,'2020-10-14 12:10:53','2020-10-14 12:10:53'),(12,'Participante do minicurso Certificação Ambiental em Edifícios Escolares',18,12,3,NULL,'12.pdf',2,'2020-10-14 12:12:33','2020-10-14 12:21:01'),(13,'Participante da oficina acessibilidade em ambientes escolares',18,12,4,NULL,'13.pdf',2,'2020-10-14 12:13:36','2020-10-14 12:22:46'),(14,'Participante da palestra \"É POSSÍVEL PREVER O FUTURO DAS CIDADES: O (PERSISTENTE) COMPONENTE HUMANO NA ELABORAÇÃO DE CENÁRIOS URBANOS FUTUROS.\"',18,12,1,NULL,'14.pdf',2,'2020-10-14 12:14:55','2020-10-14 12:36:56'),(15,'Participante da palestra \"USINA CTAH: ARQUITETURA COMO PRÁTICA POLÍTICA\"',17,12,1,NULL,'15.pdf',2,'2020-10-14 12:15:46','2020-10-14 12:25:51'),(16,'Participante da palestra \"VILA ITORORÓ: DESAFIOS DE RESTAURO E GESTÃO\"',18,12,1,NULL,'16.pdf',2,'2020-10-14 12:16:52','2020-10-14 12:24:55'),(17,'Organizadora da atividade 1° SEMINÁRIO DE PESQUISA DA PAISAGEM',17,12,12,NULL,'17.pdf',2,'2020-10-14 12:19:17','2020-10-14 12:19:17'),(18,'Lev Conceito ',1,12,10,NULL,'18.pdf',2,'2020-10-14 12:27:57','2020-10-14 12:27:57'),(19,'Participante do projeto \"LINHA DO TEMPO: PRODUÇÃO DO ESPAÇO URBANO DE CAMPOS DOS GOYTACAZES/RJ.\"',25,12,60,NULL,'19.pdf',2,'2020-10-14 12:29:47','2020-10-14 12:29:47'),(20,'Participante do projeto \"EXPOSIÇÃO DE PROJETOS E MAQUETES RESIDENCIAIS - CURSO DE ARQUITETURA E URBANISMO\"',25,12,60,NULL,'20.pdf',2,'2020-10-14 12:32:04','2020-10-14 12:32:04'),(21,'Curso Revit Start ',1,12,48,NULL,'21.pdf',2,'2020-10-14 12:33:19','2020-10-14 12:33:19'),(22,'Modelagem e Parametrização de Famílias no Revit 2018',1,12,24,NULL,'22.pdf',2,'2020-10-14 12:35:17','2020-10-14 12:35:17'),(23,'Participante do debate \"GERENCIAMENTO E COMPATIBILIZAÇÃO DE PROJETOS EM BIM\"',18,12,2,NULL,'23.pdf',2,'2020-10-14 12:38:14','2020-10-14 12:38:14'),(24,'Participante do debate \"A DIMENSÃO AMBIENTAL DO NOVO PLANO DIRETOR\"',18,12,2,NULL,'24.pdf',2,'2020-10-14 12:39:52','2020-10-14 12:39:52'),(25,'Participante do debate \"ADMINISTRAÇÃO DE OBRAS E FINANCIAMENTOS HABITACIONAIS\"',18,12,2,NULL,'25.pdf',2,'2020-10-14 12:41:04','2020-10-14 12:41:04'),(26,'Curso de Revit nível start',1,13,60,NULL,'26.pdf',2,'2020-10-14 19:00:56','2020-10-14 19:00:56'),(27,'Curso de Revit nível profissional ',1,13,80,NULL,'27.pdf',2,'2020-10-14 19:02:13','2020-10-14 19:02:13'),(28,'MINICURSO: DETALHAMENTO EM REVIT',1,6,8,NULL,'28.pdf',2,'2020-10-14 22:47:24','2020-10-14 22:47:24'),(29,'Minicurso de Revit - Prédio 5 Pavimentos ',1,6,4,NULL,'29.pdf',2,'2020-10-14 22:48:15','2020-10-14 22:48:15'),(30,'Minicurso de Revit - Projeto + Render ',1,6,5,NULL,'30.pdf',2,'2020-10-14 22:49:19','2020-10-14 22:49:19'),(31,'Curso de Autodesk Revit® 2016 | Básico ',1,6,16,NULL,'31.pdf',1,'2020-10-14 22:50:18','2020-10-14 22:50:18'),(32,'O USO DA INTERNET E DAS REDES SOCIAIS COMO FERRAMENTA DE TRABALH',1,6,1,NULL,'32.pdf',2,'2020-10-14 22:51:16','2020-10-14 22:51:16'),(33,'Participação da 21ª Semana do Saber Fazer Saber com projeto de Biblioteca de Materiais',25,24,60,NULL,'33.pdf',2,'2020-11-25 11:37:40','2020-11-25 11:37:40'),(34,'Curso de Gerenciamento de Projeto feito através de estudo de trilogia de Vicente Falconi',1,24,31,NULL,'34.pdf',2,'2020-11-25 11:40:09','2020-11-25 11:40:09'),(35,'Palestra Cidade Acessíveis',10,24,3,NULL,'35.pdf',2,'2020-11-25 11:42:45','2020-11-25 11:42:45'),(36,'Curso sobre instalação de Telhado',1,24,2,NULL,'36.pdf',2,'2020-11-25 11:43:49','2020-11-25 11:43:49'),(37,'Curso de Negociação',1,24,20,NULL,'37.pdf',2,'2020-11-25 11:44:21','2020-11-25 11:44:21'),(38,'Palestra ENEPEA',1,24,2,NULL,'38.pdf',2,'2020-11-25 11:49:42','2020-11-25 11:49:42'),(39,'Visita a Casa Cor e Casa das Ciência (RJ)',15,24,24,NULL,'39.pdf',2,'2020-11-25 11:58:35','2020-11-25 11:58:35'),(40,'Viagem a Curitiba ',15,24,60,NULL,'40.pdf',2,'2020-11-25 12:01:01','2020-11-25 12:01:01'),(41,'Visita a Feira Expo Revestir e São Paulo (06/03/15 a 08/03/15)',15,24,36,NULL,'41.pdf',2,'2020-11-25 12:03:33','2020-11-25 12:03:33'),(42,'Viagem a Inhorim (BH - 05/09/14 a 07/109/14',1,24,36,NULL,'42.pdf',2,'2020-11-25 12:05:22','2020-11-25 12:05:22'),(43,'Visita ao Parque das Ruínas RJ - 24/01/15)',15,24,12,NULL,'43.pdf',2,'2020-11-25 12:07:04','2020-11-25 12:07:04'),(44,'Visita ao Sitio Burle Marx (RJ - 23 e 24/03/2013)',15,24,24,NULL,'44.pdf',2,'2020-11-25 12:08:58','2020-11-25 12:08:58');
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
INSERT INTO `modalidades` VALUES (1,'Cursos extra-curriculares de interesse na área de formação (carga horária efetiva do curso)',120,'2020-08-18 13:12:36','2020-08-18 13:12:36'),(2,'Monitoria (20 horas por mês completo)',120,'2020-08-18 13:14:03','2020-08-18 13:14:03'),(3,'Participação em projetos de iniciação científica (20 horas por mês completo)',120,'2020-08-18 13:15:06','2020-08-18 13:15:06'),(4,'Capítulo de livro (80 horas por participação)',160,'2020-08-18 13:16:02','2020-08-18 13:16:02'),(5,'Publicações de artigos em anais de congresso (60 horas por publicação)',120,'2020-08-18 13:17:08','2020-08-18 13:17:08'),(6,'Publicações de artigo em outras fontes como boletins, jornais, etc. (40 horas por publicação)',80,'2020-08-18 13:18:18','2020-08-18 13:18:18'),(7,'Publicações de artigo em periódicos (80 horas por publicação)',160,'2020-08-18 13:18:52','2020-08-18 13:18:52'),(8,'Participação em eventos da área com apresentação oral (80 horas por apresentação)',160,'2020-08-18 13:20:54','2020-08-18 13:20:54'),(9,'Participação em eventos da área  com apresentação banner (40 horas por apresentação de banner)',80,'2020-08-18 13:21:50','2020-08-18 13:21:50'),(10,'Participação em eventos da área como ouvinte (carga horária efetiva da participação)',120,'2020-08-18 13:22:23','2020-08-18 13:22:23'),(11,'Apresentação em palestras (10 horas por apresentação)',40,'2020-08-18 13:23:01','2020-08-18 13:23:01'),(12,'Participação em projeto de extensão (20 horas por mês completo)',120,'2020-08-18 13:24:13','2020-08-18 13:44:53'),(13,'Participação em projeto de iniciação artística e cultural (20 horas por mês completo)',120,'2020-08-18 13:25:03','2020-08-18 13:25:03'),(14,'Participação em eventos artísticos, esportívos e/ou culturais (carga horária efetiva da participação)',120,'2020-08-18 13:27:26','2020-08-18 13:27:26'),(15,'Viagens de estudo acompanhadas por professores (12 horas por dia de viagem)',180,'2020-08-18 13:29:32','2020-08-18 13:29:32'),(16,'Viagens de estudos desacompanhadas por professores (6 horas por dia de viagem)',60,'2020-08-18 13:30:11','2020-08-18 13:30:11'),(17,'Participação na organização de eventos (carga horária efetiva da participação)',60,'2020-08-18 13:30:49','2020-08-18 13:30:49'),(18,'Participação na organização da semana acadêmica do Curso (carga horária efetiva da participação)',80,'2020-08-18 13:31:33','2020-08-18 13:31:33'),(19,'Apresentação de trabalhos em concursos (40 horas por apresentação)',120,'2020-08-18 13:32:19','2020-08-18 13:32:19'),(20,'Desenvolvimento de trabalho no escritório modelo (10 horas por mês de trabalho)',120,'2020-08-18 13:33:03','2020-08-18 13:33:03'),(21,'Participação em intercâmbio (10 horas por mês)',120,'2020-08-18 13:33:38','2020-08-18 13:33:38'),(22,'Bolsista de desenvolvimento acadêmico e apoio tecnológico (20 horas por pelo menos 1 semestre concluído)',120,'2020-08-18 13:35:28','2020-08-18 13:36:22'),(23,'Participação, como ouvinte, em bancas de monografias, dissertações e teses (2 horas por apresentação)',40,'2020-08-18 13:37:44','2020-08-18 13:45:53'),(24,'Participação em empresa júnior (20 horas por mês completo)',120,'2020-08-18 13:38:14','2020-08-18 13:44:21'),(25,'Participação na Semana do Saber Fazer Saber (carga horária efetiva da participação)',60,'2020-08-18 13:38:51','2020-08-18 13:38:51'),(26,'Representantes de turma (10 horas por semestre)',20,'2020-08-18 13:39:44','2020-08-18 13:39:44'),(27,'Membro de colegiado e conselhos universitários (40 horas por semestre)',80,'2020-08-18 13:40:37','2020-08-18 13:40:37'),(28,'Membro da direção de diretórios acadêmicos (40 horas por semestre)',80,'2020-08-18 13:41:15','2020-08-18 13:41:15');
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mjvamorim@gmail.com','$2a$10$mnem.5jLtZ1DcLQrXEZA5.yuQpMBnSjG56KZw5wZfDhWNKMk0tEPm',NULL,NULL,NULL,11,'2020-11-10 09:22:05','2020-10-15 09:18:33','177.47.131.108','10.15.0.50','2020-07-27 19:55:27','2020-11-10 09:22:05','Mauricio Amorim','9999.9.999.9999','Bacharelao em Sistemas de Informação','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'arqurb.centro@iff.edu.br','$2a$10$y6dceY0LwRWVnczFDo7/LeTo10mO1s3Fq18YF2eWnc5Yy3OLnV8kK',NULL,NULL,'2020-10-22 13:58:07',22,'2020-12-02 01:05:28','2020-11-25 10:25:57','200.143.198.42','181.221.75.178','2020-07-31 15:43:44','2020-12-02 01:05:28','Zander Ribeiro Pereira Filho','2069.8.67_.____','Arquitetura e Urbanismo','Administrador',NULL,'2020-09-14 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,'letsiqueirat@gmail.com','$2a$10$G3C4QrObfzlU16SLr4LO4eiaafN/PSWWGziYPX7Ms2hQs8ZLpw2Ze',NULL,NULL,NULL,2,'2020-10-20 12:16:13','2020-09-18 20:06:26','187.105.196.37','187.105.196.37','2020-09-18 20:06:26','2020-10-20 12:16:13','Letícia Siqueira Tavares Pinto','2016.2.117.0080','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(14,'andre.peixoto@iff.edu.br','$2a$10$Bz6c2FJix9aACNDuBbtOgeYqTK9p8nlxP3ls0bKRGK3d.xD5vsGj2',NULL,NULL,NULL,2,'2020-10-21 16:48:45','2020-10-20 12:18:16','177.47.139.205','177.47.139.205','2020-10-20 12:18:16','2020-10-21 16:48:45','André Luís Almeida Peixoto','2181.2.89_.____','Arquitetura e Urbanismo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(5,'hermeriojr@gmail.com','$2a$10$OHNsK/Gp7hVimQM5nVlVme5ZqnLi9E2jF1xKz/oMJQt5dLZHu86Km',NULL,NULL,NULL,1,'2020-10-14 10:24:59','2020-10-14 10:24:59','177.131.164.99','177.131.164.99','2020-10-14 10:24:59','2020-10-14 10:24:59','hermerio dos santos almeida júnior','2011.1.007.0134','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(6,'walnerferraz.arq@gmail.com','$2a$10$xcf5IaI8pLmW09PAQoC6muy2CytBDdF1l.yhXIY7wYBUTIXqVvnIS',NULL,NULL,'2020-10-14 22:45:48',2,'2020-10-14 22:45:48','2020-10-14 10:25:10','177.47.139.57','177.47.139.57','2020-10-14 10:25:10','2020-10-14 22:45:48','Walner Ferraz de Freitas','2016.1.117.0338','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'nicollesantos.ns@gmail.com','$2a$10$bhS1TnVte9BsaChs9pR2Nehh4VIBXHXB0Py7nDAKjS0IF6HoTz35i',NULL,NULL,NULL,1,'2020-10-14 10:27:02','2020-10-14 10:27:02','138.255.144.32','138.255.144.32','2020-10-14 10:27:02','2020-10-14 10:27:02','Nicolle Santos','2016.1.117.0320','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(8,'aliciazaccaro@yahoo.com.br','$2a$10$sxVtlEC8ckZpfku9RVS7Pead4NA8caP23ZONisrHaPwNX/OgrBDVu',NULL,NULL,NULL,1,'2020-10-14 10:27:06','2020-10-14 10:27:06','177.131.164.121','177.131.164.121','2020-10-14 10:27:06','2020-10-14 10:27:06','Alícia Rosa Zaccaro Cardoso','2016.1.117.0354','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(9,'bethiah.vicente.tavares@gmail.com','$2a$10$sKw9fb/PBciMQp9Acyaw7e9quWBe38My0ppbM9QSl./33OgDvMt2q',NULL,NULL,NULL,1,'2020-10-14 10:27:58','2020-10-14 10:27:58','45.226.119.210','45.226.119.210','2020-10-14 10:27:58','2020-10-14 10:27:58','Bethiah Vicente Tavares','2014.2.117.0370','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(10,'elisa.crispim@gsuite.iff.edu.br','$2a$10$VoWECywWuPDl7EoZcSWgpOmwlHnmOCQEvDQ8CY6BMZTynIfm6f7QG',NULL,NULL,NULL,1,'2020-10-14 10:28:48','2020-10-14 10:28:48','191.6.63.228','191.6.63.228','2020-10-14 10:28:48','2020-10-14 10:28:48','Elisa Araujo Crispim','2016.1.117.0044','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'mareanaavila@gmail.com','$2a$10$oUloSPjzC4qVjBdQA84wYuDXR6Y6iorp5Uewo/HtGmMFs94Aplyei',NULL,NULL,NULL,2,'2020-10-14 10:30:31','2020-10-14 10:28:50','186.237.241.250','186.237.241.250','2020-10-14 10:28:50','2020-10-14 10:30:31','Maryana Ávila Oliveira','2016.1.117.0010','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(12,'amanda.cunha@gsuite.iff.edu.br','$2a$10$gUo/dLWNdhqljL0QaVtxcOq6cBczFmjr0Q2f1xgKaeR4RWkx8e8Te',NULL,NULL,NULL,1,'2020-10-14 11:07:25','2020-10-14 11:07:25','186.194.54.180','186.194.54.180','2020-10-14 11:07:25','2020-10-14 11:07:25','Amanda de Oliveira Cunha ','2016.1.117.0036','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(13,'igormiranda80@gmail.com','$2a$10$fopNXx/MYypv0F9qS3jBd.xE/kFzZCg0aSBG4M0S5FRFcitDdnO1.',NULL,NULL,NULL,1,'2020-10-14 18:57:42','2020-10-14 18:57:42','131.100.242.210','131.100.242.210','2020-10-14 18:57:42','2020-10-14 18:57:42','Igor Miranda Monteiro de Oliveira ','2016.1.117.0249','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(15,'danielly.aliprandi@iff.edu.br','$2a$10$7c/IsElF4aABipL.RIqigueXeOoffeFs.6GNsuuNyB.l1DTJMHFo.',NULL,NULL,NULL,1,'2020-10-20 12:19:44','2020-10-20 12:19:44','187.113.72.17','187.113.72.17','2020-10-20 12:19:44','2020-10-20 12:19:44','Danielly Cozer Aliprandi','1833.9.71_.____','Arquitetura e Urbanismo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(16,'priscila.santiago@iff.edu.br','$2a$10$nCds.iLKC1WCgCAUuls6m.0kRfiTMc6NOWZEMF6pFgZqyjL.itZQ2',NULL,NULL,NULL,1,'2020-10-20 12:20:21','2020-10-20 12:20:21','190.180.172.146','190.180.172.146','2020-10-20 12:20:21','2020-10-20 12:20:21','Priscila de Almeida Cardoso Santiago','1937.3.31_.____','Arquitetura e Urbanismo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(17,'fagner.oliveira@iff.edu.br','$2a$10$JyDTEtpmN1k0iFtkk0ih1.l43U/HIeb/iul.x71iuAKmzn5lTEnqu',NULL,NULL,NULL,1,'2020-10-20 12:21:06','2020-10-20 12:21:06','45.226.119.12','45.226.119.12','2020-10-20 12:21:06','2020-10-20 12:21:06','Fagner das Neves','1971.8.21_.____','Arquitetura e Urbanismo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(18,'silvanacastro.arq@hotmail.com','$2a$10$gKyOV9PMjg/eo5lpKf2MtevGm7U0C3xApwcaRXvz3WhzNcIfnlADW',NULL,NULL,NULL,1,'2020-10-20 13:01:49','2020-10-20 13:01:49','187.105.234.243','187.105.234.243','2020-10-20 13:01:49','2020-10-20 13:01:49','Silvana Monteiro de Castro Carneiro','2720.2.57_.____','Arquitetura e Urbanismo','Administrador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(19,'arq14.leticiaoliveira@gmail.com','$2a$10$tbrunvf.tRJf7n2Yf6MW7.7oo.0gQJhvb3ENdNHRvvJ1Q97YYhaSq',NULL,NULL,NULL,1,'2020-10-21 07:32:03','2020-10-21 07:32:03','45.238.161.158','45.238.161.158','2020-10-21 07:32:03','2020-10-21 07:32:03','Letícia Mota de Oliveira','2016.1.117.0028','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,'alinecoutoarquitetura@gmail.com','$2a$10$Vkp6xAu6byfY47L2o.G4PedwZtHsCYqRztcC0yTmJghWaDB0D9Iya',NULL,NULL,NULL,1,'2020-10-22 14:03:52','2020-10-22 14:03:52','187.14.222.4','187.14.222.4','2020-10-22 14:03:52','2020-10-22 14:03:52','Aline Couto da Costa ','____._.___.____','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(22,'lfalcao@iff.edu.br','$2a$10$b9aUquF9tGeO7BD6g0L/oeff5uDW85Bu9f46Bu9mSslztBmTFgfOi',NULL,NULL,NULL,1,'2020-10-22 17:40:36','2020-10-22 17:40:36','177.47.133.61','177.47.133.61','2020-10-22 17:40:36','2020-10-22 17:40:36','Luciano Falcão da Silva','2571.4.10_.____','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(23,'simone.macedo@gsuite.iff.edu.br','$2a$10$lgwB3dsSkeXU30RkHP5Waujf/CO1qXqX/z1IElSA2pYR0BmIuvQAa',NULL,NULL,NULL,1,'2020-10-26 11:59:37','2020-10-26 11:59:37','181.221.85.242','181.221.85.242','2020-10-26 11:59:37','2020-10-26 11:59:37','Simone da Hora Macedo','9926.3.7__.____','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(24,'ayeny.castro@gsuite.iff.edu.br','$2a$10$PtSDgHudyzdpCAa/AHP4o.RZtjPDyg68DA5k9HtTPKJVui6Yl3SR.',NULL,NULL,NULL,1,'2020-11-25 11:29:03','2020-11-25 11:29:03','187.105.220.205','187.105.220.205','2020-11-25 11:29:02','2020-11-25 11:29:03','Ayeny Gonçalves de Castro','2010.2.117.0054','Arquitetura e Urbanismo','Aluno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
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

-- Dump completed on 2020-12-01 22:17:43
