DROP TABLE IF EXISTS `group_finder_activity`;
CREATE TABLE IF NOT EXISTS `group_finder_activity` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FullName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ShortName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `GroupFinderCategoryID` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint NOT NULL DEFAULT '0',
  `GroupFinderActivityGrpID` smallint unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLevelSuggestion` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `MinGearLevelSuggestion` smallint unsigned NOT NULL DEFAULT '0',
  `MapID` smallint unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `AreaID` smallint unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint unsigned NOT NULL DEFAULT '0',
  `DisplayType` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `group_finder_activity_grp`;
CREATE TABLE IF NOT EXISTS `group_finder_activity_grp` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `group_finder_activity_grp_locale`;
CREATE TABLE IF NOT EXISTS `group_finder_activity_grp_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Struktúra mentése tábla hotfixes. group_finder_activity_locale
DROP TABLE IF EXISTS `group_finder_activity_locale`;
CREATE TABLE IF NOT EXISTS `group_finder_activity_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FullName_lang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ShortName_lang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Struktúra mentése tábla hotfixes. group_finder_category
DROP TABLE IF EXISTS `group_finder_category`;
CREATE TABLE IF NOT EXISTS `group_finder_category` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Struktúra mentése tábla hotfixes. group_finder_category_locale
DROP TABLE IF EXISTS `group_finder_category_locale`;
CREATE TABLE IF NOT EXISTS `group_finder_category_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
