-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Haz 2016, 18:12:08
-- Sunucu sürümü: 5.6.14
-- PHP Sürümü: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `sortable`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE IF NOT EXISTS `icerik` (
  `icerikID` int(11) NOT NULL AUTO_INCREMENT,
  `icerikAdi` varchar(255) NOT NULL,
  `icerikAciklama` text NOT NULL,
  `icerikSira` tinyint(4) NOT NULL,
  `icerikDurum` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`icerikID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerikID`, `icerikAdi`, `icerikAciklama`, `icerikSira`, `icerikDurum`) VALUES
(1, 'Ürünü iade etmek istediğimde ne yapmam gerekiyor?', 'Siparişinizin size ulaştığı günü takip eden 15 gün içerisinde, ürün iadesi gerçekleştirebilirsiniz. Üründen kaynaklanan herhangi bir kusurdan dolayı yapacağınız iadelerde ise, iade süreniz 30 gündür. Ayrıca sitemizde yer alan ürünler, ilgili kampanya döneminde sınırlı sayıda stoklarla satışa sunulduğundan değişim yapılamamaktadır.', 0, '0'),
(2, 'İade etme süresi kaç gündür ?', 'Sitemizin üyelerinin "Sebep Göstermeden Cayma Hakkı" 15 gündür. Mesafeli sözleşmelere dair yönetmeliğe göre kanunen 7 gün olan bu süreyi rahatça alışveriş yapabilmeniz için sitemiz 15 güne çıkartıyor.', 2, '0'),
(3, 'Hangi ürünleri iade edemiyorum?', 'Tek kullanımlık ürünler, hızlı bozulan veya son kullanma tarihi geçme ihtimali olan ürünlerin iadesi kabul edilmemektedir. Kozmetik ve kişisel bakım ürünleri, iç giyim ürünleri, mayo, bikini, kitap, kopyalanabilir yazılım ve programlar, DVD, VCD, CD ve kasetler ile kırtasiye sarf malzemeleri (toner, kartuş, şerit vb.) ancak ambalajı açılmamış, denenmemiş, bozulmamış ve kullanılmamış olmaları halinde iade edilebilir.', 1, '0'),
(4, 'İademi hangi adrese göndereceğim?', 'İade Adresi: http://www.vyz.gen.tr', 3, '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
