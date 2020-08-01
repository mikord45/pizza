-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Sty 2020, 11:32
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pizza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dodatki_do_pizzy`
--

CREATE TABLE `dodatki_do_pizzy` (
  `ID` int(11) NOT NULL,
  `NAZWA` varchar(30) COLLATE utf16_polish_ci NOT NULL,
  `na_malej` float NOT NULL,
  `na_sredniej` float NOT NULL,
  `na_duzej` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `dodatki_do_pizzy`
--

INSERT INTO `dodatki_do_pizzy` (`ID`, `NAZWA`, `na_malej`, `na_sredniej`, `na_duzej`) VALUES
(0, 'null', 0, 0, 0),
(1, 'Baza Pizzy', 12, 18, 24),
(2, 'Ser', 3, 5, 7),
(3, 'Szynka', 4, 6, 8),
(4, 'Pieczarki', 3, 5, 7),
(5, 'Ananas', 4, 6, 8),
(6, 'Kukurydza', 2, 4, 6),
(7, 'Papryka', 2, 4, 6),
(8, 'Cebula', 2, 4, 6),
(9, 'Kiełbasa', 4, 6, 8),
(10, 'Kurczak', 4, 6, 8),
(11, 'Kabanos', 3, 5, 7),
(12, 'Szynka dojrzewająca', 6, 9, 12),
(13, 'Salami', 4, 6, 8),
(14, 'Oregano', 1, 2, 3),
(15, 'Boczek', 4, 6, 8),
(16, 'Oliwki', 2, 3, 4),
(17, 'Ser pleśniowy', 3, 5, 7),
(18, 'Ogórki konserwowe', 2, 4, 6),
(19, 'Papryczki jalapeno', 3, 5, 7),
(20, 'Czosnek', 2, 4, 6),
(21, 'Ser x2', 6, 10, 14),
(22, 'Szynka x2 ', 8, 12, 16),
(23, 'Pieczarki x2', 6, 10, 14),
(24, 'Ananas x2', 8, 12, 16),
(25, 'Kukurydza x2', 4, 8, 12),
(26, 'Papryka x2', 4, 8, 12),
(27, 'Cebula x2', 4, 8, 12),
(28, 'Kiełbasa x2', 8, 12, 16),
(29, 'Kurczak x2', 8, 12, 16),
(30, 'Kabanos x2', 6, 12, 14),
(31, 'Szynka dojrzewająca x2', 6, 9, 12),
(32, 'Salami x2', 8, 12, 16),
(33, 'Oregano x2', 2, 4, 6),
(34, 'Boczek x2', 8, 12, 16),
(35, 'Oliwki x2', 4, 6, 8),
(36, 'Ser pleśniowy x2', 6, 10, 14),
(37, 'Ogórki konserwowe x2', 4, 8, 12),
(38, 'Papryczki jalapeno x2', 6, 10, 14),
(39, 'Czosnek x2', 4, 8, 14);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kelnerzy`
--

CREATE TABLE `kelnerzy` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf16_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf16_polish_ci NOT NULL,
  `suma_prowizji` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `kelnerzy`
--

INSERT INTO `kelnerzy` (`id`, `imie`, `nazwisko`, `suma_prowizji`) VALUES
(1, 'Matylda', 'Świątek', 0),
(2, 'Marcelina', 'Kurowska', 0),
(3, 'Kamil', 'Czarnecki', 0),
(4, 'Piotr', 'Pawlik', 0),
(5, 'Jan', 'Duda', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf16_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf16_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Aleksandra', 'Marciniak'),
(2, 'Jakub', 'Lewandowski'),
(3, 'Jan ', 'Wójcik'),
(4, 'Mateusz', 'Szewczyk'),
(5, 'Zuzanna', 'Cybulska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kopia_pizze_standardowe`
--

CREATE TABLE `kopia_pizze_standardowe` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `nazwa` varchar(30) COLLATE utf16_polish_ci NOT NULL,
  `skladnik_1` int(11) DEFAULT NULL,
  `skladnik_2` int(11) DEFAULT NULL,
  `skladnik_3` int(11) DEFAULT NULL,
  `skladnik_4` int(11) DEFAULT NULL,
  `skladnik_5` int(11) DEFAULT NULL,
  `skladnik_6` int(11) DEFAULT NULL,
  `skladnik_7` int(11) DEFAULT NULL,
  `skladnik_8` int(11) DEFAULT NULL,
  `skladnik_9` int(11) DEFAULT NULL,
  `skladnik_10` int(11) DEFAULT NULL,
  `skladnik_11` int(11) DEFAULT NULL,
  `skladnik_12` int(11) DEFAULT NULL,
  `skladnik_13` int(11) DEFAULT NULL,
  `skladnik_14` int(11) DEFAULT NULL,
  `skladnik_15` int(11) DEFAULT NULL,
  `skladnik_16` int(11) DEFAULT NULL,
  `skladnik_17` int(11) DEFAULT NULL,
  `skladnik_18` int(11) DEFAULT NULL,
  `skladnik_19` int(11) DEFAULT NULL,
  `skladnik_20` int(11) DEFAULT NULL,
  `skladnik_21` int(11) DEFAULT NULL,
  `skladnik_22` int(11) DEFAULT NULL,
  `skladnik_23` int(11) DEFAULT NULL,
  `skladnik_24` int(11) DEFAULT NULL,
  `skladnik_25` int(11) DEFAULT NULL,
  `skladnik_26` int(11) DEFAULT NULL,
  `skladnik_27` int(11) DEFAULT NULL,
  `skladnik_28` int(11) DEFAULT NULL,
  `skladnik_29` int(11) DEFAULT NULL,
  `skladnik_30` int(11) DEFAULT NULL,
  `skladnik_31` int(11) DEFAULT NULL,
  `skladnik_32` int(11) DEFAULT NULL,
  `skladnik_33` int(11) DEFAULT NULL,
  `skladnik_34` int(11) DEFAULT NULL,
  `skladnik_35` int(11) DEFAULT NULL,
  `skladnik_36` int(11) DEFAULT NULL,
  `skladnik_37` int(11) DEFAULT NULL,
  `skladnik_38` int(11) DEFAULT NULL,
  `skladnik_39` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pizze_standardowe`
--

CREATE TABLE `pizze_standardowe` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) COLLATE utf16_polish_ci NOT NULL,
  `skladnik_1` int(11) DEFAULT NULL,
  `skladnik_2` int(11) DEFAULT NULL,
  `skladnik_3` int(11) DEFAULT NULL,
  `skladnik_4` int(11) DEFAULT NULL,
  `skladnik_5` int(11) DEFAULT NULL,
  `skladnik_6` int(11) DEFAULT NULL,
  `skladnik_7` int(11) DEFAULT NULL,
  `skladnik_8` int(11) DEFAULT NULL,
  `skladnik_9` int(11) DEFAULT NULL,
  `skladnik_10` int(11) DEFAULT NULL,
  `skladnik_11` int(11) DEFAULT NULL,
  `skladnik_12` int(11) DEFAULT NULL,
  `skladnik_13` int(11) DEFAULT NULL,
  `skladnik_14` int(11) DEFAULT NULL,
  `skladnik_15` int(11) DEFAULT NULL,
  `skladnik_16` int(11) DEFAULT NULL,
  `skladnik_17` int(11) DEFAULT NULL,
  `skladnik_18` int(11) DEFAULT NULL,
  `skladnik_19` int(11) DEFAULT NULL,
  `skladnik_20` int(11) DEFAULT NULL,
  `skladnik_21` int(11) DEFAULT NULL,
  `skladnik_22` int(11) DEFAULT NULL,
  `skladnik_23` int(11) DEFAULT NULL,
  `skladnik_24` int(11) DEFAULT NULL,
  `skladnik_25` int(11) DEFAULT NULL,
  `skladnik_26` int(11) DEFAULT NULL,
  `skladnik_27` int(11) DEFAULT NULL,
  `skladnik_28` int(11) DEFAULT NULL,
  `skladnik_29` int(11) DEFAULT NULL,
  `skladnik_30` int(11) DEFAULT NULL,
  `skladnik_31` int(11) DEFAULT NULL,
  `skladnik_32` int(11) DEFAULT NULL,
  `skladnik_33` int(11) DEFAULT NULL,
  `skladnik_34` int(11) DEFAULT NULL,
  `skladnik_35` int(11) DEFAULT NULL,
  `skladnik_36` int(11) DEFAULT NULL,
  `skladnik_37` int(11) DEFAULT NULL,
  `skladnik_38` int(11) DEFAULT NULL,
  `skladnik_39` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `pizze_standardowe`
--

INSERT INTO `pizze_standardowe` (`id`, `nazwa`, `skladnik_1`, `skladnik_2`, `skladnik_3`, `skladnik_4`, `skladnik_5`, `skladnik_6`, `skladnik_7`, `skladnik_8`, `skladnik_9`, `skladnik_10`, `skladnik_11`, `skladnik_12`, `skladnik_13`, `skladnik_14`, `skladnik_15`, `skladnik_16`, `skladnik_17`, `skladnik_18`, `skladnik_19`, `skladnik_20`, `skladnik_21`, `skladnik_22`, `skladnik_23`, `skladnik_24`, `skladnik_25`, `skladnik_26`, `skladnik_27`, `skladnik_28`, `skladnik_29`, `skladnik_30`, `skladnik_31`, `skladnik_32`, `skladnik_33`, `skladnik_34`, `skladnik_35`, `skladnik_36`, `skladnik_37`, `skladnik_38`, `skladnik_39`) VALUES
(1, 'Margherita', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Capriciosa', 1, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Hawajska', 1, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Vegetariana', 1, 4, 6, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Wiejska', 1, 8, 9, 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Wyzwalacze `pizze_standardowe`
--
DELIMITER $$
CREATE TRIGGER `SAVE_OLD` BEFORE UPDATE ON `pizze_standardowe` FOR EACH ROW INSERT INTO `kopia_pizze_standardowe` (nazwa, date, skladnik_1, skladnik_2, skladnik_3, skladnik_4, skladnik_5, skladnik_6, skladnik_7, skladnik_8, skladnik_9, skladnik_10, skladnik_11, skladnik_12, skladnik_13, skladnik_14, skladnik_15, skladnik_16, skladnik_17, skladnik_18, skladnik_19, skladnik_20, skladnik_21, skladnik_22, skladnik_23, skladnik_24, skladnik_25, skladnik_26, skladnik_27, skladnik_28, skladnik_29, skladnik_30, skladnik_31, skladnik_32, skladnik_33, skladnik_34, skladnik_35, skladnik_36, skladnik_37, skladnik_38, skladnik_39) 
VALUES (OLD.nazwa ,CURRENT_TIMESTAMP, OLD.skladnik_1, OLD.skladnik_2, OLD.skladnik_3, OLD.skladnik_4, OLD.skladnik_5, OLD.skladnik_6, OLD.skladnik_7, OLD.skladnik_8, OLD.skladnik_9, OLD.skladnik_10, OLD.skladnik_11, OLD.skladnik_12, OLD.skladnik_13, OLD.skladnik_14, OLD.skladnik_15, OLD.skladnik_16, OLD.skladnik_17, OLD.skladnik_18, OLD.skladnik_19, OLD.skladnik_20, OLD.skladnik_21, OLD.skladnik_22, OLD.skladnik_23, OLD.skladnik_24, OLD.skladnik_25, OLD.skladnik_26, OLD.skladnik_27, OLD.skladnik_28, OLD.skladnik_29, OLD.skladnik_30, OLD.skladnik_31, OLD.skladnik_32, OLD.skladnik_33, OLD.skladnik_34, OLD.skladnik_35, OLD.skladnik_36, OLD.skladnik_37, OLD.skladnik_38, OLD.skladnik_39)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stoliki`
--

CREATE TABLE `stoliki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) COLLATE utf16_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `stoliki`
--

INSERT INTO `stoliki` (`id`, `nazwa`) VALUES
(1, 'stolik nr1'),
(2, 'stolik nr2'),
(3, 'stolik nr3'),
(4, 'stolik nr4'),
(5, 'stolik nr5'),
(6, 'stolik nr6'),
(7, 'stolik nr7'),
(8, 'stolik nr8'),
(9, 'stolik nr9'),
(10, 'stolik nr10'),
(11, 'stolik nr11'),
(12, 'stolik nr12'),
(13, 'stolik nr13'),
(14, 'stolik nr14'),
(15, 'stolik nr15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `dzis` tinyint(1) NOT NULL DEFAULT '1',
  `kelner` int(11) NOT NULL,
  `klient` int(11) NOT NULL,
  `stolik` int(11) NOT NULL,
  `pizza_standardowa` tinyint(1) DEFAULT NULL,
  `nazwa_pizzy_standardowej` int(11) DEFAULT NULL,
  `skladnik1` int(11) DEFAULT NULL,
  `skladnik2` int(11) DEFAULT NULL,
  `skladnik3` int(11) DEFAULT NULL,
  `skladnik4` int(11) DEFAULT NULL,
  `skladnik5` int(11) DEFAULT NULL,
  `skladnik6` int(11) DEFAULT NULL,
  `skladnik7` int(11) DEFAULT NULL,
  `skladnik8` int(11) DEFAULT NULL,
  `skladnik9` int(11) DEFAULT NULL,
  `skladnik10` int(11) DEFAULT NULL,
  `skladnik11` int(11) DEFAULT NULL,
  `skladnik12` int(11) DEFAULT NULL,
  `skladnik13` int(11) DEFAULT NULL,
  `skladnik14` int(11) DEFAULT NULL,
  `skladnik15` int(11) DEFAULT NULL,
  `skladnik16` int(11) DEFAULT NULL,
  `skladnik17` int(11) DEFAULT NULL,
  `skladnik18` int(11) DEFAULT NULL,
  `skladnik19` int(11) DEFAULT NULL,
  `skladnik20` int(11) DEFAULT NULL,
  `skladnik_21` int(11) DEFAULT NULL,
  `skladnik_22` int(11) DEFAULT NULL,
  `skladnik_23` int(11) DEFAULT NULL,
  `skladnik_24` int(11) DEFAULT NULL,
  `skladnik_25` int(11) DEFAULT NULL,
  `skladnik_26` int(11) DEFAULT NULL,
  `skladnik_27` int(11) DEFAULT NULL,
  `skladnik_28` int(11) DEFAULT NULL,
  `skladnik_29` int(11) DEFAULT NULL,
  `skladnik_30` int(11) DEFAULT NULL,
  `skladnik_31` int(11) DEFAULT NULL,
  `skladnik_32` int(11) DEFAULT NULL,
  `skladnik_33` int(11) DEFAULT NULL,
  `skladnik_34` int(11) DEFAULT NULL,
  `skladnik_35` int(11) DEFAULT NULL,
  `skladnik_36` int(11) DEFAULT NULL,
  `skladnik_37` int(11) DEFAULT NULL,
  `skladnik_38` int(11) DEFAULT NULL,
  `skladnik_39` int(11) DEFAULT NULL,
  `wartosc_zamowienia` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `dzis`, `kelner`, `klient`, `stolik`, `pizza_standardowa`, `nazwa_pizzy_standardowej`, `skladnik1`, `skladnik2`, `skladnik3`, `skladnik4`, `skladnik5`, `skladnik6`, `skladnik7`, `skladnik8`, `skladnik9`, `skladnik10`, `skladnik11`, `skladnik12`, `skladnik13`, `skladnik14`, `skladnik15`, `skladnik16`, `skladnik17`, `skladnik18`, `skladnik19`, `skladnik20`, `skladnik_21`, `skladnik_22`, `skladnik_23`, `skladnik_24`, `skladnik_25`, `skladnik_26`, `skladnik_27`, `skladnik_28`, `skladnik_29`, `skladnik_30`, `skladnik_31`, `skladnik_32`, `skladnik_33`, `skladnik_34`, `skladnik_35`, `skladnik_36`, `skladnik_37`, `skladnik_38`, `skladnik_39`, `wartosc_zamowienia`) VALUES
(112, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(113, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(114, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(115, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(116, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(117, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(118, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(119, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(120, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(121, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(122, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(123, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(124, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(125, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(126, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(127, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(128, 0, 1, 1, 1, 0, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(129, 0, 1, 1, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.2),
(130, 0, 1, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.2),
(131, 0, 1, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.2),
(132, 0, 1, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.2),
(133, 0, 1, 1, 1, 0, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(134, 0, 1, 1, 1, 0, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(135, 0, 1, 1, 1, 0, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(136, 0, 1, 1, 1, 0, NULL, 2, 3, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11),
(137, 0, 1, 1, 1, 0, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15),
(138, 0, 1, 1, 1, 0, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15),
(139, 0, 1, 1, 1, 0, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dodatki_do_pizzy`
--
ALTER TABLE `dodatki_do_pizzy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `kelnerzy`
--
ALTER TABLE `kelnerzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kopia_pizze_standardowe`
--
ALTER TABLE `kopia_pizze_standardowe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skladnik_4` (`skladnik_4`),
  ADD KEY `pizze_standardowe_ibfk_1` (`skladnik_1`),
  ADD KEY `pizze_standardowe_ibfk_2` (`skladnik_2`),
  ADD KEY `pizze_standardowe_ibfk_3` (`skladnik_3`),
  ADD KEY `skladnik_5` (`skladnik_5`),
  ADD KEY `skladnik_6` (`skladnik_6`),
  ADD KEY `skladnik_7` (`skladnik_7`),
  ADD KEY `skladnik_8` (`skladnik_8`),
  ADD KEY `skladnik_9` (`skladnik_9`),
  ADD KEY `skladnik_10` (`skladnik_10`),
  ADD KEY `skladnik_11` (`skladnik_11`),
  ADD KEY `skladnik_12` (`skladnik_12`),
  ADD KEY `skladnik_13` (`skladnik_13`),
  ADD KEY `skladnik_14` (`skladnik_14`),
  ADD KEY `skladnik_15` (`skladnik_15`),
  ADD KEY `skladnik_16` (`skladnik_16`),
  ADD KEY `skladnik_17` (`skladnik_17`),
  ADD KEY `skladnik_18` (`skladnik_18`),
  ADD KEY `skladnik_19` (`skladnik_19`),
  ADD KEY `skladnik_20` (`skladnik_20`),
  ADD KEY `skladnik_21` (`skladnik_21`),
  ADD KEY `skladnik_22` (`skladnik_22`),
  ADD KEY `skladnik_23` (`skladnik_23`),
  ADD KEY `skladnik_24` (`skladnik_24`),
  ADD KEY `skladnik_25` (`skladnik_25`),
  ADD KEY `skladnik_26` (`skladnik_26`),
  ADD KEY `skladnik_27` (`skladnik_27`),
  ADD KEY `skladnik_28` (`skladnik_28`),
  ADD KEY `skladnik_29` (`skladnik_29`),
  ADD KEY `skladnik_30` (`skladnik_30`),
  ADD KEY `skladnik_31` (`skladnik_31`),
  ADD KEY `skladnik_32` (`skladnik_32`),
  ADD KEY `skladnik_33` (`skladnik_33`),
  ADD KEY `skladnik_34` (`skladnik_34`),
  ADD KEY `skladnik_35` (`skladnik_35`),
  ADD KEY `skladnik_36` (`skladnik_36`),
  ADD KEY `skladnik_37` (`skladnik_37`),
  ADD KEY `skladnik_38` (`skladnik_38`),
  ADD KEY `skladnik_39` (`skladnik_39`);

--
-- Indeksy dla tabeli `pizze_standardowe`
--
ALTER TABLE `pizze_standardowe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skladnik_4` (`skladnik_4`),
  ADD KEY `pizze_standardowe_ibfk_1` (`skladnik_1`),
  ADD KEY `pizze_standardowe_ibfk_2` (`skladnik_2`),
  ADD KEY `pizze_standardowe_ibfk_3` (`skladnik_3`),
  ADD KEY `skladnik_5` (`skladnik_5`),
  ADD KEY `skladnik_6` (`skladnik_6`),
  ADD KEY `skladnik_7` (`skladnik_7`),
  ADD KEY `skladnik_8` (`skladnik_8`),
  ADD KEY `skladnik_9` (`skladnik_9`),
  ADD KEY `skladnik_10` (`skladnik_10`),
  ADD KEY `skladnik_11` (`skladnik_11`),
  ADD KEY `skladnik_12` (`skladnik_12`),
  ADD KEY `skladnik_13` (`skladnik_13`),
  ADD KEY `skladnik_14` (`skladnik_14`),
  ADD KEY `skladnik_15` (`skladnik_15`),
  ADD KEY `skladnik_16` (`skladnik_16`),
  ADD KEY `skladnik_17` (`skladnik_17`),
  ADD KEY `skladnik_18` (`skladnik_18`),
  ADD KEY `skladnik_19` (`skladnik_19`),
  ADD KEY `skladnik_20` (`skladnik_20`),
  ADD KEY `skladnik_21` (`skladnik_21`),
  ADD KEY `skladnik_22` (`skladnik_22`),
  ADD KEY `skladnik_23` (`skladnik_23`),
  ADD KEY `skladnik_24` (`skladnik_24`),
  ADD KEY `skladnik_25` (`skladnik_25`),
  ADD KEY `skladnik_26` (`skladnik_26`),
  ADD KEY `skladnik_27` (`skladnik_27`),
  ADD KEY `skladnik_28` (`skladnik_28`),
  ADD KEY `skladnik_29` (`skladnik_29`),
  ADD KEY `skladnik_30` (`skladnik_30`),
  ADD KEY `skladnik_31` (`skladnik_31`),
  ADD KEY `skladnik_32` (`skladnik_32`),
  ADD KEY `skladnik_33` (`skladnik_33`),
  ADD KEY `skladnik_34` (`skladnik_34`),
  ADD KEY `skladnik_35` (`skladnik_35`),
  ADD KEY `skladnik_36` (`skladnik_36`),
  ADD KEY `skladnik_37` (`skladnik_37`),
  ADD KEY `skladnik_38` (`skladnik_38`),
  ADD KEY `skladnik_39` (`skladnik_39`);

--
-- Indeksy dla tabeli `stoliki`
--
ALTER TABLE `stoliki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelner` (`kelner`),
  ADD KEY `klient` (`klient`),
  ADD KEY `nazwa_pizzy_standardowej` (`nazwa_pizzy_standardowej`),
  ADD KEY `skladnik1` (`skladnik1`),
  ADD KEY `skladnik2` (`skladnik2`),
  ADD KEY `skladnik3` (`skladnik3`),
  ADD KEY `skladnik4` (`skladnik4`),
  ADD KEY `skladnik5` (`skladnik5`),
  ADD KEY `skladnik6` (`skladnik6`),
  ADD KEY `skladnik7` (`skladnik7`),
  ADD KEY `skladnik8` (`skladnik8`),
  ADD KEY `skladnik9` (`skladnik9`),
  ADD KEY `skladnik10` (`skladnik10`),
  ADD KEY `skladnik11` (`skladnik11`),
  ADD KEY `skladnik12` (`skladnik12`),
  ADD KEY `skladnik13` (`skladnik13`),
  ADD KEY `skladnik14` (`skladnik14`),
  ADD KEY `skladnik15` (`skladnik15`),
  ADD KEY `skladnik16` (`skladnik16`),
  ADD KEY `skladnik17` (`skladnik17`),
  ADD KEY `skladnik18` (`skladnik18`),
  ADD KEY `skladnik19` (`skladnik19`),
  ADD KEY `skladnik20` (`skladnik20`),
  ADD KEY `stolik` (`stolik`),
  ADD KEY `skladnik_21` (`skladnik_21`),
  ADD KEY `skladnik_22` (`skladnik_22`),
  ADD KEY `skladnik_23` (`skladnik_23`),
  ADD KEY `skladnik_24` (`skladnik_24`),
  ADD KEY `skladnik_25` (`skladnik_25`),
  ADD KEY `skladnik_26` (`skladnik_26`),
  ADD KEY `skladnik_27` (`skladnik_27`),
  ADD KEY `skladnik_28` (`skladnik_28`),
  ADD KEY `skladnik_29` (`skladnik_29`),
  ADD KEY `skladnik_30` (`skladnik_30`),
  ADD KEY `skladnik_31` (`skladnik_31`),
  ADD KEY `skladnik_32` (`skladnik_32`),
  ADD KEY `skladnik_33` (`skladnik_33`),
  ADD KEY `skladnik_34` (`skladnik_34`),
  ADD KEY `skladnik_35` (`skladnik_35`),
  ADD KEY `skladnik_36` (`skladnik_36`),
  ADD KEY `skladnik_37` (`skladnik_37`),
  ADD KEY `skladnik_38` (`skladnik_38`),
  ADD KEY `skladnik_39` (`skladnik_39`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dodatki_do_pizzy`
--
ALTER TABLE `dodatki_do_pizzy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `kelnerzy`
--
ALTER TABLE `kelnerzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `kopia_pizze_standardowe`
--
ALTER TABLE `kopia_pizze_standardowe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pizze_standardowe`
--
ALTER TABLE `pizze_standardowe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `stoliki`
--
ALTER TABLE `stoliki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pizze_standardowe`
--
ALTER TABLE `pizze_standardowe`
  ADD CONSTRAINT `pizze_standardowe_ibfk_1` FOREIGN KEY (`skladnik_1`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_10` FOREIGN KEY (`skladnik_10`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_11` FOREIGN KEY (`skladnik_11`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_12` FOREIGN KEY (`skladnik_12`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_13` FOREIGN KEY (`skladnik_13`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_14` FOREIGN KEY (`skladnik_14`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_15` FOREIGN KEY (`skladnik_15`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_16` FOREIGN KEY (`skladnik_16`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_17` FOREIGN KEY (`skladnik_17`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_18` FOREIGN KEY (`skladnik_18`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_19` FOREIGN KEY (`skladnik_19`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_2` FOREIGN KEY (`skladnik_2`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_20` FOREIGN KEY (`skladnik_20`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_21` FOREIGN KEY (`skladnik_21`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_22` FOREIGN KEY (`skladnik_22`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_23` FOREIGN KEY (`skladnik_23`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_24` FOREIGN KEY (`skladnik_24`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_25` FOREIGN KEY (`skladnik_25`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_26` FOREIGN KEY (`skladnik_26`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_27` FOREIGN KEY (`skladnik_27`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_28` FOREIGN KEY (`skladnik_28`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_29` FOREIGN KEY (`skladnik_29`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_3` FOREIGN KEY (`skladnik_3`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_30` FOREIGN KEY (`skladnik_30`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_31` FOREIGN KEY (`skladnik_31`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_32` FOREIGN KEY (`skladnik_32`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_33` FOREIGN KEY (`skladnik_33`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_34` FOREIGN KEY (`skladnik_34`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_35` FOREIGN KEY (`skladnik_35`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_36` FOREIGN KEY (`skladnik_36`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_37` FOREIGN KEY (`skladnik_37`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_38` FOREIGN KEY (`skladnik_38`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_39` FOREIGN KEY (`skladnik_39`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_4` FOREIGN KEY (`skladnik_4`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_5` FOREIGN KEY (`skladnik_5`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_6` FOREIGN KEY (`skladnik_6`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_7` FOREIGN KEY (`skladnik_7`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_8` FOREIGN KEY (`skladnik_8`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `pizze_standardowe_ibfk_9` FOREIGN KEY (`skladnik_9`) REFERENCES `dodatki_do_pizzy` (`ID`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`kelner`) REFERENCES `kelnerzy` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_10` FOREIGN KEY (`skladnik7`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_11` FOREIGN KEY (`skladnik8`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_12` FOREIGN KEY (`skladnik9`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_13` FOREIGN KEY (`skladnik10`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_14` FOREIGN KEY (`skladnik11`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_15` FOREIGN KEY (`skladnik12`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_16` FOREIGN KEY (`skladnik13`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_17` FOREIGN KEY (`skladnik14`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_18` FOREIGN KEY (`skladnik15`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_19` FOREIGN KEY (`skladnik16`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`klient`) REFERENCES `klienci` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_20` FOREIGN KEY (`skladnik17`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_21` FOREIGN KEY (`skladnik18`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_22` FOREIGN KEY (`skladnik19`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_23` FOREIGN KEY (`skladnik20`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_24` FOREIGN KEY (`stolik`) REFERENCES `stoliki` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_25` FOREIGN KEY (`skladnik_21`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_26` FOREIGN KEY (`skladnik_22`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_27` FOREIGN KEY (`skladnik_23`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_28` FOREIGN KEY (`skladnik_24`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_29` FOREIGN KEY (`skladnik_25`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_3` FOREIGN KEY (`nazwa_pizzy_standardowej`) REFERENCES `pizze_standardowe` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_30` FOREIGN KEY (`skladnik_26`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_31` FOREIGN KEY (`skladnik_27`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_32` FOREIGN KEY (`skladnik_28`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_33` FOREIGN KEY (`skladnik_29`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_34` FOREIGN KEY (`skladnik_30`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_35` FOREIGN KEY (`skladnik_31`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_36` FOREIGN KEY (`skladnik_32`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_37` FOREIGN KEY (`skladnik_33`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_38` FOREIGN KEY (`skladnik_34`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_39` FOREIGN KEY (`skladnik_35`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_4` FOREIGN KEY (`skladnik1`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_40` FOREIGN KEY (`skladnik_36`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_41` FOREIGN KEY (`skladnik_37`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_42` FOREIGN KEY (`skladnik_38`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_43` FOREIGN KEY (`skladnik_39`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_5` FOREIGN KEY (`skladnik2`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_6` FOREIGN KEY (`skladnik3`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_7` FOREIGN KEY (`skladnik4`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_8` FOREIGN KEY (`skladnik5`) REFERENCES `dodatki_do_pizzy` (`ID`),
  ADD CONSTRAINT `zamowienia_ibfk_9` FOREIGN KEY (`skladnik6`) REFERENCES `dodatki_do_pizzy` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
