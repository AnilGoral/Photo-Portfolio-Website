-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 02 May 2019, 18:37:46
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `projectphoto`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_tittle` varchar(250) NOT NULL,
  `ayar_description` varchar(250) NOT NULL,
  `ayar_keywords` varchar(100) NOT NULL,
  `ayar_author` varchar(100) NOT NULL,
  `ayar_tel` varchar(50) NOT NULL,
  `ayar_mail` varchar(50) NOT NULL,
  `ayar_facebook` varchar(50) NOT NULL,
  `ayar_instagram` varchar(50) NOT NULL,
  `ayar_yotube` varchar(50) NOT NULL,
  `ayar_twitter` varchar(50) NOT NULL,
  `ayar_smtphost` varchar(50) NOT NULL,
  `ayar_smtppassword` varchar(50) NOT NULL,
  `ayar_bakim` enum('0','1') NOT NULL DEFAULT '0',
  `ayar_smtpport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fotograf`
--

CREATE TABLE `fotograf` (
  `fotograf_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `fotograf_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fotograf_ad` varchar(250) NOT NULL,
  `fotograf_detay` text NOT NULL,
  `fotograf_keyword` varchar(250) NOT NULL,
  `fotograf_durum` enum('0','1') NOT NULL DEFAULT '1',
  `fotograf_resimyol` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `fotograf`
--

INSERT INTO `fotograf` (`fotograf_id`, `kategori_id`, `fotograf_zaman`, `fotograf_ad`, `fotograf_detay`, `fotograf_keyword`, `fotograf_durum`, `fotograf_resimyol`) VALUES
(15, 1, '2019-04-08 08:56:55', 'Leaves', '<p>A Plant</p>\r\n', '', '1', 'dimg/24409282692209621108yapraklar.jpg'),
(16, 1, '2019-04-08 08:58:20', 'Tree İllustration', '<p>Great Trees</p>\r\n', '', '1', 'dimg/21321200412734425891trees-collection-flat-style_23-2147786379.jpg'),
(17, 1, '2019-04-08 08:59:05', 'Cactus', '<p>Cactus Illustration</p>\r\n', '', '1', 'dimg/24935263402556421792c3a92bfc0d7eba21369a9f7d9ccc6431-prairie-cactus-illustration-by-vexels.png'),
(18, 1, '2019-04-08 08:59:39', 'Foggy Trees', '<p>Fog</p>\r\n', '', '1', 'dimg/20891209512210022632nature_small_1.jpg'),
(19, 1, '2019-04-08 09:00:41', 'Forest', '<p>What A Great Tree view</p>\r\n', '', '1', 'dimg/21636237673018730705img_1.jpg'),
(20, 1, '2019-04-08 09:01:43', 'Butterfly', '<p>Blue Butterfly</p>\r\n', '', '1', 'dimg/25694232522468829516nature_big_3.jpg'),
(21, 1, '2019-04-08 09:02:39', 'Waterfall', '<p>A Magnificent Waterfall</p>\r\n', '', '1', 'dimg/27670221902397420302nature_big_5.jpg'),
(22, 1, '2019-04-08 09:04:34', 'gfgfdg', '<p>gdfgdr</p>\r\n', '', '1', 'dimg/29724252493006628407nature_big_7.jpg'),
(23, 1, '2019-04-08 09:04:43', 'gfhdfh', '<p>hfdhrd</p>\r\n', '', '1', 'dimg/25617272452073822346nature_big_8.jpg'),
(24, 1, '2019-04-08 09:04:53', 'dfgrdg', '<p>rdgdrgfd</p>\r\n', '', '1', 'dimg/31250314192488326297nature_big_9.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_başlık` varchar(100) NOT NULL,
  `hakkimizda_içerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(50) NOT NULL,
  `kategori_seourl` varchar(250) NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_seourl`, `kategori_ust`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Nature', 'nature', 0, 1, '1'),
(2, 'Potrait', 'potrait', 0, 2, '1'),
(3, 'People', 'people', 0, 3, '1'),
(4, 'Architecture', 'architecture', 0, 4, '1'),
(5, 'Animals', 'animals', 0, 5, '1'),
(6, 'Sports', 'sports', 0, 6, '1'),
(7, 'Travel', 'travel', 0, 7, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_ad` varchar(50) NOT NULL,
  `kullanici_adsoyad` varchar(50) NOT NULL,
  `kullanici_mail` varchar(100) NOT NULL,
  `kullanici_password` varchar(50) NOT NULL,
  `kullanici_yetki` varchar(50) NOT NULL,
  `kullanici_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_ad`, `kullanici_adsoyad`, `kullanici_mail`, `kullanici_password`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '0000-00-00 00:00:00', 'ADMİN', 'Anıl Göral', 'anilzeuss@outlook.com', 'f2fbcfb35d9801176e829026ecfa9aa4', '5', '1'),
(2, '2019-03-19 18:52:00', 'Yedek Admin', 'Anıl Göral 2', 'yedekadmin@gmail.com', 'Zeusss123', '1', '1'),
(3, '2019-03-19 18:56:54', 'YedekAdmin2', 'Anıl Göral 3', 'yedekadmin2@gmail.com', 'f2fbcfb35d9801176e829026ecfa9aa4', '1', '1'),
(4, '2019-03-19 19:13:08', 'YedekAdmin3', 'aNIL gÖRAL 4', '1satilik1hesap1@gmail.com', 'f2fbcfb35d9801176e829026ecfa9aa4', '2', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ad` varchar(50) NOT NULL,
  `menu_detay` text NOT NULL,
  `menu_url` varchar(250) NOT NULL,
  `menu_sira` varchar(30) NOT NULL,
  `menu_durum` enum('0','1') NOT NULL DEFAULT '1',
  `menu_seourl` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(250) NOT NULL,
  `slider_resimyol` varchar(250) NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(200) NOT NULL,
  `slider_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(1, 'Nature', 'dimg/slider/24593258872197621515img_1.jpg', 1, 'nature.php', '1'),
(2, 'Portrait', 'dimg/slider/26772207682989220656img_2.jpg', 2, 'portrait.php', '1'),
(3, 'People', 'dimg/slider/21544290162567529575img_3.jpg', 3, 'people.php', '1'),
(4, 'Architecture', 'dimg/slider/24052310152251921797img_4.jpg', 4, 'architecture.php', '1'),
(5, 'Animals', 'dimg/slider/26183300822056025071img_5.jpg', 5, 'animals.php', '1'),
(6, 'Sports', 'dimg/slider/25463278782236226315img_6.jpg', 6, 'sports.php', '1'),
(7, 'Travel', 'dimg/slider/24957261902307326652img_7.jpg', 7, 'travel.php', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `fotograf`
--
ALTER TABLE `fotograf`
  ADD PRIMARY KEY (`fotograf_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayar`
--
ALTER TABLE `ayar`
  MODIFY `ayar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `fotograf`
--
ALTER TABLE `fotograf`
  MODIFY `fotograf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
