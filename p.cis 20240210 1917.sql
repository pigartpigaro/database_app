-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	8.0.30


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema pcis
--

CREATE DATABASE IF NOT EXISTS pcis;
USE pcis;

--
-- Definition of table `_kategoris`
--

DROP TABLE IF EXISTS `_kategoris`;
CREATE TABLE `_kategoris` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_kategoris`
--

/*!40000 ALTER TABLE `_kategoris` DISABLE KEYS */;
INSERT INTO `_kategoris` (`id`,`nama`,`created_at`,`updated_at`) VALUES 
 (1,'Paket Reguler','2023-04-03 06:17:21','2023-04-03 06:17:21'),
 (2,'Paket Express','2023-04-03 06:17:51','2023-04-03 06:17:51'),
 (3,'Paket Kilat','2023-04-03 06:20:23','2023-04-03 06:20:23'),
 (4,'Paket Satuan','2023-04-03 07:53:25','2023-04-03 07:53:25'),
 (5,'Handuk','2023-04-03 07:53:44','2023-04-03 07:53:44'),
 (6,'Boneka','2023-04-03 07:53:58','2023-04-03 07:53:58'),
 (7,'Bantal & Bedcover','2023-04-03 07:54:24','2023-04-03 07:54:24'),
 (8,'Gordyn','2023-04-03 07:54:46','2023-04-03 07:54:46'),
 (9,'Karpet','2023-04-03 07:54:57','2023-04-03 07:54:57'),
 (10,'Aksesoris','2023-04-03 07:55:07','2023-04-03 07:55:07');
/*!40000 ALTER TABLE `_kategoris` ENABLE KEYS */;


--
-- Definition of table `_produks`
--

DROP TABLE IF EXISTS `_produks`;
CREATE TABLE `_produks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int DEFAULT '0',
  `kategori_id` bigint DEFAULT NULL,
  `satuan_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_produks`
--

/*!40000 ALTER TABLE `_produks` DISABLE KEYS */;
INSERT INTO `_produks` (`id`,`nama`,`harga`,`kategori_id`,`satuan_id`,`created_at`,`updated_at`) VALUES 
 (1,'CKS Reguler',5000,1,1,'2023-04-03 04:41:26','2023-04-03 04:41:26'),
 (2,'CKS Express',8000,2,1,'2023-04-03 04:43:32','2023-04-03 04:43:32'),
 (3,'CKS Kilat',13000,3,1,'2023-04-03 04:43:53','2023-04-03 04:43:53'),
 (4,'Kering/Setrika Reguler',4000,1,1,'2023-04-03 04:44:35','2023-04-03 04:44:35'),
 (5,'Kering/Setrika Express',6500,2,1,'2023-04-03 04:44:53','2023-04-03 04:44:53'),
 (6,'Kering/Setrika Kilat',10000,3,1,'2023-04-03 04:45:21','2023-04-03 04:45:21'),
 (7,'Jas Atasan',20000,4,2,'2023-04-03 07:01:02','2023-04-03 07:01:02'),
 (8,'Jas 1Stel',30000,4,4,'2023-04-03 07:01:18','2023-04-03 07:01:18'),
 (9,'Jaket / Sweater',12000,4,2,'2023-04-03 07:04:54','2023-04-03 07:04:54'),
 (10,'Jaket Gunung',25000,4,2,'2023-04-03 07:05:19','2023-04-03 07:05:19'),
 (11,'Jaket Kulit',30000,4,2,'2023-04-03 07:05:37','2023-04-03 07:05:37'),
 (12,'Tshirt / Polo',7500,4,2,'2023-04-03 07:07:17','2023-04-03 07:07:17'),
 (13,'Celana Panjang',9000,4,2,'2023-04-03 07:12:31','2023-04-03 07:12:31'),
 (14,'Celana Pendek',9000,4,2,'2023-04-03 07:12:40','2023-04-03 07:12:40'),
 (15,'Rok Panjang',10000,4,2,'2023-04-03 07:17:08','2023-04-03 07:17:08'),
 (16,'Rok Pendek',7000,4,2,'2023-04-03 07:17:22','2023-04-03 07:17:22'),
 (17,'Long Dress',25000,4,2,'2023-04-03 07:17:48','2023-04-03 07:17:48'),
 (18,'Kebaya',20000,4,2,'2023-04-03 07:18:08','2023-04-03 07:18:08'),
 (19,'Kemeja Panjang',10000,4,2,'2023-04-03 07:18:39','2023-04-03 07:18:39'),
 (20,'Kemeja Pendek',7000,4,2,'2023-04-03 07:18:57','2023-04-03 07:18:57'),
 (21,'Baju Batik',15000,4,2,'2023-04-03 07:20:13','2023-04-03 07:20:13'),
 (22,'Kain Batik',20000,4,2,'2023-04-03 07:20:37','2023-04-03 07:20:37'),
 (23,'Handuk Sedang',7000,5,1,'2023-04-03 07:21:59','2023-04-03 07:21:59'),
 (24,'Handuk Besar',11000,5,1,'2023-04-03 07:22:32','2023-04-03 07:22:32'),
 (25,'Boneka Kecil',10000,6,2,'2023-04-03 07:23:31','2023-04-03 07:23:31'),
 (26,'Boneka Besar',30000,6,2,'2023-04-03 07:23:55','2023-04-03 07:23:55'),
 (27,'Boneka Jumbo',60000,6,2,'2023-04-03 07:24:27','2023-04-03 07:24:27'),
 (28,'Bantal / Guling',20000,7,2,'2023-04-03 07:25:10','2023-04-03 07:25:10'),
 (29,'Bantal Bayi 1set',10000,7,4,'2023-04-03 07:26:06','2023-04-03 07:26:06'),
 (30,'Bantal Tidur Bayi',15000,7,2,'2023-04-03 07:26:52','2023-04-03 07:26:52'),
 (31,'Bed Cover Kecil',20000,7,2,'2023-04-03 07:30:32','2023-04-03 07:30:32'),
 (32,'Bed Cover Besar',30000,7,2,'2023-04-03 07:30:48','2023-04-03 07:30:48'),
 (33,'Selimut',12000,7,1,'2023-04-03 07:34:11','2023-04-03 07:34:11'),
 (34,'Sprei',12000,7,1,'2023-04-03 07:34:46','2023-04-03 07:34:46'),
 (35,'Gordyn',6000,8,3,'2023-04-03 07:35:17','2023-04-03 07:35:17'),
 (36,'Karpet Tipis',8000,9,3,'2023-04-03 07:35:51','2023-04-03 07:35:51'),
 (37,'Karpet Standar',12000,9,3,'2023-04-03 07:36:02','2023-04-03 07:36:02'),
 (38,'Karpet Permadani',18000,9,3,'2023-04-03 07:36:30','2023-04-03 07:36:30'),
 (39,'Sepatu Balita',5000,10,4,'2023-04-03 07:37:46','2023-04-03 07:37:46'),
 (40,'Sepatu Anak',10000,10,4,'2023-04-03 07:38:03','2023-04-03 07:38:03'),
 (41,'Sepatu Dewasa',25000,10,4,'2023-04-03 07:38:39','2023-04-03 07:38:39'),
 (42,'Sepatu Kulit',25000,10,4,'2023-04-03 07:38:56','2023-04-03 07:38:56'),
 (43,'Sepatu Premium/Basket',40000,10,4,'2023-04-03 07:39:23','2023-04-03 07:39:23'),
 (44,'Sepatu Trail',70000,10,4,'2023-04-03 07:39:42','2023-04-03 07:39:42'),
 (45,'Sandal Balita/Anak',5000,10,4,'2023-04-03 07:40:45','2023-04-03 07:40:45'),
 (46,'Sandal Dewasa',10000,10,4,'2023-04-03 07:40:58','2023-04-03 07:40:58'),
 (47,'Topi',8000,10,2,'2023-04-03 07:42:47','2023-04-03 07:42:47'),
 (48,'Tas Kecil (Pinggang, Handbag, Dompet)',8000,10,2,'2023-04-03 07:43:52','2023-04-03 07:43:52'),
 (49,'Tas Ransel',25000,10,2,'2023-04-03 07:44:12','2023-04-03 07:44:12'),
 (50,'Tas Kulit',30000,10,2,'2023-04-03 07:44:48','2023-04-03 07:44:48'),
 (51,'Sofa',75000,10,3,'2023-04-03 07:47:35','2023-04-03 07:47:35'),
 (52,'Kasur',100000,10,3,'2023-04-03 07:47:54','2023-04-03 07:47:54');
/*!40000 ALTER TABLE `_produks` ENABLE KEYS */;


--
-- Definition of table `_satuans`
--

DROP TABLE IF EXISTS `_satuans`;
CREATE TABLE `_satuans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_satuans`
--

/*!40000 ALTER TABLE `_satuans` DISABLE KEYS */;
INSERT INTO `_satuans` (`id`,`nama`,`created_at`,`updated_at`) VALUES 
 (1,'Kg','2023-04-03 06:48:07','2023-04-03 06:48:07'),
 (2,'Pcs','2023-04-03 06:53:17','2023-04-03 06:53:17'),
 (3,'Meter2','2023-04-03 06:53:33','2023-04-03 06:53:33'),
 (4,'Pasang','2023-04-03 06:54:16','2023-04-03 06:54:16');
/*!40000 ALTER TABLE `_satuans` ENABLE KEYS */;


--
-- Definition of table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


--
-- Definition of table `jns_bayars`
--

DROP TABLE IF EXISTS `jns_bayars`;
CREATE TABLE `jns_bayars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jns_bayars`
--

/*!40000 ALTER TABLE `jns_bayars` DISABLE KEYS */;
INSERT INTO `jns_bayars` (`id`,`nama`,`created_at`,`updated_at`) VALUES 
 (1,'Tunai','2023-05-28 13:01:10','2023-05-28 13:01:10'),
 (2,'Transfer','2023-05-28 13:01:26','2023-05-28 13:09:26'),
 (3,'QRIS','2023-05-28 13:01:51','2023-05-28 13:01:51'),
 (4,'Kasbon','2023-05-28 13:02:07','2023-05-28 13:02:07');
/*!40000 ALTER TABLE `jns_bayars` ENABLE KEYS */;


--
-- Definition of table `kategoris`
--

DROP TABLE IF EXISTS `kategoris`;
CREATE TABLE `kategoris` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
INSERT INTO `kategoris` (`id`,`nama`,`created_at`,`updated_at`) VALUES 
 (1,'Paket Reguler','2023-04-03 06:17:21','2023-04-03 06:17:21'),
 (2,'Paket Express','2023-04-03 06:17:51','2023-04-03 06:17:51'),
 (3,'Paket Kilat','2023-04-03 06:20:23','2023-04-03 06:20:23'),
 (4,'Paket Satuan','2023-04-03 07:53:25','2023-04-03 07:53:25'),
 (5,'Handuk','2023-04-03 07:53:44','2023-04-03 07:53:44'),
 (6,'Boneka','2023-04-03 07:53:58','2023-04-03 07:53:58'),
 (7,'Bantal & Bedcover','2023-04-03 07:54:24','2023-04-03 07:54:24'),
 (8,'Gordyn','2023-04-03 07:54:46','2023-04-03 07:54:46'),
 (9,'Karpet','2023-04-03 07:54:57','2023-04-03 07:54:57'),
 (10,'Aksesoris','2023-04-03 07:55:07','2023-04-03 07:55:07');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;


--
-- Definition of table `laporans`
--

DROP TABLE IF EXISTS `laporans`;
CREATE TABLE `laporans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` decimal(20,2) DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `laporans`
--

/*!40000 ALTER TABLE `laporans` DISABLE KEYS */;
INSERT INTO `laporans` (`id`,`nama`,`satuan`,`harga`,`keterangan`,`created_at`,`updated_at`) VALUES 
 (5,'beras','kg','10000.00','ada','2024-02-05 21:05:03','2024-02-05 21:05:03'),
 (6,'gula','kg','40000.00','ada','2024-02-05 21:05:18','2024-02-05 21:05:18'),
 (7,'garam','kg','140000.00','ada','2024-02-05 21:05:40','2024-02-05 21:05:40');
/*!40000 ALTER TABLE `laporans` ENABLE KEYS */;


--
-- Definition of table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (19,'2014_10_12_000000_create_users_table',1),
 (20,'2014_10_12_100000_create_password_reset_tokens_table',1),
 (21,'2019_08_19_000000_create_failed_jobs_table',1),
 (22,'2019_12_14_000001_create_personal_access_tokens_table',1),
 (23,'2023_03_14_190729_create__produks_table',1),
 (24,'2023_03_14_190757_create__satuans_table',1),
 (25,'2023_04_03_054842_create_kategoris_table',2),
 (26,'2023_04_03_054842_create__kategoris_table',3),
 (27,'2023_05_19_111947_create_pelanggans_table',4),
 (28,'2023_05_19_111947_create__pelanggans_table',5),
 (29,'2023_05_24_155121_create_transaksis_table',6),
 (30,'2023_05_24_155121_create__transaksis_table',7),
 (31,'2023_05_24_162019_create__isi_transaksis',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Definition of table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;


--
-- Definition of table `pelanggans`
--

DROP TABLE IF EXISTS `pelanggans`;
CREATE TABLE `pelanggans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

/*!40000 ALTER TABLE `pelanggans` DISABLE KEYS */;
INSERT INTO `pelanggans` (`id`,`nama`,`alamat`,`nohp`,`created_at`,`updated_at`) VALUES 
 (1,'Vighar Choirul','Probolinggo','0882776663','2023-09-21 08:57:24','2023-09-21 08:57:24'),
 (2,'Septa','Jl. Merapi Perum Griya Harapan Indah I No 6','0821111','2023-09-21 13:43:25','2023-09-21 13:43:25'),
 (54,'Restu Sri Wahyuni','Jl Pilang','085258850718','2024-01-17 05:13:42','2024-01-17 05:13:42'),
 (55,'Angga Kusuma','Sumber Taman','085236042123','2024-01-17 05:14:44','2024-01-17 05:14:44'),
 (58,'April','Kos Kaloka','085331471097','2024-01-17 05:17:16','2024-01-17 05:17:16'),
 (59,'Dinia','Kos Kaloka','08111351906','2024-01-17 05:18:03','2024-01-17 05:18:03'),
 (60,'Dinda','Kos Kaloka','082139903446','2024-01-17 05:18:37','2024-01-17 05:18:37'),
 (61,'Nita','Kos Kaloka','085606203270','2024-01-17 05:19:19','2024-01-17 05:19:19'),
 (62,'Afnan','Koprasi Perumahan','082141535008','2024-01-17 05:20:00','2024-01-17 05:20:00'),
 (63,'Ayu','Bromopermai','082228688420','2024-01-17 05:20:35','2024-01-17 05:20:35'),
 (64,'Bu Adis','Perum Griya Harapan Indah','08113211516','2024-01-17 05:21:22','2024-01-17 05:21:22'),
 (65,'Bu Charlos','Perumahan','081252611573','2024-01-17 05:22:08','2024-01-17 05:22:08'),
 (66,'Bu Nurul','Triwung','082336990992','2024-01-17 05:22:44','2024-01-17 05:22:44'),
 (67,'Bu Rina','Triwung Lor','082142144611','2024-01-17 05:23:36','2024-01-17 05:23:36'),
 (68,'Bu Ade','Jl. Bendi Triwung','082334210537','2024-01-17 05:25:03','2024-01-17 05:25:03'),
 (69,'Bu Faril','Triwung','082236529217','2024-01-17 05:25:27','2024-01-17 05:25:27'),
 (70,'Bu Modrek','Triwung','082234930909','2024-01-17 05:26:11','2024-01-17 05:26:11'),
 (71,'Bu Rahma','Perumahan Merapi','083847061957','2024-01-17 05:26:48','2024-01-17 05:26:48'),
 (72,'Bu Widia','Jl. Kerakatau','081216655534','2024-01-17 05:27:30','2024-01-17 05:27:30'),
 (73,'Bu Yanto','Triwung','085231346113','2024-01-17 05:28:08','2024-01-17 05:28:08'),
 (74,'Hafidah','Ketapang','082333516533','2024-01-17 05:28:59','2024-01-17 05:28:59');
/*!40000 ALTER TABLE `pelanggans` ENABLE KEYS */;


--
-- Definition of table `pembayarans`
--

DROP TABLE IF EXISTS `pembayarans`;
CREATE TABLE `pembayarans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaksi_id` bigint DEFAULT NULL,
  `pelanggan_id` bigint DEFAULT NULL,
  `jnsbayar_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pembayarans`
--

/*!40000 ALTER TABLE `pembayarans` DISABLE KEYS */;
INSERT INTO `pembayarans` (`id`,`transaksi_id`,`pelanggan_id`,`jnsbayar_id`,`total`,`created_at`,`updated_at`) VALUES 
 (1,1,1,NULL,NULL,'2023-04-03 04:41:26','2023-04-03 04:41:26'),
 (2,2,1,NULL,NULL,'2023-04-03 04:43:32','2023-04-03 04:43:32'),
 (3,3,1,NULL,NULL,'2023-04-03 04:43:53','2023-04-03 04:43:53'),
 (4,1,1,NULL,NULL,'2023-04-03 04:44:35','2023-04-03 04:44:35'),
 (5,2,1,NULL,NULL,'2023-04-03 04:44:53','2023-04-03 04:44:53'),
 (6,3,1,NULL,NULL,'2023-04-03 04:45:21','2023-04-03 04:45:21'),
 (7,4,2,NULL,NULL,'2023-04-03 07:01:02','2023-04-03 07:01:02'),
 (8,4,4,NULL,NULL,'2023-04-03 07:01:18','2023-04-03 07:01:18'),
 (9,4,2,NULL,NULL,'2023-04-03 07:04:54','2023-04-03 07:04:54'),
 (10,4,2,NULL,NULL,'2023-04-03 07:05:19','2023-04-03 07:05:19'),
 (11,4,2,NULL,NULL,'2023-04-03 07:05:37','2023-04-03 07:05:37'),
 (12,4,2,NULL,NULL,'2023-04-03 07:07:17','2023-04-03 07:07:17'),
 (13,4,2,NULL,NULL,'2023-04-03 07:12:31','2023-04-03 07:12:31'),
 (14,4,2,NULL,NULL,'2023-04-03 07:12:40','2023-04-03 07:12:40'),
 (15,4,2,NULL,NULL,'2023-04-03 07:17:08','2023-04-03 07:17:08'),
 (16,4,2,NULL,NULL,'2023-04-03 07:17:22','2023-04-03 07:17:22'),
 (17,4,2,NULL,NULL,'2023-04-03 07:17:48','2023-04-03 07:17:48'),
 (18,4,2,NULL,NULL,'2023-04-03 07:18:08','2023-04-03 07:18:08'),
 (19,4,2,NULL,NULL,'2023-04-03 07:18:39','2023-04-03 07:18:39'),
 (20,4,2,NULL,NULL,'2023-04-03 07:18:57','2023-04-03 07:18:57'),
 (21,4,2,NULL,NULL,'2023-04-03 07:20:13','2023-04-03 07:20:13'),
 (22,4,2,NULL,NULL,'2023-04-03 07:20:37','2023-04-03 07:20:37'),
 (23,5,1,NULL,NULL,'2023-04-03 07:21:59','2023-04-03 07:21:59'),
 (24,5,1,NULL,NULL,'2023-04-03 07:22:32','2023-04-03 07:22:32'),
 (25,6,2,NULL,NULL,'2023-04-03 07:23:31','2023-04-03 07:23:31'),
 (26,6,2,NULL,NULL,'2023-04-03 07:23:55','2023-04-03 07:23:55'),
 (27,6,2,NULL,NULL,'2023-04-03 07:24:27','2023-04-03 07:24:27'),
 (28,7,2,NULL,NULL,'2023-04-03 07:25:10','2023-04-03 07:25:10'),
 (29,7,4,NULL,NULL,'2023-04-03 07:26:06','2023-04-03 07:26:06'),
 (30,7,2,NULL,NULL,'2023-04-03 07:26:52','2023-04-03 07:26:52'),
 (31,7,2,NULL,NULL,'2023-04-03 07:30:32','2023-04-03 07:30:32'),
 (32,7,2,NULL,NULL,'2023-04-03 07:30:48','2023-04-03 07:30:48'),
 (33,7,1,NULL,NULL,'2023-04-03 07:34:11','2023-04-03 07:34:11'),
 (34,7,1,NULL,NULL,'2023-04-03 07:34:46','2023-04-03 07:34:46'),
 (35,8,3,NULL,NULL,'2023-04-03 07:35:17','2023-04-03 07:35:17'),
 (36,9,3,NULL,NULL,'2023-04-03 07:35:51','2023-04-03 07:35:51'),
 (37,9,3,NULL,NULL,'2023-04-03 07:36:02','2023-04-03 07:36:02'),
 (38,9,3,NULL,NULL,'2023-04-03 07:36:30','2023-04-03 07:36:30'),
 (39,10,4,NULL,NULL,'2023-04-03 07:37:46','2023-04-03 07:37:46'),
 (40,10,4,NULL,NULL,'2023-04-03 07:38:03','2023-04-03 07:38:03'),
 (41,10,4,NULL,NULL,'2023-04-03 07:38:39','2023-04-03 07:38:39'),
 (42,10,4,NULL,NULL,'2023-04-03 07:38:56','2023-04-03 07:38:56'),
 (43,10,4,NULL,NULL,'2023-04-03 07:39:23','2023-04-03 07:39:23'),
 (44,10,4,NULL,NULL,'2023-04-03 07:39:42','2023-04-03 07:39:42'),
 (45,10,4,NULL,NULL,'2023-04-03 07:40:45','2023-04-03 07:40:45'),
 (46,10,4,NULL,NULL,'2023-04-03 07:40:58','2023-04-03 07:40:58'),
 (47,10,2,NULL,NULL,'2023-04-03 07:42:47','2023-04-03 07:42:47'),
 (48,10,2,NULL,NULL,'2023-04-03 07:43:52','2023-04-03 07:43:52'),
 (49,10,2,NULL,NULL,'2023-04-03 07:44:12','2023-04-03 07:44:12'),
 (50,10,2,NULL,NULL,'2023-04-03 07:44:48','2023-04-03 07:44:48'),
 (51,10,3,NULL,NULL,'2023-04-03 07:47:35','2023-04-03 07:47:35'),
 (52,10,3,NULL,NULL,'2023-04-03 07:47:54','2023-04-03 07:47:54');
/*!40000 ALTER TABLE `pembayarans` ENABLE KEYS */;


--
-- Definition of table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;


--
-- Definition of table `produks`
--

DROP TABLE IF EXISTS `produks`;
CREATE TABLE `produks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT '0.00',
  `kategori_id` bigint DEFAULT NULL,
  `satuan_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

/*!40000 ALTER TABLE `produks` DISABLE KEYS */;
INSERT INTO `produks` (`id`,`nama`,`harga`,`kategori_id`,`satuan_id`,`created_at`,`updated_at`) VALUES 
 (1,'CKS Reguler','5000.00',1,1,'2023-04-03 04:41:26','2023-04-03 04:41:26'),
 (2,'CKS Express','8000.00',2,1,'2023-04-03 04:43:32','2023-04-03 04:43:32'),
 (3,'CKS Kilat','13000.00',3,1,'2023-04-03 04:43:53','2023-04-03 04:43:53'),
 (4,'Kering/Setrika Reguler','4000.00',1,1,'2023-04-03 04:44:35','2023-04-03 04:44:35'),
 (5,'Kering/Setrika Express','6500.00',2,1,'2023-04-03 04:44:53','2023-04-03 04:44:53'),
 (6,'Kering/Setrika Kilat','10000.00',3,1,'2023-04-03 04:45:21','2023-04-03 04:45:21'),
 (7,'Jas Atasan','20000.00',4,2,'2023-04-03 07:01:02','2023-04-03 07:01:02'),
 (8,'Jas 1Stel','30000.00',4,4,'2023-04-03 07:01:18','2023-04-03 07:01:18'),
 (9,'Jaket / Sweater','12000.00',4,2,'2023-04-03 07:04:54','2023-04-03 07:04:54'),
 (10,'Jaket Gunung','25000.00',4,2,'2023-04-03 07:05:19','2023-04-03 07:05:19'),
 (11,'Jaket Kulit','30000.00',4,2,'2023-04-03 07:05:37','2023-04-03 07:05:37'),
 (12,'Tshirt / Polo','7500.00',4,2,'2023-04-03 07:07:17','2023-04-03 07:07:17'),
 (13,'Celana Panjang','9000.00',4,2,'2023-04-03 07:12:31','2023-04-03 07:12:31'),
 (14,'Celana Pendek','9000.00',4,2,'2023-04-03 07:12:40','2023-04-03 07:12:40'),
 (15,'Rok Panjang','10000.00',4,2,'2023-04-03 07:17:08','2023-04-03 07:17:08'),
 (16,'Rok Pendek','7000.00',4,2,'2023-04-03 07:17:22','2023-04-03 07:17:22'),
 (17,'Long Dress','25000.00',4,2,'2023-04-03 07:17:48','2023-04-03 07:17:48'),
 (18,'Kebaya','20000.00',4,2,'2023-04-03 07:18:08','2023-04-03 07:18:08'),
 (19,'Kemeja Panjang','10000.00',4,2,'2023-04-03 07:18:39','2023-04-03 07:18:39'),
 (20,'Kemeja Pendek','7000.00',4,2,'2023-04-03 07:18:57','2023-04-03 07:18:57'),
 (21,'Baju Batik','15000.00',4,2,'2023-04-03 07:20:13','2023-04-03 07:20:13'),
 (22,'Kain Batik','20000.00',4,2,'2023-04-03 07:20:37','2023-04-03 07:20:37'),
 (23,'Handuk Sedang','7000.00',5,1,'2023-04-03 07:21:59','2023-04-03 07:21:59'),
 (24,'Handuk Besar','11000.00',5,1,'2023-04-03 07:22:32','2023-04-03 07:22:32'),
 (25,'Boneka Kecil','10000.00',6,2,'2023-04-03 07:23:31','2023-04-03 07:23:31'),
 (26,'Boneka Besar','30000.00',6,2,'2023-04-03 07:23:55','2023-04-03 07:23:55'),
 (27,'Boneka Jumbo','60000.00',6,2,'2023-04-03 07:24:27','2023-04-03 07:24:27'),
 (28,'Bantal / Guling','20000.00',7,2,'2023-04-03 07:25:10','2023-04-03 07:25:10'),
 (29,'Bantal Bayi 1set','10000.00',7,4,'2023-04-03 07:26:06','2023-04-03 07:26:06'),
 (30,'Bantal Tidur Bayi','15000.00',7,2,'2023-04-03 07:26:52','2023-04-03 07:26:52'),
 (31,'Bed Cover Kecil','20000.00',7,2,'2023-04-03 07:30:32','2023-04-03 07:30:32'),
 (32,'Bed Cover Besar','30000.00',7,2,'2023-04-03 07:30:48','2023-04-03 07:30:48'),
 (33,'Selimut','12000.00',7,1,'2023-04-03 07:34:11','2023-04-03 07:34:11'),
 (34,'Sprei','12000.00',7,1,'2023-04-03 07:34:46','2023-04-03 07:34:46'),
 (35,'Gordyn','6000.00',8,3,'2023-04-03 07:35:17','2023-04-03 07:35:17'),
 (36,'Karpet Tipis','8000.00',9,3,'2023-04-03 07:35:51','2023-04-03 07:35:51'),
 (37,'Karpet Standar','12000.00',9,3,'2023-04-03 07:36:02','2023-04-03 07:36:02'),
 (38,'Karpet Permadani','18000.00',9,3,'2023-04-03 07:36:30','2023-04-03 07:36:30'),
 (39,'Sepatu Balita','5000.00',10,4,'2023-04-03 07:37:46','2023-04-03 07:37:46'),
 (40,'Sepatu Anak','10000.00',10,4,'2023-04-03 07:38:03','2023-04-03 07:38:03'),
 (41,'Sepatu Dewasa','25000.00',10,4,'2023-04-03 07:38:39','2023-04-03 07:38:39'),
 (42,'Sepatu Kulit','25000.00',10,4,'2023-04-03 07:38:56','2023-04-03 07:38:56'),
 (43,'Sepatu Premium/Basket','40000.00',10,4,'2023-04-03 07:39:23','2023-04-03 07:39:23'),
 (44,'Sepatu Trail','70000.00',10,4,'2023-04-03 07:39:42','2023-04-03 07:39:42'),
 (45,'Sandal Balita/Anak','5000.00',10,4,'2023-04-03 07:40:45','2023-04-03 07:40:45'),
 (46,'Sandal Dewasa','10000.00',10,4,'2023-04-03 07:40:58','2023-04-03 07:40:58'),
 (47,'Topi','8000.00',10,2,'2023-04-03 07:42:47','2023-04-03 07:42:47'),
 (48,'Tas Kecil (Pinggang, Handbag, Dompet)','8000.00',10,2,'2023-04-03 07:43:52','2023-04-03 07:43:52'),
 (49,'Tas Ransel','25000.00',10,2,'2023-04-03 07:44:12','2023-04-03 07:44:12'),
 (50,'Tas Kulit','30000.00',10,2,'2023-04-03 07:44:48','2023-04-03 07:44:48'),
 (51,'Sofa','75000.00',10,3,'2023-04-03 07:47:35','2023-04-03 07:47:35'),
 (52,'Kasur','100000.00',10,3,'2023-04-03 07:47:54','2023-04-03 07:47:54'),
 (56,'coba nambah','1001.00',2,2,'2023-10-16 04:02:10','2023-10-25 01:13:29'),
 (78,'coba lagi','11122.00',5,4,'2024-01-11 03:14:53','2024-01-11 03:14:53');
/*!40000 ALTER TABLE `produks` ENABLE KEYS */;


--
-- Definition of table `satuans`
--

DROP TABLE IF EXISTS `satuans`;
CREATE TABLE `satuans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

/*!40000 ALTER TABLE `satuans` DISABLE KEYS */;
INSERT INTO `satuans` (`id`,`nama`,`created_at`,`updated_at`) VALUES 
 (1,'Kg','2023-10-25 01:10:10','2023-10-25 01:10:10'),
 (2,'Pcs','2023-10-25 01:11:07','2023-10-25 01:11:07'),
 (3,'Meter2','2023-10-25 01:11:18','2023-10-25 01:11:18'),
 (4,'Pasang','2023-10-25 01:11:26','2023-10-25 01:11:26');
/*!40000 ALTER TABLE `satuans` ENABLE KEYS */;


--
-- Definition of table `transaksirincis`
--

DROP TABLE IF EXISTS `transaksirincis`;
CREATE TABLE `transaksirincis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaksi_id` bigint NOT NULL,
  `produk_id` bigint NOT NULL,
  `kuantitas` decimal(10,2) DEFAULT '0.00',
  `harga_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksirincis`
--

/*!40000 ALTER TABLE `transaksirincis` DISABLE KEYS */;
INSERT INTO `transaksirincis` (`id`,`transaksi_id`,`produk_id`,`kuantitas`,`harga_id`,`created_at`,`updated_at`) VALUES 
 (186,153,2,'1.00',8000,'2024-02-08 20:11:47','2024-02-08 20:11:47'),
 (187,153,3,'4.00',13000,'2024-02-08 20:11:54','2024-02-08 20:11:54');
/*!40000 ALTER TABLE `transaksirincis` ENABLE KEYS */;


--
-- Definition of table `transaksis`
--

DROP TABLE IF EXISTS `transaksis`;
CREATE TABLE `transaksis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `no_nota` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `pelanggan_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

/*!40000 ALTER TABLE `transaksis` DISABLE KEYS */;
INSERT INTO `transaksis` (`id`,`no_nota`,`tanggal`,`time`,`pelanggan_id`,`created_at`,`updated_at`) VALUES 
 (153,'09NAMI021139','2024-02-09','03:11:00',62,'2024-02-09 03:11:39','2024-02-09 03:11:39');
/*!40000 ALTER TABLE `transaksis` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci CHECKSUM=1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`username`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'Vighar','vichoirul@gmail.com','vghaar','$2y$10$U/FtfOiJUXIsArh.3OJequgoJc7Bw8G9o42kthTOet7rGB0mxe3L6',NULL,'2023-09-06 17:47:09','2023-09-06 17:47:09'),
 (2,'Nami','vpluzt@gmail.com','nami','$2y$10$Q66fg.kifgX9WzbCCtf3aOHokWkfqweTOYDJppeNjA.9q1DPg3feq',NULL,'2023-09-06 17:49:53','2023-09-06 17:49:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
