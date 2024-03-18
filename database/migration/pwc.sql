-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 18, 2024 at 02:08 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwc`
--

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `contribution_id` int NOT NULL,
  `user_id` int NOT NULL,
  `language_id` int NOT NULL,
  `week_id` int NOT NULL,
  `source` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int NOT NULL,
  `language_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int NOT NULL,
  `permission_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_type` int NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_fullname`, `user_type`, `user_password`) VALUES
(1, 'aaryan-r', 'Aaryan Rastogi', 1, 'password'),
(4, 'ap29600', 'Andrea Piseri', 1, '$2b$12$s.xzvWZoIXmZZhYhkEwPne/qC1VA/GD6A/2fMvjnuaViSfadqvUgi'),
(5, 'archargelod', 'Archar Gelod', 1, '$2b$12$2elqkmLV.U7sGatj2qOr2.TpLuoX86sJeQ33KgmAZIOs1lk2.pj6y'),
(6, 'asherbhs', 'Asher Harvey-Smith', 1, '$2b$12$yFebLiCzzsHeYmAuYRgV6uEIhZbw7Xti6jvjx.1/VJeC4LnOeGOmO'),
(7, 'aviral-goel', 'Aviral Goel', 1, '$2b$12$7ybZPZG7fqshMUvfC11o9eV5QGyigU4so2NHuI6cmowKTHwMc5Jxe'),
(8, 'conor-hoekstra', 'Conor Hoekstra', 1, '$2b$12$vMMCkX59AAlM9329nEqqle40GQTtc6cjIyWQvvUo1aJz/Ag/KMcS.'),
(9, 'daniel-aberger', 'Daniel Aberger', 1, '$2b$12$2RLiJsObG00SRo9wYST4ROonzu84ghgCfeaq1pSv/BQWPpP6EsiYq'),
(10, 'ealvar3z', 'E. Alvarez', 1, '$2b$12$bWNat6CQn72PqqchhnJRpeD1s3AgTsehOf.YgWD.rB/ju0mLS0Iui'),
(11, 'eric-cheung', 'Eric Cheung', 1, '$2b$12$z4TWgZ2X4fmSos6usOHdget2JMpxwwKQcutdJ8HLEPTuTJOpuxooW'),
(12, 'frankivo', 'Frank Oosterhuis', 1, '$2b$12$KGdHOL6PyH2mpmIyjj/du.TMrAxmIr6NZN9SlynZDX1OiRzQUt3vK'),
(13, 'henry-wong', 'Henry Wong', 1, '$2b$12$JmwYIHIJhoqRSTuR.ZrQnuxuy8Cdp0aXonurw7.AIwOg37lJNlmky'),
(14, 'joaofel', 'Joao Felipe', 1, '$2b$12$nXtGycFkrm8Ort01mMo5vO2D6q6O2Tg62UhMDvbukAkEjS1/v5IUq'),
(15, 'karishma', 'Karishma Rajput', 1, '$2b$12$/jTBeWG.05Hf9wNg96GMo.98rTx5pHsCi0YGwDdC20uV31Vw6E3sm'),
(16, 'macy-ty', 'Macy TY', 1, '$2b$12$GJfbfgrgdDd2RGABe3BLaeSaPg3.Wkb2J468s0fL9mk8hpsJmTEbm'),
(17, 'memark', 'Magnus Markling', 1, '$2b$12$JyCir.dhAqLRoS14KUUF8uNlDm.gdmAwkfXKAXkMEgX7R9sNvnjFy'),
(18, 'mfoda', 'Mohammad Foda', 1, '$2b$12$H38Lr0h2/UkO5mjbBUiP/eRaiU1vqEhFpqobmjbRk5Ge36w8ZDN3q'),
(19, 'michael-dicicco', 'Michael DiCicco', 1, '$2b$12$7Vah/uqe6tcwGn//ZD0p/.Q5gEbI8pZuklPUgLNWgQ0J1MRul6q6O'),
(20, 'orestis-zekai', 'Orestis Zekai', 1, '$2b$12$DNiTOlDaWkKqiEQkjRWzweewcufFXPavh.d6DrKuBZR/siXN/rf8W'),
(21, 'probablyfine', 'Alex Wilson', 1, '$2b$12$nsziGwBnsuky/AUnC3qKJe31q9HRfqmT91g59z0jvw2o4hy.3P4ka'),
(22, 'geekruthie', 'Ruth Holloway', 1, '$2b$12$4lWs7avr/8YPAd/oHcTkveKXKoo0y//7Df1UVYtvI4P4QI7ucv61G'),
(23, 'shawak', 'Shawak', 1, '$2b$12$elbZBUP83GGBp/92Oo6HtuNi7jXf1L2aUwJW2jKjJX91QviNi8Gue'),
(24, 'simon-dueck', 'Simon Dueck', 1, '$2b$12$t5H4igRZih33qIP1xp1MDepNLe.ZRj/OrIuUVBE4StcPuVOkQAkeG'),
(25, 'szabgab', 'Gabor Szabo', 1, '$2b$12$QfDYOwZEQS0Rvr/w84Kf8.L2SNDuY0biPMBc7aVjWsJsuq1Trw/Ha'),
(26, 'wg-romank', 'Roman Kotelnikov', 1, '$2b$12$EZZYjbcxLnp5L3ewe9VIKu8cIu4JsLiZNqR1E8et5HoK3eHy82qt2'),
(27, 'ziameraj16', 'Mohammad Meraj Zia', 1, '$2b$12$RCy1.DrJTNOyopAN8xqWKeBWJyhZ2ijdu.wKl5abbKVCzbvCaxlLy'),
(28, '0rir', 'Robert Ransbottom', 2, '$2b$12$vqPDAgV3yhrtFfaIxpccueiOWyxXe61fx2MXEukVb.T4kxNVpskly'),
(29, '2colours', 'Marton Polgar', 2, '$2b$12$phjDayKJlWTFg8vBV3i...8Yik5ddPzIqoH1mXzxSAGfyAkc2PYRW'),
(30, '3ter', '3ter', 2, '$2b$12$EynEGotBfQTLDrdo1.5jW.jr4x.KQXvcBrzyVPbiqUE9wa.0Rf5mq'),
(31, 'aaron-rowe', 'Aaron Rowe', 2, '$2b$12$DZrP07AugwsE2lqUoeMrtONKMZkKBi7zZhIcJCeazyjX0kHSM6gqO'),
(32, 'aaron-sherman', 'Aaron Sherman', 2, '$2b$12$N2kydgm/sOgeA4xxwwnezu6P4LnEyUyQDUNxwpch34oA6MLRGWTxu'),
(33, 'aaronreidsmith', 'Aaron Smith', 2, '$2b$12$b6jFKpptN74jiJzSx50GF.X/scNeAFPCuM6h6LL4NSt0gclrblnAy'),
(34, 'abigail', 'Abigail', 2, '$2b$12$ezrmry55s.HB/AN.mnlanOpMfilkrvDVFm9R6iDFlGvuNwxxUMePm'),
(35, 'adherzog', 'Adam Herzog', 2, '$2b$12$YoofudWcBvFlgldI2xbDh.Om5JCxv8XVI5c62BS3SVZ2pUGjDyhT.'),
(36, 'adam-russell', 'Adam Russell', 2, '$2b$12$WqDAV6FDHsgBni16q78BgeS63JJ41dodOvu/PzoE.6x6RZ5pHvg5i'),
(37, 'adriaandens', 'Adriaan Dens', 2, '$2b$12$vMCoyTTOVzo.c.xaG6L0D.LJ8Vcw9oIrL1.WFVtau2MKFp8T40gIa'),
(38, 'aecepoglu', 'AhmetEmre', 2, '$2b$12$rmmMc1IUldmmb84/0mBzzOdVcxGfcYYF/N/St7aULY0ozIJhB.fOu'),
(39, 'ailbhe-tweedie', 'Ailbhe Tweedie', 2, '$2b$12$B1Sq.UiXWke3VMGFN2lEG.rDS4Bdwz0hX0teH8rrk1vFxwajok8/S'),
(40, 'alex-daniel', 'Alex Daniel', 2, '$2b$12$N2JiWcDDTjFW20WqtusAA.fbPvv9UfpONUgcYSvCAmrjPZYIj4wPm'),
(41, 'alexander-karelas', 'Alexander Karelas', 2, '$2b$12$2v6SwQXdRWIyRnROnMyamekY5zxbQJtc80GOG6l09QgtlHVBKohKe'),
(42, 'alexander-pankoff', 'Alexander Pankoff', 2, '$2b$12$ZNY49SzPkNQUZNV92pM3yeat4xfOiiACc7JWcb/Mc5zl3anmYyVAO'),
(43, 'andinus', 'Andinus', 2, '$2b$12$8b8i8xOYQvs.15R0eLwWU.XmQH9r/8NtICutRNwv0wIGQgEBdh1um'),
(44, 'andreas-voegele', 'Andreas Voegele', 2, '$2b$12$k/cwqkAvNh6ypQgJoHrJe.8Iq9S8lk4egozbpsV9BsjiDyjNk7zjq'),
(45, 'andrew_mehta', 'Andrew Mehta', 2, '$2b$12$IfilpX30oj2pbPCZ3j8M.OeRgM.5nmsstS8sBEyMZWtHpzZ56TujC'),
(46, 'augiedb', 'Augie De Blieck Jr.', 2, '$2b$12$.WnWIT/.xCp4L4IsSwjzpeT0IwiBQHvbNgQawdyIfDo2thvI4cfNy'),
(47, 'aut0exec', 'Rob Turner', 2, '$2b$12$OwkqBJ0/Wqq5NroLw7u4W.LbZ3VQFONpTAMOKP0XlLLGD.4jK.VNu'),
(48, 'avery-adams', 'Avery Adams', 2, '$2b$12$Q2BhZxWD4edIgENF16tTx.cA4aWpEwBfm22nOUH2n0ejK4FE6za1O'),
(49, 'mathmauney', 'Alex Mauney', 2, '$2b$12$1ZzqYhYS11OCJ9J30JylhOu3nzCV3wP0/vhi9nkBq/SesfzQdD2Um'),
(50, 'alicia-bielsa', 'Alicia Bielsa', 2, '$2b$12$s4OBwxQwQcf.ZkPfqQjgru.woiUcRetMJOP/BhNVSK/q.d8f46R0a'),
(51, 'andrezgz', 'Andrezgz', 2, '$2b$12$uS6LvzZ7teu/WF00GXT/r.xdhNvpDlHKkKNXWyq9AwiSIlIDZ1jNC'),
(52, 'anton-fedotov', 'Anton Fedotov', 2, '$2b$12$ZTwtLC8N0BIJ//TwjB4qI.Kk1TNP4mnoAg6xCXOIzzc9V4.svGBTi'),
(53, 'antonio-gamiz', 'Antonio Gamiz', 2, '$2b$12$c8mkAWuE0Q8aHNnbKldbMeBkbsr2BzTwtyhiZjmZ73s1TVy90STRi'),
(54, 'arne-sommer', 'Arne Sommer', 2, '$2b$12$DlpuCJGCt712EeugyWYBL.cV8EH75lWUWGT1EgpMAOZIPofRUTOhu'),
(55, 'arpad-toth', 'Arpad Toth', 2, '$2b$12$KHz8u8oUaqfec62E1a66H.Lftum2Idl8MvGPbnIAFUp020Z5tSNEW'),
(56, 'ash', 'Andrew Shitov', 2, '$2b$12$QLQ5pZF5u4rdUctcG/DzfOl6CqAn10hpiiQbui0xqpRTlropSVNKm'),
(57, 'athanasius', 'Athanasius', 2, '$2b$12$M4RlUD50nuPvR1sRw2PmTOdJ.DLqyK4u8taR6jRrlR8CqFEN2ePLG'),
(58, 'aubrey-quarcoo', 'Aubrey Quarcoo', 2, '$2b$12$Y7xy9Fr9sg9bY87f0Evz6.kjxa5aFyyqJ68TAuQ9g6VcV/2hwO1ZG'),
(59, 'barroff', 'BarrOff', 2, '$2b$12$JJH3vQtF7moOX.KuHsSmc.iTTLDn9qEWgVylomuaB1B74Nbu2rEKO'),
(60, 'baryshevs', 'Baryshev Sergey', 2, '$2b$12$C3lhwwiAfU0FB.y/R/cv8.WnGzgHtEPyCSMDtJPgANMOfsrHV/uZa'),
(61, 'bejoy-mathews', 'Bejoy Mathews', 2, '$2b$12$VuzcmJckzPGvJPaCFy.SluXTbO1RKF61d0lGBiPOxNkoUexvyaXBe'),
(62, 'belmark-caday', 'Belmark Caday', 2, '$2b$12$1AAFOV6oi3qkC7BdA/3sFurZahjPZY2xkeb5idjpRwgJfjSmTEu8.'),
(63, 'ben-davies', 'Ben Davies', 2, '$2b$12$4ecODar41mfsRgennsHGsO8sdKVQb4iLzypP./b0eHU/ZIip//07W'),
(64, 'bill-palmer', 'Bill Palmer', 2, '$2b$12$zw.XA4UFM6caHKvcEXoV4uKvnf8jIH5CWpUT3U2K/KHkz4i4A3QLG'),
(65, 'bkb', 'Ben Bullock', 2, '$2b$12$138q3/wG7hwBxvkJ7vPB1ewx8L1WZB7QqfbklwT/GK.y6JeVGFJFC'),
(66, 'bn-ssotka', 'Scott Sotka', 2, '$2b$12$VjPvxKtl7T7rCogWTxxf.OjtUiW9Fa4wOj.PGJO75U8nZpNlQqqpa'),
(67, 'bob-lied', 'Bob Lied', 2, '$2b$12$vRv6BB7bUZQAokXe5HxSTeD.Lnfa1XZfEmBFpRTckyCjkO1euYa72'),
(68, 'bob-kleemann', 'Bob Kleemann', 2, '$2b$12$Htc89TtrV7Cldt6wgQF0y.ylzAijbNzaYgEMw8Uld0vq9qk.I8HBu'),
(69, 'bruce-gray', 'Bruce Gray', 2, '$2b$12$9wi6uB07MI2w35MfxTIvAOXwdh5DUFFQVakuP9YpVKvMKC3uodBhC'),
(70, 'brxfork', 'Philippe Bricout', 2, '$2b$12$6gEqVPpPsYSS6fJnxWrjbuNTAkbovbWamhYEGmNxDI0vaXz848moW'),
(71, 'bwva', 'Bruce Van Allen', 2, '$2b$12$U4nuFsaXts56PHpj26qqteyyNz4FyI/DJ.QA1sqxJcp/RTMslzTmu'),
(72, 'brtastic', 'Bartosz Jarzyna', 2, '$2b$12$I5D2NIt0AQOI6vv541TS8utmHe1x5sODcgy.YL9verooSii/ekN8O'),
(73, 'bruno-ramos', 'Bruno Ramos', 2, '$2b$12$EIluRC94ijiEjrntdlkr2OYgENgxJFwKHzcrh2h5u7fzTqM6cK6ua'),
(74, 'burkhard-nickels', 'Burkhard Nickels', 2, '$2b$12$0gFIvFTShmnmRgy8/uYzcuHK0Ox4Uimvj1kO9AolapbX4TqRhwIwq'),
(75, 'carlos-oliveira', 'Carlos Oliveira', 2, '$2b$12$nXF3hYALAxn7aVtxeuvJG.FTMaiKtDrBHahxPvXAkIsUObh.ovZSi'),
(76, 'cheok-yin-fung', 'Cheok-Yin Fung', 2, '$2b$12$NnVvwwPA0GUa4CHxxFra2OvBt3kV1ism0wI2llyXMNX9OOWupf9Vi'),
(77, 'chicagoist', 'Chicagoist', 2, '$2b$12$xXxax4TS/Zp.hF.44YvRKemQSMWTJrTwmsidrh1hRcDwIJZV99Ljy'),
(78, 'christian-jaeger', 'Christian Jaeger', 2, '$2b$12$AVQTx8ynG2cKMMLCSsipuOs0nxaXIVHTCkNBst8bPpI0z8pwDNATq'),
(79, 'clifton-wood', 'Clifton Wood', 2, '$2b$12$QpyFNkfTKcwFouA7LvzCB.59d2z.9ej8uXsSeGtfMsaUw26sUbTt.'),
(80, 'cliveholloway', 'Clive Holloway', 2, '$2b$12$P7dp/BN8EEIVd2BzA0pTCOvO6U/xsUBex6k7v9/5vlI/Z5V0U45Bq'),
(81, 'colin-crain', 'Colin Crain', 2, '$2b$12$z0Pj6MlAQCgWZAbCCPqqiOkaRNUAdUUwyA3ka49tdkAIfPrpELlSW'),
(82, 'craig', 'Craig', 2, '$2b$12$eYxjQvSDj1FuB6DzZNJyPOT0QRlzZI0dMa7k5/6Z8L6nWYAB6FDw6'),
(83, 'creewick', 'Creewick', 2, '$2b$12$4QTPaIc6XaXioEDkXTXDp.nk3IdwWLJ0nhGH6mPmDm.f839sGjso6'),
(84, 'cristian-heredia', 'Cristina Heredia', 2, '$2b$12$UNsa27wbLZlKk3/XeOVV2e1s3Q9ymD1cTS6ybF9ZOF2uLuCWax.hy'),
(85, 'cybersnyder', 'Rich Snyder', 2, '$2b$12$Z4UFBPiVw8Fn5e2opBSIROvGOnGKdQ1DFmpZ/eMxG17vnJ3lE2fLa'),
(86, 'dan-friedman', 'Dan Friedman', 2, '$2b$12$iKf2V./mw8lPzVptcbuN5unZrK0NGVxPL32RG53nSZdTCc5wpl6CC'),
(87, 'daniel-mantovani', 'Daniel Mantovani', 2, '$2b$12$oHeCB./Ahdb2ivpZdap0sOPRntHEEVoJKKvcnqfhJn0YnyemNR9rK'),
(88, 'daniel-mita', 'Daniel Mita', 2, '$2b$12$WnYC2s3gyASxZmEkrXo44.ANtesq0szUW1xztwZTYHJaQa58Gxd3K'),
(89, 'daniel-pfeiffer', 'Daniel Pfeiffer', 2, '$2b$12$Id0H.QI5lSN4LVHh9BZaiOdM6OepPIqGoXIoYOB1BfSHBfaAYkZv2'),
(90, 'dario-mazzeo', 'Dario Mazzeo', 2, '$2b$12$zxlZupOl8JMkmWKRdYNvMuurb5DcEnZZTxhb31Z2ZjNUNgpzcJuQ.'),
(91, 'darren-bottin', 'Darren Bottin', 2, '$2b$12$nxWNETrGvyR8GD5fUxdIeOq.FR9uvKc4SsHgBXk7oVutwRVdPOzVi'),
(92, 'dave-cross', 'Dave Cross', 2, '$2b$12$Fg5hOEQYTgvx8nxDKA7XXOd39dpM6AeWVzwo6ptB2YmwtOx8qPU3y'),
(93, 'dave-jacoby', 'Dave Jacoby', 2, '$2b$12$MemEF6yxuw/7ZEfWPMyMCeru0.10vs91w8BjpDXvGJ/jsGU8Rxgwu'),
(94, 'david-kayal', 'David Kayal', 2, '$2b$12$93QRYMUf4C26Jay5Mb8I1ektE.AE1jLI4OiDvpbsKnJtVXgVTU2HK'),
(95, 'david-santiago', 'David Santiago', 2, '$2b$12$BceU9SMf84YN9jAT4tzE6uO3ws5YcAV8hTk2sBLdG2GLS4DU8YcJq'),
(96, 'deadmarshal', 'Ali Moradi', 2, '$2b$12$5C9z0dGxj3Q9FWUgs7hihewzrjkh5ylX0Lf.ORTRAI0xuu2KjSo3y'),
(97, 'denis-yurashku', 'Denis Yurashku', 2, '$2b$12$UPIJ.jp.zLBVl1X.NwVl6.XFyi4cZgiEZwnCf8JGrzvEekgk48P8C'),
(98, 'ddobbelaere', 'Dieter Dobbelaere', 2, '$2b$12$jO2SqZI2TX/EJR/MTtZK9eEMhwqFwR3hsMZQAdrxQdmjCdVmpp7ZS'),
(99, 'demerphq', 'Yves Orton', 2, '$2b$12$dVPxD5fXxA5wD.9U/IoJr.U6VkUUQDY/YxusMlhIg3oTbWb3qABTi'),
(100, 'dms061', 'David Schwartz', 2, '$2b$12$TG3Q6jOexPZoi0XAo1pM0.tf2uCfSkMvX29RAkzhoIBaxOWHFhilq'),
(101, 'doug-schrag', 'Doug Schrag', 2, '$2b$12$l1Tw5vmiYOOZvcwypL1e4uZ.6bEg5EalxcLj8c.JvXDCDyOeuVHRe'),
(102, 'donald-hunter', 'Donald Hunter', 2, '$2b$12$zDZe8IfFB/n9ZajSo0Sn1uE/SC3N4l.jaaiRZSa/IkzV.vRl57Rw6'),
(103, 'duane-powell', 'Duane Powell', 2, '$2b$12$sHH9.1ep04Re0yYPnEjkz.eBr5eQ9KLSiuUWTryNs.1PdDnxOuQ5a'),
(104, 'duncan-c-white', 'Duncan C. White', 2, '$2b$12$wWZkc1nS23aSxZoP5APTbubGGyQHAIQJC5QCYDct9pvobR.bsab.a'),
(105, 'dracos', 'Matthew Somerville', 2, '$2b$12$Fmv.aYwCbuhiu6vRHHYbsuDpiaFQNQdbnn2qSoPyweOKApoTLRKS2'),
(106, 'e-choroba', 'E. Choroba', 2, '$2b$12$h67Qi0fsfkKPF8kaaQxuoO71NxfRBb/OKCs58UYuEhweC0.xHHe0a'),
(107, 'eddy-hs', 'Eddy HS', 2, '$2b$12$Gn77cpBLjP7/xKvE/gd58e06NQ.PGlWx4DGF5h0gn6GYHM63/kjIe'),
(108, 'fabrizio-poggi', 'Fabrizio Poggi', 2, '$2b$12$nuDqi5pJzvsxyO/Vo7NNVuOwboOap7AdJHGbrJ339dy/AK9NrDKrC'),
(109, 'feng-chang', 'Feng Chang', 2, '$2b$12$6MBsXxYnI09CKm.Lz8ezEuOSOvpdQYBV3aqZR8a/NkAwoL18tQZ.W'),
(110, 'finley', 'Finley', 2, '$2b$12$H/c8HUvo6c4ngfSHc2kzG.PJwnTTPjT3Z.CZXSxFtILAcP0DZNk/y'),
(111, 'fjwhittle', 'Francis Whittle', 2, '$2b$12$nr8tLNk5ie6LaGXGE1EVauqrQVKQx27//BRmdt6P2sisVCoJijy2G'),
(112, 'fred-zinn', 'Fred Zinn', 2, '$2b$12$X7vNHghVZWDc4.Xi5AvlL./jVnj/YX76B0bECPOeeMQQSdiPrJlai'),
(113, 'freddie-b', 'Freddie B', 2, '$2b$12$5cf5OHmgZ6AK/Flt3fTsiuc28LXIK4wfrOou2x9tySl.RXVLD3dJq'),
(114, 'garrett-goebel', 'Garrett Goebel', 2, '$2b$12$ZBO4we.VZt.vcgE.Jci2G.UZm8qCyKS0PfWv9FhscKjCS8y6e1kua'),
(115, 'giuseppe-terlizzi', 'Giuseppe Di Terlizzi', 2, '$2b$12$2AhAkmNgIaZl8shOybU3LuOpeq.kZweCHaEeOSNNwvm4Ilp7lJ9yC'),
(116, 'gugod', 'Kang-min Liu', 2, '$2b$12$NU8cxwLwHoVU89gBVizzmuNDog8Ysm20lC7Y2RyIjX24AiuuGXuNu'),
(117, 'guillermo-ramos', 'Guillermo Ramos', 2, '$2b$12$ZVQ3OIz/aqe941OmJOYQ4ONKZmnwPMJDy0MxRt6WeDV7NugYrGiQG'),
(118, 'bhat_gurunandan', 'Gurunandan Bhat', 2, '$2b$12$AylzdlHlEDURJVykHC2TTu2RjukUShH.MXBi0ZV0Cxql9eTfOJCxi'),
(119, 'gustavo-chaves', 'Gustavo Chaves', 2, '$2b$12$rTQNUYPNf8eePs8.KdvqUea9VtBtY/CfGi13myysfIOQZXsBhVm3G'),
(120, 'habere-et-dispetire', 'habere-et-dispetire', 2, '$2b$12$zdZhLhFOULzslMjGdCwYbO09z1mX9qDtMkqMExVBovqyGjoM0NNUC'),
(121, 'happy-barney', 'Branislav Zahradnik', 2, '$2b$12$7rScU03aeAfD3xWNWZXE9uTEahj0uS8ivHEHNPzET4n90AIOqA4Zq'),
(122, 'hatorikibble', 'Peter Mayr', 2, '$2b$12$gqts3ng23kPYT56UCbEqHOBERsQM.0VCO6WRY6JvYUEvRlQwL2iNy'),
(123, 'hauke-d', 'Hauke Dampfling', 2, '$2b$12$UqnEwNSzhvCPuH6NeWGtkeiovjza86dTZCgsmn3MVn9L/mv2ziacS'),
(125, 'hstejas', 'Tejas', 2, '$2b$12$w8WcpM5fIVL1ET2WazQxkOVlnAvc6V5FLWSmpYe.egdgqRd8Bm6KC'),
(126, 'iangoodnight', 'Ian Goodnight', 2, '$2b$12$QGVKqA2K0ltuohmhuOQYw.g/.uy2TmPEbMw9386rH2v3q0qSUaTkG'),
(127, 'ianrifkin', 'Ian Rifkin', 2, '$2b$12$NtKVoL//6yE9pPByEN20HegCGCmot8inE.tIKS0zFHqHNMkvPWSqy'),
(128, 'ildar-shaimordanov', 'Ildar Shaimordanov', 2, '$2b$12$ZKYxCFbls8Wr4XT0tZoteut5XK6CSbv5vx9XxaPvDhnLA8/IBNOiu'),
(129, 'izem', 'izem', 2, '$2b$12$lyBYU54qQ9cyzH8g8O3SQujNe7Zev2t6e2JY.7h/4yVXkQ24PTkqe'),
(130, 'izifresh', 'Izifresh', 2, '$2b$12$sDtuKU6mfoXnUZIVfliuAu5KfrKE5wNXLIAiqQcD2GCv/Tfplpf0e'),
(131, 'jacques-guinnebault', 'Jacques Guinnebault', 2, '$2b$12$0NKZsoVmfrnldxmicDYst.0HgoGTdWjcN6L5yHdjKp1G5vuUYIEAa'),
(132, 'jaguart', 'Jeff Armstrong', 2, '$2b$12$rIEPV6IJvp36pHdG.FbxOOwdIa2UbuyQrL6s97K0NcTrWvusJnI5y'),
(133, 'jaldhar-h-vyas', 'Jaldhar H. Vyas', 2, '$2b$12$Yp5m4fVAEw20xM1BhCsr3un0cnjnPZmR37fHZb0dcTdU4IU/GVYfu'),
(134, 'james-marquis', 'James Marquis', 2, '$2b$12$XFw.EXNs1SfmNKgPTJ1uJuu8rm/SPU28yxAX2l0NMkd2QzWZwru/2'),
(135, 'james-raspass', 'James Raspass', 2, '$2b$12$JYWAxN4zTTtNsIEL56MC/eMdqI6GZbHydqMFSoF1hR6vZqbEpcqBS'),
(136, 'james-smith', 'James Smith', 2, '$2b$12$LEpsJTpt0Nau50yDZxupOeXxEi/8eSR2YJ3O23XCBHDTy7m3fUg/e'),
(137, 'jan-perl', 'Jan Hoogenraad', 2, '$2b$12$fBud11z66RoN0aO3rDnfoeiYNn6GO7l.8HwGvOMMnDyDXMzjvZ/OC'),
(138, 'jaime', 'Jaime Corchado', 2, '$2b$12$loR5w5s6B02knRsl./SnoOoSAYxCa0fczyeEA6Dbpu86I5yPFdeXS'),
(139, 'jake', 'Jake', 2, '$2b$12$I7e8akYuAaNzB/W9Ps7JceS/jphjtKXaWS0yQZTO0cJhVaLdOvre.'),
(140, 'jaredor', 'Jared Martin', 2, '$2b$12$Hru/OZNMAQJhBwWBpwNvtuw1QrEhTNnMwMFWTuDiHp1oANkZtdRW.'),
(141, 'jason-messer', 'Jason Messer', 2, '$2b$12$wWBW8KS7zNJMqvXrUBssw.SAqJzBSRWx7WCVEHvoay1bDw1d4Atx2'),
(142, 'javier-luque', 'Javier Luque', 2, '$2b$12$xV3SX3xFbanQxyoBNdeBGe4CxsASCQHfguXBVPnTnAXjFWrZlPdQy'),
(143, 'jbourlakos', 'Ioannis Bourlakos', 2, '$2b$12$1wEqjIBhGAZYhpvKuArt6ur3njFiPHkK2adh/2HKszYmNJADlPnFu'),
(144, 'jcrosswh', 'Joel Crosswhite', 2, '$2b$12$R6Vo7g0cXv5u2uim8h4ihu5gtkM61bmSBzQdj1Q0EX0OZXWItwsze'),
(145, 'jdos22', 'jdos22', 2, '$2b$12$iY04JZAKL/RPxZvJC32du.4x3foDUD7ocsHm6Cr0t3uiHk6BRYdZC'),
(146, 'jeff', 'Jeff', 2, '$2b$12$NY.7hk3x/2nMa3AdeyjB7.KLNTFNQSsSpUJCO7E0W5GQQQThBiOty'),
(147, 'jeanluc2020', 'Thomas Kohler', 2, '$2b$12$b81puw67C0Kxzo9IfZyLl.gu9WGddUaQwgshRD70fz6.BJc8Q2rpi'),
(148, 'jeongoon', 'Myoungjin Jeon', 2, '$2b$12$IYICFt7INu.CdhF/82gKsODthCVWv8T.j.NshLvqe.jJXPLhwFZty'),
(149, 'jeremy-carman', 'Jeremy Carman', 2, '$2b$12$esAIajDusaqkmlARhSU/p.E/vCxNC0Db9.R4KJf16LlzXznVs.rpm'),
(150, 'jim-bacon', 'Jim Bacon', 2, '$2b$12$xnCCHUID8vHyF2iw3B8lc.bq6xlEOytZAnmM0l4obptrT33nbTET6'),
(151, 'jitu-keshwani', 'Jitu Keshwani', 2, '$2b$12$wcavzFHK5pczwb8QNWYuc.zTrp1JNnD88kI78Op1QCAoDEt9qUQaa'),
(152, 'jluis', 'Jose Luis', 2, '$2b$12$hrwGvd9GL8smF.pBzJWe9umSZX6sjND6pgqWk0pMQclanL96Rt0bW'),
(153, 'juliodcs', 'Julio de Castro', 2, '$2b$12$HD5dSYAbFe5KU2v2ZPGBRuCthAec2fNDcgMyhB81asgfyz4APr22.'),
(154, 'jj-merelo', 'JJ Merelo', 2, '$2b$12$X7/1.dqyWXN2v8POF3GfwOJtcVeX7pHbwQrKJEI7.2MrDGHMasMKm'),
(155, 'jo-37', 'Jorg Sommrey', 2, '$2b$12$rdIdFPWUDL3SRZZZEsycDeGRyrR6AAg0.losqtoedwSwLzFYec6NK'),
(156, 'jo-christian-oterhals', 'Jo Christian Oterhals', 2, '$2b$12$.6/qFl4P910UI1Tf.B3/0OC7PPRydCnKoBPVNuD1D53iETxWLUuI6'),
(157, 'joelle-maslak', 'Joelle Maslak', 2, '$2b$12$B77wnsTfJo6UModV25mHKuC.0nUpN6duwBCj4Tnj6PL.EQyh9pFiW'),
(158, 'joe-tym', 'Joe Tym', 2, '$2b$12$r3udpmaExXQsz7inDH5XseHniy8TYvistlyWKDurB0PgSDAxSLvyO'),
(159, 'jokraft', 'Jan Ole Kraft', 2, '$2b$12$LxcQW6Z3zRHuEcaKArIaf.BFdDxJmgjTtuvENdSyUBgjI3UJe5AMC'),
(160, 'john-barrett', 'John Barrett', 2, '$2b$12$cs.dbrXm7GROAoSG9HTNm.XMB3hGOYyeTg1vjSimIiy/K.bdNj6L.'),
(161, 'john-horner', 'John Horner', 2, '$2b$12$79WwDrD33bVWHY1co/jDKecUiYDf319BPaNGwfBGdSSFyinYZhMHa'),
(162, 'juan-caballero', 'Juan Caballero', 2, '$2b$12$mvqHa7hby4NnLGZLdOvZ.u74nsQX2wwY07KBtYdk8n.S1CO2Fdt7.'),
(163, 'julien-fiegehenn', 'Julien Fiegehenn', 2, '$2b$12$jebyXWUY4Hx6uZYrIn1gnOPKxRblVe9TXjSsNTs8AJpov6FDTyX/G'),
(164, 'kai-burgdorf', 'Kai Burgdorf', 2, '$2b$12$KOBi78g9Kdanfv65ihERieke5emBEOUfuumuMjen8AADNvJF3JnWa'),
(165, 'kaushik-tunuguntla', 'Kaushik Tunuguntla', 2, '$2b$12$5ZDsU/GOQvq.KnmlHZiU8.V9rY1GMBHpsScMKTXAveVNwQrnI1DwO'),
(166, 'kevin-colyer', 'Kevin Colyer', 2, '$2b$12$gONSYpdk03O87yiOP10PU.sWzAXfJi6pb6Mc.te8zKo3YpYpr9bCu'),
(167, 'khalid', 'Khalid', 2, '$2b$12$8eWdjIGxSD3f95VImgJSqOXtBrlmqdv4me4layiq/AFUE6Rlss0Wu'),
(168, 'khalid-anwar', 'Mohammad Khalid Anwar', 2, '$2b$12$cCKiQxHCWnXFZ2g3l.4UwOVerXkKM/EzxNFiON0PMrEM.5BaWWxke'),
(169, 'kian-meng-ang', 'Kian-Meng Ang', 2, '$2b$12$YNIt6ztyyqEs11dF/cdXgufSEh0cJA5foBM8UotUJvFHOM6NAqtay'),
(170, 'kivanc-yazan', 'Kivanc Yazan', 2, '$2b$12$5uGWlrLU6wW6ID1407Kfk.vFAshttAN7R49wmx.i.gDWMZK6Fx1/C'),
(171, 'kiran-kumar', 'Kiran Kumar', 2, '$2b$12$He0jpFNMnRNIh6vwI0NRGemgC41wADE36MYD0FSO8Tsp9ud8LNYS.'),
(172, 'kjetillll', 'Kjetil Skotheim', 2, '$2b$12$7cR.S3XgDbEXM/L7d61cgu366k/8MvCMjIEhp41RYGbC0DW6wA2WO'),
(173, 'kordaff', 'Phillip Hartfield Sr', 2, '$2b$12$N8zZ6Kg0mRZEOgH9TweQc.mauD24dnXS03yV69rGAEag2LwhC1Gy2'),
(174, 'kostas-giannakakis', 'Konstantinos Giannakakis', 2, '$2b$12$fvR.g3o17klBfeG3d8pzC.iLFl9EapeV/f8WeNiMbT.fy5aiD33TS'),
(175, 'kueppo-wesley', 'Kueppo Wesley', 2, '$2b$12$6jnb1m0Y6VofFQLZ4QFdXO0rTT/PB7ODoWuMWha8uJIAm7pXajTgu'),
(176, 'kurkale6ka', 'Dimitar Dimitrov', 2, '$2b$12$jBHZnWUnPGs16qmysvqHIuSHpseBSdtJsPsv0f1Janpnkk6z9c/EO'),
(177, 'lacek96', 'lacek96', 2, '$2b$12$jjO2Y1vJsiWvIPZLY2lVpO2aNH92.VYPU8iaD0fccGrn0z0bF7i.y'),
(178, 'lakpatashi', 'Lakpa Tashi Bhutia', 2, '$2b$12$7W5pk1ERN6UYelxNZuXgPeNO3j6BG/Iay51jY4hexkOPjENtd9UMe'),
(179, 'lance-wicks', 'Lance Wicks', 2, '$2b$12$gvZ8.YIoMAKWfwpDwG1Jp.oIEBHxXP.zl8S3lwv7Akyk6b3do39y.'),
(180, 'lars-balker', 'Lars Balker', 2, '$2b$12$yZMRk6QmZBRcOnDQb5FKeOofEiU5a/F3EB9ZODKwdpDU4GYFSRRzK'),
(181, 'lars-thegler', 'Lars Thegler', 2, '$2b$12$zA3xxv9LsSM/k5rZhp/6vuREWxlS2MBwHk2.M8jMpN17et5//5spi'),
(182, 'laurent-rosenfeld', 'Laurent Rosenfeld', 2, '$2b$12$4Ea10DSE.7E21zwW6YTKauWEJ8XC5lovoQL4zeEF0Se96l7kKaywi'),
(183, 'leoltron', 'Leoltron', 2, '$2b$12$HzH3PziWl5ZmEamH0aKvUOs7DH1DnUN7RLUp/94kk6ZxBsLpkDYK.'),
(184, 'luc65r', 'Lucas Ransan', 2, '$2b$12$HTrVhUey.7InyF1.lqDKF.WJmMbhmebvzrMTUOzt1sYpoYrJcT8Q.'),
(185, 'luiz-felipe', 'Luiz Felipe', 2, '$2b$12$WQM0HgbADodXSEuz7tJvQOsURvNqAdd5rhj69b3hbFcCDKld43ES2'),
(186, 'manfredi', 'Leo Manfredi', 2, '$2b$12$nSQLNsB1W1ALNWjLKgRVW.T/dwEl6QonvmqHB.vkNoF6LLwUbaUmq'),
(187, 'massa', 'Humberto Massa', 2, '$2b$12$B2YUrN55f.TrKJzs9amDY.rp3Ia.XjonrvPgJcC/G2nV44Oz.8Ibe'),
(188, 'mauke', 'mauke', 2, '$2b$12$GBWx/5mwNbDu7K8yb0XrDeVNtyddiZ8ge55gMPoeDxYUTEOjW2TAu'),
(189, 'miguel-prz', 'Miguel Prz', 2, '$2b$12$njQCxHjlzGPIcerbzVFFsOWahoXN8rk7c3bI3opXKGsR2AE/Aw8Qy'),
(190, 'librasteve', 'librasteve', 2, '$2b$12$T/KNrLUkN9gK9f7eclLwMuxULCdi8l5M.MqUT/QgTM/J8d5gWlZXm'),
(191, 'lubos-kolouch', 'Lubos Kolouch', 2, '$2b$12$1t6ALn50LGijH33iGq2aIe7rg/rKN0Ip.T7TlVssBockehqLQLllG'),
(192, 'luca-ferrari', 'Luca Ferrari', 2, '$2b$12$R0mfwPbD3gwWds9q1Xiaf.Fjewh8kIttnsRYkjkZ5iYXq2h5T00i2'),
(193, 'magnus-woldrich', 'Magnus Woldrich', 2, '$2b$12$KCHN6aLbAl3ZHLQ6N.DBCudZQuRYI57cHniAlxGZbp6S.UfpZI61q'),
(194, 'mano-chandar', 'Mano Chandar', 2, '$2b$12$IujYjx8Z1efsaZwftZYCne6jpIhs1FnWJ0OETHkCcsiYz4juP65XK'),
(195, 'mark-anderson', 'Mark Anderson', 2, '$2b$12$/h7fh6y9WHsQ0ZzDvHnUieMfACD2H4mm7onryo3I6.7R6nFN76/Lq'),
(196, 'markjreed', 'Mark J. Reed', 2, '$2b$12$Uw5DNMtl31Ng2sD1rVlFW.BCcbZSLO/XDTHtL06LjVrCabcTfjPUy'),
(197, 'mark-senn', 'Mark Senn', 2, '$2b$12$mORPDIiedAOSfPEA2ETLQu0ujIgdkDVm34uV1XXsF9mqaZHovVQSW'),
(198, 'markus-holzer', 'Markus Holzer', 2, '$2b$12$0SuQJnkV7YmzlyunnrRsEu3ZE5hLricPgDsdmPVcX1u7pgDMObb3m'),
(199, 'martin-barth', 'Martin Barth', 2, '$2b$12$SgTWmFN97k1sAoDu3Gj.FO3a57X8HzWvnJ2gAUH0cvVHvKbjRgt5K'),
(200, 'martin-mugeni', 'Martin Mugeni', 2, '$2b$12$i.jV8ApHGGzhAh.9HtxXSevNyk.9nPPDwimRtYNKaLtHMl2PewYFe'),
(201, 'matt-latusek', 'Matt Latusek', 2, '$2b$12$6nPzYxkgptWCwcOODIWLIOKXVWXnnwbawguGaa7FDv7B/DmMSHJGS'),
(202, 'mattneleigh', 'Matthew Neleigh', 2, '$2b$12$QIZbUy7tXWJqdJOEFTKLKexFKIMrPQ9YPrb0H6IgktzgYaPzo8xum'),
(203, 'matthew-persico', 'Matthew O. Persico', 2, '$2b$12$Q8zF/v.k1.Z9zddrDhethuYr5bXDu.nGBc.rBvBjAIayJPgmnO96O'),
(204, 'matthias-muth', 'Matthias Muth', 2, '$2b$12$wFd30aTvhw2UeOjkRCsXiOiI303F1z6F7jm1rDpH6np3yGEdsFBlm'),
(205, 'max-kossek', 'Max Kossek', 2, '$2b$12$Z5cp.kxUeXm/8xy8iBXEZ.v97l8eB0d3DaKNqR9vN694eJQmcJ5kO'),
(206, 'maxim-kolodyazhny', 'Maxim Kolodyazhny', 2, '$2b$12$Q6n9uTgIjMKWbDaieVSdsue8krsV4iD.2WPBW/WOIK.8mXQbdrAVy'),
(207, 'maxim-nechaev', 'Maxim Nechaev', 2, '$2b$12$ExsSJz1Wf8TZ3GJxqzyHuuv6pZNH3IJtZPKtMIuQykSGzGUIYYAc.'),
(208, 'michael-hamlin', 'Michael Hamlin', 2, '$2b$12$W13RanE5aHQ0iOP/i9VYFeayqZzqIsMM24IX3.BVQ1ChfYvmznbQ6'),
(209, 'michael-schaap', 'Michael Schaap', 2, '$2b$12$gut/TliJz00.AHW8g6g92./BaenKJoBpEWFbakJXyB1jfzDp7bmtC'),
(210, 'mihail-iosilevitch', 'Mihail Iosilevitch', 2, '$2b$12$A2Y3T/i4n6sQmeYNNSmDg.LBtIfahso0huU/2tXKWdBvL5qg5Uivu'),
(211, 'mike-accardo', 'Mike Accardo', 2, '$2b$12$gpvvjPOan4leUOnD5Mmh/uxMB1aZve1ekb097iVC7BVE3v/WLB2G.'),
(212, 'mimosinnet', 'Joan Mimosinnet', 2, '$2b$12$clwIgZSH36CVDzDcYs4Uj.fJV8kZpAp.98.x2Ar2rlbH0oUzVkQY6'),
(213, 'mohammad-anwar', 'Mohammad Sajid Anwar', 2, '$2b$12$5N9wH.u4J4bYh4dwKC4hC.NS7ILG4ElrJYOLSWfFepn7cyBc0l5li'),
(214, 'morayj', 'Moray Jones', 2, '$2b$12$wLuqWYgRH913EVv0.G6mpurT/mh/XJyt1bxxlUu3H.a90oRyf529W'),
(215, 'ndelucca', 'Nazareno Delucca', 2, '$2b$12$PZe7PgVdUG/Xk.eLj9d6seF6EaWib/fd5RCqHJpsvZBnWrwg7iTyW'),
(216, 'neil-bowers', 'Neil Bowers', 2, '$2b$12$2FjJxQaYeNCyEQaJ/DPaRO6xZZoc6jWA6breNBNoOIke5g5jSGZC.'),
(217, 'nelo-tovar', 'Nelo Tovar', 2, '$2b$12$vZrNcHwajkyHdlgHQbKwqOW3CaK8ktDyR.lqDxwGmuvMS.rHQbW3i'),
(218, 'nick-logan', 'Nick Logan', 2, '$2b$12$qTIU.aUNGXxunPhtCnmwYOhUufALtolSrIOXNinMyEB1MQeDmYv8q'),
(219, 'nicolas-mendoza', 'Nicolas Mendoza', 2, '$2b$12$/lfaAZeK1iLJDPFxlKDrZOOcYEMrwCsH5WgDfkCFIWFuQrTdjEcT.'),
(220, 'nikhil-prasanna', 'Nikhil Prasanna', 2, '$2b$12$QaSPTtmzHxZT05ca5PRiTeyWlGBRvsrpYBWtivCfJk8umkASjmF66'),
(221, 'nunovieira220', 'Nuno Vieira', 2, '$2b$12$WbVdpjk3kEDwI7maMmJv/ur24Ho1zcnt8w5oqvtdjoSPVLJUYgpzC'),
(222, 'noud', 'Noud Aldenhoven', 2, '$2b$12$woBEiMAHlEak4nqh.T61pujbFI8MxUwCpTfSwRWv2VJE51P8S5lWK'),
(223, 'ohmycloud', 'Chenyf', 2, '$2b$12$cGUpmfN1016pVOVhniAhbu.UhD2ZDKl3AR2NGfECreJOa9VdoAEqC'),
(224, 'oleksii-tsvietnov', 'Oleksii Tsvietnov', 2, '$2b$12$92oZSJPEG5ZZ175q2nxVcuEKssLDcel0yZZPzgD0upoXixDJROPCO'),
(225, 'oliver-oviedo', 'Oliver Oviedo', 2, '$2b$12$CMjdksDJPol7DC1olctSSu0pABDUiBRyFnNOWjFyvrMDJtYtmnhxe'),
(226, 'olivier-delouya', 'Olivier Delouya', 2, '$2b$12$6AGXJ1WcxIrO986KjeeKI.i5rINdNvN3S6iiFfEAB0KhWx9HnSCg.'),
(227, 'olli-antti', 'Olli-Antti Kivilahti', 2, '$2b$12$vq/ItarlWM7MN/aACMgIOO52EoULkttaZUZSl09ulICcfdmDsWM9.'),
(228, 'ozzy', 'Ozzy', 2, '$2b$12$IggFsuZpAj2TZd9f07yZ0u9msWnINwL9AIGIvneyQXgpre/YtcPXa'),
(229, 'pablo-saavedra', 'Pablo Saavedra', 2, '$2b$12$J4/ZDEVLNcs8o6pB4qbvD.3B8BKJeX95GM7eSwUnwvebnFjcb4.Hy'),
(230, 'packy-anderson', 'Packy Anderson', 2, '$2b$12$cqdwduGiWl9JsXj1mzKh8OhYtjKwZQ6MBg4.FMe97wjMZuH0HiEBW'),
(231, 'paul-fajman', 'Paul Fajman', 2, '$2b$12$DTm.qjKPqj1wLUp4q0erl.oD3N.xTknzfEwJjN7DRiHsxWy5iaSa.'),
(232, 'paulo-custodio', 'Paulo Custodio', 2, '$2b$12$NZxNwV7AObYFTeuabEMZM.dwguuykEg2qSNtVx.XC4SlEzhd7yGRq'),
(233, 'pavel-jurca', 'Pavel Jurca', 2, '$2b$12$Y/v8gS/nR3V3Z4htSTgHpezKi4Ee8wiZ2z79Rd03ioOySSnoai9CK'),
(234, 'pavel_kuptsov', 'Pavel Kuptsov', 2, '$2b$12$QV0m8nYP9ZhYRy3VCJ72EOudjwZvEpGCqGfoZkuXSNj7GHLRjE9fu'),
(235, 'pavel-starikov', 'Pavel Starikov', 2, '$2b$12$g.bqtO0Ng25TsCI5K2mQuuv9.Z4inRIejrGy.xu/cIcBHQ4OwOV0q'),
(236, 'perlboy1967', 'Niels van Dijke', 2, '$2b$12$KCv0yVyvCyshCiHVu7ShmOpSTNxxFGXRAoaN9u4bXVuHy1.auY9ae'),
(237, 'pete-houston', 'Pete Houston', 2, '$2b$12$.CKA3NCcB/ke/yy.6lTwvuWE2K.I/j4FQEvCymctYnxtoSb6cQ2OO'),
(238, 'pete-sergeant', 'Pete Sergeant', 2, '$2b$12$Tbelb.PlSEyDf/y6HxzPYecXkC4j224xVurs.tS/k2V8rwWyo3xvK'),
(239, 'peter-campbell-smith', 'Peter Campbell Smith', 2, '$2b$12$G434dJ1iA7wLpiNmMDle3uoTeC8/ZsarqF5p4lZfaeSo7Jiy8Fml.'),
(240, 'peter-meszaros', 'Peter Meszaros', 2, '$2b$12$DKJpGkYRsjfGM2.VLuZW2eD0CIDWHiQuPdzYM1b/9kHMSMv3UIpxi'),
(241, 'peter-scott', 'Peter Scott', 2, '$2b$12$wWGTTeMWz51WXq/6S3vo0eZhcFVjv88wLU3fveSocnK.B84UKpB0u'),
(242, 'petr-roubicek', 'Petr Roubicek', 2, '$2b$12$mGI2.sEmK99oCNi5g46Pd.KFcf1rv7132Cblm2BZtzaCIX3uQA4Qu'),
(243, 'pip', 'Pip Stuart', 2, '$2b$12$3ppHEZQtZ3NGd0hDYmgbDuPreJqfc1xxQSga84sHUiGYS/E/12xy.'),
(244, 'pjdurai', 'PJ Durai', 2, '$2b$12$.L98xuceRQGn40sYKNQZ1uO58KzXiwtzbLefbuyfcXwqpnZ8uJSWC'),
(245, 'pkmnx', 'Philip Hood', 2, '$2b$12$q2t1ofA2TbBFaG8lw1nsKeutajJ0QAjORt4PYbUoDaF/LznFhtD7K'),
(246, 'plis-acm', 'Plis Acm', 2, '$2b$12$gB18HR//N4bGD3VmmojWdua8fs2Nw1QsFvkv.gbPOR3D0xOy5CB1u'),
(247, 'polettix', 'Flavio Poletti', 2, '$2b$12$NfKIlDUnhmRWih6nmcLrS.VsFhvD5rYWgov2zsDJ1tIzP9RGWn0dq'),
(248, 'pokgopun', 'PokGoPun', 2, '$2b$12$LHD3ytMZZ8j8pUB3Yd8JDOjas2Fr1IqhBfe128bD4MswLtNVU4G9m'),
(249, 'philippe-bruhat', 'Philippe Bruhat', 2, '$2b$12$B75hW6CDXYLk1FKX9Yn60eTdakWNt7mYlIJK9Q/wZF8D5c21NUkcu'),
(250, 'phillip-harris', 'Phillip Harris', 2, '$2b$12$hDt9cqBJRPtKqNTK67ABwe6nfexY9Aobxdf3w3QNuHhnfoiVdoEFC'),
(251, 'prajith-p', 'Prajith P', 2, '$2b$12$qTqRAumx3Zvv8LFKgISS9.ttRG.5Xkqc2FtgYaclTH0IfyqHimxGO'),
(252, 'rage311', 'Rage311', 2, '$2b$12$jhBfInc5hkmXoO74aCX.5urz4TR1lpkTv6mdNdMVADV2kzpqjLpY6'),
(253, 'randy-lauen', 'Randy Lauen', 2, '$2b$12$ZTCdTAvitfYs4Kh70Fc3uuKCDEm8pGjcNmGk/VtlUNckkSN1rvXfi'),
(254, 'rakulius', 'Rakulius', 2, '$2b$12$xjSTIOTU2TMP99b4Og01EOVrcZdCdgkEJVR3yTdOzlkv1QPGBl3GC'),
(255, 'rawleyfowler', 'Rawley Fowler', 2, '$2b$12$3rxp.Zf4Wki329Bf8a53DucHfqiwN1hb91myVsBACLYbWN7oNOepe'),
(256, 'rcmlz', 'rcmlz', 2, '$2b$12$kXkfRDaWFi97nDVKF2sc2eHe/vL77o5XmwWFRLjwvuaqsOnXntebG'),
(257, 'finanalyst', 'Richard Hainsworth', 2, '$2b$12$z2jsOnUJjoQySQHuyHimVu5WKCdiWG0T2ovA36MQdAhcPhrebzrn6'),
(258, 'razetime', 'Raghu R', 2, '$2b$12$8QG19miWgjdjVT3.7ayGZOmbEmoWrEuqn8PhQBU9NYT.qXktzUR5.'),
(259, 'ribtips', 'RibTips', 2, '$2b$12$qMs7SjVXlj1bz9grWH.iZeHqQb5cqt/urtaoqhvUed6yDABdx7P2m'),
(260, 'richard-park', 'Richard Park', 2, '$2b$12$zLQlEDMDt233SN0/lLEhqOYb1fRyndrBem/mYgfrJu099XYINjeXu'),
(261, 'rick-bychowski', 'Rick Bychowski', 2, '$2b$12$7oPR33GH/Yoom5AQPCBJ8uV5BxSBp4hopNpNNFPqk6DsCKTegbOMC'),
(262, 'rnuttall', 'Richard Nuttall', 2, '$2b$12$gEJ44ffDNUeBDX2DVkKG0ump7qhhQdlOQRCwvUXsrINdJh5CehRUi'),
(263, 'rob4t', 'Robert Gratza', 2, '$2b$12$7s25yA1H8ZOzCDtynO96UewSF3dZXdSqHv/kcaNG/LJuJpwh6naQ2'),
(264, 'robbie-hatley', 'Robbie Hatley', 2, '$2b$12$q1amHSUXOAQONkkb2fffl.ix7K.9h37M2sp97p2nwMiSC5kj793CG'),
(265, 'rob-van-dam', 'Robert Van Dam', 2, '$2b$12$/j.WgE0HpUvdCpFGdYxYl.e4xfpDAPKkio4b2UuP4S0GyTP.NOb72'),
(266, 'robert-dicicco', 'Robert DiCicco', 2, '$2b$12$KPSAKWh.yJGdJB7CMHgzA.AR9yj.bHUILc2FPGI6HKTe0CcFDkuOO'),
(267, 'robert-mcintosh', 'Robert McIntosh', 2, '$2b$12$4gKPREsJfRZ1SZYt6tJhierDAbkhAR8bssnJP1./6d7QIj0SVoRNu'),
(268, 'roger-bell-west', 'Roger Bell_West', 2, '$2b$12$M1uc39KrlAQ61ddAlPvh1eoEEeBl/1JuUqnchbml8lhomosfIN88a'),
(269, 'rozcovo', 'Israel C. Batista', 2, '$2b$12$xWnNOV.zPVZcAOeTIoJ3hOeqyD62ncKUOXwY72tirHTge0Qjf1fBq'),
(270, 'ruben-westerberg', 'Ruben Westerberg', 2, '$2b$12$muLDUl.r1vBjYvI7ntiJTetfailWREJLURHx3f5HF.xLRKTolss42'),
(271, 'ryan-thompson', 'Ryan Thompson', 2, '$2b$12$YClwasFPud5Va41O1J9q4OeWbN7.YCcT.wDWtgRO9D2DoSLUcnJCS'),
(272, 'saiftynet', 'Saif Ahmed', 2, '$2b$12$nu.gePtFmvRHh0hTYST2q.M.whfTXG6JkmJKBvqHF5mxgBIyPG2aO'),
(273, 'samir-parikh', 'Samir Parikh', 2, '$2b$12$Cgh3Y6d8sLmTiwBEsVPpyef4iedeCbj/WuJtHdTRpDpr73SeSV6KS'),
(274, 'sangeet-kar', 'Sangeet Kar', 2, '$2b$12$CuIw1kK1ns273Y5cKLagBuBsyy6IxwXatWpHE6.9wQ4jPcuWL96La'),
(275, 'sean-meininger', 'Sean Meininger', 2, '$2b$12$LdXPwLL0LDnrl7BMXOipbOSp83a1.9nserdoUl3EcPYRawGzNJXMG'),
(276, 'sergiotarxz', 'Sergio Iglesias', 2, '$2b$12$HBL1euYc.TfQ.I3nkf48Yez8hoZtcm4mmTNj0R2Bt/YhSfK3d7Vd2'),
(277, 'shahed-nooshmand', 'Shahed Nooshmand', 2, '$2b$12$6L2dE/bghcTZdgWfYDQEGOEj3FrVrMB6iXBrBKF8cQT/ETm1Ef5qi'),
(278, 'shaun-pearce', 'Shaun Pearce', 2, '$2b$12$EsQva48nzadO3vMPeST.W./P.tCF6x49zDp.o39HGnjp/Wp71Jqzi'),
(279, 'shardiwal', 'Rakesh Kumar Shardiwal', 2, '$2b$12$ei9Tyerfatcaw0z7KUyOY.7E6mH49Wh6691UN48y.Poxa/Knxgoz.'),
(280, 'shasank-shah', 'Shasank Shah', 2, '$2b$12$bdpGhaL1yZfuFCNAN1XUjOWzXC951ELrYraNpEIzvbc1z0grlFLDW'),
(281, 'shawn-wagner', 'Shawn Wagner', 2, '$2b$12$V2PwjHrK5TunqliiiWJLVOx1DoC2xdASGmUpJCTah62.ZJ4ndEaUm'),
(282, 'shimon-ben-avraham', 'Shimon Bollinger', 2, '$2b$12$ok9pLdjY0y1Wl5xCjUP.z.HSvSTJ.ipyQx5z53mcXTzC1CtqYl1g.'),
(283, 'sgreen', 'Simon Green', 2, '$2b$12$o/dnUO5wTkJlNIISAoR60O6AinCw7Ds6RsFRPGaZNDL73FmW7RogW'),
(284, 'simon-miner', 'Simon Miner', 2, '$2b$12$g7iAJbExisb104lX0PX6i.CbVjWdlGk0lhRIz6Zzp57O/1JZTUF.y'),
(285, 'simon-proctor', 'Simon Proctor', 2, '$2b$12$RaniV.VCGTFuRc2h9cTpK.D8rRiJ9DdHCdtm6y.0LR2PIfCRFuycW'),
(286, 'simon-reinhardt', 'Simon Reinhardt', 2, '$2b$12$nAqEHwp/hcWUR5s1x5LU3uJ9RsM0BKS06zYqfnABCut6TDI66eMiy'),
(287, 'sitaram-chamarty', 'Sitaram Chamarty', 2, '$2b$12$SBOoU94ZsCx5.w4mkgqLhuOApfJm.tpRmm.sH/bfmBwTCB4qCVAQy'),
(288, 'spadacciniweb', 'Mariano Spadaccini', 2, '$2b$12$KtgdXpMsvQ9D113ilgNLyOwIYFTURyhmdW5H661Q4hjoCHwzSO222'),
(289, 'spazm', 'Andrew Grangaard', 2, '$2b$12$qgVjN7WapvCjy5XrPIGnVuBU1Z7ByJrJoFeqQbH.NMX8rGTVgOVne'),
(290, 'solathian', 'Solathian', 2, '$2b$12$IfNwrVYHw3EuXLSiZNc26uiNi5pfLgU1WzisBvxjc54yog4wTFXMi'),
(291, 'sol-demuth', 'Sol DeMuth', 2, '$2b$12$r61aXja7ZVYXT0DAvf4aOOIN3igWLp.9P1.C5kOTzG0C6jyponFha'),
(292, 'southpawgeek', 'Jen Guerra', 2, '$2b$12$Sc97WulRbcHFfQm5vma7fuz1cbkYMP1VMrR0RmGpXTQrQNMhaZlwm'),
(293, 'stephanie-stein', 'Stephanie Stein', 2, '$2b$12$gPvrAw2jbs4sgF59PXSyYeoPZXo35PiXhZI6NLkyjTdFcEw8s.uNO'),
(294, 'steve-bresson', 'Steve Bresson', 2, '$2b$12$HIL27WeI4maCS0Yu8shVduTTD9f4mnjEA4yO23uSfvWyDbdSsRyC6'),
(295, 'steve-g-lynn', 'Stephen G. Lynn', 2, '$2b$12$.bMJvc4bDPIU7jPUzt6O5.7SFag5Ts7XZiIVEFmvldBA8X4Vem5iq'),
(296, 'steve-rogerson', 'Steve Rogerson', 2, '$2b$12$DFBTDeixYcfg5ywVUnCJ1.uMRpqcELurBnyg03ZbhPuofVEqv4qyq'),
(297, 'steven-lembark', 'Steven Lembark', 2, '$2b$12$vipBBSiFf7z5aecJaiqvCOCSqJy3du8yiJL.xz7Z4stQm7YNld60S'),
(298, 'steven-wilson', 'Steven Wilson', 2, '$2b$12$kC7ODoVqLAjs/OvsWbTwneXx.CzIxRkYhKOTDZCeehE2Mj16pBD4G'),
(299, 'stuart-little', 'Stuart Little', 2, '$2b$12$zzS5HU0VyDiAN16wHNe2fObbTxcGpYJ8Oe/nwMivdpYKOkbD82Nqm'),
(300, 'svetlana-nesterova', 'Svetlana Nesterova', 2, '$2b$12$VagWXZGfpxzusiz9d7q61Ou5Ib7pj9ncZqnLPr0ztqB/DbKyKgbpe'),
(301, 'swaggboi', 'Daniel Bowling', 2, '$2b$12$Bcwkbi/a6hCkOsg.Frh1QesydL9ljTLdat/ZZr0ZvGwIV.EKVq3im'),
(302, 'ted-leahy', 'Ted Leahy', 2, '$2b$12$RH2AKUP4P5SrfF6mmczG3uR3SxQPn3Gxny8hlyibsci0HvJMAaU6S'),
(303, 'testerR59', 'Tester R59', 2, '$2b$12$Je4pAZcmWZD2RScJBpcUK.DF93lVEIkqbLevLKrpHP3gFjO7yeCH.'),
(304, 'tiago-stock', 'Tiago Stock', 2, '$2b$12$R1X5Ph2.2Z5GWcJbgrcKFu/AB8Ncxu4izJ7zI.4/y0yDgr8jnW12e'),
(305, 'tim-potapov', 'Tim Potapov', 2, '$2b$12$r1yKXd0td0Eub0hw9LATeOsdVXkfC6L92W3EU7bJoTL9EeLq.FDEm'),
(306, 'tim-smith', 'Tim Smith', 2, '$2b$12$JA12OUPud8ET5yINl5.ZX.XGAmZMeiANYAuK8EtdNYflMexZjWE7q'),
(307, 'tore-andersson', 'Tore Andersson', 2, '$2b$12$4AZw8Xirkyf2ARS8pn7WJOKmtZaAA0zvJDqX47CB3WXiMHdfzVc22'),
(308, 'trenton-langer', 'Trenton Langer', 2, '$2b$12$F/7GBEiiEoJuZgpXSJ8O6emB6LEIWnUwXpDU2.4Ph3sotWP1yhfTm'),
(309, 'tyler-bird', 'Tyler Bird', 2, '$2b$12$htE1CIydn8K/9nQQySBnB.kmbd5lDDBBobmYKe.pTqTdAifTPVGwG'),
(310, 'tyler-limkemann', 'Tyler Limkemann', 2, '$2b$12$2xiKf4kyJHe6/YyVIE5Mhew.TVtYaLusWGw0D3aAKGynk/7lNJTBO'),
(311, 'tyler-wardhaugh', 'Tyler Wardhaugh', 2, '$2b$12$bVZ01bHvP8aM0XqnPQgUOOXSlpj02YCQ5C9SSIQtQFnWg03tp0Kki'),
(312, 'ulrich-rieke', 'Ulrich Rieke', 2, '$2b$12$ZPUfebiNaGmSGkGPRnj4e.Nkg3j/VWv.8ulEtyyKHXMTE1dCf2blS'),
(313, 'user-person', 'User Person', 2, '$2b$12$4IqYio7LXlVWulUAMr17aeTU.DPMxXQ8J3XGtzH4E/05BjDUMKggm'),
(314, 'uzluisf', 'Luis F. Uceta', 2, '$2b$12$bhwfNq1S6rawAb5Tjmz4geduDuEKGa5nDIUFeZnyys0lnLhe5DCP2'),
(315, 'vamsi-meenavilli', 'Vamsi Meenavilli', 2, '$2b$12$/WxxAPqFUQU.BoQ41m.YM.9eutsjlPCvVFFRsnozC/JEhVMeUvcVS'),
(316, 'veesh-goldman', 'Veesh Goldman', 2, '$2b$12$UVxTIqXXPAagKWe3CQr2Xu0.uNiEi4iSsaV9Jr0rHU2Rbs/fT56tS'),
(317, 'vinod-k', 'Vinod Kumar K', 2, '$2b$12$5VbxAWieBH.r1e36Z.AkQuJzLiQbbMma6NEmKXQSArBflP8.7F7Ma'),
(318, 'vinod-pal', 'Vinod Kumar Pal', 2, '$2b$12$YxIjr.MS32V4YBJ.ysPqseUvDFz3V7SNoM52SEEM4XhglCyF6Ymem'),
(319, 'vyacheslav-volgarev', 'Vyacheslav Volgarev', 2, '$2b$12$96Tlv0t8zrhPhQ6Hr2tIFuYKI8WiKGrBUm/Rk488utxj/hWeS5nFG'),
(320, 'walt-mankowski', 'Walt Mankowski', 2, '$2b$12$7JpEAhj03uiQDpFSOG3dDuv92hFYL3rD4NXXJYwxeroJ2KCHpp7nu'),
(321, 'wambash', 'Jan Krnavek', 2, '$2b$12$ulMHESJQM0GQDldCfx.qJOz2CZwK50k4rjOqgFvsRghx//HhrHuf2'),
(322, 'wanderdoc', 'Wanderdoc', 2, '$2b$12$s/DUamzCfqxZvq/fcXM2seX8uiVd2FvJ8erW9hs5AXq/49CB.JQMC'),
(323, 'william-gilmore', 'William Gilmore', 2, '$2b$12$pCNe6SrM3cGhI508ZpzdJuK7qaIaigyu1Q0y5tnjJYCV3KvjNe5KK'),
(324, 'will-west', 'William West', 2, '$2b$12$4yvnohSt8RebkyLRKqYeSOFo3LdcIUZgRklqWRnDc6zhj30dIpKOm'),
(325, 'x1mandi', 'Csaba Simandi', 2, '$2b$12$mlMS.sp5jws2KYN1DDCTH.uCdJ5VG9aKjHGqg.VSVKgzWzM9Z2mcy'),
(326, 'xkr47', 'Jonas Berlin', 2, '$2b$12$MgM6weDbHhD5PEXdeQWcsOSBSKzBpyqziiUSRtZRYQ.hOOzCt5GY6'),
(327, 'xliff', 'Clifton Wood', 2, '$2b$12$JEChhTvh2jaABC.kgOBmUOp3jPvZ8zZAlc9gKhwgY/Z8bPGzgtEQ2'),
(328, 'yary-h', 'Yary Hluchan', 2, '$2b$12$jg2dO.vtoLJy94sf2rmCPuDad14miSzXWUzkugranSxlgW1P.bG6q'),
(329, 'yet-ebreo', 'Yet Ebreo', 2, '$2b$12$qMNZ2iRgqYiI2I6gCGFi4e2EDD0Yxk7cpzepw/qAjP/EvdFtWYabO'),
(330, 'yozen-hernandez', 'Yozen Hernandez', 2, '$2b$12$EwmiKKn3ErCYpiU6vl6s4.cdmZSG52TssDTfMQDeOs8xRMCAya5.a'),
(331, 'witawayar', 'Mustafa Aydin', 2, '$2b$12$c8vjWnju5bsXNOOGM5MH2OX/U0xwZGP0Q4DnhwAfDnjcxbrNIIY0O'),
(332, 'wlmb', 'W. Luis Mochan', 2, '$2b$12$tQ5BhpnothESLXx/xsMHTuiKCPFE6kobKQaPkH4liOKxlyBVcU0o.'),
(333, 'zapwai', 'David Ferrone', 2, '$2b$12$qREyzX/I8RfGJ3s8/AqiqO3QdC2zXJzMrECgnODRaFYoxq5lNx/2S'),
(334, 'ziruzavar', 'Ivan Dimitrov', 2, '$2b$12$o/mppjrHxZQnWEZQ8tM.ye2nieecJTbk9e3MS6ErDVLFuX8dsZYcq');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_type_id` int NOT NULL,
  `user_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_name`) VALUES
(3, 'champion'),
(1, 'guest'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `weeks`
--

CREATE TABLE `weeks` (
  `week_id` int NOT NULL,
  `week_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`contribution_id`),
  ADD UNIQUE KEY `idx_contributions_user_language_week` (`user_id`,`language_id`,`week_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `week_id` (`week_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `idx_languages_language_name` (`language_name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `idx_permissions_permission_name` (`permission_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `idx_roles_permission_id` (`permission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `idx_users_user_type_user_password` (`user_type`,`user_password`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`),
  ADD UNIQUE KEY `idx_user_types_user_type_name` (`user_type_name`);

--
-- Indexes for table `weeks`
--
ALTER TABLE `weeks`
  ADD PRIMARY KEY (`week_id`),
  ADD UNIQUE KEY `idx_weeks_week_name` (`week_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contributions`
--
ALTER TABLE `contributions`
  MODIFY `contribution_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weeks`
--
ALTER TABLE `weeks`
  MODIFY `week_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contributions`
--
ALTER TABLE `contributions`
  ADD CONSTRAINT `contributions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `contributions_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`),
  ADD CONSTRAINT `contributions_ibfk_3` FOREIGN KEY (`week_id`) REFERENCES `weeks` (`week_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
