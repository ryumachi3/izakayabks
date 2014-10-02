-- MySQL dump 10.13  Distrib 5.5.34, for Linux (x86_64)
--
-- Host: localhost    Database: izakaya
-- ------------------------------------------------------
-- Server version	5.5.34

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
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES ('#ffdead'),('#c0c0c0'),('#f0f8ff'),('#4169e1'),('#0000cd'),('#0000ff'),('#1e90ff'),('#6495ed'),('#00bfff'),('#87cefa'),('#87ceeb'),('#add8e6'),('#b0e0e6'),('#afeeee'),('#e0ffff'),('#00ffff'),('#40e0d0'),('#00ced1'),('#20b2aa'),('#008b8b'),('#008000'),('#228b22'),('#3cb371'),('#66cdaa'),('#7fffd4'),('#98fb98'),('#90ee90'),('#00ff7f'),('#7cfc00'),('#adff2f'),('#00ff00'),('#32cd32'),('#9acd32'),('#ffff00'),('#ffd700'),('#ffa500'),('#f4a460'),('#ff8c00'),('#daa520'),('#d2691e'),('#f08080'),('#fa8072'),('#ffa07a'),('#ff7f50'),('#ff6347'),('#ff4500'),('#ff0000'),('#c71585'),('#ff1493'),('#ff69b4'),('#ffc0cb'),('#ffb6c1'),('#ff00ff'),('#ee82ee'),('#da70d6'),('#ba55d3'),('#9370db'),('#7b68ee');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'居酒屋','2013-11-27 15:10:58','2013-11-27 15:10:58'),(2,'ダイニング','2013-11-27 15:10:58','2013-11-27 15:10:58'),(3,'創作料理','2013-11-27 15:10:58','2013-11-27 15:10:58'),(4,'バー','2013-11-27 15:10:58','2013-11-27 15:10:58'),(5,'和食','2013-11-27 15:10:58','2013-11-27 15:10:58'),(6,'焼き鳥','2013-11-27 15:10:58','2013-11-27 15:10:58'),(7,'鳥料理','2013-11-27 15:10:58','2013-11-27 15:10:58'),(8,'串揚げ','2013-11-27 15:10:58','2013-11-27 15:10:58'),(9,'鉄板焼き','2013-11-27 15:10:58','2013-11-27 15:10:58'),(10,'ワイン','2013-11-27 15:10:58','2013-11-27 15:10:58'),(11,'鍋','2013-11-27 15:10:58','2013-11-27 15:10:58'),(12,'しゃぶしゃぶ','2013-11-27 15:10:58','2013-11-27 15:10:58'),(13,'すき焼き','2013-11-27 15:10:58','2013-11-27 15:10:58'),(14,'もつ鍋','2013-11-27 15:10:58','2013-11-27 15:10:58');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres_osusumes`
--

DROP TABLE IF EXISTS `genres_osusumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres_osusumes` (
  `osusume_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres_osusumes`
--

LOCK TABLES `genres_osusumes` WRITE;
/*!40000 ALTER TABLE `genres_osusumes` DISABLE KEYS */;
INSERT INTO `genres_osusumes` VALUES (1,1),(1,2),(1,10),(6,1),(6,3),(7,1),(7,3),(8,5),(9,1),(9,5),(10,1),(11,1),(12,1),(12,6),(13,1),(13,14);
/*!40000 ALTER TABLE `genres_osusumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres_shops`
--

DROP TABLE IF EXISTS `genres_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres_shops` (
  `shop_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres_shops`
--

LOCK TABLES `genres_shops` WRITE;
/*!40000 ALTER TABLE `genres_shops` DISABLE KEYS */;
INSERT INTO `genres_shops` VALUES (3,1),(4,1),(4,5),(5,1),(5,2),(5,3),(8,1),(8,7),(8,11),(9,1),(9,6),(11,1),(11,7),(12,1),(13,5),(14,1),(15,1),(16,1),(16,3),(17,1),(17,3);
/*!40000 ALTER TABLE `genres_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kuchikomis`
--

DROP TABLE IF EXISTS `kuchikomis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kuchikomis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kuchi_person_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hyouka` int(11) DEFAULT NULL,
  `kuchi_text` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuchikomis`
--

LOCK TABLES `kuchikomis` WRITE;
/*!40000 ALTER TABLE `kuchikomis` DISABLE KEYS */;
INSERT INTO `kuchikomis` VALUES (3,'3','梅野',4,'メンチカツがおいしかったです！','2013-12-09 00:17:44','2013-12-09 00:17:44'),(5,'4','梅野',4,'ボリュームがあり満足でした。','2013-12-26 00:39:15','2013-12-26 00:39:15'),(6,'5','梅野',4,'狭かったです。\r\nおしゃれな雰囲気','2013-12-26 00:44:52','2013-12-26 00:44:52'),(9,'8','梅野',5,'全部おいしかったです！\r\n店員さんにおすすめされた丸鶏煮込みもとってもおいしい～','2014-02-03 23:10:07','2014-02-03 23:10:07'),(11,'8','やぎ',NULL,'とてもおいしかた','2014-03-26 11:53:56','2014-03-26 11:53:56'),(12,'9','まつい',NULL,'全ドリンク88円でした','2014-03-26 12:08:22','2014-03-26 12:08:22'),(13,'9','おおつか',5,'閉店しました。','2014-03-26 12:58:07','2014-03-26 12:58:07'),(14,'9','やぎ',4,'こ','2014-03-28 02:00:10','2014-03-28 02:00:10'),(15,'11','おおつか',5,'ボトルが2本あるよ。','2014-04-14 12:08:30','2014-04-14 12:08:30'),(16,'11','梅野',5,'鳥たたきと親どりがおすすめ','2014-04-19 12:45:04','2014-04-19 12:45:04'),(17,'13','うめのりょういち',4,'カレーがよい','2014-04-26 15:03:35','2014-04-26 15:03:35'),(18,'16','梅野',4,'落ち着いた大人っぽい雰囲気のお店です。','2014-05-28 13:44:36','2014-05-28 13:44:36');
/*!40000 ALTER TABLE `kuchikomis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moyori_stations`
--

DROP TABLE IF EXISTS `moyori_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moyori_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stationname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moyori_stations`
--

LOCK TABLES `moyori_stations` WRITE;
/*!40000 ALTER TABLE `moyori_stations` DISABLE KEYS */;
INSERT INTO `moyori_stations` VALUES (1,'岡山駅','2013-11-27 15:10:58','2013-11-27 15:10:58'),(2,'倉敷駅','2013-11-27 15:10:58','2013-11-27 15:10:58'),(3,'中庄駅','2013-11-27 15:10:58','2013-11-27 15:10:58'),(4,'その他','2013-11-27 15:10:58','2013-11-27 15:10:58');
/*!40000 ALTER TABLE `moyori_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osusumes`
--

DROP TABLE IF EXISTS `osusumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osusumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shopname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moyori_station_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yosa_count` int(11) NOT NULL DEFAULT '0',
  `memo` text COLLATE utf8_unicode_ci,
  `kojin_hyouka` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osusumes`
--

LOCK TABLES `osusumes` WRITE;
/*!40000 ALTER TABLE `osusumes` DISABLE KEYS */;
INSERT INTO `osusumes` VALUES (1,'http://tabelog.com/okayama/A3301/A330101/33009997/','アグラダイニング','1',1,'お洒落な雰囲気でごはんもおいしくておすすめです！値段もリーズナブル',5,'2014-04-27 10:30:03','2014-04-27 14:57:35',1),(6,'http://r.gnavi.co.jp/ctctagxw0000/','一っ家','1',0,'店員さんが親切でいい感じでした。ごはんもおいしい',4,'2014-05-20 14:34:24','2014-05-20 14:34:24',1),(7,'http://s.tabelog.com/okayama/A3301/A330101/33000627/','わびすけ','1',4,'メニューが豊富です。飲み物の種類もたくさんあるので飽きないです。',4,'2014-05-20 14:43:46','2014-05-21 05:45:52',1),(8,'http://www.kyubey.jp','銀座久兵衛','4',0,'回らないです。',5,'2014-05-21 05:50:11','2014-05-21 05:54:17',6),(9,'http://s.tabelog.com/okayama/A3301/A330101/33006757/','おばんざい 日和り','1',0,'席数は少ないけどご飯が美味しくておすすめです。',5,'2014-05-21 05:52:52','2014-05-21 05:52:52',8),(10,'http://www.hotpepper.jp/strJ000861856/','浪花屋　鳥造　倉敷駅前店','2',2,'ちょー美味しい。\r\n鶏もも肉のたたきと親鳥の炭火焼きを食べましょう。',5,'2014-05-21 05:53:38','2014-07-14 03:10:32',4),(11,'http://tabelog.com/okayama/A3302/A330201/33006053/','養老乃瀧','3',1,'リーズナフルで\r\n庶民的！',3,'2014-05-21 05:54:38','2014-05-21 08:01:24',7),(12,'http://loco.yahoo.co.jp/place/7d85714c9e661925ba8f64aee68e649191149d3a/','八剣伝','1',3,'おいしい',4,'2014-05-21 08:00:58','2014-05-21 08:01:16',9),(13,'http://tabelog.com/osaka/A2701/A270102/27001418/','淀屋','4',4,'ほんしゃからすぐ',4,'2014-05-21 08:05:38','2014-09-19 15:19:46',11);
/*!40000 ALTER TABLE `osusumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osusumes_tags`
--

DROP TABLE IF EXISTS `osusumes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osusumes_tags` (
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `osusume_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osusumes_tags`
--

LOCK TABLES `osusumes_tags` WRITE;
/*!40000 ALTER TABLE `osusumes_tags` DISABLE KEYS */;
INSERT INTO `osusumes_tags` VALUES ('寿司',8),('安い',12);
/*!40000 ALTER TABLE `osusumes_tags` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20130807074440'),('20130807075450'),('20130807081013'),('20130807081049'),('20130807081238'),('20130807081352'),('20130807081635'),('20130807081903'),('20130807082159'),('20130908183906'),('20130908185720'),('20130925125642'),('20131014173736'),('20131020082801'),('20131104110416'),('20140119141633'),('20140119144012'),('20140119144211'),('20140202145751'),('20140202152254'),('20140208112804'),('20140212082658'),('20140214151018'),('20140309210937'),('20140309211645'),('20140309212652'),('20140316084622'),('20140316084854'),('20140321231131'),('20140324221503');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shopname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moyori_station_id` int(11) DEFAULT NULL,
  `yoka_count` int(11) NOT NULL DEFAULT '0',
  `kaisya_flag` int(11) DEFAULT NULL,
  `osusume_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8_unicode_ci,
  `kojin_hyouka` int(11) DEFAULT NULL,
  `yosa_count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `heikin_hyouka` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (3,'http://www.yoronotaki.co.jp/seach/detail.php?fid=1&cno=4150','養老乃瀧 中庄店',3,1,1,NULL,NULL,NULL,0,'2013-12-09 00:17:16','2014-03-28 02:00:48',4),(4,'http://tabelog.com/okayama/A3302/A330201/33001013/','うを勢',2,1,1,NULL,NULL,NULL,0,'2013-12-26 00:38:49','2013-12-26 00:40:54',4),(5,'http://tabelog.com/okayama/A3301/A330101/33001675/','来恩DK',1,1,1,NULL,NULL,NULL,0,'2013-12-26 00:43:14','2013-12-26 00:44:53',4),(8,'丸屋予約しました。 (カウhttp://okakomi.com/index.php?mode=disp_rumor&category=gourmet&id=5520','丸屋',1,3,1,NULL,NULL,NULL,0,'2014-02-03 23:08:14','2014-03-26 11:47:06',5),(9,'http://tabelog.com/okayama/A3301/A330101/33007385/','八剣伝 幸町店',1,3,1,NULL,NULL,NULL,0,'2014-03-26 12:07:32','2014-03-28 02:00:10',4.5),(11,'http://r.gnavi.co.jp/nucd60p60000/','浪花屋 鳥造 岡山店',1,3,1,NULL,NULL,NULL,0,'2014-03-29 05:23:20','2014-05-21 08:01:37',5),(12,'http://www.hotpepper.jp/strJ000839297/','かまどか　岡山店',1,0,1,NULL,NULL,NULL,0,'2014-04-08 13:47:28','2014-04-08 13:47:28',NULL),(13,'わからない','かつざと',1,0,1,NULL,NULL,NULL,0,'2014-04-14 12:09:06','2014-04-26 15:03:35',4),(14,'http://www.hotpepper.jp/strJ000029490/','べんがら酒場',1,1,1,NULL,NULL,NULL,0,'2014-04-18 03:15:02','2014-05-21 08:06:27',NULL),(15,'http://www.hotpepper.jp/strJ000032758/','日本海庄や　岡山駅前店',1,2,1,NULL,NULL,NULL,0,'2014-04-18 03:17:57','2014-05-21 08:06:19',NULL),(16,'http://s.tabelog.com/okayama/A3301/A330101/33002266/#rst-data-head','久和(ひさわ)',1,0,1,NULL,NULL,NULL,0,'2014-05-28 13:43:05','2014-05-28 13:44:36',4),(17,'http://www.google.co.jp/url?url=http://tabelog.com/okayama/A3301/A330101/33010219/&rct=j&frm=1&q=&esrc=s&sa=U&ei=qUnDU-OzPJHk8AX05IG4AQ&ved=0CBcQFjAA&sig2=BF5iJUerddo8eB2W6q44Hw&usg=AFQjCNHG1qOD6BOZqqKaayUtSsLVfDR7nQ','津山城下町-KITAYAMA- ',1,0,1,NULL,NULL,NULL,0,'2014-07-14 03:09:20','2014-07-14 03:09:20',NULL);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops_tags`
--

DROP TABLE IF EXISTS `shops_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops_tags` (
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops_tags`
--

LOCK TABLES `shops_tags` WRITE;
/*!40000 ALTER TABLE `shops_tags` DISABLE KEYS */;
INSERT INTO `shops_tags` VALUES ('串焼き',16);
/*!40000 ALTER TABLE `shops_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsubuyakis`
--

DROP TABLE IF EXISTS `tsubuyakis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsubuyakis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `osusume_id` int(11) DEFAULT NULL,
  `tsubu_text` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsubuyakis`
--

LOCK TABLES `tsubuyakis` WRITE;
/*!40000 ALTER TABLE `tsubuyakis` DISABLE KEYS */;
INSERT INTO `tsubuyakis` VALUES (2,12,'いってみたいです','2014-05-21 08:01:43','2014-05-21 08:01:43',1),(3,13,'バカスおでんはサイコーです！','2014-05-21 23:40:06','2014-05-21 23:40:06',12);
/*!40000 ALTER TABLE `tsubuyakis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_rirekis`
--

DROP TABLE IF EXISTS `use_rirekis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use_rirekis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `use_day` date DEFAULT NULL,
  `use_event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_number` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_use_rirekis_on_shop_id` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_rirekis`
--

LOCK TABLES `use_rirekis` WRITE;
/*!40000 ALTER TABLE `use_rirekis` DISABLE KEYS */;
INSERT INTO `use_rirekis` VALUES (4,'2013-04-12','アトラス交流会2013',15,'2013-12-09 00:17:16','2013-12-09 00:17:16',3),(7,'2013-12-14','アトラス忘年会2013',20,'2013-12-26 00:38:49','2013-12-26 00:38:49',4),(8,'2013-12-20','OSKシス機忘年会2013',15,'2013-12-26 00:43:14','2013-12-26 00:43:14',5),(12,'2014-02-01','webスキルアップ計画打ち上げ',3,'2014-02-03 23:08:14','2014-02-03 23:08:14',8),(13,'2014-03-20','ATMSS Step2 懇親会',4,'2014-03-26 12:07:32','2014-03-26 12:07:32',9),(15,'2014-03-28','懇親会',10,'2014-03-29 05:23:20','2014-03-29 05:23:20',11),(16,'2014-04-04','歓迎会',30,'2014-04-08 13:47:28','2014-04-08 13:47:28',12),(17,'2014-04-04','二次会',10,'2014-04-08 13:47:56','2014-04-08 13:47:56',11),(18,'2014-04-14','丼パ',15,'2014-04-14 12:09:06','2014-04-14 12:09:06',13),(19,'2014-04-15','説明会打上げ',4,'2014-04-16 16:41:38','2014-04-16 16:41:38',11),(21,'2014-04-11','懇親会',4,'2014-04-18 03:15:02','2014-04-18 03:15:02',14),(22,'2014-04-15','二次会',4,'2014-04-18 03:17:57','2014-04-18 03:17:57',15),(23,'2014-04-18','懇親会',10,'2014-04-19 12:41:42','2014-04-19 12:41:42',11),(25,'2014-04-28','定例会',10,'2014-04-30 06:15:52','2014-04-30 06:15:52',11),(26,'2014-05-07','松村さん歓迎会',10,'2014-05-07 11:46:53','2014-05-07 11:46:53',11),(27,'2014-05-15','定例会',3,'2014-05-21 02:39:32','2014-05-21 02:39:32',11),(28,'2014-05-23','定例会',4,'2014-05-25 10:41:43','2014-05-25 10:41:43',11),(29,'2014-05-28','古川さん送別会',15,'2014-05-28 13:43:05','2014-05-28 13:43:05',16),(30,'2014-06-20','懇親会',15,'2014-06-23 08:29:02','2014-06-23 08:29:02',11),(31,'2014-07-04','ボウリング後',10,'2014-07-05 09:39:22','2014-07-05 09:39:22',11),(32,'2014-07-11','歓迎会',15,'2014-07-14 03:09:20','2014-07-14 03:09:20',17),(34,'2014-07-18','アトラスボーナス日',10,'2014-07-24 14:35:36','2014-07-24 14:35:36',11);
/*!40000 ALTER TABLE `use_rirekis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'梅野','#ffff00','2014-04-27 10:25:37','2014-04-27 17:05:19'),(4,'おおつか','#00ced1','2014-04-28 11:42:59','2014-05-21 07:57:50'),(5,'まつい','#7cfc00','2014-04-30 06:14:33','2014-04-30 06:14:41'),(6,'八木もとひろ','#d2691e','2014-05-21 05:39:49','2014-05-21 05:39:49'),(7,'ひよし','#1e90ff','2014-05-21 05:45:51','2014-06-14 02:41:45'),(8,'しのはら','#00bfff','2014-05-21 05:47:45','2014-05-21 05:47:45'),(9,'おおらい','#ff0000','2014-05-21 07:59:01','2014-05-21 09:02:55'),(10,'まるお','#32cd32','2014-05-21 07:59:55','2014-05-21 07:59:55'),(11,'やせ','#00ffff','2014-05-21 08:00:08','2014-05-21 08:00:08'),(12,'ふじい','#00ff7f','2014-05-21 08:08:50','2014-05-21 08:08:50');
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

-- Dump completed on 2014-10-02  2:48:56
