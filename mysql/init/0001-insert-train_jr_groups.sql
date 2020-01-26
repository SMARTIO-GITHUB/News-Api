# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.27)
# データベース: mtmr-bot
# 作成時刻: 2019-10-21 06:12:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ train_jr_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `train_jr_groups`;

CREATE TABLE `train_jr_groups` (
  `id`        INT AUTO_INCREMENT COMMENT '路線ID',
  `line_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路線名(オリジナル)',
  `line_name_hira` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路線名(ひらがな)',
  `line_name_kana` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路線名(かな)',
  `line_group` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路線グループ',
  `created_at` timestamp not null default current_timestamp,
  `updated_at` timestamp not null default current_timestamp on update current_timestamp,
  PRIMARY KEY (`id`,`line_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='電車路線情報';

LOCK TABLES `train_jr_groups` WRITE;
/*!40000 ALTER TABLE `train_jr_groups` DISABLE KEYS */;

INSERT INTO `train_jr_groups` (`line_name`, `line_name_hira`, `line_name_kana`, `line_group`)
VALUES
	('上越線','じょうえつせん','ジョウエツセン','direction_tohoku'),
	('上野東京ライン','うえのとうきょうらいん','ウエノトウキョウライン','direction_chokutsu'),
	('両毛線','りょうもうせん','リョウモウセン','direction_tohoku'),
	('中央本線','ちゅうおうほんせん','チュウオウホンセン','direction_chuo'),
	('中央線','ちゅうおうせん','チュウオウセン','direction_chuo'),
	('久留里線','くるりせん','クルリセン','direction_soubu'),
	('五日市線','いつかいちせん','イツカイチセン','direction_chuo'),
	('京浜東北線','けいきゅうとうほくせん','ケイキュウトウホクセン','direction_tokaido'),
	('京葉線','けいようせん','ケイヨウセン','direction_soubu'),
	('伊東線','いとうせん','イトウセン','direction_tokaido'),
	('信越本線','しんえつほんせん','シンエツホンセン','direction_tohoku'),
	('八高線','はちこうせん','ハチコウセン','direction_tohoku'),
	('内房線','うちぼうせん','ウチボウセン','direction_soubu'),
	('南武線','なんぶせん','ナンブセン','direction_tokaido'),
	('吾妻線','あがつません','アガツマセン','direction_tohoku'),
	('埼京線','さいきょうせん','サイキョウセン','direction_tohoku'),
	('外房線','そとぼうせん','ソトボウセン','direction_soubu'),
	('宇都宮線','うつのみやせん','ウツノミヤセン','direction_tohoku'),
	('小海線','こうみせん','コウミセン','direction_chuo'),
	('山手線','やまのてせん','ヤマノテセン','direction_yamate'),
	('川越線','かわごえせん','カワゴエセン','direction_tohoku'),
	('常磐線','じょうばんせん','ジョウバンセン','direction_jouban'),
	('成田線','なりたせん','ナリタセン','direction_soubu'),
	('日光線','にっこうせん','ニッコウセン','direction_tohoku'),
	('東海道線','とうかいどうせん','トウカイドウセン','direction_tokaido'),
	('東金線','ひがしかねせん','ヒガシカネセン','direction_soubu'),
	('横浜線','よこはません','ヨコハマセン','direction_tokaido'),
	('横須賀線','よこすかせん','ヨコスカセン','direction_tokaido'),
	('武蔵野線','むさしのせん','ムサシノセン','direction_tohoku'),
	('水戸線','みとせん','ミトセン','direction_jouban'),
	('水郡線','すいぐんせん','スイグンセン','direction_jouban'),
	('湘南新宿ライン','しょうなんしんじゅくらいん','ショウナンシンジュクライン','direction_chokutsu'),
	('相模線','さがみせん','サガミセン','direction_tokaido'),
	('総武本線','そうぶほんせん','ソウブホンセン','direction_soubu'),
	('総武線','そうぶせん','ソウブセン','direction_soubu'),
	('青梅線','おうめせん','オウメセン','direction_chuo'),
	('高崎線','たかさきせん','タカサキセン','direction_tohoku'),
	('鳥山線','とりやません','トリヤマセン','direction_tohoku'),
	('鶴見線','つるみせん','ツルミセン','direction_tokaido'),
	('鹿島線','かしません','カシマセン','direction_soubu');

/*!40000 ALTER TABLE `train_jr_groups` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
