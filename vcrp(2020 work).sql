/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vcrp

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-10-17 13:54:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `aksesuarlar`
-- ----------------------------
DROP TABLE IF EXISTS `aksesuarlar`;
CREATE TABLE `aksesuarlar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sahip` int(6) NOT NULL DEFAULT 0,
  `ModelID` int(11) NOT NULL DEFAULT 0,
  `Bone` int(4) NOT NULL DEFAULT 0,
  `PosX` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `PosY` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `PosZ` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `RotX` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `RotY` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `RotZ` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `ScaX` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `ScaY` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `ScaZ` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `Renk` varchar(32) COLLATE utf8_turkish_ci NOT NULL DEFAULT '-1',
  `Kullanim` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aksesuarlar
-- ----------------------------

-- ----------------------------
-- Table structure for `api_paywant`
-- ----------------------------
DROP TABLE IF EXISTS `api_paywant`;
CREATE TABLE `api_paywant` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiparisID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `ReturnData` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Status` int(11) NOT NULL,
  `OdemeKanali` tinyint(4) NOT NULL,
  `OdemeTutari` double NOT NULL,
  `NetKazanc` double NOT NULL,
  `ExtraData` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Tarih` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of api_paywant
-- ----------------------------

-- ----------------------------
-- Table structure for `araccezalari`
-- ----------------------------
DROP TABLE IF EXISTS `araccezalari`;
CREATE TABLE `araccezalari` (
  `cezaID` int(11) NOT NULL AUTO_INCREMENT,
  `aracPlaka` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `cezaKesen` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `cezaUcret` int(11) NOT NULL,
  `cezaTarih` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `cezaSebep` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `cezaOdendi` int(11) NOT NULL,
  PRIMARY KEY (`cezaID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of araccezalari
-- ----------------------------

-- ----------------------------
-- Table structure for `aracekinler`
-- ----------------------------
DROP TABLE IF EXISTS `aracekinler`;
CREATE TABLE `aracekinler` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `aracid` int(11) NOT NULL,
  `ekintur` int(11) NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aracekinler
-- ----------------------------

-- ----------------------------
-- Table structure for `araclar`
-- ----------------------------
DROP TABLE IF EXISTS `araclar`;
CREATE TABLE `araclar` (
  `aracID` int(11) NOT NULL AUTO_INCREMENT,
  `aracModel` int(3) NOT NULL DEFAULT 0,
  `aracPlaka` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aracSahip` int(11) NOT NULL DEFAULT 0,
  `aracOzelPlaka` int(1) NOT NULL DEFAULT 0,
  `kilitseviye` int(2) NOT NULL DEFAULT 0,
  `alarmseviye` int(2) NOT NULL DEFAULT 0,
  `aracSigorta` int(2) NOT NULL DEFAULT 0,
  `araccalintisure` int(3) NOT NULL DEFAULT 0,
  `aracPosX` float NOT NULL,
  `aracPosY` float NOT NULL,
  `aracPosZ` float NOT NULL,
  `aracPosR` float NOT NULL,
  `aracRenk1` int(3) NOT NULL DEFAULT 0,
  `aracRenk2` int(3) NOT NULL DEFAULT 0,
  `aracPaintjob` int(11) NOT NULL,
  `aracKilit` int(1) NOT NULL DEFAULT 0,
  `aracBirlik` int(11) NOT NULL DEFAULT 0,
  `aracYazi` varchar(128) COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `aracTur` int(11) NOT NULL DEFAULT 0,
  `Anahtar` int(11) NOT NULL DEFAULT 0,
  `Kiralik` int(3) NOT NULL DEFAULT 0,
  `KiraZaman` int(11) NOT NULL DEFAULT 0,
  `KiraUcret` int(11) NOT NULL DEFAULT 0,
  `aracWorld` int(11) NOT NULL DEFAULT 0,
  `aracInt` int(11) NOT NULL DEFAULT 0,
  `aracMeslek` int(2) NOT NULL DEFAULT 0,
  `aracKM` float NOT NULL DEFAULT 0,
  `aracBenzin` float NOT NULL DEFAULT 100,
  `aracFiyat` int(11) NOT NULL,
  `aracVergi` int(11) NOT NULL,
  `aracCeza` int(11) NOT NULL,
  `aSlot1` int(11) NOT NULL,
  `aSlot2` int(11) NOT NULL,
  `aSlot3` int(11) NOT NULL,
  `aSlot4` int(11) NOT NULL,
  `aSlot1Var` int(11) NOT NULL,
  `aSlot2Var` int(11) NOT NULL,
  `aSlot3Var` int(11) NOT NULL,
  `aSlot4Var` int(11) NOT NULL,
  `Parca_0` int(11) NOT NULL DEFAULT 0,
  `Parca_1` int(11) NOT NULL DEFAULT 0,
  `Parca_2` int(11) NOT NULL DEFAULT 0,
  `Parca_3` int(11) NOT NULL DEFAULT 0,
  `Parca_4` int(11) NOT NULL DEFAULT 0,
  `Parca_5` int(11) NOT NULL DEFAULT 0,
  `Parca_6` int(11) NOT NULL DEFAULT 0,
  `Parca_7` int(11) NOT NULL DEFAULT 0,
  `Parca_8` int(11) NOT NULL DEFAULT 0,
  `Parca_9` int(11) NOT NULL DEFAULT 0,
  `Parca_10` int(11) NOT NULL DEFAULT 0,
  `Parca_11` int(11) NOT NULL DEFAULT 0,
  `Parca_12` int(11) NOT NULL DEFAULT 0,
  `Parca_13` int(11) NOT NULL DEFAULT 0,
  `Parca_14` int(11) NOT NULL,
  `aracFirma` int(11) NOT NULL DEFAULT -1,
  `araccan` float NOT NULL,
  `aranma` int(11) NOT NULL,
  PRIMARY KEY (`aracID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of araclar
-- ----------------------------
INSERT INTO `araclar` VALUES ('1', '411', 'EM8 U001', '1', '0', '0', '0', '5', '0', '1118.4', '-1428.87', '15.7969', '315.249', '3', '1', '-1', '0', '-1', '', '0', '-1', '0', '0', '0', '0', '0', '-1', '1.18', '74.1', '360000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '1000', '0');
INSERT INTO `araclar` VALUES ('2', '411', 'IN1 F002', '1', '0', '0', '0', '5', '0', '1788.37', '2221.1', '4.325', '48.8358', '29', '79', '-1', '0', '-1', '', '0', '-1', '0', '0', '0', '0', '0', '-1', '0.57', '80', '360000', '0', '0', '31', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '1000', '0');
INSERT INTO `araclar` VALUES ('3', '560', 'HZ4 C003', '0', '0', '0', '0', '5', '0', '1789.19', '2219.93', '4.5615', '162.309', '0', '0', '-1', '0', '-1', '', '0', '-1', '0', '0', '0', '0', '0', '-1', '1.38', '70.88', '125000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '432', '0');

-- ----------------------------
-- Table structure for `arsalar`
-- ----------------------------
DROP TABLE IF EXISTS `arsalar`;
CREATE TABLE `arsalar` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `minx` float NOT NULL,
  `miny` float NOT NULL,
  `maxx` float NOT NULL,
  `maxy` float NOT NULL,
  `sahip` varchar(24) COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `para` int(11) NOT NULL,
  `kasa` int(11) NOT NULL,
  `urun` int(11) NOT NULL,
  `olgunlasma` int(11) NOT NULL,
  `SahipID` int(11) NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of arsalar
-- ----------------------------

-- ----------------------------
-- Table structure for `atelefon`
-- ----------------------------
DROP TABLE IF EXISTS `atelefon`;
CREATE TABLE `atelefon` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `numara` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of atelefon
-- ----------------------------

-- ----------------------------
-- Table structure for `atm`
-- ----------------------------
DROP TABLE IF EXISTS `atm`;
CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL AUTO_INCREMENT,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL DEFAULT 0,
  `atmWorld` int(11) NOT NULL DEFAULT 0,
  `atmPara` int(11) NOT NULL DEFAULT 1000,
  PRIMARY KEY (`atmID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of atm
-- ----------------------------

-- ----------------------------
-- Table structure for `bagaj`
-- ----------------------------
DROP TABLE IF EXISTS `bagaj`;
CREATE TABLE `bagaj` (
  `esyaID` int(6) NOT NULL AUTO_INCREMENT,
  `esyaIsim` varchar(64) COLLATE utf8_turkish_ci DEFAULT NULL,
  `esyaAdet` int(6) NOT NULL DEFAULT 0,
  `esyaArac` int(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`esyaID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bagaj
-- ----------------------------

-- ----------------------------
-- Table structure for `basvuru`
-- ----------------------------
DROP TABLE IF EXISTS `basvuru`;
CREATE TABLE `basvuru` (
  `forumid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karakter_adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `boy` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `kilo` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `gozrengi` text COLLATE utf8_turkish_ci NOT NULL,
  `tenrengi` mediumtext COLLATE utf8_turkish_ci NOT NULL,
  `sacrengi` text COLLATE utf8_turkish_ci NOT NULL,
  `ozgecmis` mediumtext COLLATE utf8_turkish_ci NOT NULL,
  `ozgecmis2` mediumtext COLLATE utf8_turkish_ci NOT NULL,
  `forumadi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `referans` text COLLATE utf8_turkish_ci NOT NULL,
  `vesikalik` text COLLATE utf8_turkish_ci NOT NULL,
  `disgorunus` text COLLATE utf8_turkish_ci NOT NULL,
  `sonbildiri` text COLLATE utf8_turkish_ci NOT NULL,
  `soru1` varchar(10000) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soru2` varchar(10000) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soru3` varchar(1000) COLLATE utf8_turkish_ci NOT NULL,
  `soru4` text COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_tarihi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1260 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of basvuru
-- ----------------------------

-- ----------------------------
-- Table structure for `benzinpompalari`
-- ----------------------------
DROP TABLE IF EXISTS `benzinpompalari`;
CREATE TABLE `benzinpompalari` (
  `pompaID` int(3) NOT NULL AUTO_INCREMENT,
  `pompaIsyeri` int(6) NOT NULL DEFAULT 0,
  `pompaPosX` float NOT NULL,
  `pompaPosY` float NOT NULL,
  `pompaPosZ` float NOT NULL,
  `pompaPosA` float NOT NULL,
  `pompaBenzin` int(5) NOT NULL DEFAULT 0,
  `pompaUcret` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pompaID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of benzinpompalari
-- ----------------------------

-- ----------------------------
-- Table structure for `binalar`
-- ----------------------------
DROP TABLE IF EXISTS `binalar`;
CREATE TABLE `binalar` (
  `bID` int(11) NOT NULL AUTO_INCREMENT,
  `binaAdi` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bPosX` float NOT NULL,
  `bPosY` float NOT NULL,
  `bPosZ` float NOT NULL,
  `bPosA` float NOT NULL,
  `bIPosX` float NOT NULL,
  `bIPosY` float NOT NULL,
  `bIPosZ` float NOT NULL,
  `bIPosA` float NOT NULL,
  `bInterior` int(11) NOT NULL,
  `bVW` int(11) NOT NULL,
  `bDisVW` int(11) NOT NULL,
  `bDisInt` int(11) NOT NULL,
  `binaModel` int(11) NOT NULL,
  `binaDurum` int(11) NOT NULL DEFAULT 1,
  `binaTur` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of binalar
-- ----------------------------

-- ----------------------------
-- Table structure for `birimler`
-- ----------------------------
DROP TABLE IF EXISTS `birimler`;
CREATE TABLE `birimler` (
  `birimID` int(11) NOT NULL AUTO_INCREMENT,
  `birimAd` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `birimTur` int(3) NOT NULL DEFAULT 0,
  `birimBirlik` int(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`birimID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of birimler
-- ----------------------------

-- ----------------------------
-- Table structure for `birlikler`
-- ----------------------------
DROP TABLE IF EXISTS `birlikler`;
CREATE TABLE `birlikler` (
  `birlikID` int(12) NOT NULL,
  `birlikAd` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `birlikKisaltma` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Bilinmiyor',
  `birlikMaksRutbe` int(11) NOT NULL DEFAULT 10,
  `BirlikAmaci` int(3) NOT NULL DEFAULT 0,
  `bDolapX` float NOT NULL,
  `bDolapY` float NOT NULL,
  `bDolapZ` float NOT NULL,
  `bDolapInt` int(11) NOT NULL,
  `bDolapVW` int(11) NOT NULL,
  `birlikTur` int(3) NOT NULL,
  `birlikRutbe1` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe2` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe3` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe4` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe5` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe6` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe7` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe8` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe9` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe10` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe11` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe12` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe13` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe14` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe15` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe16` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe17` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe18` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe19` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `birlikRutbe20` varchar(32) NOT NULL DEFAULT 'Yok',
  `oDurum` int(1) NOT NULL DEFAULT 1,
  `Level` int(1) NOT NULL DEFAULT 1,
  `Duyuru` varchar(48) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `BirlikAraci` int(6) NOT NULL DEFAULT 0,
  `BirlikIsyeri` int(6) NOT NULL DEFAULT 0,
  `birlikKurulus` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `birlikOnay` int(1) NOT NULL DEFAULT 1,
  `birlikKurucu` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `uyeSayisi` int(11) NOT NULL DEFAULT 0,
  `birlikKonu` mediumtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`birlikID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of birlikler
-- ----------------------------

-- ----------------------------
-- Table structure for `bolgeler`
-- ----------------------------
DROP TABLE IF EXISTS `bolgeler`;
CREATE TABLE `bolgeler` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `minx` float NOT NULL,
  `miny` float NOT NULL,
  `maxx` float NOT NULL,
  `maxy` float NOT NULL,
  `birlik` int(11) NOT NULL,
  `renk` int(11) NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bolgeler
-- ----------------------------

-- ----------------------------
-- Table structure for `bolokayitlari`
-- ----------------------------
DROP TABLE IF EXISTS `bolokayitlari`;
CREATE TABLE `bolokayitlari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memur` varchar(32) NOT NULL,
  `bolo` varchar(130) NOT NULL,
  `tarih` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bolokayitlari
-- ----------------------------

-- ----------------------------
-- Table structure for `cekilis`
-- ----------------------------
DROP TABLE IF EXISTS `cekilis`;
CREATE TABLE `cekilis` (
  `forumid` int(11) NOT NULL,
  `ik` text COLLATE utf8_turkish_ci NOT NULL,
  `steam` text COLLATE utf8_turkish_ci NOT NULL,
  `facebook` text COLLATE utf8_turkish_ci NOT NULL,
  `date` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cekilis
-- ----------------------------

-- ----------------------------
-- Table structure for `cezalar`
-- ----------------------------
DROP TABLE IF EXISTS `cezalar`;
CREATE TABLE `cezalar` (
  `cezaID` int(11) NOT NULL AUTO_INCREMENT,
  `cezaSQL` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `cezaMemur` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `cezaUcret` int(11) NOT NULL,
  `cezaTarih` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `cezaSebep` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `cezaOdendi` int(11) NOT NULL,
  PRIMARY KEY (`cezaID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cezalar
-- ----------------------------

-- ----------------------------
-- Table structure for `cuvallar`
-- ----------------------------
DROP TABLE IF EXISTS `cuvallar`;
CREATE TABLE `cuvallar` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `interior` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cuvallar
-- ----------------------------

-- ----------------------------
-- Table structure for `davalar`
-- ----------------------------
DROP TABLE IF EXISTS `davalar`;
CREATE TABLE `davalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarih` int(11) NOT NULL,
  `davali` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `olusturan` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `davasayisi` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of davalar
-- ----------------------------

-- ----------------------------
-- Table structure for `dolaplar`
-- ----------------------------
DROP TABLE IF EXISTS `dolaplar`;
CREATE TABLE `dolaplar` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `sahip` varchar(24) COLLATE utf8_turkish_ci NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `sifre` int(11) NOT NULL,
  `dSlot1` int(11) NOT NULL,
  `dSlot2` int(11) NOT NULL,
  `dSlot3` int(11) NOT NULL,
  `dSlot4` int(11) NOT NULL,
  `dSlot1Var` int(11) NOT NULL,
  `dSlot2Var` int(11) NOT NULL,
  `dSlot3Var` int(11) NOT NULL,
  `dSlot4Var` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dolaplar
-- ----------------------------

-- ----------------------------
-- Table structure for `ekinler`
-- ----------------------------
DROP TABLE IF EXISTS `ekinler`;
CREATE TABLE `ekinler` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `ciftlikid` int(11) NOT NULL,
  `objeid` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ekinler
-- ----------------------------

-- ----------------------------
-- Table structure for `evler`
-- ----------------------------
DROP TABLE IF EXISTS `evler`;
CREATE TABLE `evler` (
  `evID` int(11) NOT NULL AUTO_INCREMENT,
  `Adres` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `Durum` int(11) NOT NULL DEFAULT 1,
  `evPosX` float NOT NULL,
  `evPosY` float NOT NULL,
  `evPosZ` float NOT NULL,
  `evPosA` float NOT NULL,
  `evIcPosX` float NOT NULL,
  `evIcPosY` float NOT NULL,
  `evIcPosZ` float NOT NULL,
  `evIcPosA` float NOT NULL,
  `evVW` int(11) NOT NULL,
  `evInt` int(11) NOT NULL,
  `evDisVW` int(11) NOT NULL,
  `evDisInt` int(11) NOT NULL,
  `evSahip` int(11) NOT NULL DEFAULT 0,
  `evFiyat` int(11) NOT NULL DEFAULT 50000,
  `Dekor` int(11) NOT NULL DEFAULT 0,
  `bSure` int(11) NOT NULL DEFAULT 0,
  `EvAnahtar` int(11) NOT NULL DEFAULT 0,
  `Kiralik` int(11) NOT NULL DEFAULT 0,
  `Kiraci` int(11) NOT NULL DEFAULT 0,
  `KiraUcret` int(11) NOT NULL DEFAULT 1,
  `Kasa` int(11) NOT NULL DEFAULT 0,
  `evOyunID` int(11) NOT NULL,
  `evVergi` int(11) NOT NULL,
  PRIMARY KEY (`evID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of evler
-- ----------------------------

-- ----------------------------
-- Table structure for `ev_envanter`
-- ----------------------------
DROP TABLE IF EXISTS `ev_envanter`;
CREATE TABLE `ev_envanter` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `EvId` int(11) NOT NULL,
  `ItemSlot` int(11) NOT NULL,
  `ItemTip` int(11) NOT NULL,
  `ItemMiktar` int(20) NOT NULL,
  PRIMARY KEY (`SQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ev_envanter
-- ----------------------------

-- ----------------------------
-- Table structure for `fabrikalar`
-- ----------------------------
DROP TABLE IF EXISTS `fabrikalar`;
CREATE TABLE `fabrikalar` (
  `fID` int(9) NOT NULL AUTO_INCREMENT,
  `Sahip` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosA` float NOT NULL,
  `FabrikaAd` varchar(48) COLLATE utf8_turkish_ci DEFAULT NULL,
  `Urun` varchar(64) COLLATE utf8_turkish_ci DEFAULT NULL,
  `Ucret` int(8) NOT NULL DEFAULT 1,
  `Kapasite` int(4) NOT NULL DEFAULT 250,
  PRIMARY KEY (`fID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fabrikalar
-- ----------------------------

-- ----------------------------
-- Table structure for `firmalar`
-- ----------------------------
DROP TABLE IF EXISTS `firmalar`;
CREATE TABLE `firmalar` (
  `id` int(11) NOT NULL,
  `isim` text COLLATE utf8_turkish_ci NOT NULL,
  `kasa` int(11) NOT NULL,
  `alan` int(11) NOT NULL,
  `liderrutbe` int(11) NOT NULL,
  `not` int(200) NOT NULL,
  `maas` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `alimdurum` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of firmalar
-- ----------------------------
INSERT INTO `firmalar` VALUES ('0', 'Sawyer RenteCars', '0', '3', '10', '0', '250', '1779.18', '2192.92', '4.1764', '0', '0', '0');
INSERT INTO `firmalar` VALUES ('1', '313131', '13131', '0', '10', '0', '250', '1791.19', '2192.48', '4.06958', '0', '0', '0');

-- ----------------------------
-- Table structure for `firmarutbeleri`
-- ----------------------------
DROP TABLE IF EXISTS `firmarutbeleri`;
CREATE TABLE `firmarutbeleri` (
  `id` int(11) NOT NULL,
  `isim` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `rutbe` int(11) NOT NULL,
  `skin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of firmarutbeleri
-- ----------------------------
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 1', '1', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 2', '2', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 3', '3', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 4', '4', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 5', '5', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 6', '6', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 7', '7', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 8', '8', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 9', '9', '8');
INSERT INTO `firmarutbeleri` VALUES ('0', 'Rutbe 10', '10', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 1', '1', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 2', '2', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 3', '3', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 4', '4', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 5', '5', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 6', '6', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 7', '7', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 8', '8', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 9', '9', '8');
INSERT INTO `firmarutbeleri` VALUES ('1', 'Rutbe 10', '10', '8');

-- ----------------------------
-- Table structure for `forum_haberler`
-- ----------------------------
DROP TABLE IF EXISTS `forum_haberler`;
CREATE TABLE `forum_haberler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yazar` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tarih` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ajans` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `konulink` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gorsel` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `icerik` text COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of forum_haberler
-- ----------------------------

-- ----------------------------
-- Table structure for `furniture_data`
-- ----------------------------
DROP TABLE IF EXISTS `furniture_data`;
CREATE TABLE `furniture_data` (
  `furniture_id` int(11) NOT NULL AUTO_INCREMENT,
  `furniture_objectid` int(11) NOT NULL,
  `furniture_modelid` int(11) NOT NULL,
  `furniture_posx` float NOT NULL,
  `furniture_posy` float NOT NULL,
  `furniture_posz` float NOT NULL,
  `furniture_posrx` float NOT NULL,
  `furniture_posry` float NOT NULL,
  `furniture_posrz` float NOT NULL,
  `furniture_vw` int(11) NOT NULL,
  `furniture_interior` int(11) NOT NULL,
  `furniture_houseid` int(11) NOT NULL,
  `furniture_bizid` int(11) NOT NULL,
  `furniture_price` int(11) NOT NULL,
  PRIMARY KEY (`furniture_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of furniture_data
-- ----------------------------

-- ----------------------------
-- Table structure for `garajlar`
-- ----------------------------
DROP TABLE IF EXISTS `garajlar`;
CREATE TABLE `garajlar` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `sahip` varchar(24) COLLATE utf8_turkish_ci NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `kasa` int(11) NOT NULL,
  `kapasite` int(11) NOT NULL,
  `kilit` int(11) NOT NULL,
  `birlik` int(5) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of garajlar
-- ----------------------------

-- ----------------------------
-- Table structure for `gateler`
-- ----------------------------
DROP TABLE IF EXISTS `gateler`;
CREATE TABLE `gateler` (
  `id` int(11) NOT NULL,
  `obje` int(11) NOT NULL,
  `sahip` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `birlik` int(11) NOT NULL,
  `sifre` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `acikpos` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `kapalipos` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `interior` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  `hiz` float NOT NULL,
  `uzaklik` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of gateler
-- ----------------------------

-- ----------------------------
-- Table structure for `giseler`
-- ----------------------------
DROP TABLE IF EXISTS `giseler`;
CREATE TABLE `giseler` (
  `id` int(11) NOT NULL,
  `Ucret` int(11) NOT NULL,
  `Pozisyon` varchar(512) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of giseler
-- ----------------------------

-- ----------------------------
-- Table structure for `grafitiler`
-- ----------------------------
DROP TABLE IF EXISTS `grafitiler`;
CREATE TABLE `grafitiler` (
  `grfID` int(11) NOT NULL,
  `grfSahip` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `grfYazi` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `grfFont` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `grfPozisyonlar` varchar(512) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`grfID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grafitiler
-- ----------------------------

-- ----------------------------
-- Table structure for `hesapban`
-- ----------------------------
DROP TABLE IF EXISTS `hesapban`;
CREATE TABLE `hesapban` (
  `forumid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of hesapban
-- ----------------------------

-- ----------------------------
-- Table structure for `hesaplar`
-- ----------------------------
DROP TABLE IF EXISTS `hesaplar`;
CREATE TABLE `hesaplar` (
  `sqlID` int(12) NOT NULL AUTO_INCREMENT,
  `forumid` int(9) NOT NULL,
  `sifre` varchar(129) COLLATE utf8_turkish_ci NOT NULL,
  `Admin` int(1) NOT NULL DEFAULT 0,
  `VicePoint` int(8) NOT NULL DEFAULT 0,
  `ViceCoin` int(8) NOT NULL DEFAULT 0,
  `IsimDegisimHakki` int(5) NOT NULL DEFAULT 0,
  `PlakaDegisimHakki` int(5) NOT NULL DEFAULT 0,
  `TelefonDegisimHakki` int(5) NOT NULL DEFAULT 0,
  `oPremiumSkinBir` int(9) NOT NULL DEFAULT 0,
  `oPremiumSkinIki` int(9) NOT NULL DEFAULT 0,
  `oPremiumSkinUc` int(9) NOT NULL DEFAULT 0,
  `VIP` int(2) NOT NULL DEFAULT 0,
  `BisikletHakki` int(9) NOT NULL DEFAULT 0,
  `YetenekSifirlamaHakki` int(9) NOT NULL DEFAULT 0,
  `OzelSkinAksesuar` int(8) NOT NULL DEFAULT 0,
  `YapilandirmaHakki` int(9) NOT NULL DEFAULT 0,
  `BesYetenekPuani` int(9) NOT NULL DEFAULT 0,
  `OnYetenekPuani` int(9) NOT NULL DEFAULT 0,
  `OnBesYetenekPuani` int(9) NOT NULL DEFAULT 0,
  `ikixpayday` int(1) NOT NULL DEFAULT 0,
  `BasvuruDurum` int(11) DEFAULT 0,
  `HesapSayi` int(11) NOT NULL DEFAULT 2,
  `BakilanRapor` int(12) NOT NULL DEFAULT 0,
  `BakilanSoru` int(12) NOT NULL DEFAULT 0,
  `oyuncuoyunda` int(11) NOT NULL,
  `BirikenKoku` int(11) NOT NULL,
  `KokuDurum` int(11) NOT NULL,
  `Balik0` int(11) NOT NULL,
  `Balik1` int(11) NOT NULL,
  `Balik2` int(11) NOT NULL,
  `Balik3` int(11) NOT NULL,
  `Balik4` int(11) NOT NULL,
  `BankaHesapDegisimHakki` int(11) NOT NULL,
  `UcuncuDilHakki` int(11) NOT NULL,
  `EkonomiPaketi` int(11) NOT NULL,
  `MeslekPaketi` int(11) NOT NULL,
  `MobilyaPaketi` int(11) NOT NULL,
  `CoolAracPaketi` int(11) NOT NULL,
  `DortXExp` int(11) NOT NULL,
  `MaskeHakki` int(11) NOT NULL,
  `SansKutusu` int(11) DEFAULT NULL,
  `PremiumSlot` int(11) NOT NULL,
  `OnayliIP` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ForumIP` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `GoogleDurum` varchar(11) COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `GoogleKey` varchar(16) COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `GoogleIP` varchar(17) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPOnayDurum` int(11) NOT NULL,
  PRIMARY KEY (`sqlID`,`IsimDegisimHakki`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of hesaplar
-- ----------------------------
INSERT INTO `hesaplar` VALUES ('1', '1', '07b1795caec14cb04fd8e06cc9a9fae3', '10', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, null, '0', '0', null, '0');
INSERT INTO `hesaplar` VALUES ('2', '2', '2d319346371a4be9695705762f878cc1', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, null, '0', '0', null, '0');

-- ----------------------------
-- Table structure for `house_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `house_inventory`;
CREATE TABLE `house_inventory` (
  `inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_weaponid` int(11) NOT NULL,
  `inventory_house` int(11) NOT NULL,
  `inventory_ammo` int(11) NOT NULL,
  PRIMARY KEY (`inventory_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of house_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `iccezalar`
-- ----------------------------
DROP TABLE IF EXISTS `iccezalar`;
CREATE TABLE `iccezalar` (
  `CezaID` int(11) NOT NULL AUTO_INCREMENT,
  `KarakterAdi` varchar(32) NOT NULL,
  `CezaSure` int(11) NOT NULL,
  `Sebep` varchar(64) NOT NULL,
  `Polis` varchar(64) NOT NULL,
  `yasaklanmatarihi` varchar(20) NOT NULL,
  PRIMARY KEY (`CezaID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin5 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of iccezalar
-- ----------------------------

-- ----------------------------
-- Table structure for `impounded_cars`
-- ----------------------------
DROP TABLE IF EXISTS `impounded_cars`;
CREATE TABLE `impounded_cars` (
  `impound_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_sqlid` int(11) NOT NULL,
  PRIMARY KEY (`impound_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of impounded_cars
-- ----------------------------

-- ----------------------------
-- Table structure for `ipban`
-- ----------------------------
DROP TABLE IF EXISTS `ipban`;
CREATE TABLE `ipban` (
  `ip` varchar(16) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ipban
-- ----------------------------

-- ----------------------------
-- Table structure for `isyerleri`
-- ----------------------------
DROP TABLE IF EXISTS `isyerleri`;
CREATE TABLE `isyerleri` (
  `isyeriID` int(11) NOT NULL AUTO_INCREMENT,
  `Ad` varchar(128) COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Yok',
  `Durum` int(1) NOT NULL DEFAULT 1,
  `isyeriFiyat` int(11) NOT NULL DEFAULT 75000,
  `isyeriDisInt` int(11) NOT NULL DEFAULT 0,
  `isyeriDisVW` int(11) NOT NULL DEFAULT 0,
  `isyeriSahip` int(11) NOT NULL DEFAULT 0,
  `isyeriPosX` float NOT NULL,
  `isyeriPosY` float NOT NULL,
  `isyeriPosZ` float NOT NULL,
  `isyeriPosA` float NOT NULL,
  `isyeriIcPosX` float NOT NULL,
  `isyeriIcPosY` float NOT NULL,
  `isyeriIcPosZ` float NOT NULL,
  `isyeriIcPosA` float NOT NULL,
  `isyeriVW` int(8) DEFAULT 0,
  `isyeriInt` int(8) NOT NULL DEFAULT 0,
  `isyeriTur` int(3) NOT NULL DEFAULT 1,
  `isyeriKasa` int(11) NOT NULL DEFAULT 0,
  `GirisUcreti` int(5) NOT NULL DEFAULT 0,
  `isyeriOrtak` int(4) NOT NULL DEFAULT 0,
  `isyeriMuzik` varchar(128) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isyeriUrun` int(11) NOT NULL,
  `isyeriBirlik` int(26) NOT NULL DEFAULT 0,
  `isyeriVergi` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`isyeriID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of isyerleri
-- ----------------------------

-- ----------------------------
-- Table structure for `itemler`
-- ----------------------------
DROP TABLE IF EXISTS `itemler`;
CREATE TABLE `itemler` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `slot` int(11) NOT NULL,
  `oyuncu` varchar(24) COLLATE utf8_turkish_ci NOT NULL,
  `tip` int(11) NOT NULL,
  `var` int(11) NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of itemler
-- ----------------------------

-- ----------------------------
-- Table structure for `kanlar`
-- ----------------------------
DROP TABLE IF EXISTS `kanlar`;
CREATE TABLE `kanlar` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `sahip` varchar(24) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of kanlar
-- ----------------------------

-- ----------------------------
-- Table structure for `koguslar`
-- ----------------------------
DROP TABLE IF EXISTS `koguslar`;
CREATE TABLE `koguslar` (
  `id` int(11) NOT NULL,
  `obje` int(11) NOT NULL,
  `acikpos` varchar(256) NOT NULL,
  `kapalipos` varchar(256) NOT NULL,
  `interior` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  `uzaklik` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of koguslar
-- ----------------------------

-- ----------------------------
-- Table structure for `kutular`
-- ----------------------------
DROP TABLE IF EXISTS `kutular`;
CREATE TABLE `kutular` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `interior` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of kutular
-- ----------------------------

-- ----------------------------
-- Table structure for `laboratuvar`
-- ----------------------------
DROP TABLE IF EXISTS `laboratuvar`;
CREATE TABLE `laboratuvar` (
  `labID` int(11) NOT NULL AUTO_INCREMENT,
  `labDurum` int(11) NOT NULL DEFAULT 1,
  `labPosX` float NOT NULL,
  `labPosY` float NOT NULL,
  `labPosZ` float NOT NULL,
  `labPosA` float NOT NULL,
  `labIcPosX` float NOT NULL,
  `labIcPosY` float NOT NULL,
  `labIcPosZ` float NOT NULL,
  `labIcPosA` float NOT NULL,
  `labVW` int(11) NOT NULL,
  `labInt` int(11) NOT NULL,
  `labDisVW` int(11) NOT NULL,
  `labDisInt` int(11) NOT NULL,
  `labSahip` int(11) NOT NULL DEFAULT 0,
  `labFiyat` int(11) NOT NULL DEFAULT 85000,
  `labSeviye` int(11) NOT NULL DEFAULT 0,
  `BosMasa` int(8) NOT NULL DEFAULT 1,
  `DoluMasa` int(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`labID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of laboratuvar
-- ----------------------------

-- ----------------------------
-- Table structure for `market`
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `kullanimsuresi` text COLLATE utf8_turkish_ci NOT NULL,
  `detayaciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `baslik` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `paket` int(11) NOT NULL DEFAULT 0,
  `paketresim` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of market
-- ----------------------------

-- ----------------------------
-- Table structure for `marketsiparis`
-- ----------------------------
DROP TABLE IF EXISTS `marketsiparis`;
CREATE TABLE `marketsiparis` (
  `forumid` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karakteradi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `urunadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `urunfiyat` mediumtext COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  `tarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yoneticinot` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of marketsiparis
-- ----------------------------

-- ----------------------------
-- Table structure for `market_sanskutusu`
-- ----------------------------
DROP TABLE IF EXISTS `market_sanskutusu`;
CREATE TABLE `market_sanskutusu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forumid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `urunadi` varchar(255) CHARACTER SET latin1 NOT NULL,
  `urun2` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  `urun3` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun4` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of market_sanskutusu
-- ----------------------------

-- ----------------------------
-- Table structure for `meslekler`
-- ----------------------------
DROP TABLE IF EXISTS `meslekler`;
CREATE TABLE `meslekler` (
  `mID` int(5) NOT NULL AUTO_INCREMENT,
  `meslekTur` int(2) NOT NULL DEFAULT 1,
  `mPosX` float NOT NULL,
  `mPosY` float NOT NULL,
  `mPosZ` float NOT NULL,
  `mInterior` int(5) NOT NULL DEFAULT 0,
  `mWorld` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of meslekler
-- ----------------------------
INSERT INTO `meslekler` VALUES ('1', '5', '1792.09', '2187.66', '3.98', '0', '0');
INSERT INTO `meslekler` VALUES ('2', '4', '1793.1', '2197.21', '4.1573', '0', '0');
INSERT INTO `meslekler` VALUES ('3', '3', '1793.98', '2204.75', '4.2982', '0', '0');
INSERT INTO `meslekler` VALUES ('4', '2', '1793.38', '2209.78', '4.3854', '0', '0');
INSERT INTO `meslekler` VALUES ('5', '1', '1793.47', '2215', '4.4761', '0', '0');

-- ----------------------------
-- Table structure for `mikrofonlar`
-- ----------------------------
DROP TABLE IF EXISTS `mikrofonlar`;
CREATE TABLE `mikrofonlar` (
  `micId` int(11) NOT NULL AUTO_INCREMENT,
  `micX` float NOT NULL,
  `micY` float NOT NULL,
  `micZ` float NOT NULL,
  `micInt` int(11) NOT NULL,
  `micVw` int(11) NOT NULL,
  PRIMARY KEY (`micId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mikrofonlar
-- ----------------------------

-- ----------------------------
-- Table structure for `mobilyaizin`
-- ----------------------------
DROP TABLE IF EXISTS `mobilyaizin`;
CREATE TABLE `mobilyaizin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evID` int(11) NOT NULL,
  `Isim` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mobilyaizin
-- ----------------------------

-- ----------------------------
-- Table structure for `ncler`
-- ----------------------------
DROP TABLE IF EXISTS `ncler`;
CREATE TABLE `ncler` (
  `ncID` int(11) NOT NULL AUTO_INCREMENT,
  `eskiisim` varchar(38) NOT NULL,
  `forumid` int(11) NOT NULL,
  `tarih` varchar(64) NOT NULL,
  `eskiskin` int(11) DEFAULT NULL,
  `eskiuyruk` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ncID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ncler
-- ----------------------------

-- ----------------------------
-- Table structure for `npcler`
-- ----------------------------
DROP TABLE IF EXISTS `npcler`;
CREATE TABLE `npcler` (
  `npcID` int(11) NOT NULL AUTO_INCREMENT,
  `npcSkin` int(11) NOT NULL,
  `npcPozisyonlar` varchar(512) NOT NULL,
  `npcAnimlib` varchar(128) NOT NULL,
  `npcAnimname` varchar(128) NOT NULL,
  `npcLabel` varchar(50) NOT NULL,
  `npcTur` int(11) NOT NULL,
  `npcX` float NOT NULL,
  `npcY` float NOT NULL,
  `npcZ` float NOT NULL,
  `npcR` float NOT NULL,
  PRIMARY KEY (`npcID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of npcler
-- ----------------------------

-- ----------------------------
-- Table structure for `numuneler`
-- ----------------------------
DROP TABLE IF EXISTS `numuneler`;
CREATE TABLE `numuneler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sahip` varchar(24) NOT NULL,
  `alan` varchar(24) NOT NULL,
  `tarih` varchar(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of numuneler
-- ----------------------------

-- ----------------------------
-- Table structure for `ooccezalar`
-- ----------------------------
DROP TABLE IF EXISTS `ooccezalar`;
CREATE TABLE `ooccezalar` (
  `CezaID` int(11) NOT NULL AUTO_INCREMENT,
  `KarakterAdi` varchar(32) NOT NULL,
  `CezaSure` int(11) NOT NULL,
  `Sebep` varchar(64) NOT NULL,
  `Yetkili` varchar(64) NOT NULL,
  `yasaklanmatarihi` varchar(20) NOT NULL,
  PRIMARY KEY (`CezaID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin5 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ooccezalar
-- ----------------------------

-- ----------------------------
-- Table structure for `otel_odalar`
-- ----------------------------
DROP TABLE IF EXISTS `otel_odalar`;
CREATE TABLE `otel_odalar` (
  `id` int(11) NOT NULL,
  `Sahip` varchar(256) NOT NULL,
  `Sure` int(11) NOT NULL,
  `Resepsiyon` int(11) NOT NULL,
  `Fiyat` int(11) NOT NULL,
  `Pozisyonlar` varchar(256) NOT NULL,
  `disVW` int(11) NOT NULL,
  `disInt` int(11) NOT NULL,
  `Kilit` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of otel_odalar
-- ----------------------------

-- ----------------------------
-- Table structure for `otel_resepsiyon`
-- ----------------------------
DROP TABLE IF EXISTS `otel_resepsiyon`;
CREATE TABLE `otel_resepsiyon` (
  `id` int(11) NOT NULL,
  `Sahip` varchar(60) NOT NULL,
  `Kasa` int(11) NOT NULL,
  `Pozisyonlar` varchar(256) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of otel_resepsiyon
-- ----------------------------

-- ----------------------------
-- Table structure for `oyuncular`
-- ----------------------------
DROP TABLE IF EXISTS `oyuncular`;
CREATE TABLE `oyuncular` (
  `ID` int(9) NOT NULL AUTO_INCREMENT,
  `forumid` int(9) NOT NULL,
  `isim` varchar(32) DEFAULT NULL,
  `sifre` varchar(129) NOT NULL,
  `oyuncuban` int(1) NOT NULL DEFAULT 0,
  `oKiyafetDolabiBir` int(9) NOT NULL DEFAULT 0,
  `oKiyafetDolabiIki` int(9) NOT NULL DEFAULT 0,
  `oKiyafetDolabiUc` int(9) NOT NULL DEFAULT 0,
  `SonGiris` varchar(36) DEFAULT NULL,
  `KayitTarih` varchar(36) NOT NULL,
  `Kiyafet` int(3) NOT NULL DEFAULT 1,
  `GKiyafet` int(3) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `a` float NOT NULL DEFAULT 0,
  `interior` int(8) NOT NULL DEFAULT 0,
  `vw` int(8) NOT NULL DEFAULT 0,
  `Para` int(11) NOT NULL DEFAULT 0,
  `BankaPara` int(11) NOT NULL DEFAULT 0,
  `toplampara` int(11) NOT NULL,
  `Dakika` int(4) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 1,
  `Exp` int(11) NOT NULL DEFAULT 0,
  `OynamaSaati` int(11) NOT NULL DEFAULT 0,
  `AdminNick` varchar(20) NOT NULL DEFAULT 'Yok',
  `Can` float NOT NULL DEFAULT 100,
  `Zirh` float NOT NULL DEFAULT 0,
  `Cinsiyet` int(1) NOT NULL DEFAULT 0,
  `DogumYeri` varchar(32) NOT NULL DEFAULT 'Yok',
  `Tester` int(1) NOT NULL DEFAULT 0,
  `dogumtarihi` varchar(32) DEFAULT NULL,
  `yaratildi` int(1) NOT NULL DEFAULT 0,
  `aclik` int(3) NOT NULL DEFAULT 100,
  `susuzluk` int(3) NOT NULL DEFAULT 100,
  `birlik` int(11) NOT NULL DEFAULT -1,
  `birlikrutbead` varchar(64) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `birlikrutbe` int(11) NOT NULL DEFAULT 0,
  `yaralisure` int(11) NOT NULL DEFAULT 0,
  `TenRengi` int(1) NOT NULL DEFAULT 0,
  `Siparis` varchar(256) NOT NULL,
  `Silah0` int(11) NOT NULL,
  `Silah1` int(3) NOT NULL DEFAULT 0,
  `Silah2` int(3) NOT NULL DEFAULT 0,
  `Silah3` int(3) NOT NULL DEFAULT 0,
  `Silah4` int(3) NOT NULL DEFAULT 0,
  `Silah5` int(3) NOT NULL DEFAULT 0,
  `Silah6` int(3) NOT NULL DEFAULT 0,
  `Silah7` int(3) NOT NULL DEFAULT 0,
  `Silah8` int(3) NOT NULL DEFAULT 0,
  `Silah9` int(3) NOT NULL DEFAULT 0,
  `Silah10` int(3) NOT NULL DEFAULT 0,
  `Silah11` int(3) NOT NULL DEFAULT 0,
  `Silah12` int(3) NOT NULL DEFAULT 0,
  `Silah13` int(3) NOT NULL DEFAULT 0,
  `Mermi0` int(11) NOT NULL,
  `Mermi1` int(11) NOT NULL DEFAULT 0,
  `Mermi2` int(11) NOT NULL DEFAULT 0,
  `Mermi3` int(11) NOT NULL DEFAULT 0,
  `Mermi4` int(11) NOT NULL DEFAULT 0,
  `Mermi5` int(11) NOT NULL DEFAULT 0,
  `Mermi6` int(11) NOT NULL DEFAULT 0,
  `Mermi7` int(11) NOT NULL DEFAULT 0,
  `Mermi8` int(11) NOT NULL DEFAULT 0,
  `Mermi9` int(11) NOT NULL DEFAULT 0,
  `Mermi10` int(11) NOT NULL DEFAULT 0,
  `Mermi11` int(11) NOT NULL DEFAULT 0,
  `Mermi12` int(11) NOT NULL DEFAULT 0,
  `Mermi13` int(11) NOT NULL DEFAULT 0,
  `isbasi` tinyint(1) NOT NULL DEFAULT 0,
  `ForumAdi` varchar(24) NOT NULL,
  `Ehliyet` tinyint(1) NOT NULL DEFAULT 0,
  `Kibrit` int(5) NOT NULL DEFAULT 0,
  `Cakmak` tinyint(1) NOT NULL DEFAULT 0,
  `Odun` int(6) NOT NULL DEFAULT 0,
  `HesapNumarasi` int(9) NOT NULL DEFAULT 0,
  `Sigara` int(11) NOT NULL DEFAULT 0,
  `Telefon` int(1) NOT NULL DEFAULT 0,
  `TelefonNumarasi` int(8) NOT NULL DEFAULT 0,
  `Gubre` int(2) NOT NULL DEFAULT 0,
  `Saksi` int(4) NOT NULL DEFAULT 0,
  `Vantilator` int(4) NOT NULL DEFAULT 0,
  `GYMHak` int(11) NOT NULL DEFAULT 0,
  `Tohum` int(4) NOT NULL DEFAULT 0,
  `UyusturucuC` int(11) NOT NULL DEFAULT 0,
  `UyusturucuB` int(11) NOT NULL DEFAULT 0,
  `UyusturucuA` int(11) NOT NULL DEFAULT 0,
  `UyusturucuOnay` int(1) NOT NULL DEFAULT 0,
  `Bakiye` int(6) NOT NULL DEFAULT 0,
  `RaporSayisi` int(6) NOT NULL DEFAULT 0,
  `Hapis` int(22) NOT NULL DEFAULT 0,
  `VatandaslikNo` int(9) NOT NULL DEFAULT 0,
  `Ruhsat` int(1) NOT NULL DEFAULT 0,
  `ICHapis` int(11) NOT NULL DEFAULT 0,
  `IDHapis` int(3) NOT NULL DEFAULT -1,
  `AranmaSeviyesi` int(4) NOT NULL DEFAULT 0,
  `Meslek` int(3) NOT NULL DEFAULT -1,
  `EkstraDil` int(2) NOT NULL DEFAULT 0,
  `Birim` int(3) NOT NULL DEFAULT 0,
  `boombox` int(4) NOT NULL DEFAULT 0,
  `Asansor` int(4) NOT NULL DEFAULT -1,
  `Kanama` int(11) NOT NULL,
  `firma` int(11) NOT NULL DEFAULT -1,
  `firmarutbe` int(11) NOT NULL,
  `mtercih` int(11) NOT NULL DEFAULT -1,
  `Baliklar` int(11) NOT NULL,
  `Yemler` int(11) NOT NULL,
  `BalikEXP` int(11) NOT NULL,
  `BalikSeviye` int(11) NOT NULL,
  `Helper` int(1) NOT NULL DEFAULT 0,
  `Kulaklik` int(1) NOT NULL DEFAULT 0,
  `LiderlikYetenek` int(12) NOT NULL DEFAULT 0,
  `UretimYetenek` int(12) NOT NULL DEFAULT 0,
  `SurusYetenek` int(12) NOT NULL DEFAULT 0,
  `KimyaYetenek` int(12) NOT NULL DEFAULT 0,
  `HirsizlikYetenek` int(12) NOT NULL DEFAULT 0,
  `GucYetenek` int(12) NOT NULL DEFAULT 0,
  `LiderlikEXP` int(12) NOT NULL DEFAULT 0,
  `UretimEXP` int(12) NOT NULL DEFAULT 0,
  `SurusEXP` int(12) NOT NULL DEFAULT 0,
  `KimyaEXP` int(12) NOT NULL DEFAULT 0,
  `HirsizlikEXP` int(12) NOT NULL DEFAULT 0,
  `GucEXP` int(12) NOT NULL DEFAULT 0,
  `YetenekPuani` int(12) NOT NULL DEFAULT 0,
  `oTruckerSeviye` int(5) NOT NULL DEFAULT 0,
  `oTruckerEXP` int(9) NOT NULL DEFAULT 0,
  `Dayaniklilik` int(11) NOT NULL,
  `DayaniklilikEXP` int(11) NOT NULL,
  `Boy` int(4) NOT NULL DEFAULT 0,
  `Kilo` int(5) NOT NULL DEFAULT 0,
  `sacrengi` varchar(64) NOT NULL,
  `GozRengi` varchar(64) NOT NULL,
  `disgorunus` text NOT NULL,
  `sonbildiri` varchar(64) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ozgecmis` varchar(3000) NOT NULL DEFAULT 'Kayıt bulunamadı.',
  `basvuru_tarihi` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'Tarih bulunamadi.',
  `oAracCalmaSiniri` int(2) NOT NULL DEFAULT 0,
  `Gozalti` int(1) NOT NULL DEFAULT 0,
  `KarakterDurum` int(11) NOT NULL,
  `oyuncuoyunda` int(11) NOT NULL,
  `SiparisModel` int(8) NOT NULL DEFAULT 0,
  `SiparisZaman` int(40) NOT NULL DEFAULT 0,
  `SonLokasyon` varchar(128) NOT NULL,
  `AtYarisi` int(2) NOT NULL DEFAULT 0,
  `AtBahis` int(5) NOT NULL DEFAULT 0,
  `OynananAt` int(2) NOT NULL DEFAULT 0,
  `OyuncuTakipteMi` int(11) NOT NULL,
  `Balik0` int(5) NOT NULL DEFAULT 0,
  `Balik1` int(5) NOT NULL DEFAULT 0,
  `Balik2` int(5) NOT NULL DEFAULT 0,
  `Balik3` int(5) NOT NULL DEFAULT 0,
  `Balik4` int(5) NOT NULL DEFAULT 0,
  `BirikenKoku` int(2) NOT NULL DEFAULT 0,
  `KokuDurum` int(1) NOT NULL DEFAULT 0,
  `PDEhliyetUyari` int(1) NOT NULL DEFAULT 0,
  `mevduat` int(11) NOT NULL,
  `talkAnim` int(11) NOT NULL,
  `bagimlilik` int(11) NOT NULL,
  `bagimlilikEtki` int(11) NOT NULL,
  `UcusLisansi` int(11) NOT NULL,
  `karakteryas` int(11) NOT NULL,
  `toplamvarlik` int(11) NOT NULL,
  `ilkaraba` varchar(14) NOT NULL,
  `ilkev` varchar(14) NOT NULL,
  `vicebenitanisin` varchar(14) NOT NULL,
  `mostwanted` varchar(14) NOT NULL,
  `heisenberg` varchar(14) NOT NULL,
  `vipuye` varchar(14) NOT NULL,
  `bagisci` varchar(14) NOT NULL,
  `thepresident` varchar(14) NOT NULL,
  `rocky` varchar(14) NOT NULL,
  `isadami` varchar(14) NOT NULL,
  `kanunnamina` varchar(14) NOT NULL,
  `suclamucadele` varchar(14) NOT NULL,
  `sucavcisi` varchar(14) NOT NULL,
  `kurtarici` varchar(14) NOT NULL,
  `kumarbaz` varchar(14) NOT NULL,
  `silahkokusu` varchar(14) NOT NULL,
  `silahkacakcisi` varchar(14) NOT NULL,
  `silahtuccari` varchar(14) NOT NULL,
  `hizliveofkeli` varchar(14) NOT NULL,
  `drugdealer` varchar(14) NOT NULL,
  `sokaklarinsahibi` varchar(14) NOT NULL,
  `wiseguy` varchar(14) NOT NULL,
  `capoditutti` varchar(14) NOT NULL,
  `yenilmez` varchar(14) NOT NULL,
  `yankesici` varchar(14) NOT NULL,
  `ustasurucu` varchar(14) NOT NULL,
  `yuruyencinsellik` varchar(14) NOT NULL,
  `bagimli` varchar(14) NOT NULL,
  `craftci` varchar(14) NOT NULL,
  `vicedamutluluk` varchar(14) NOT NULL,
  `viceasigi` varchar(14) NOT NULL,
  `istikbalgoklerde` varchar(14) NOT NULL,
  `ubermensch` varchar(14) NOT NULL,
  `vicevatandasi` varchar(14) NOT NULL,
  `ikon` varchar(14) NOT NULL,
  `vergimilyoneri` varchar(14) NOT NULL,
  `DuzenlenenYaris` int(11) NOT NULL,
  `PokerKazanma` int(11) NOT NULL,
  `OdenenVergi` int(11) NOT NULL,
  `HapseAtma` int(11) NOT NULL,
  `AlinanSilah` int(11) NOT NULL,
  `SatilanUyusturucu` int(11) NOT NULL,
  `ICSicilSayi` int(11) NOT NULL,
  `ToplamBasarim` int(11) NOT NULL,
  `UcuncuDil` int(11) NOT NULL,
  `BalikTutmaSinir` int(11) NOT NULL,
  `CrashStatus` int(11) NOT NULL,
  `MaasDakika` int(11) NOT NULL,
  `CrashX` float(255,0) DEFAULT NULL,
  `CrashY` float(255,0) DEFAULT NULL,
  `CrashZ` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oyuncular
-- ----------------------------
INSERT INTO `oyuncular` VALUES ('1', '1', 'Sawyer_Test', '', '0', '0', '0', '0', '09.10.2022', '02.10.2022 - 12:05:04', '1', '0', '1528.39', '2386.09', '11.6485', '162.348', '0', '0', '1500129', '150', '0', '31', '1', '1', '1', 'Yok', '20', '0', '1', 'Ingiltere', '0', '1.1.1999', '1', '100', '100', '-1', 'Yok', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '592868', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '96676465', '0', '0', '-1', '0', '2', '0', '0', '0', '-1', '0', '0', '10', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '177', '188', 'Siyah', 'Açık Kahverengi', '', '', 'Kayıt bulunamadı.', 'Tarih bulunamadi.', '0', '0', '0', '0', '0', '0', 'Harry Gold Parkway', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '-91', '0', '21', '0', '02.10.2022', '', '', '', '', '', '', '', '', '02.10.2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `oyuncular` VALUES ('2', '2', 'Daniel_Test', '', '0', '0', '0', '0', '02.10.2022', '', '5', '0', '1797.69', '2217.02', '5.4169', '182.143', '0', '0', '2587266', '0', '0', '25', '1', '0', '0', 'Yok', '20', '0', '1', 'Almanya', '0', '02.08.1995', '1', '100', '100', '-1', 'Yok', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '411189', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '76029483', '0', '0', '-1', '0', '-1', '0', '0', '0', '-1', '0', '1', '10', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '187', '67', 'Sarışın', 'Mavi', '', '', 'Kayıt bulunamadı.', 'Tarih bulunamadi.', '0', '0', '0', '0', '0', '0', 'Harry Gold Parkway', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-25', '0', '25', '0', '', '', '', '', '', '', '', '', '', '02.10.2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `player_weapons`
-- ----------------------------
DROP TABLE IF EXISTS `player_weapons`;
CREATE TABLE `player_weapons` (
  `weapon_id` int(11) NOT NULL AUTO_INCREMENT,
  `weapon_gameid` int(11) NOT NULL,
  `weapon_ammo` int(11) NOT NULL,
  `weapon_userid` int(11) NOT NULL,
  `weapon_carid` int(11) NOT NULL,
  `weapon_houseid` int(11) NOT NULL,
  `weapon_factionid` int(11) NOT NULL,
  `weapon_statusid` int(11) NOT NULL,
  `weapon_x` float NOT NULL,
  `weapon_y` float NOT NULL,
  `weapon_z` float NOT NULL,
  `weapon_vw` int(11) NOT NULL,
  `weapon_int` int(11) NOT NULL,
  `weapon_objectid` int(11) NOT NULL,
  PRIMARY KEY (`weapon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_weapons
-- ----------------------------

-- ----------------------------
-- Table structure for `races`
-- ----------------------------
DROP TABLE IF EXISTS `races`;
CREATE TABLE `races` (
  `race_id` int(11) NOT NULL AUTO_INCREMENT,
  `race_owner` int(11) NOT NULL,
  PRIMARY KEY (`race_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of races
-- ----------------------------

-- ----------------------------
-- Table structure for `race_cp`
-- ----------------------------
DROP TABLE IF EXISTS `race_cp`;
CREATE TABLE `race_cp` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_gameid` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `cp_x` float NOT NULL,
  `cp_y` float NOT NULL,
  `cp_z` float NOT NULL,
  PRIMARY KEY (`cp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of race_cp
-- ----------------------------

-- ----------------------------
-- Table structure for `rehberler`
-- ----------------------------
DROP TABLE IF EXISTS `rehberler`;
CREATE TABLE `rehberler` (
  `ID` int(12) NOT NULL DEFAULT 0,
  `rehberID` int(12) NOT NULL AUTO_INCREMENT,
  `rehberisim` varchar(32) CHARACTER SET latin1 NOT NULL,
  `rehbernumara` int(12) NOT NULL DEFAULT 0,
  `slot` int(2) NOT NULL,
  PRIMARY KEY (`rehberID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin5 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of rehberler
-- ----------------------------

-- ----------------------------
-- Table structure for `reklamkayit`
-- ----------------------------
DROP TABLE IF EXISTS `reklamkayit`;
CREATE TABLE `reklamkayit` (
  `reklamID` int(11) NOT NULL AUTO_INCREMENT,
  `reklammetin` varchar(140) NOT NULL,
  `reklamsahip` varchar(33) NOT NULL,
  PRIMARY KEY (`reklamID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin5 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of reklamkayit
-- ----------------------------

-- ----------------------------
-- Table structure for `reklamlar`
-- ----------------------------
DROP TABLE IF EXISTS `reklamlar`;
CREATE TABLE `reklamlar` (
  `sahipid` int(64) NOT NULL,
  `reklamyazi` varchar(128) NOT NULL,
  `reklamsahip` varchar(96) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of reklamlar
-- ----------------------------

-- ----------------------------
-- Table structure for `sandiklar`
-- ----------------------------
DROP TABLE IF EXISTS `sandiklar`;
CREATE TABLE `sandiklar` (
  `sandikID` int(11) NOT NULL AUTO_INCREMENT,
  `sandikX` float NOT NULL DEFAULT 0,
  `sandikY` float NOT NULL DEFAULT 0,
  `sandikZ` float NOT NULL DEFAULT 0,
  `sandikA` float NOT NULL DEFAULT 0,
  `sandikInterior` int(11) NOT NULL DEFAULT 0,
  `sandikWorld` int(11) NOT NULL DEFAULT 0,
  `sandikOy` int(11) NOT NULL DEFAULT 0,
  `Sahip` varchar(32) NOT NULL DEFAULT 'Yok',
  PRIMARY KEY (`sandikID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin5 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sandiklar
-- ----------------------------

-- ----------------------------
-- Table structure for `saticilar`
-- ----------------------------
DROP TABLE IF EXISTS `saticilar`;
CREATE TABLE `saticilar` (
  `sID` int(11) NOT NULL AUTO_INCREMENT,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `A` float NOT NULL,
  `sInterior` int(11) NOT NULL DEFAULT 0,
  `sWorld` int(11) NOT NULL DEFAULT 0,
  `Fiyat` int(11) NOT NULL DEFAULT 500,
  `Adet` int(11) NOT NULL DEFAULT 1,
  `Kiyafet` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`sID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of saticilar
-- ----------------------------

-- ----------------------------
-- Table structure for `seyyarlar`
-- ----------------------------
DROP TABLE IF EXISTS `seyyarlar`;
CREATE TABLE `seyyarlar` (
  `id` int(11) NOT NULL,
  `sahip` varchar(24) CHARACTER SET latin1 NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `kasa` int(11) NOT NULL,
  `tur` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of seyyarlar
-- ----------------------------

-- ----------------------------
-- Table structure for `smskayit`
-- ----------------------------
DROP TABLE IF EXISTS `smskayit`;
CREATE TABLE `smskayit` (
  `smsID` int(15) NOT NULL AUTO_INCREMENT,
  `gonderenoID` int(12) NOT NULL,
  `alanoID` int(11) NOT NULL,
  `numara` int(9) NOT NULL DEFAULT 0,
  `gonderennumara` int(11) NOT NULL,
  `rehberad` varchar(32) NOT NULL DEFAULT 'Yok',
  `rehbergonderenad` varchar(32) NOT NULL DEFAULT 'Yok',
  `mesaj` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`smsID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of smskayit
-- ----------------------------

-- ----------------------------
-- Table structure for `suckayitlari`
-- ----------------------------
DROP TABLE IF EXISTS `suckayitlari`;
CREATE TABLE `suckayitlari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(32) NOT NULL,
  `suc` varchar(128) NOT NULL,
  `tarih` varchar(24) NOT NULL,
  `ekleyen` varchar(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of suckayitlari
-- ----------------------------

-- ----------------------------
-- Table structure for `tamirciler`
-- ----------------------------
DROP TABLE IF EXISTS `tamirciler`;
CREATE TABLE `tamirciler` (
  `id` int(11) NOT NULL,
  `Pozisyonlar` varchar(256) NOT NULL,
  `IcKisim` varchar(256) NOT NULL,
  `Fiyat` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tamirciler
-- ----------------------------

-- ----------------------------
-- Table structure for `tarimiscileri`
-- ----------------------------
DROP TABLE IF EXISTS `tarimiscileri`;
CREATE TABLE `tarimiscileri` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `ciftlikid` int(11) NOT NULL,
  `oisim` varchar(64) NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tarimiscileri
-- ----------------------------

-- ----------------------------
-- Table structure for `tarimurunleri`
-- ----------------------------
DROP TABLE IF EXISTS `tarimurunleri`;
CREATE TABLE `tarimurunleri` (
  `SQLID` int(11) NOT NULL AUTO_INCREMENT,
  `ciftlikid` int(11) NOT NULL,
  `objeid` int(11) NOT NULL,
  `urun` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  PRIMARY KEY (`SQLID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tarimurunleri
-- ----------------------------

-- ----------------------------
-- Table structure for `teleportlar`
-- ----------------------------
DROP TABLE IF EXISTS `teleportlar`;
CREATE TABLE `teleportlar` (
  `id` int(11) NOT NULL,
  `isim` varchar(64) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `dx` float NOT NULL,
  `dy` float NOT NULL,
  `dz` float NOT NULL,
  `dvw` int(11) NOT NULL,
  `dinterior` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teleportlar
-- ----------------------------

-- ----------------------------
-- Table structure for `textureler`
-- ----------------------------
DROP TABLE IF EXISTS `textureler`;
CREATE TABLE `textureler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TextureIndex` int(11) NOT NULL,
  `TextureModel` int(11) NOT NULL,
  `TxdIsim` varchar(100) NOT NULL,
  `TextureIsim` varchar(100) NOT NULL,
  `ObjeSQL` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of textureler
-- ----------------------------

-- ----------------------------
-- Table structure for `tezgahlar`
-- ----------------------------
DROP TABLE IF EXISTS `tezgahlar`;
CREATE TABLE `tezgahlar` (
  `id` int(11) NOT NULL,
  `sahip` varchar(24) CHARACTER SET latin1 NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tezgahlar
-- ----------------------------

-- ----------------------------
-- Table structure for `transferlog`
-- ----------------------------
DROP TABLE IF EXISTS `transferlog`;
CREATE TABLE `transferlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gonderenforumid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gonderilenforumid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bakiyemiktari` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `onay` text CHARACTER SET latin1 NOT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of transferlog
-- ----------------------------

-- ----------------------------
-- Table structure for `tutuklamanoktalari`
-- ----------------------------
DROP TABLE IF EXISTS `tutuklamanoktalari`;
CREATE TABLE `tutuklamanoktalari` (
  `tID` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `a` float NOT NULL,
  `hx` float NOT NULL,
  `hy` float NOT NULL,
  `hz` float NOT NULL,
  `ha` float NOT NULL,
  `tWorld` int(11) NOT NULL DEFAULT 0,
  `tInterior` int(11) NOT NULL DEFAULT 0,
  `hWorld` int(11) NOT NULL DEFAULT 0,
  `hInterior` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tutuklamanoktalari
-- ----------------------------
INSERT INTO `tutuklamanoktalari` VALUES ('1', '1785.94', '2217.66', '4.522', '32.1777', '1787.46', '2220.68', '4.5744', '32.1777', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `uretimler`
-- ----------------------------
DROP TABLE IF EXISTS `uretimler`;
CREATE TABLE `uretimler` (
  `uretimID` int(12) NOT NULL AUTO_INCREMENT,
  `uretimTur` int(9) NOT NULL,
  `uretimSahip` int(20) NOT NULL,
  `uretimLaboratuvar` int(12) NOT NULL,
  `uretimSure` int(12) NOT NULL,
  PRIMARY KEY (`uretimID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of uretimler
-- ----------------------------

-- ----------------------------
-- Table structure for `uyusturucular`
-- ----------------------------
DROP TABLE IF EXISTS `uyusturucular`;
CREATE TABLE `uyusturucular` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posA` float NOT NULL,
  `uInterior` int(11) NOT NULL,
  `uWorld` int(11) NOT NULL,
  `Durum` int(11) NOT NULL DEFAULT 0,
  `Bakim` int(11) NOT NULL DEFAULT 0,
  `Ev` int(11) NOT NULL,
  PRIMARY KEY (`uID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of uyusturucular
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_arananlar`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_arananlar`;
CREATE TABLE `vcpd_arananlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rozetnumarasi` varchar(255) CHARACTER SET latin1 NOT NULL,
  `rutbe` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ekipkodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ekipuyeleri` varchar(255) CHARACTER SET latin1 NOT NULL,
  `suckodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  `arananisim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `riskseviyesi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sonkonum` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lakap` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayitliarac` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayitliev` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `raporicerik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kanitlar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vcpd_arananlar
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_aranan_aciklama`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_aranan_aciklama`;
CREATE TABLE `vcpd_aranan_aciklama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aciklamapersonel` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `rapor_id` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vcpd_aranan_aciklama
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_rapor`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_rapor`;
CREATE TABLE `vcpd_rapor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rozetnumarasi` varchar(255) CHARACTER SET latin1 NOT NULL,
  `rutbe` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ekipkodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ekipuyeleri` varchar(255) CHARACTER SET latin1 NOT NULL,
  `suckodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  `raporturu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `raporicerik` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aracplaka` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alakalikisiler` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vcpd_rapor
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_rapor_aciklama`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_rapor_aciklama`;
CREATE TABLE `vcpd_rapor_aciklama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aciklamapersonel` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `rapor_id` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vcpd_rapor_aciklama
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_rapor_araclar`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_rapor_araclar`;
CREATE TABLE `vcpd_rapor_araclar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rozetnumarasi` varchar(255) CHARACTER SET latin1 NOT NULL,
  `rutbe` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ekipkodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ekipuyeleri` varchar(255) CHARACTER SET latin1 NOT NULL,
  `aracplaka` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aracmodel` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aracrenk` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `arackonum` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aracsebep` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vcpd_rapor_araclar
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_rapor_cezalar`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_rapor_cezalar`;
CREATE TABLE `vcpd_rapor_cezalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sorusturmasebebi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personeladi` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `sorusturmagorevlisi` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `cezapuani` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rozetnumarasi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vcpd_rapor_cezalar
-- ----------------------------

-- ----------------------------
-- Table structure for `vcpd_silmelog`
-- ----------------------------
DROP TABLE IF EXISTS `vcpd_silmelog`;
CREATE TABLE `vcpd_silmelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `silenID` int(11) NOT NULL,
  `adsoyad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rozetnumarasi` varchar(255) CHARACTER SET latin1 NOT NULL,
  `rutbe` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ekipkodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ekipuyeleri` varchar(255) CHARACTER SET latin1 NOT NULL,
  `suckodu` varchar(255) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  `raporturu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `raporicerik` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aracplaka` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alakalikisiler` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vcpd_silmelog
-- ----------------------------

-- ----------------------------
-- Table structure for `vice_admingiris`
-- ----------------------------
DROP TABLE IF EXISTS `vice_admingiris`;
CREATE TABLE `vice_admingiris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kadi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of vice_admingiris
-- ----------------------------

-- ----------------------------
-- Table structure for `yasaklamalar`
-- ----------------------------
DROP TABLE IF EXISTS `yasaklamalar`;
CREATE TABLE `yasaklamalar` (
  `yasaklamaID` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(38) NOT NULL,
  `forumid` int(11) NOT NULL DEFAULT 0,
  `yasaklayan` varchar(32) DEFAULT NULL,
  `sebep` varchar(32) DEFAULT NULL,
  `acilmatarihi` int(36) NOT NULL,
  `yasaklanmatarihi` varchar(256) NOT NULL,
  PRIMARY KEY (`yasaklamaID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yasaklamalar
-- ----------------------------

-- ----------------------------
-- Table structure for `yatlar`
-- ----------------------------
DROP TABLE IF EXISTS `yatlar`;
CREATE TABLE `yatlar` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `sahip` varchar(24) NOT NULL,
  `isim` varchar(24) NOT NULL,
  `para` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of yatlar
-- ----------------------------

-- ----------------------------
-- Table structure for `yazilar`
-- ----------------------------
DROP TABLE IF EXISTS `yazilar`;
CREATE TABLE `yazilar` (
  `sqlID` int(11) NOT NULL AUTO_INCREMENT,
  `yaziID` int(10) NOT NULL,
  `yaziyazi` varchar(64) NOT NULL,
  `yazifont` varchar(32) NOT NULL,
  `yaziboyutu` int(10) NOT NULL DEFAULT 0,
  `yazix` float NOT NULL,
  `yaziy` float NOT NULL,
  `yaziz` float NOT NULL,
  `yazirx` float NOT NULL,
  `yaziry` float NOT NULL,
  `yazirz` float NOT NULL,
  PRIMARY KEY (`sqlID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of yazilar
-- ----------------------------

-- ----------------------------
-- Table structure for `yeritemleri`
-- ----------------------------
DROP TABLE IF EXISTS `yeritemleri`;
CREATE TABLE `yeritemleri` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `vw` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `miktar` int(11) NOT NULL,
  `obje` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of yeritemleri
-- ----------------------------
