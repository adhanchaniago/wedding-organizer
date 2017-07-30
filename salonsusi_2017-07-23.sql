# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: salonsusi
# Generation Time: 2017-07-23 15:47:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table dekorasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dekorasi`;

CREATE TABLE `dekorasi` (
  `dekorasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dekorasi` varchar(15) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_dekorasi` decimal(11,0) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`dekorasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `dekorasi` WRITE;
/*!40000 ALTER TABLE `dekorasi` DISABLE KEYS */;

INSERT INTO `dekorasi` (`dekorasi_id`, `nama_dekorasi`, `deskripsi`, `harga_dekorasi`, `foto`)
VALUES
	(1,'Dekorasi 1','Yes',2000000,'bLLexhuDv1oAnwzUzpWZjg0D9xqH681NWwztjASD6.jpeg');

/*!40000 ALTER TABLE `dekorasi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dokumentasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dokumentasi`;

CREATE TABLE `dokumentasi` (
  `dokumentasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokumentasi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_dokumentasi` decimal(11,0) NOT NULL,
  PRIMARY KEY (`dokumentasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `dokumentasi` WRITE;
/*!40000 ALTER TABLE `dokumentasi` DISABLE KEYS */;

INSERT INTO `dokumentasi` (`dokumentasi_id`, `nama_dokumentasi`, `deskripsi`, `harga_dokumentasi`)
VALUES
	(1,'Dokumentasi 1','Yes',2000000);

/*!40000 ALTER TABLE `dokumentasi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gedung
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gedung`;

CREATE TABLE `gedung` (
  `gedung_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `nama_gedung` varchar(35) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_gedung` decimal(11,0) NOT NULL,
  `foto` varchar(255) NOT NULL,
  KEY `gedung_id` (`gedung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `gedung` WRITE;
/*!40000 ALTER TABLE `gedung` DISABLE KEYS */;

INSERT INTO `gedung` (`gedung_id`, `nama_gedung`, `deskripsi`, `harga_gedung`, `foto`)
VALUES
	(1,'Gedung 1','Yes',2000000,'6dn4QX4oHv8y0RyTv29kU6UVfR93LqtJ0otemLCx14.jpeg');

/*!40000 ALTER TABLE `gedung` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table katering
# ------------------------------------------------------------

DROP TABLE IF EXISTS `katering`;

CREATE TABLE `katering` (
  `katering_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_katering` varchar(25) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jumlah` decimal(5,0) NOT NULL,
  `harga_katering` decimal(11,0) NOT NULL,
  PRIMARY KEY (`katering_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `katering` WRITE;
/*!40000 ALTER TABLE `katering` DISABLE KEYS */;

INSERT INTO `katering` (`katering_id`, `nama_katering`, `deskripsi`, `jumlah`, `harga_katering`)
VALUES
	(1,'Katering 1','Yes\r\n',500,2000000);

/*!40000 ALTER TABLE `katering` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table konfirmasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `konfirmasi`;

CREATE TABLE `konfirmasi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pelanggan_id` int(11) DEFAULT NULL,
  `pemesanan_id` int(11) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `pemilik` varchar(25) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `konfirmasi` WRITE;
/*!40000 ALTER TABLE `konfirmasi` DISABLE KEYS */;

INSERT INTO `konfirmasi` (`id`, `pelanggan_id`, `pemesanan_id`, `no_rek`, `nama_bank`, `pemilik`, `foto`)
VALUES
	(1,2,201708032,'1231313131','cek kedemek','sentot','Screen_Shot_2017-07-20_at_9_25_43_PM1.png');

/*!40000 ALTER TABLE `konfirmasi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`version`)
VALUES
	(20170624132119);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pelanggan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`pelanggan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;

INSERT INTO `pelanggan` (`pelanggan_id`, `nama`, `no_telp`, `alamat`, `email`, `password`)
VALUES
	(1,'widi','081298372737','kramat','widi@gmail.com','176'),
	(2,'dicky','081512341234','kramat','dicky@gmail.com','582');

/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pemesanan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pemesanan`;

CREATE TABLE `pemesanan` (
  `id_pemesanan` varchar(15) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `tgl_acara` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id_pemesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pemesanan` WRITE;
/*!40000 ALTER TABLE `pemesanan` DISABLE KEYS */;

INSERT INTO `pemesanan` (`id_pemesanan`, `user_id`, `tgl_acara`, `status`)
VALUES
	('201708032',2,'2017-08-03','active'),
	('201708101',1,'2017-08-10','pending');

/*!40000 ALTER TABLE `pemesanan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pemesanan_dekorasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pemesanan_dekorasi`;

CREATE TABLE `pemesanan_dekorasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` varchar(15) NOT NULL,
  `dekorasi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `pemesanan_dekorasi` WRITE;
/*!40000 ALTER TABLE `pemesanan_dekorasi` DISABLE KEYS */;

INSERT INTO `pemesanan_dekorasi` (`id`, `pemesanan_id`, `dekorasi_id`)
VALUES
	(1,'201708101',1),
	(2,'201708032',1);

/*!40000 ALTER TABLE `pemesanan_dekorasi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pemesanan_dokumentasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pemesanan_dokumentasi`;

CREATE TABLE `pemesanan_dokumentasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` varchar(15) NOT NULL,
  `dokumentasi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `pemesanan_dokumentasi` WRITE;
/*!40000 ALTER TABLE `pemesanan_dokumentasi` DISABLE KEYS */;

INSERT INTO `pemesanan_dokumentasi` (`id`, `pemesanan_id`, `dokumentasi_id`)
VALUES
	(1,'201708101',1);

/*!40000 ALTER TABLE `pemesanan_dokumentasi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pemesanan_gedung
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pemesanan_gedung`;

CREATE TABLE `pemesanan_gedung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` varchar(15) NOT NULL,
  `gedung_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `pemesanan_gedung` WRITE;
/*!40000 ALTER TABLE `pemesanan_gedung` DISABLE KEYS */;

INSERT INTO `pemesanan_gedung` (`id`, `pemesanan_id`, `gedung_id`)
VALUES
	(1,'201708101',1),
	(2,'201708032',1);

/*!40000 ALTER TABLE `pemesanan_gedung` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pemesanan_katering
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pemesanan_katering`;

CREATE TABLE `pemesanan_katering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` varchar(15) NOT NULL,
  `katering_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `pemesanan_katering` WRITE;
/*!40000 ALTER TABLE `pemesanan_katering` DISABLE KEYS */;

INSERT INTO `pemesanan_katering` (`id`, `pemesanan_id`, `katering_id`)
VALUES
	(1,'201708101',1);

/*!40000 ALTER TABLE `pemesanan_katering` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pemesanan_rias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pemesanan_rias`;

CREATE TABLE `pemesanan_rias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` varchar(15) NOT NULL,
  `rias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `pemesanan_rias` WRITE;
/*!40000 ALTER TABLE `pemesanan_rias` DISABLE KEYS */;

INSERT INTO `pemesanan_rias` (`id`, `pemesanan_id`, `rias_id`)
VALUES
	(1,'201708101',1);

/*!40000 ALTER TABLE `pemesanan_rias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rias`;

CREATE TABLE `rias` (
  `rias_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rias` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_rias` decimal(11,0) NOT NULL,
  PRIMARY KEY (`rias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rias` WRITE;
/*!40000 ALTER TABLE `rias` DISABLE KEYS */;

INSERT INTO `rias` (`rias_id`, `nama_rias`, `gambar`, `deskripsi`, `harga_rias`)
VALUES
	(1,'Rias 1','profil_cewe5.png','Yes',2000000);

/*!40000 ALTER TABLE `rias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `username` varchar(35) NOT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`user_id`, `name`, `username`, `no_telp`, `password`)
VALUES
	(1,'Admin','admin','12345','21232f297a57a5a743894a0e4a801fc3');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
