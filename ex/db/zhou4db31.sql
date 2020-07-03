-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3307
-- 生成日期： 2019-06-07 09:31:14
-- 服务器版本： 5.7.24-log
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `zhou4db31`
--
CREATE DATABASE IF NOT EXISTS `zhou4db31` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `zhou4db31`;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `admin_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `admin_pwd` varchar(100) COLLATE utf8_bin NOT NULL,
  `is_use` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pwd`, `is_use`) VALUES
(1, 'shw123', 'a123456', 1),
(2, 'zyf123', 'abc1234', 1);

-- --------------------------------------------------------

--
-- 表的结构 `admin_information`
--

CREATE TABLE `admin_information` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `admin_pwd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `real_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `business` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Card_no` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone_no` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `enter_year` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `is_use` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `admin_information`
--

INSERT INTO `admin_information` (`id`, `admin_name`, `admin_pwd`, `image`, `real_name`, `business`, `Card_no`, `phone_no`, `birth`, `enter_year`, `address`, `is_use`) VALUES
(1, 'shw123', 'a123456', '../upload/20190606001956.jpg', '施浩玮', '董事长', '', '15765378967', '2000-10-10', '2010', '中山街', 1),
(3, 'zyf123', 'abc1234', '../upload/20190605153105.jpg', '', '', '', '15326864236', '2000-01-01', '', 'fds ', 1);

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `isuse` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `isuse`) VALUES
(1, '早点睡', '睡不了', 1),
(2, '测试', '多喝热水，别加', 1),
(3, 'nmb', '小垃圾', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `user_pwd` varchar(100) COLLATE utf8_bin NOT NULL,
  `is_use` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_pwd`, `is_use`) VALUES
(1, 'abb123', 'a123456', 1),
(2, 'bcc123', 'a654321', 1),
(3, 'cnmlgb', 'a123456', 1),
(4, 'cnmlgb1', 'a123456', 1),
(5, 'cnmlgb12', 'a123456', 1),
(6, 'cnmlgb123', 'a123456', 1),
(7, 'cnmlgb13', 'abc123456', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user_information`
--

CREATE TABLE `user_information` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `user_pwd` varchar(100) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `real_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `business` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Card_no` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone_no` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `enter_year` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `is_use` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `user_information`
--

INSERT INTO `user_information` (`id`, `user_name`, `user_pwd`, `image`, `real_name`, `business`, `Card_no`, `phone_no`, `birth`, `enter_year`, `address`, `is_use`) VALUES
(1, 'abb', '123456', '', '', '', '', '', '1992-06-06', '', '', 1),
(2, '1', '123', '../images/default.jpg', 'xby', 'HZNU', '330602', '136', '1998-12-29', '2017', 'jsy353', 1),
(3, 'xxx', '123', '../images/default.jpg', NULL, NULL, NULL, '136', NULL, NULL, NULL, 1),
(4, '2', '123', '../images/default.jpg', NULL, NULL, NULL, '136', NULL, NULL, NULL, 1),
(5, 'xxx', '123', '../images/default.jpg', NULL, NULL, NULL, '136', NULL, NULL, NULL, 1),
(6, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(7, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(8, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(9, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(10, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(11, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(12, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(13, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(14, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(15, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(16, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(17, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(18, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(19, '', '', '../images/default.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 1),
(159, 'cnmlgb', 'a123456', '../images/default.jpg', NULL, NULL, NULL, '+86-15689568956', NULL, NULL, NULL, 1),
(160, 'cnmlgb1', 'a123456', '../images/default.jpg', NULL, NULL, NULL, '+86-15689568956', NULL, NULL, NULL, 1),
(161, 'cnmlgb12', 'a123456', '../images/default.jpg', NULL, NULL, NULL, '+86-15689568956', NULL, NULL, NULL, 1),
(162, 'cnmlgb123', 'a123456', '../img/default.jpg', NULL, NULL, NULL, '+86-15689568989', NULL, NULL, NULL, 1),
(163, 'cnmlgb13', 'abc123456', '../upload/20190607091541.jpg', NULL, NULL, NULL, '15689568956', '2000-09-09', NULL, 'aaa', 1);

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_information`
--
ALTER TABLE `admin_information`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `admin_information`
--
ALTER TABLE `admin_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
