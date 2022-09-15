-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 15 Eyl 2022, 17:55:01
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `petshop`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `kullaniciid` varchar(12) COLLATE utf8_turkish_ci NOT NULL,
  `kullaniciadi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kullaniciid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullaniciid`, `kullaniciadi`, `sifre`) VALUES
('1', '1', '1'),
('2', 'dpr', 'dpr'),
('3', 'deneme', 'deneme123'),
('', 'aasdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

DROP TABLE IF EXISTS `musteri`;
CREATE TABLE IF NOT EXISTS `musteri` (
  `tc` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `soyadi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`tc`)
) ENGINE=MyISAM AUTO_INCREMENT=546897644 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`tc`, `adi`, `soyadi`, `telefon`, `adres`) VALUES
(23232, 'erdogan', 'aydogduu', '5530513760', 'bilinmiyor'),
(121212, 'sevilay', 'cetinn', '053303952', 'yok'),
(123321556, 'utku', 'altinok', '', 'Kötekli, Mugla'),
(546897643, 'Mutlu', 'Yalı', '5478965478', 'Bilinmiyor'),
(12332125, 'Süleyman', 'Efe', '8552515', 'Bilinmiyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satis`
--

DROP TABLE IF EXISTS `satis`;
CREATE TABLE IF NOT EXISTS `satis` (
  `satisid` int(11) NOT NULL AUTO_INCREMENT,
  `sepet` int(11) NOT NULL,
  `musteri` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  PRIMARY KEY (`satisid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

DROP TABLE IF EXISTS `sepet`;
CREATE TABLE IF NOT EXISTS `sepet` (
  `sepetno` int(11) NOT NULL AUTO_INCREMENT,
  `sepetid` int(11) NOT NULL,
  `urun` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `adet` int(11) NOT NULL,
  `fiyat` double NOT NULL,
  PRIMARY KEY (`sepetno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stok`
--

DROP TABLE IF EXISTS `stok`;
CREATE TABLE IF NOT EXISTS `stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adet` int(11) NOT NULL,
  `alis` double NOT NULL,
  `satis` double NOT NULL,
  `tarih` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `stok`
--

INSERT INTO `stok` (`id`, `adet`, `alis`, `satis`, `tarih`) VALUES
(1, 1, 50, 67, '2022-05-24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

DROP TABLE IF EXISTS `urun`;
CREATE TABLE IF NOT EXISTS `urun` (
  `barkod` int(11) NOT NULL AUTO_INCREMENT,
  `tanim` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `firma` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `stok` int(10) NOT NULL,
  PRIMARY KEY (`barkod`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`barkod`, `tanim`, `firma`, `stok`) VALUES
(1, 'Kedi Mamasi', 'Royal Canin', 255),
(2, 'kedi maması', 'Hills', 64),
(3, 'Kedi Mamasi', 'Acana', 255),
(5, 'kafes', 'yok', 256),
(4, 'Kopek Mamasi', 'Bonacibo', 55),
(6, 'Kopek Mamasi', 'Royal Canin', 52);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
