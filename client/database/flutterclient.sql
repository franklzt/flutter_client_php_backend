-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 10:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutterclient`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_info`
--

CREATE TABLE `department_info` (
  `data_id` int(11) NOT NULL,
  `department_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_info`
--

INSERT INTO `department_info` (`data_id`, `department_name`) VALUES
(1001, '销售'),
(1002, '人事'),
(1003, '技术');

-- --------------------------------------------------------

--
-- Table structure for table `product_house`
--

CREATE TABLE `product_house` (
  `data_id` int(11) NOT NULL DEFAULT '1000',
  `house_title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_icon` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `web` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_house`
--

INSERT INTO `product_house` (`data_id`, `house_title`, `house_icon`, `vendor_id`, `web`) VALUES
(1000, '品秀星图', 'ArtAsset/Houselcons/house1.png', 1000, 'ArtAsset/StreamingAssets/exvtour33/index.html'),
(1001, '雅居乐融', 'ArtAsset/Houselcons/house2.png', 1000, 'ArtAsset/StreamingAssets/exvtour32/index.html'),
(1002, '童梦天下', 'ArtAsset/Houselcons/house3.png', 1001, 'ArtAsset/StreamingAssets/exvtour31/index.html'),
(1003, '龙湖云峰', 'ArtAsset/Houselcons/house4.png', 1001, 'ArtAsset/StreamingAssets/exvtour30/index.html'),
(1004, '逸翠庄园', 'ArtAsset/Houselcons/house5.png', 1002, 'ArtAsset/StreamingAssets/exvtour29/index.html'),
(1005, '尚东嘉御', 'ArtAsset/Houselcons/house6.png', 1002, 'ArtAsset/StreamingAssets/exvtour29/index.html'),
(1006, '润生花园', 'ArtAsset/Houselcons/house7.png', 1003, 'ArtAsset/StreamingAssets/exvtour28/index.html'),
(1007, '金沙都汇', 'ArtAsset/Houselcons/house8.png', 1003, 'ArtAsset/StreamingAssets/exvtour27/index.html'),
(1008, '力天海湾', 'ArtAsset/Houselcons/house9.png', 1004, 'ArtAsset/StreamingAssets/exvtour26/index.html'),
(1009, '魅力之城', 'ArtAsset/Houselcons/house10.png', 1004, 'ArtAsset/StreamingAssets/exvtour27/index.html'),
(1010, '乐万象郡', 'ArtAsset/Houselcons/house11.png', 1005, 'ArtAsset/StreamingAssets/exvtour28/index.html'),
(1011, '力天海湾', 'ArtAsset/Houselcons/house1.png', 1005, 'ArtAsset/StreamingAssets/exvtour29/index.html');

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

CREATE TABLE `room_info` (
  `data_id` int(11) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`data_id`, `title`, `description`, `icon_name`, `web`, `locate_id`) VALUES
(1000, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1000),
(1001, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1000),
(1002, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1001),
(1003, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1002),
(1004, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1003),
(1005, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1004),
(1006, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1005),
(1007, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1006),
(1008, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1007),
(1009, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1008),
(1010, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1009),
(1011, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1010),
(1012, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1011),
(1013, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1012),
(1014, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1013),
(1015, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1014),
(1016, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1000),
(1017, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1001),
(1018, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1002),
(1019, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1003),
(1020, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1004),
(1021, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1005),
(1022, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1006),
(1023, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1007),
(1024, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1008),
(1025, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1009),
(1026, '123㎡ 3+1房2厅2卫', 'N+1户型，紧凑四房带主套，高赠送、高得房率 南北对流，带6.7米长宽景观阳台 南赏11万方园林景观，北眺大、小浮莲山，享一线砺江湾', 'ArtAsset/RoomInfo/Room88.png', 'ArtAsset/StreamingAssets/vtour25/index.html', 1010);

-- --------------------------------------------------------

--
-- Table structure for table `room_locate`
--

CREATE TABLE `room_locate` (
  `data_id` int(11) NOT NULL,
  `locate_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_locate`
--

INSERT INTO `room_locate` (`data_id`, `locate_name`, `house_id`) VALUES
(1000, 'A栋', 1000),
(1001, 'A栋', 1000),
(1002, 'A栋', 1001),
(1003, 'A栋', 1001),
(1004, 'A栋', 1002),
(1005, 'A栋', 1003),
(1006, 'A栋', 1004),
(1007, 'A栋', 1005),
(1008, 'A栋', 1006),
(1009, 'A栋', 1007),
(1010, 'A栋', 1008),
(1011, 'A栋', 1009),
(1012, 'A栋', 10010),
(1013, 'A栋', 10011);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `unique_id` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`) VALUES
(9, '5bf787c62224b2.55568314', 'test', 'test@qq.com', '$2y$10$3hICgq2zfF.k4PCqo3TazuZb1WBvP2TU3tp2MY0t.nswmXy/9jmeu', 'c5726c4f07', '2018-11-23 12:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `data_id` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_icon` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`data_id`, `user_icon`, `user_name`, `department`, `employee_id`) VALUES
('5bf787c62224b2.55568314', 'ArtAsset/User/User1.jpg', '张小轩', 1001, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `data_id` int(11) NOT NULL,
  `vendor_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_icon` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`data_id`, `vendor_name`, `vendor_icon`) VALUES
(1000, '保利地产', 'ArtAsset/Vender/Baolidichan_Title.jpg'),
(1001, '恒大地产', 'ArtAsset/Vender/biguiyuan_Title.jpg'),
(1002, '碧桂园', 'AArtAsset/Vender/fulidichan_Title.jpg'),
(1003, '富力地产', 'ArtAsset/Vender/Hengdadichan_Title.jpg'),
(1004, '合生创展', 'ArtAsset/Vender/heshengchuagnzhan_Title.jpg'),
(1005, '万科地产', 'ArtAsset/Vender/wanke_Title.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_house`
--
ALTER TABLE `product_house`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
