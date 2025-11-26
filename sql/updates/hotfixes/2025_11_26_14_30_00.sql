DROP TABLE IF EXISTS `pvp_tier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pvp_tier` (
  `Name` text,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MinRating` smallint NOT NULL DEFAULT '0',
  `MaxRating` smallint NOT NULL DEFAULT '0',
  `PrevTier` int NOT NULL DEFAULT '0',
  `NextTier` int NOT NULL DEFAULT '0',
  `BracketID` tinyint NOT NULL DEFAULT '0',
  `Rank` tinyint NOT NULL DEFAULT '0',
  `RankIconFileDataID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvp_tier`
--

LOCK TABLES `pvp_tier` WRITE;
/*!40000 ALTER TABLE `pvp_tier` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvp_tier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvp_tier_locale`
--

DROP TABLE IF EXISTS `pvp_tier_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pvp_tier_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvp_tier_locale`
--

LOCK TABLES `pvp_tier_locale` WRITE;
/*!40000 ALTER TABLE `pvp_tier_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvp_tier_locale` ENABLE KEYS */;
UNLOCK TABLES;