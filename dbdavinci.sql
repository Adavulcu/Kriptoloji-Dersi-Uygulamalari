-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 02 Nis 2019, 19:24:40
-- Sunucu sürümü: 5.7.24
-- PHP Sürümü: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dbdavinci`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblmetin`
--

DROP TABLE IF EXISTS `tblmetin`;
CREATE TABLE IF NOT EXISTS `tblmetin` (
  `MetinID` int(10) NOT NULL AUTO_INCREMENT,
  `Metin` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`MetinID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tblmetin`
--

INSERT INTO `tblmetin` (`MetinID`, `Metin`) VALUES
(1, '	 Leonardo, 15 Nisan 1452 yılında genç bir noter olan Messer/Ser (Üstad anlamında) Piero da Vinci\'nin ve muhtemelen bir çiftçi kızı olan Caterina\'nın evlilik dışı çocuğu olarak Vinci kasabası yakınlarındaki Anchiano\'da dünyaya geldi. Leonardo doğduktan hemen sonra dedesinin evine gönderildi. Annesini hiç göremeyen Leonardo, ilk yıllardan beri eğitim görevini babası üstlendi. Küçük yaştan beri matematiği çok sevmiş, matematik problemlerini çözmede beceri göstermesinin yanı sıra, yaptığı resimlerle de büyük beğeni topladı.\r\n\r\nHenüz on altı yaşındayken o dönemin tanınmış ismi, Andrea del Verrochio\'nun yanına çırak olarak aldı. Çok hevesli olarak işe başlayan Leonardo mermer, kil, metal, ağaç işlemede ustanın gözüne girer. Andrea del Verrochio, Leonardo\'nun bu kadar becerikli olmasına sevinir, Latin ve Grek klasikleriyle felsefe, anatomi, matematik üzerine öğreniminde yardımcı olur.\r\n\r\n1482 yılında Floransa\'yı terk etmiş ve Milano dükü Sforza\'nın maiyetine alınmıştır. Düke, köprüler, silahlar ve heykeller yapmıştır. Yaklaşık 17 yıl dükle çalışarak, tasarımlar, silahlar, binalar ve festival organizasyonları yapmıştır. 1485-90 yılları arasında, pek çok öğrenci yetiştirmiştir. Bu arada, defterlere kayıt tutmaya başlamıştır. Bu defterler, bu gün özel koleksiyonlarda toplanmıştır. Bill Gates\'in özel koleksiyonunda olan mekanik çizimlerini kapsayan defterlere paha biçilememektedir. 1499 yılında dükün yanından ayrılan Leonardo, 16 yıl boyunca göçebe bir hayat yaşadı ve seyahat etti.\r\n\r\nİnsanlık tarihinin en iyi resimlerinden birisi kabul edilen Mona Lisa için 1503\'te çalışmaya başladığı söylenir. Bu resmi tamamladıktan sonra hiç yanından ayırmamış, tüm seyahatlerinde yanında taşımıştı. 1504	e babasının ölüm haberi üzerine Floransa\'ya döndü. Miras hakkı için kardeşleri ile mücadele etti ancak çabası sonuçsuz kaldı. Ancak çok sevdiği amcası tüm varlığını ona bıraktı.\r\n\r\n1506 yılında Leonardo, bir Lombardiya aristokratının 15 yaşındaki oğlu olan Kont Francesco Melzi\'yle tanıştı. Melzi, hayatının geri kalanında onun en iyi öğrencisi ve en yakını oldu. 1490\'da 10 yaşında iken korumasına aldığı ve Salai adını verdiği genç de 30 yıl boyunca onunla beraber olmuş, ancak öğrencisi olarak bilinen bu genç hiçbir sanatsal ürün üretmemişti.\r\n\r\n1513 - 1516 arasında Roma\'da yaşadı ve Papa için geliştirilen çeşitli projelerde yer aldı. Anatomi ve fizyoloji alanında çalışmaya devam etti ancak Papa, kadavralar üzerinde çalışmasını yasakladı. 1516\'da koruyucusu Giuliano de\' Medici\'nin ölümü üzerine Kral 1. Francis\'ten Fransa\'nın baş ressam, mühendis ve mimarı olmak üzere davet aldı. Paris\'in güneybatısında, Amboise yakınlarındaki Kraliyet Sarayı\'nın hemen yanında kendisi için hazırlanan konağa yerleşti.\r\n\r\nSağ koluna felç inen Leonardo da Vinci, resimden çok bilimsel çalışmalara ağırlık verdi. Kendisine dostu Melzi yardımcı olmaktaydı. Salai ise Fransa\'ya geldikten sonra onu terk etmişti. Leonardo 2 Mayıs 1519\'da Amboisedaki evinde 67 yaşında öldü. Kralın kollarında can verdiği rivayet edilir, ancak, 1 Mayıs günü kralın bir başka şehirde olduğu ve bir gün içinde oraya gelemeyeceği bilinmektedir. Vasiyetinde mirasının esas bölümünü Melzi\'ye bıraktı. Amboise\'daki Saint Florentin Kilisesi\'nde toprağa verilmiştir.'),
(2, 'Abdullah DAVULCU'),
(3, 'aaaaaaaaaa'),
(4, 'aaaaabaaaa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_digitalkey`
--

DROP TABLE IF EXISTS `tbl_digitalkey`;
CREATE TABLE IF NOT EXISTS `tbl_digitalkey` (
  `DigitalSignKeyID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `PriKey` longtext COLLATE utf8_turkish_ci NOT NULL,
  `PubKey` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`DigitalSignKeyID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_digitalkey`
--

INSERT INTO `tbl_digitalkey` (`DigitalSignKeyID`, `Name`, `PriKey`, `PubKey`) VALUES
(1, 'Da Vinci', '-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCnZPsrxvwLSJ7Q\n2NAo0C3kloxkDbduS3cIhAkepD8JUMyGz93wudHG6+cPZEdRkSb8i0JUKpQBdk4f\nRbyk4vuBKjSuLkHeXLoImf3BmxffCnzdYzeoemkff1/HtBLQrA4SAniiqxHolUEB\nmPAPrqxNhRJKkc0z6a0zwdRjAMsvoT8Ob6QWZ5Sp9cOriUWlBUj5ntZTlHeaKopX\nI8IauGIARPKwjp13mkdHk0i2IG78260F8ehSIqFrjV0chyrmHTbLp88bxQH0gD8y\ngMvKCx53I7PHyi7dUpKrRbYeo071dPRLgZ5D2r+v4Fqx07B0uBAzgYk4WcfBsH94\nhsjsVOCbAgMBAAECggEAWLcG+suJlr1VFiBiKc8zE1vKadhvJ7AtFMFNSAUKN3iv\n/J675DHHAOLTYW/m8E66V8vCSnMKX8AAZUiDUuvNGUZyBwIS/LMuERLzzqDQxO98\n/6PuwoalogDSlTdVZWxaRKc0ohmB8z7u5dbVG6qaPLdS21xsYZ/toGmQkyu/g6zZ\nHvNKsfRTTOsViO2fgyR0cd+m/QLHv7brmsn1zF6sflnaaY9YQR3dWL9u08uOYOIX\nMoE1+AMYIw/yyKFqLI7t8kO00sbX/BOwT3feaMJp0hOFuePQc+14C/ANjSdFX9fc\nSy9i4vWfYJkpYU01qzAbXD3l37Dhq5I/XLB3DupOuQKBgQDPRLnjEBoKOAj1z8q/\nccCw2BdoN7I2KZdSnAPBkZNE2rickyng5wv0h7WxWTnNzCGJPIfTbBohqlcRH24S\nx1QTSsQCLopzl5iG75kMhKhP4XguAstD2FKYTUpYhXVk+RBDKM3Dp6VN3di+u2fk\nMOqoZy/0IjHWCd2DNKE4kGya7wKBgQDOwEexWIGNePYFdD0tBM/VahOFv6ajJ4N8\nlqMF+ufFJH+/0dUyfU2kwbPVRCIWFz5pELEMfpoyvxicCvuMGlNl/c7PAkvOC3Lb\ngYf7pUj2MK8g0ASgrrTfZxz8fYbIpBA5kDsQwkBo0cSNbpA+zLf5r/3tG7U0bNv6\nWW9E3/KFFQKBgQCb00iJbBaXri8WVwVPzv6WNa/LW2wxCi3JHqA4S/DTKDj5Bi7K\n9gln6wtvbOxnS1u/KHHZQoGW49CXf/CqT49m/aPFHCZc5xD2CXYgEi/T9mf694DH\n3f+inyEQ0i1DH3jZdPjVatl9ZBdKtexSg3A38XP88CRVjY8q0EuREguEowKBgQCc\n3l1HHQ0nBzk7iCeGidkbZyGq4HAR6MAl/rFwrx+9f+UB6LanWVVZBbNpxAlM05QB\n6a07+q8Kg92rP9X+Rlcy0nFgtbBIhH1AOTaw44bJbMTj05E/TW9k9fqTRLbIc1rw\nIhP+sjRmk4pbeSEu1OteIn86sUQ6o8IAYG1BR93dxQKBgHZAKIv8Cw7o2HT2oIVX\nJeS3hIKcbPDlCowpHVt8CAtqjM+opJCbQknvJP2xonGnisFNqDrtk2zQ9+CRFRaN\nd9SmKHTD1k9NdsgPpHhKqexqM3FqieiMeaxNWIkB8O3Na5VOvh/604/DTO/nVT+b\nbeEaVNl/52Ndeu+cZwrjGAPP\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp2T7K8b8C0ie0NjQKNAt\n5JaMZA23bkt3CIQJHqQ/CVDMhs/d8LnRxuvnD2RHUZEm/ItCVCqUAXZOH0W8pOL7\ngSo0ri5B3ly6CJn9wZsX3wp83WM3qHppH39fx7QS0KwOEgJ4oqsR6JVBAZjwD66s\nTYUSSpHNM+mtM8HUYwDLL6E/Dm+kFmeUqfXDq4lFpQVI+Z7WU5R3miqKVyPCGrhi\nAETysI6dd5pHR5NItiBu/NutBfHoUiKha41dHIcq5h02y6fPG8UB9IA/MoDLygse\ndyOzx8ou3VKSq0W2HqNO9XT0S4GeQ9q/r+BasdOwdLgQM4GJOFnHwbB/eIbI7FTg\nmwIDAQAB\n-----END PUBLIC KEY-----\n'),
(2, 'Bob Ross', '-----BEGIN PRIVATE KEY-----\nMIIEwAIBADANBgkqhkiG9w0BAQEFAASCBKowggSmAgEAAoIBAQDjEeDURA6aObwV\n0eU4TgRYhI7+Fr5x44wCYTaIUc4eC5u3U/veUIFwPMd1xAiQ6a13MNwRj1xjVVDM\n9tj+772RhZAgKDjMjBnEQcCIrcco3wBtUA2cLASRvFRPPO/h2SsOdkfafOOymWpe\ndQQqT2qi/63A2QL6/22mAjJecH6AighM1473cdq4myMvzdNmlppJDA0EcXUf2KFa\ntj24A3+nSDlZxPUNsvlS6C89Htl7ig7KYFV3lrbI126oTz+R5HFFV8BayqS3kk4x\nFmr1VmcTWxpbiDiNbanIf6NiQ55Zpsijx9mg9G/4NMvRaCH4dwxHSYkLn5yCxsuk\nMwYO5i+xAgMBAAECggEBAJWuVld2WW3euxZjG0enXgP/tcbWtUmb5tI2xNzNmCKE\nImyR5wjgZsLWveDqjX8BGwDj612D9DHirnW+DsLWxE6mDaC1AuQLQnz1nvY6H3vY\nrI5iY+ZbudNbovPsxnBJWLGa1Li49Nvpd422cz10xmWWRzJFm0pbkCsLbaqFW05c\n8Ry1hvSboWAKKoy3aKSZPLiLSH+IaQf0X4eMwxkUGdBkVsyT7LnuFHdDDr4Uczpk\nSE6yG1zQd8gtnX8IFcJhzeyUwBxRGPBOBZ5jo3cB+6wzsVdNJBxzLGlrcWGgt/Me\n8MUTv2P/w3yReakBn4Bo8jnalKSFUwzXzHtAx4XdgGUCgYEA+RvHa4ea+FNGt0lN\n0AXH7SSbk5FuZySV+Yw8a9BwAtrp70qBeg+VozgYCIiHzuIEC3Fwi6oG0ghNKumH\n8pTzcdUBkaapeuF8/WHyHpt/QmoLlsJUWqx6xz41BI5xudgAom1nD/l2L69ifqaB\nFSOncewAErcza6btCxIcT6BzJO8CgYEA6VoEr5S62XxCZc2u30i8y9zovPBtBave\nxHzhxzQcyGD68r/iJEH6VhdCrEcfLDe3HzLg+TWybO9MUwSg1nIgX2eZGSg1ZgKg\nrcbC3gbV0VZ3RduRjpID/NFLjtDGAIZHGCaBeLoupCTVm07gVtCHpfRc8v70hafk\n6JfXU2baNV8CgYEAnI6c0jOzbYXI18A2Kxq2/48WR7QK0r/nkaJVBt1EyEaU51LH\n9NJ+lMnYMOS9lYPuTtLIjL4a8z1MYj/KtOZv6YaZKdS4hwXX69b2t826OR80kVco\ndKQZtcaew3JSfx4FqA9hymRZprZvDHHQhlyWC77qfNiudGXAbEjBijmoo/kCgYEA\n23Yx2gADCu/2clBTGuQJy6Fjse5cWm0eAaWBohu8xiePXCZixL7YdYdCyUvKYYe0\nzb7IHxkFSbZ1Dc7YhVaoY5HHRwWt0ta9zzGTq8S56ztqyWSLLI7e+TLN4O8wiOXA\nj1IHikdv/ig2TO6NxpgwOz/q+w4VYm5Ytve3J1Uf+/kCgYEA4dJUvOXU4MVhgfKM\nqUoFG3jh9EMbAeCKc7+S4eP1NeTy6MP4zgTUl6Q7PLwoFhmLJ1E/91ymNJKmWeAt\n8Tln0MTUl6XB50UatQHnNWc2pgDsrHBPvUfu7ombDYQmMsEMMVTKl4d0DydbrQEL\neGyDblfQmDJyJVDfcJCzUSjJJrA=\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4xHg1EQOmjm8FdHlOE4E\nWISO/ha+ceOMAmE2iFHOHgubt1P73lCBcDzHdcQIkOmtdzDcEY9cY1VQzPbY/u+9\nkYWQICg4zIwZxEHAiK3HKN8AbVANnCwEkbxUTzzv4dkrDnZH2nzjsplqXnUEKk9q\nov+twNkC+v9tpgIyXnB+gIoITNeO93HauJsjL83TZpaaSQwNBHF1H9ihWrY9uAN/\np0g5WcT1DbL5UugvPR7Ze4oOymBVd5a2yNduqE8/keRxRVfAWsqkt5JOMRZq9VZn\nE1saW4g4jW2pyH+jYkOeWabIo8fZoPRv+DTL0Wgh+HcMR0mJC5+cgsbLpDMGDuYv\nsQIDAQAB\n-----END PUBLIC KEY-----\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_image`
--

DROP TABLE IF EXISTS `tbl_image`;
CREATE TABLE IF NOT EXISTS `tbl_image` (
  `ImgID` int(10) NOT NULL AUTO_INCREMENT,
  `Image` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ImgID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_image`
--

INSERT INTO `tbl_image` (`ImgID`, `Image`) VALUES
(1, 'DaVinci.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_key`
--

DROP TABLE IF EXISTS `tbl_key`;
CREATE TABLE IF NOT EXISTS `tbl_key` (
  `KeyID` int(10) NOT NULL AUTO_INCREMENT,
  `Key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`KeyID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_key`
--

INSERT INTO `tbl_key` (`KeyID`, `Key`) VALUES
(1, 'abcdefghijuklmno0123456789012345'),
(2, '00000000000000000000000000000000'),
(3, '11111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_sifrelimetin`
--

DROP TABLE IF EXISTS `tbl_sifrelimetin`;
CREATE TABLE IF NOT EXISTS `tbl_sifrelimetin` (
  `SifreliMetinID` int(11) NOT NULL AUTO_INCREMENT,
  `SifreliMetin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SifresizMetinID` int(10) NOT NULL,
  `KeyID` int(10) NOT NULL,
  `CozulmusMetin` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SifreliMetinID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tbl_sifrelimetin`
--

INSERT INTO `tbl_sifrelimetin` (`SifreliMetinID`, `SifreliMetin`, `SifresizMetinID`, `KeyID`, `CozulmusMetin`) VALUES
(1, 'f8T1tcFy4b6GN0ouSTyBw9RUNBc33d3Vk20tHTfADZg=', 1, 1, 'Abdullah Davulcu'),
(2, 'E9xqByIbIytLeA91qIqO/A==', 2, 1, 'aaaaaaaaaa'),
(3, '7Egws1Wo5JFPTvohJMcZNg==', 3, 1, 'aaaaabaaaa'),
(4, 'ndZack7Zt/D1sBD0EzCfwb7DJfzDEJzozxsjcYwTGA4zu1I3gB+NifpI4w6mM++s+kRv0gCodpsB8A3cr5aR01c7HE6rxw608yohAIHYjZwZ3acXzOBGp8DGsdIxE8d/skU6vGSW28Y0xp6p9ORhhHlpx6SaW4vmYYnbGCA+gsVbDJ5USvCpwm4BsWKbmSk9bCGRxqYCCoBhDTzfU1IudKXWMIDbEeeBmTgkLAeH/lrfn8OY4bNeA5yP9xM5FInQJRr618Cg82Bt2Rs7UUPW6goFJ7HGpfcnJouMBod9+onVtRvbjrEEB9ibzl7TLeFi/9TzaICONee1z3eCud5vEwFNGHJxVFuhw6r4nwoCnEfPqtBNMYs4mUXwrHklI8mPg+LNRRyBJ+n4h55ps/WdUmX3WHR6kRhLYzl2prql2MIbNICQt1/Uobe6t5nrFOGyeEXAQzU9DB5pDkIFIixv6rJw1SRLYnlC4GDIcnc76MFIlKt6jw/TVP5DekFylqVh0W4+xhhdkyc0fFbboecGXXUQaifjzLazGCCbCmMS8CEZ+z5wuHpGA0xKGxJ3coryMBofMbcl844uuYz0jLo2QEb+6K6ORG8d5lM/MdPoY2BoWaQ+QlC8ZjogtRti1b9RGUZ+Ld9DAG/R0UV23HashVLks3SYKngJjreCmwrNsKzsRfD3i6kureh/aHwk+j5tPwKm/XX4fPrv3xvnNePMouQrXdo/xJSY+QQ+r/Mv9XCOjopgjWV+Izmi4d+3iWQB1gKABHs2gMazZKXM3/L40a0mS7OPgeJkmhUR5C5iK1wYdsbanj+e7iJWhD9Q7kgWnCz75dT1hPlsh57rz19b6KZJdsUQF4203igjfbrg7FQZUO68kp3JnCpC2cCYFPtOfJ4r3DBzs15hzJg9KyXVLwLTzpSp3Bnas7lI8CGbMREAEBrtuRUIXVYS59+2Q08EwTGQyQSinbQVLAm2LTv1HhBsmrvuqc2xsRbcPch2glyyU4GBuD+LPPJT87+94NUogZ6IehWnQTEYrOkvswjn59qiGem00G835+MSaOz99T26I5jEFb0RsG9Ah4L2in3MbRDWxVp4PnaiDroGKVJY3id3nR5Xniq34inmqRvA6lwCCOpvE3Ug+ufHhJCjiS3X', 4, 1, 'Bir bahçemiz var, bir taraf çiçekli, bir tarafsa çöl\r\nBir tarafta Gökkuşağı, öbür tarafsa kör\r\nSınırda kalmışlardanız biz, hep sınıfta kalmışlardan çok uzaktayız\r\nSıkıntı çekmişlere yakın bir yerde\r\nÇölde kazanılan zaferler hepsi kanla yazılır\r\nAhmak olmasaydın insan, tüm zaferler dostça kazanılırdı\r\nHer gün doğumundan gün batımına\r\nHer geceden gündüze işlenen bir suç var\r\nHer bi yerde bahçemiz var\r\nCümle derde ol deva diye dua ederdi\r\nGünde bin defa, fayda yok, bu çok fena, çare yok\r\nBu bir bela, sanki yoktu başta\r\nHepsi kalsın aleminde Sagopa ve Ceza; Rap için bir pranga\r\nİlham perilerim, yorgun ellerim\r\nVe miskin armağan düşüncemin yanında bir emanetim bu bedene (zor)\r\nYıllarım bir yetki verdi, etki tepki oldu\r\nKendimin hudutlarında bir çiçektim, mordum\r\nOnca tarla…'),
(5, 'Begu90cckh7edqh72dRiT6Vvr5ZQux8NX2BxrDI5AICK83osZ+cZ/A4D6fdpS/yzCvgoKa3ElQQdXkwNg951rbvxnNbrI9duZSmDpRCNjoTF4D+QA4UpTZ/WcoqZzZ/NS9T3S+9LAPkz8Tqzr7JQX6YaT+u3HziPym5oUUR+oSfyKxJEVhI0TAiy1ZR4KLNOHvf2p2Bti26ScBraTwIYf8dFX8OdgheRDGQrrDtyD7A0vS2wDUfm2W9htuYNsq/3bFZhV2IoxKzbqRyU1TDJHB2DO/TBxo4AQz1lkjq20ox1imsS8f1MIONvAn/fkja5a4AJPqiKpqnq6ldfEEoF9jzC1xn52oimoiYsPbCTWUlS1aCm/QmLDFudsgem7SnCJ0+/DYG/40f6E3JaD7Wf8Bnne/z0ybuWs4gEYGW0S+dFzeaR60DKmHuXsGQiVTUjJW61W+eS+Ejejb++eoIj++zG3hQzVWzCAhkNumkRUsPA8FMaDyTgS4a+awXIfV9HslpfPvYyhtuSGM3eRXtu309X+J0eRKbQEE363N/7dWgCjXOvqq+MApiIg3OHPa2+kNaKarhOnr157Lzr3dIN2FuZ689su03XOdHN3688qjHZzJPmPlnY+B9HXM8HwM0iu0lO20EwVCt462LaucIsRHWcxJ6D4jjocwIq5axjom8MQFSf9mTWkDXrKsGrR5NDJnCxEFkyQFEC6brZl/okXsJ+N0iNOW8gXG70LFtNPdalxc7gm9yGA9nOE53vD9NiMEZnY3Y5a9JKT1zmC71pmLkJ7mmzURS0HwxHNcl4d2we09zo0GCN9Q6zEMAsdhXjk/DIaFha3ccxC5bIrsVmQcCBwSrPR0nGEMFoPH12sXd7zFvLRO2j/SwNDiKfJf0r0KEV9BKdDXmFN+EPvTDt4nc8Ldxq3dVJgoikN6cl6rdXwRf/t50TtuVl7xrTBkVLzlAjrpfIjSv6Xz+qxWYNI5/sYKPynojo4FMn/ztBpSdQKwPkWbp29J6jbfPi81JFpIHgjl9YV3SeFadC9mTZnPvmRq7p6Sv9a81Wc1PucU+Gb6U862VJqxT4/z+NkuEWuJPl68kWRcY0qCqVzDF3w/UAvxe9NrrBMDCGMjtXE15YRr40M4sWaERp5uJDHM1r', 4, 2, 'Bir bahçemiz var, bir taraf çiçekli, bir tarafsa çöl\r\nBir tarafta Gökkuşağı, öbür tarafsa kör\r\nSınırda kalmışlardanız biz, hep sınıfta kalmışlardan çok uzaktayız\r\nSıkıntı çekmişlere yakın bir yerde\r\nÇölde kazanılan zaferler hepsi kanla yazılır\r\nAhmak olmasaydın insan, tüm zaferler dostça kazanılırdı\r\nHer gün doğumundan gün batımına\r\nHer geceden gündüze işlenen bir suç var\r\nHer bi yerde bahçemiz var\r\nCümle derde ol deva diye dua ederdi\r\nGünde bin defa, fayda yok, bu çok fena, çare yok\r\nBu bir bela, sanki yoktu başta\r\nHepsi kalsın aleminde Sagopa ve Ceza; Rap için bir pranga\r\nİlham perilerim, yorgun ellerim\r\nVe miskin armağan düşüncemin yanında bir emanetim bu bedene (zor)\r\nYıllarım bir yetki verdi, etki tepki oldu\r\nKendimin hudutlarında bir çiçektim, mordum\r\nOnca tarla…'),
(6, 'aiF36YeZhppkEO+45UDz3MJlPOeF+y5hvIpFHAbqz30vc/eN8UxT4DvWHfNEoeUSM4utGqikPcfB/I6JcR5s2lihODyPMpVYoQgrTqp7j+Uz1tChLbXndUob+wRWI8LnqGjafqNMOkXzA7qY6F9+ROrQOu+sxuPgD7O7QgepgW1Eym5kxRyBNiIYtiKbTiW/+Oq2UtYY+Gl3PSVAM7a7Wy4CZ0MKwYHY3flCWTZeQkmy75sCdMvrhwutxYnbdIOmkAWQLPsGHpWsIvYAOnCOXvvAXLVQkul3dEKgxUlkGNGPZsb9axSX8ooKVJ2RSIZq4Rujmg9ZemH8FuI1aw8BKRIdnw/5FzxlO+IjH9ibnfveESdqs6Y9m9aLuY91ZFkJUv0sXZ1Cx5RwwNFkSRjR29o/zLUPqaOKl8RhWifMEC3Ic5ekazsom48s4mztkL9exxvVuX8DpcjrPBrIcjkkEFCN9vwhxzdN+uVXSdXTZ3NdIT7XlbJYQrX98yZM5w31QwDMwNnRBtmBDXU6Byk0XrYyaBXGSd0OZ7MHPMD95B4H+nS1nGMDtJVR+lBQ1K8AXLog/0xQxskjXE+GxECr3gY7JAYhM6fqdk2Mc4DrMYXgHZHaivsV2KHAkms21EgbCYdFas0XfhgjVe7UvTd+rjH80ok7dugbZwqTPgdz3ufcX2F9D+VFuOYDEzOwnWvDAlrB0gIlFw1n0kvyIIfXxANZNsE0GGzAn11p9n3D787ESi4X5Gv7ntj+DhN8rx5QfQeY0xPOaPG0IlyCgrvwZuGQqMG2V5KKePcXmA5Id/krXv+Ru2Mn3UXmdOZf1cnHVTSGIEklrUsGceUrrmhMlCnAyw9fevJZidIAnhEc9a9d+5egcktGhc/gNsY4G3mU+NuoFFfL2qdS97kOlIdD/YHQDmkEofL/CefG0pyIhDGelZNiaa4eJLlvo7YLj762fILGok2ew8mKWHyWxzt1hslC444+m5OJ7JudTu8WeKrqXEIrjWIKGmCKSUjVyxECa7qpDiHYv7VRIwmKCLpKqYDZrrHIWwJ+x107VwseQK39AKZCVQtiPtzAqAoOI6koS1kX7fXq3lqr72HjTIWUGxkAayt34XNjIWhf5NKhWeS8YJQ3co0PcbZVHfMmUYhz', 4, 3, 'Bir bahçemiz var, bir taraf çiçekli, bir tarafsa çöl\r\nBir tarafta Gökkuşağı, öbür tarafsa kör\r\nSınırda kalmışlardanız biz, hep sınıfta kalmışlardan çok uzaktayız\r\nSıkıntı çekmişlere yakın bir yerde\r\nÇölde kazanılan zaferler hepsi kanla yazılır\r\nAhmak olmasaydın insan, tüm zaferler dostça kazanılırdı\r\nHer gün doğumundan gün batımına\r\nHer geceden gündüze işlenen bir suç var\r\nHer bi yerde bahçemiz var\r\nCümle derde ol deva diye dua ederdi\r\nGünde bin defa, fayda yok, bu çok fena, çare yok\r\nBu bir bela, sanki yoktu başta\r\nHepsi kalsın aleminde Sagopa ve Ceza; Rap için bir pranga\r\nİlham perilerim, yorgun ellerim\r\nVe miskin armağan düşüncemin yanında bir emanetim bu bedene (zor)\r\nYıllarım bir yetki verdi, etki tepki oldu\r\nKendimin hudutlarında bir çiçektim, mordum\r\nOnca tarla…');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_sifresizmetin`
--

DROP TABLE IF EXISTS `tbl_sifresizmetin`;
CREATE TABLE IF NOT EXISTS `tbl_sifresizmetin` (
  `SifresizMetinID` int(10) NOT NULL AUTO_INCREMENT,
  `SifresizMetin` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`SifresizMetinID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tbl_sifresizmetin`
--

INSERT INTO `tbl_sifresizmetin` (`SifresizMetinID`, `SifresizMetin`) VALUES
(1, 'Abdullah Davulcu'),
(2, 'aaaaaaaaaa'),
(3, 'aaaaabaaaa'),
(4, 'Bir bahçemiz var, bir taraf çiçekli, bir tarafsa çöl\r\nBir tarafta Gökkuşağı, öbür tarafsa kör\r\nSınırda kalmışlardanız biz, hep sınıfta kalmışlardan çok uzaktayız\r\nSıkıntı çekmişlere yakın bir yerde\r\nÇölde kazanılan zaferler hepsi kanla yazılır\r\nAhmak olmasaydın insan, tüm zaferler dostça kazanılırdı\r\nHer gün doğumundan gün batımına\r\nHer geceden gündüze işlenen bir suç var\r\nHer bi yerde bahçemiz var\r\nCümle derde ol deva diye dua ederdi\r\nGünde bin defa, fayda yok, bu çok fena, çare yok\r\nBu bir bela, sanki yoktu başta\r\nHepsi kalsın aleminde Sagopa ve Ceza; Rap için bir pranga\r\nİlham perilerim, yorgun ellerim\r\nVe miskin armağan düşüncemin yanında bir emanetim bu bedene (zor)\r\nYıllarım bir yetki verdi, etki tepki oldu\r\nKendimin hudutlarında bir çiçektim, mordum\r\nOnca tarla…');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_yorumlar`
--

DROP TABLE IF EXISTS `tbl_yorumlar`;
CREATE TABLE IF NOT EXISTS `tbl_yorumlar` (
  `YorumID` int(10) NOT NULL AUTO_INCREMENT,
  `Yorum` longtext COLLATE utf8_turkish_ci NOT NULL,
  `KarakterSayisi` int(11) NOT NULL,
  `StandartSapma` double NOT NULL,
  PRIMARY KEY (`YorumID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_yorumlar`
--

INSERT INTO `tbl_yorumlar` (`YorumID`, `Yorum`, `KarakterSayisi`, `StandartSapma`) VALUES
(1, 'gMNAQZhtKjCHiOqLypYPRFJeEBwlXkonDIarfTSbWdszvmVxGccGAxOoRmwFHzBJZDvhSaYIPlbfetNdXMCqpQiLynKrgsTjkEVWLqRphfWNdmalOCbGAMgrPotsnHJYDvFzZKcjwxQyITkiXESBeVxeVJrGcslYMKkiPQfNHqoEvZWjbyTgpzaCmtnRdADLhSBFXOwIWTQbytVAzqegrKxPvEBRpkIaYiZjlOsodNMDfLwJcCFHhXmSnGrvBEMPZSNqAlFQwcWOzLmtgDTRikpXIyGjbheCxdsVnfoJYHaKaAkxbWtjPnicmTworgyIXEqhRGDeMpvBOCJZHVzLYfKFdNQsSlbdPOMawhYLEzpeysRAFomlgTJQXncWtDvHZfrxKGjiBCVIqkSNrXhosESYdGnDilfbyCIgPKJwZaczeQtOLkMBTWqRmvAFHxVNjpWoDXCsfbBcNpMtSmxQLlkqeZPznwrEAhagiOJGKIjTYFdyVvRHQZWevJIqkEBgMFysVafrCHpANoPXhxwYmOdcKDTLtbSRGzjnilIcXLdQZernNTMhFwGVYKfalDzykJoCxSvEjbmgH', 600, 0.41845195759648),
(2, 'SkfDhgdrytvGiWZIamXqARxlONspnHoFCVwEbMJQjBTKYzecLPwqIfpFZEOAyxzsNgkMQlKWaeVjLXYoHrdiSGbtCTvPRhDmBnJceFRXJVzCAQqYPsfaiSMwTIkExrcGgBtDbKpdloyvmZWLnHhjNOAermbMyWKwfjtvdVspcLBOqFDZXhRzSknxECgIYoHaPlGJTQNilvzJDyCesZAxRkMaHEtWLQqXbOBifNhFVToScKYrgjGwpdnmPIFBoSrCEOksxLNbvAdJHRqTIMYfanchgtQeWiwplmPKzGZDXVjyncsQvMWaXoVreSxBqbyIdkKONphfTZzmijPJlGgYHCtAFRwLDELGRjhHpATkonCraBIEmFWMzlZvdsKNPVyxqebifYDJwXQSgcOtYwbrlgSGHERdkLQFKPpXixhZneNCIvDqoMmyacVfsA', 450, 0.37032803990902),
(3, 'wRhZlIeJNxMvDrGyjBsKXidnCWPFQEogLzacqbptmOkfYSHVTAaOXeSHnVkRitvTMhEmxcBNZLWyYwsKDQqgzfrFAPolGjICbdJpZjdaLgFTiYlXAGoNKnOqIPtpzSkQferwcxDyWbsBJMVEvmRChHtShqmcZNxvgEdkWyAeHOXpInoBYRCrMKzbPFsTJVaQiLDGjlfwgXcCDxERwvyastzAnPiqSpFVoZGOTdbKmfrYjBHIeNMkWhJlQLEDOIxLAiQNJZldgmYtrKhzMCcvWVFfapqSekPsRXHTyoG', 300, 0.30304576336566),
(4, 'VmNcOSIzfKhGHLyewPaTvJYnWiMdCjDqsRxgrkZEQlbAtXpBFoiTetLoNsAdWkxZmgaKpwBQFzPOSnyGCjEcMRfvIhrqYJDHblVXcotMQNJRspeIwXymzaEqKHdjPlnbSAOhfxiDkrWTBvYCVgFL', 150, 0.19794866372216);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
