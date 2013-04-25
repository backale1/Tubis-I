-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Jan 2013 um 20:45
-- Server Version: 5.5.27
-- PHP-Version: 5.4.7

--SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
--SET time_zone = "+00:00";


--/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
--/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
--/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `baumarkt_der_zukunft`
--

-- --------------------------------------------------------


-- CREATE TABLE android_metadata (locale TEXT DEFAULT 'en_US');
-- INSERT INTO android_metadata(locale) VALUES ('en_US');


--
-- Tabellenstruktur für Tabelle `artikel`
--

DROP TABLE IF EXISTS `artikel`;
CREATE TABLE IF NOT EXISTS `artikel` (
  `_id` int(9) NOT NULL,
  `artikelstandort` varchar(11) NOT NULL,
  `artikelbezeichnung` varchar(99) NOT NULL,
  `preis` float DEFAULT NULL,
  `bildname` varchar(25) NOT NULL,
  fk_produktkategorien int(11) NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`_id`, `artikelstandort`, `artikelbezeichnung`, `preis`, `bildname`,`fk_produktkategorien`) VALUES
(10101001, '07B3', 'Holzbohrer 50x6', 1.99, 'holzbohrer',10101000),
(10101002, '07B2', 'Holzbohrer 70x8', 2.99, 'holzbohrer',10101000),
(10101003, '07B1', 'Holzbohrer 90x10', 2.99, 'holzbohrer',10101000),
(10101004, '07A2', 'Holzbohrer 30x4', 1.49, 'holzbohrer',10101000),
(10102001, '07A2', 'Stahlbohrer 50x7', 2.99, 'stahlbohrer',10102000),
(10102002, '07A1', 'Stahlbohrer 70x9', 3.99, 'stahlbohrer',10102000),
(10201001, '03C2', 'Bohrhammer Bosch PBH 2800 RE inkl. Flachmei&szlig;el', 140.99, 'bohrhammer',10201000),
(10201002, '03C1', 'Bohrhammer Bosch PBH 3000-2 FRE ', 208.99, 'bohrhammer',10201000),
(10201003, '03C3', 'Tischbohrmaschine Bosch PBD 40', 280.99, '',10201000),
(10202001, '03D1', 'Schlagbohrmaschine Bosch PSB 500 RE', 55.99, 'schlagbohrmaschine',10202000),
(10202002, '03D2', 'Schlagbohrmaschine Bosch PSB 750 RCE', 79.99, 'schlagbohrmaschine',10202000),
(20105001, '04C2', 'Holzschraube Linsensenkkopf m. I-Stern 3,5 x 25 mm, DIN 95, Vernickelt, 200 Stück', 2.15, '',20105000),
(20106001, '04A2', 'Spreizdübel Barracuda SD 8/40+S', 2.89, '',20106000),
(20106002, '04A1', 'Spreizdübel Barracuda SD 6/30+S', 2.99, '',20106000),
(20106003, '04B2', 'Allzweckd&uuml;bel TRI 6/36 ', 2.99, '',20106000),
(20201001, '04B3', 'Sechskantmutter selbstsichernd DIN 985, M3 galv.verzinkt, 100 Stück', 2.99, '',20201000),
(80102001, '01D1', 'Halogen-Stehlampe Spider Glaskugel mit Chrom', 108.95, '',80102000),
(80102002, '01D2', 'Halogen-Stehlampe sinned chrom mit Metallkopf', 158.9, '',80102000),
(80102003, '01E1', 'Massive Halogen-Bodenleuchte 5-flg. Aiken ', 182, '',80102000),
(80102004, '01E2', 'dimmbarer LED-Fluter mit Lesearm in Nickel matt, getrennt ', 219, '',80102000),
(80102005, '01D3', 'Innovative LED-Stehleuchte inklusive Power LED ', 149.9, '',80102000),
(80201001, '02A3', 'Halogenbirne E27 100W', 1.99, 'halogenbirne',80201001),
(80201002, '02A2', 'Halogenbirne E27 60W', 1.99, 'halogenbirne',80201001),
(80201003, '02A1', 'Halogenbirne E15 45W', 1.99, 'halogenbirne',80201001);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellkopf`
--

DROP TABLE IF EXISTS `bestellkopf`;
CREATE TABLE IF NOT EXISTS `bestellkopf` (
  `_id` int(9) NOT NULL,
  `kundennr` int(4) ,
  `tempkundennr` int(4) ,
  `statnr` int(9) NOT NULL,
  `datum` date NOT NULL,
  `uhrzeit` time NOT NULL,
  `bestellwert` float NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `bestellkopf`
--

INSERT INTO `bestellkopf` (`_id`, `kundennr`, `tempkundennr`, `statnr`, `datum`, `uhrzeit`, `bestellwert`) VALUES
(0, 9999, NULL, 0, '0000-00-00', '00:00:00', 0),
(1, 0001, NULL, 0, '2012-12-29', '15:27:48', 7.57),
(2, NULL, 0001, 0, '2013-01-14', '15:27:36', 9.95),
(3, 0002, NULL, 0, '2012-12-23', '17:27:27', 0),
(4, 0003, NULL, 0, '2012-12-28', '16:23:35', 11.36),
(5, 0004, NULL, 0, '0000-00-00', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellpositionen`
--

DROP TABLE IF EXISTS `bestellpositionen`;
CREATE TABLE IF NOT EXISTS `bestellpositionen` (
  `_id` int(9) NOT NULL,
  `bpos` int(3) NOT NULL,
  `artikelnr` int(9) NOT NULL,
  `menge` int(3) NOT NULL
);

--
-- Daten für Tabelle `bestellpositionen`
--

INSERT INTO `bestellpositionen` (`_id`, `bpos`, `artikelnr`, `menge`) VALUES
(2, 1, 10101001, 5),
(1, 2, 10101001, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hauptkategorien`
--

DROP TABLE IF EXISTS `hauptkategorien`;
CREATE TABLE IF NOT EXISTS `hauptkategorien` (
  `_id` int(9) NOT NULL,
  `hptkbezeichnung` varchar(99) NOT NULL,
  `hptkstandort` varchar(9) NOT NULL
);

--
-- Daten für Tabelle `hauptkategorien`
--

INSERT INTO `hauptkategorien` (`_id`, `hptkbezeichnung`, `hptkstandort`) VALUES
(10000000, 'Bohren', '2'),
(80000000, 'Beleuchtung', '1'),
(20000000, 'Schrauben', '4'),
(30000000, 'S&auml;gen/Schneiden', '5'),
(40000000, 'Sanit&auml;r', '6'),
(50000000, 'Garten', '9'),
(60000000, 'Boden', '7'),
(70000000, 'Tapezieren/Streichen', '8'),
(90000000, 'Reinigen', '3'),
(100000000, 'Tierbedarf/Pflanzen', '10'),
(110000000, 'Elektrik/Elektronik', '3');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produktkategorien`
--

DROP TABLE IF EXISTS `produktkategorien`;
CREATE TABLE IF NOT EXISTS `produktkategorien` (
  `_id` int(9) NOT NULL,
  `prodkbezeichnung` varchar(99) NOT NULL,
  `prodkstandort` varchar(11) NOT NULL,
  fk_unterkategorien int(11) NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `produktkategorien`
--

INSERT INTO `produktkategorien` (`_id`, `prodkbezeichnung`, `prodkstandort`,`fk_unterkategorien`) VALUES
(10101000, 'Holzbohrer', '2C',10100000),
(10102000, 'Stahlbohrer', '2C',10100000),
(10103000, 'Steinbohrer', '2C',10100000),
(10104000, 'Forstner/Kunstbohrer', '2C',10100000),
(10105000, 'Spezialbohrer', '2C',10100000),
(10201000, 'Bohrmaschine', '3C',10200000),
(10202000, 'Schlagbohrmaschine', '3D',10200000),
(10203000, 'Industriebohrmaschine', '3E',10200000),
(10204000, 'Akkuschrauber', '3C',10200000),
(20101000, 'Sechskantschrauben', '4A',20100000),
(20102000, 'Zylinderschrauben', '4A',20100000),
(20103000, 'Gewindeschrauben', '4A',20100000),
(20104000, 'Blechschrauben', '4A',20100000),
(20105000, 'Holzschrauben', '4B',20100000),
(20106000, 'D&uuml;bel', '4B',20100000),
(20201000, 'Sicherungsmuttern', '4B',20200000),
(20202000, 'Kronenmuttern', '4B',20200000),
(20203000, 'Hutmuttern', '4B',20200000),
(80101000, 'Lampen', '1E',80100000),
(80102000, 'Stehlampen', '1D',80100000),
(80103000, 'Baustellen-/Industrielampen', '1E',80100000),
(80201000, 'Gl&uuml;hbirnen', '1 C',80200000),
(80202000, 'Energiesparbirnen', '1C',80200000),
(80203000, 'Halogen', '1C',80200000),
(80204000, 'LED', '1C',80200000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stammkunden`
--

DROP TABLE IF EXISTS `stammkunden`;
CREATE TABLE IF NOT EXISTS `stammkunden` (
  `_id` int(4) NOT NULL,
  `passwort` varchar(50) NOT NULL,
  `anrede` char(4) NOT NULL,
  `vorname` varchar(20) NOT NULL,
  `nachname` varchar(20) NOT NULL,
  `strasse` varchar(30) NOT NULL,
  `plz` int(5) NOT NULL,
  `ort` varchar(20) NOT NULL,
  `telenr` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kartennr` int(8) NOT NULL,
  `statnr` int(8) NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `stammkunden`
--

INSERT INTO `stammkunden` (`_id`, `passwort`, `anrede`, `vorname`, `nachname`, `strasse`, `plz`, `ort`, `telenr`, `email`, `kartennr`, `statnr`) VALUES
(0001, 'e80b5017098950fc58aad83c8c14978e', 'Herr', 'Max', 'Mustermann', 'Musterstraße 15', 72458, 'Albstadt-Ebingen', '0743177777', 'max.mustermann@mustermail.com', 20000001, 1),
(0002, '26e162d0b5706141bdb954900aebe804', 'Frau', 'Maxelina', 'Musterfrau', 'Musterweg 2', 72458, 'Albstadt-Ebingen', '0743188888', 'maxelina.musterfrau@mustermail.de', 20000002, 1),
(0003, '879b75376498eab4e9b8968a46bfdb09', 'Herr', 'Hugo', 'Bartel', 'Dingsweg 5', 12345, 'Dingshausen', '012345678', 'dings@da.eu', 20000003, 1),
(0004, '8376935b94232768ee9113c12efd75b6', 'Herr', 'Michael', 'Teufele', 'Ingostraße 65', 12345, 'Ringshausen', '07056 78859', 'Michael.Teufele@gmx.de', 20000004, 1),
(9999, '912ec803b2ce49e4a541068d495ab570', 'Herr', 'Patrick', 'Leuschner', 'Forsthausstraße 4', 72119, 'Ammerbuch', '07073910382', 'patrick_leuschner@web.de', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stationen`
--

DROP TABLE IF EXISTS `stationen`;
CREATE TABLE IF NOT EXISTS `stationen` (
  `_id` int(8) NOT NULL,
  `statname` varchar(30) NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `stationen`
--

INSERT INTO `stationen` (`_id`, `statname`) VALUES
(1, 'Stationairy Device XCX II 001'),
(2, 'Stationairy Device XCX II 002'),
(3, 'Stationairy Device XCX II 003'),
(4, 'Stationairy Device XCX II 004'),
(5, 'Stationairy Device XCX II 005'),
(6, 'Mobile Device CRY III 001'),
(7, 'Mobile Device CRY III 002'),
(8, 'Mobile Device CRY III 003'),
(9, 'Mobile Device CRY III 004'),
(10, 'Mobile Device CRY III 005'),
(11, 'Mobile Device CRY III 006'),
(12, 'Mobile Device CRY III 007'),
(13, 'Mobile Device CRY III 008'),
(14, 'Mobile Device CRY III 009'),
(15, 'Mobile Device CRY III 010'),
(16, 'Mobile Device CRY III 011'),
(17, 'Mobile Device CRY III 012');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tempkunden`
--

DROP TABLE IF EXISTS `tempkunden`;
CREATE TABLE IF NOT EXISTS `tempkunden` (
  `_id` int(4) NOT NULL,
  `statnr` int(3) NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `tempkunden`
--

INSERT INTO `tempkunden` (`_id`, `statnr`) VALUES
(0001, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `unterkategorien`
--

DROP TABLE IF EXISTS `unterkategorien`;
CREATE TABLE IF NOT EXISTS `unterkategorien` (
  `_id` int(11) NOT NULL,
  `untkbezeichnung` varchar(99) NOT NULL,
  `untkstandort` varchar(11) NOT NULL,
  fk_hauptkategorien int(11) NOT NULL, 
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `unterkategorien`
--

INSERT INTO `unterkategorien` (`_id`, `untkbezeichnung`, `untkstandort`,`fk_hauptkategorien`) VALUES
(10100000, 'Bohrer', '2CDE',10000000),
(10200000, 'Bohrmaschinen', '3CDE',10000000),
(10300000, 'Zubeh&ouml;r', '2CDE',10000000),
(20100000, 'Schrauben', '4AB',2000000),
(20200000, 'Muttern', '4AB',2000000),
(20300000, 'Unterlegscheiben', '4AB',2000000),
(20400000, 'Sicherungen', '4AB',2000000),
(20500000, 'Schraubenzieher', '5AB',2000000),
(20600000, 'Schl&uuml;ssel', '5AB',2000000),
(20700000, 'Akkuschrauber', '3C',2000000),
(20800000, 'Bits/N&uuml;sse', '5AB',2000000),
(20900000, 'Zubeh&ouml;r', '5AB',2000000),
(80100000, 'Lampen', '1DE',8000000),
(80200000, 'Leuchtmittel', '1C',8000000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zusatzinformationen`
--

DROP TABLE IF EXISTS `zusatzinformationen`;
CREATE TABLE IF NOT EXISTS `zusatzinformationen` (
  `_id` int(9) NOT NULL,
  `artikelbeschreibung` varchar(250) NOT NULL,
  PRIMARY KEY (`_id`)
);

--
-- Daten für Tabelle `zusatzinformationen`
--

INSERT INTO `zusatzinformationen` (`_id`, `artikelbeschreibung`) VALUES
(10201001, '  Nennaufnahmeleistung: 720 W     Max. Bohrdurchmesser in Beton: 26 mm     Max. Einzelschlagenergie: 2,6 J'),
(10201002, 'Nennaufnahmeleistung: 750 W     Max. Bohrdurchmesser in Beton: 26 mm     Max. Einzelschlagenergie: 2,8 J');

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
