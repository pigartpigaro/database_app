-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.44


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sekwan
--

CREATE DATABASE IF NOT EXISTS sekwan;
USE sekwan;

--
-- Definition of table `dewans`
--

DROP TABLE IF EXISTS `dewans`;
CREATE TABLE `dewans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `komisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dewans`
--

/*!40000 ALTER TABLE `dewans` DISABLE KEYS */;
INSERT INTO `dewans` (`id`,`nama`,`jabatan`,`nik`,`komisi`,`status`,`created_at`,`updated_at`) VALUES 
 (1,'arie','ketua','022166','komisi 1',1,'2024-02-02 08:12:08','2024-02-02 08:13:36'),
 (2,'arie ss','ketua umum','022166aa','komisi 1',1,'2024-02-02 08:54:58','2024-02-02 08:54:58'),
 (3,'arie ss','ketua umum','022166aa','komisi 1',1,'2024-02-02 08:55:23','2024-02-02 08:55:23');
/*!40000 ALTER TABLE `dewans` ENABLE KEYS */;


--
-- Definition of table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Definition of table `golongans`
--

DROP TABLE IF EXISTS `golongans`;
CREATE TABLE `golongans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `golongans`
--

/*!40000 ALTER TABLE `golongans` DISABLE KEYS */;
INSERT INTO `golongans` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'WALI KOTA / WAKIL WALI KOTA / PIMPINAN DPRD','2024-02-01 17:17:56','2024-02-01 17:17:56'),
 (2,'ANGGOTA DPRD / PEJABAT ESELON II','2024-02-01 17:18:22','2024-02-01 17:18:22'),
 (3,'PEJABAT ESELON III / GOL. IV','2024-02-01 17:18:41','2024-02-01 17:18:41'),
 (4,'PEJABAT ESELON IV/GOL III / GOL I/GOL II/PPPK/ NON ASN / MASYARAKAT','2024-02-01 17:20:49','2024-02-01 17:20:49');
/*!40000 ALTER TABLE `golongans` ENABLE KEYS */;


--
-- Definition of table `kota_kabs`
--

DROP TABLE IF EXISTS `kota_kabs`;
CREATE TABLE `kota_kabs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kota_kabs`
--

/*!40000 ALTER TABLE `kota_kabs` DISABLE KEYS */;
INSERT INTO `kota_kabs` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'Probolinggo','2024-02-01 14:13:25','2024-02-01 14:13:25');
/*!40000 ALTER TABLE `kota_kabs` ENABLE KEYS */;


--
-- Definition of table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'2014_10_12_000000_create_users_table',1),
 (2,'2014_10_12_100000_create_password_reset_tokens_table',1),
 (3,'2019_08_19_000000_create_failed_jobs_table',1),
 (4,'2019_12_14_000001_create_personal_access_tokens_table',1),
 (5,'2024_02_01_022545_create_provinsis_table',2),
 (6,'2024_02_01_061434_create_kota_kabs_table',3),
 (7,'2024_02_01_141518_create_satuans_table',4),
 (8,'2014_10_12_100000_create_password_resets_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Definition of table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;


--
-- Definition of table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Definition of table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Definition of table `provinsis`
--

DROP TABLE IF EXISTS `provinsis`;
CREATE TABLE `provinsis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsis`
--

/*!40000 ALTER TABLE `provinsis` DISABLE KEYS */;
INSERT INTO `provinsis` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'Aceh','2024-02-01 14:04:10','2024-02-01 14:05:16'),
 (2,'Sumatra Utara','2024-02-10 15:58:32','2024-02-10 15:58:32'),
 (3,'Riau','2024-02-10 15:58:51','2024-02-10 15:58:51'),
 (4,'Kepulauan Riau','2024-02-10 15:59:01','2024-02-10 15:59:01'),
 (5,'Jambi','2024-02-10 15:59:19','2024-02-10 15:59:19'),
 (6,'Sumatra Barat','2024-02-10 15:59:33','2024-02-10 15:59:33'),
 (7,'Sumatera Selatan','2024-02-10 16:00:11','2024-02-10 16:00:11'),
 (8,'Lampung','2024-02-10 16:00:22','2024-02-10 16:00:22'),
 (9,'Bengkulu','2024-02-10 16:00:30','2024-02-10 16:00:30'),
 (10,'Bangka Belitung','2024-02-10 16:00:50','2024-02-10 16:00:50'),
 (11,'Banten','2024-02-10 16:01:07','2024-02-10 16:01:07'),
 (12,'Jawa Barat','2024-02-10 16:01:16','2024-02-10 16:01:16'),
 (13,'D.K.I','2024-02-10 16:01:35','2024-02-10 16:01:35'),
 (14,'Jawa Tengah','2024-02-10 16:01:46','2024-02-10 16:01:46'),
 (15,'D.I','2024-02-10 16:02:03','2024-02-10 16:02:03'),
 (16,'Jawa Timur','2024-02-10 16:02:18','2024-02-10 16:02:18'),
 (17,'Bali','2024-02-10 16:02:25','2024-02-10 16:02:25'),
 (18,'Nusa Tenggara Barat','2024-02-10 16:03:07','2024-02-10 16:03:07'),
 (19,'Nusa Tenggara Timur','2024-02-10 16:03:20','2024-02-10 16:03:20'),
 (20,'Kalimantan Barat','2024-02-10 16:03:49','2024-02-10 16:03:49'),
 (21,'Kalimantan Tengah','2024-02-10 16:04:07','2024-02-10 16:04:07'),
 (22,'Kalimantan Selatan','2024-02-10 16:04:23','2024-02-10 16:04:23'),
 (23,'Kalimantan Timur','2024-02-10 16:04:37','2024-02-10 16:04:37'),
 (24,'Kalimantan Utara','2024-02-10 16:04:51','2024-02-10 16:04:51'),
 (25,'Sulawesi Utara','2024-02-10 16:05:11','2024-02-10 16:05:11'),
 (26,'Gorontalo','2024-02-10 16:05:27','2024-02-10 16:05:27'),
 (27,'Sulawesi Barat','2024-02-10 16:05:46','2024-02-10 16:05:46'),
 (28,'Sulawesi Selatan','2024-02-10 16:05:58','2024-02-10 16:05:58'),
 (29,'Sulawesi Tengah','2024-02-10 16:06:15','2024-02-10 16:06:15'),
 (30,'Sulawesi Tenggara','2024-02-10 16:06:30','2024-02-10 16:06:30'),
 (31,'Maluku','2024-02-10 16:06:45','2024-02-10 16:06:45'),
 (32,'Maluku Utara','2024-02-10 16:06:57','2024-02-10 16:06:57'),
 (33,'Papua','2024-02-10 16:07:07','2024-02-10 16:07:07'),
 (34,'Papua Barat','2024-02-10 16:07:12','2024-02-10 16:07:12'),
 (35,'Papua Barat Daya','2024-02-10 16:07:24','2024-02-10 16:07:24'),
 (36,'Papua Tengah','2024-02-10 16:07:35','2024-02-10 16:07:35'),
 (37,'Papua Selatan','2024-02-10 16:07:46','2024-02-10 16:07:46'),
 (38,'Papua Pegunungan','2024-02-10 16:08:18','2024-02-10 16:08:18');
/*!40000 ALTER TABLE `provinsis` ENABLE KEYS */;


--
-- Definition of table `satuans`
--

DROP TABLE IF EXISTS `satuans`;
CREATE TABLE `satuans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

/*!40000 ALTER TABLE `satuans` DISABLE KEYS */;
INSERT INTO `satuans` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'OH','2024-02-01 15:34:01','2024-02-01 15:34:01'),
 (2,'Orang','2024-02-01 16:22:09','2024-02-01 16:22:09'),
 (3,'OP','2024-02-01 16:22:16','2024-02-01 16:22:16'),
 (4,'Orang/Kali','2024-02-01 16:22:44','2024-02-01 16:22:44'),
 (5,'Paket','2024-02-01 16:22:51','2024-02-01 16:22:51');
/*!40000 ALTER TABLE `satuans` ENABLE KEYS */;


--
-- Definition of table `tingkatans`
--

DROP TABLE IF EXISTS `tingkatans`;
CREATE TABLE `tingkatans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tingkatans`
--

/*!40000 ALTER TABLE `tingkatans` DISABLE KEYS */;
INSERT INTO `tingkatans` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'Pejabat Negara / Daerah','2024-02-01 14:41:40','2024-02-01 14:41:40'),
 (2,'ASN-PNS, TNI, POLRI','2024-02-01 14:42:30','2024-02-01 14:42:30'),
 (3,'ASN-PPPK','2024-02-01 14:42:45','2024-02-01 14:42:45'),
 (4,'NON ASN','2024-02-01 14:43:04','2024-02-01 14:43:04'),
 (5,'Masyarakat','2024-02-01 14:43:16','2024-02-01 14:43:16');
/*!40000 ALTER TABLE `tingkatans` ENABLE KEYS */;


--
-- Definition of table `uh_perdinluarkotas`
--

DROP TABLE IF EXISTS `uh_perdinluarkotas`;
CREATE TABLE `uh_perdinluarkotas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_provinsi` bigint(20) NOT NULL DEFAULT '0',
  `id_satuan` bigint(20) NOT NULL DEFAULT '0',
  `id_tingkatan` bigint(20) NOT NULL DEFAULT '0',
  `biaya` decimal(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `uh_perdinluarkotas`
--

/*!40000 ALTER TABLE `uh_perdinluarkotas` DISABLE KEYS */;
INSERT INTO `uh_perdinluarkotas` (`id`,`id_provinsi`,`id_satuan`,`id_tingkatan`,`biaya`,`created_at`,`updated_at`) VALUES 
 (1,1,1,1,'360000.00','2024-02-01 16:36:09','2024-02-01 16:36:09'),
 (2,1,1,2,'350000.00','2024-02-01 16:36:25','2024-02-01 16:36:25'),
 (3,1,1,3,'250000.00','2024-02-01 16:36:36','2024-02-01 16:36:36'),
 (4,1,1,4,'200000.00','2024-02-01 16:36:52','2024-02-01 16:36:52'),
 (5,1,1,5,'150000.00','2024-02-01 16:37:11','2024-02-01 16:37:11');
/*!40000 ALTER TABLE `uh_perdinluarkotas` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`username`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'vghaar','vichoirul@gmail.com','pigartpigaro','$2y$12$7AsX9OLlAHoNEzZLMu.5uOI10nVh35qawup/B2XItxtsJEefAwY7.',NULL,'2024-02-01 11:33:03','2024-02-01 11:33:03'),
 (2,'Ari','ari@gmail.com','kentangkotak','$2y$10$O1iEgoXxG5O5T/Kzfq3Je.pCUIsayNsRT/vXYEMKSXJylPlec2XTq',NULL,'2024-02-10 16:30:04','2024-02-10 16:30:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
