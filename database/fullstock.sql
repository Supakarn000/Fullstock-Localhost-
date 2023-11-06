-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 07:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullstock`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `cartItems` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `userID`, `cartItems`, `orderDate`, `totalPrice`, `status`) VALUES
(4, 23, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\"}]', '2023-09-27 18:05:04', '5500.00', 0),
(5, 18, '[{\"productID\":10,\"name\":\"Reebok Classic Leather Sneakers\",\"image\":\"https://reebok.bynder.com/m/21ed8b69779e080f/webimage-23FW_Classic-Essentials-Classic-Leather_Image-Collection-TileA.png\",\"description\":\"Reebok Classic Leather Sneakers\",\"type\":\"shoes\",\"price\":2600,\"instock\":6,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-27 18:06:40', '2600.00', 0),
(6, 20, '[{\"productID\":37,\"name\":\"Levi\'s Classic Straight Leg Jeans\",\"image\":\"https://lsco.scene7.com/is/image/lsco/392500050-front-pdp?fmt=jpeg&qlt=70&resMode=bisharp&fit=crop,0&op_usm=1.25,0.6,8&wid=2000&hei=1800\",\"description\":\"Levi\'s Classic Straight Leg Jeans\",\"type\":\"pants\",\"price\":3500,\"instock\":5,\"created_at\":\"2023-09-21T12:11:23.000Z\",\"updated_at\":\"2023-09-21T12:11:23.000Z\"}]', '2023-09-27 18:07:08', '3500.00', 0),
(7, 21, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":1,\"created_at\":\"2023-09-19T14:47:03.000Z\",\"updated_at\":\"2023-09-21T11:52:58.000Z\"}]', '2023-09-27 18:07:51', '6490.00', 0),
(8, 19, '[{\"productID\":22,\"name\":\"The North Face Thermoball Eco Hoodie\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyTb4kUtaCR36-rtv15fVLL2RQ2B7Uh3R7lw&usqp=CAU\",\"description\":\"The North Face Thermoball Eco Hoodie\",\"type\":\"shirt\",\"price\":4200,\"instock\":6,\"created_at\":\"2023-09-21T11:36:49.000Z\",\"updated_at\":\"2023-09-21T11:36:49.000Z\"},{\"productID\":39,\"name\":\"Uniqlo Slim Fit Chino Pants\",\"image\":\"https://image.uniqlo.com/UQ/ST3/th/imagesgoods/450251/item/thgoods_09_450251.jpg?width=750\",\"description\":\"Uniqlo Slim Fit Chino Pants\",\"type\":\"pants\",\"price\":1800,\"instock\":8,\"created_at\":\"2023-09-21T12:11:23.000Z\",\"updated_at\":\"2023-09-21T12:11:23.000Z\"}]', '2023-09-27 18:08:28', '6000.00', 0),
(9, 5, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:43.000Z\"},{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\"},{\"productID\":13,\"name\":\"Vans Old Skool Classic Skate Shoes\",\"image\":\"https://down-th.img.susercontent.com/file/th-11134207-7qul6-lijrbmxlx1u9ef\",\"description\":\"Vans Old Skool Classic Skate Shoes\",\"type\":\"shoes\",\"price\":2200,\"instock\":9,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-29 02:19:14', '12900.00', 0),
(12, 22, '[{\"productID\":7,\"name\":\"Dr. Martens 1460 Classic 8-Eye Boots\",\"image\":\"https://image.goxip.com/lGgDu1n4dpBeLFAFtkETTiBgoww=/fit-in/500x500/filters:format(jpg):quality(80):fill(white)/https:%2F%2Fs4.thcdn.com%2F%2Fproductimg%2F1600%2F1600%2F12596200-1254778514030327.jpg\",\"description\":\"Dr. Martens 1460 Classic 8-Eye Boots\",\"type\":\"shoes\",\"price\":3900,\"instock\":10,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-28 18:32:01', '3900.00', 0),
(16, 22, '[{\"productID\":2,\"name\":\"Nike Dunk Low SE Lottery Pack Grey Fog\",\"image\":\"https://d2cva83hdk3bwc.cloudfront.net/nike-dunk-low-se-lottery-pack-grey-fog-2.jpg\",\"description\":\"The Best Nike Dunk low EVER\",\"type\":\"shoes\",\"price\":3500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:34.000Z\",\"sold\":0}]', '2023-09-28 06:22:38', '3500.00', 0),
(17, 25, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\",\"sold\":0},{\"productID\":20,\"name\":\"Tommy Hilfiger Classic Fit Shirt\",\"image\":\"https://shoptommy.scene7.com/is/image/ShopTommy/78J8440_VP8_FNT?wid=720&hei=960&fmt=pjpeg&qlt=85%2C0&resMode=sharp2&op_usm=0.9%2C1.0%2C8%2C0&iccEmbed=0\",\"description\":\"Tommy Hilfiger Classic Fit Shirt\",\"type\":\"shirt\",\"price\":3200,\"instock\":8,\"created_at\":\"2023-09-21T11:36:49.000Z\",\"updated_at\":\"2023-09-21T11:36:49.000Z\",\"sold\":0},{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":1,\"created_at\":\"2023-09-19T14:47:03.000Z\",\"updated_at\":\"2023-09-27T18:55:56.000Z\",\"sold\":1},{\"productID\":47,\"name\":\"Louis Vuitton Monogram Canvas Backpack\",\"image\":\"https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-montsouris-pm-monogram-canvas-natural-leather-handbags--M45501_PM2_Front%20view.png?wid=600&hei=600\",\"description\":\"Louis Vuitton Monogram Canvas Backpack\",\"type\":\"other\",\"price\":9500,\"instock\":3,\"created_at\":\"2023-09-21T12:13:23.000Z\",\"updated_at\":\"2023-09-21T12:13:23.000Z\",\"sold\":0}]', '2023-09-29 13:10:11', '24690.00', 0),
(18, 23, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\"}]', '2023-09-27 11:05:04', '5500.00', 0),
(19, 18, '[{\"productID\":10,\"name\":\"Reebok Classic Leather Sneakers\",\"image\":\"https://reebok.bynder.com/m/21ed8b69779e080f/webimage-23FW_Classic-Essentials-Classic-Leather_Image-Collection-TileA.png\",\"description\":\"Reebok Classic Leather Sneakers\",\"type\":\"shoes\",\"price\":2600,\"instock\":6,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-27 11:06:40', '2600.00', 0),
(20, 20, '[{\"productID\":37,\"name\":\"Levi\'s Classic Straight Leg Jeans\",\"image\":\"https://lsco.scene7.com/is/image/lsco/392500050-front-pdp?fmt=jpeg&qlt=70&resMode=bisharp&fit=crop,0&op_usm=1.25,0.6,8&wid=2000&hei=1800\",\"description\":\"Levi\'s Classic Straight Leg Jeans\",\"type\":\"pants\",\"price\":3500,\"instock\":5,\"created_at\":\"2023-09-21T12:11:23.000Z\",\"updated_at\":\"2023-09-21T12:11:23.000Z\"}]', '2023-09-27 11:07:08', '3500.00', 0),
(21, 21, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":1,\"created_at\":\"2023-09-19T14:47:03.000Z\",\"updated_at\":\"2023-09-21T11:52:58.000Z\"}]', '2023-09-27 11:07:51', '6490.00', 0),
(22, 19, '[{\"productID\":22,\"name\":\"The North Face Thermoball Eco Hoodie\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyTb4kUtaCR36-rtv15fVLL2RQ2B7Uh3R7lw&usqp=CAU\",\"description\":\"The North Face Thermoball Eco Hoodie\",\"type\":\"shirt\",\"price\":4200,\"instock\":6,\"created_at\":\"2023-09-21T11:36:49.000Z\",\"updated_at\":\"2023-09-21T11:36:49.000Z\"},{\"productID\":39,\"name\":\"Uniqlo Slim Fit Chino Pants\",\"image\":\"https://image.uniqlo.com/UQ/ST3/th/imagesgoods/450251/item/thgoods_09_450251.jpg?width=750\",\"description\":\"Uniqlo Slim Fit Chino Pants\",\"type\":\"pants\",\"price\":1800,\"instock\":8,\"created_at\":\"2023-09-21T12:11:23.000Z\",\"updated_at\":\"2023-09-21T12:11:23.000Z\"}]', '2023-09-27 11:08:28', '6000.00', 0),
(23, 5, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:43.000Z\"},{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\"},{\"productID\":13,\"name\":\"Vans Old Skool Classic Skate Shoes\",\"image\":\"https://down-th.img.susercontent.com/file/th-11134207-7qul6-lijrbmxlx1u9ef\",\"description\":\"Vans Old Skool Classic Skate Shoes\",\"type\":\"shoes\",\"price\":2200,\"instock\":9,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-28 19:19:14', '12900.00', 0),
(24, 22, '[{\"productID\":7,\"name\":\"Dr. Martens 1460 Classic 8-Eye Boots\",\"image\":\"https://image.goxip.com/lGgDu1n4dpBeLFAFtkETTiBgoww=/fit-in/500x500/filters:format(jpg):quality(80):fill(white)/https:%2F%2Fs4.thcdn.com%2F%2Fproductimg%2F1600%2F1600%2F12596200-1254778514030327.jpg\",\"description\":\"Dr. Martens 1460 Classic 8-Eye Boots\",\"type\":\"shoes\",\"price\":3900,\"instock\":10,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-28 11:32:01', '3900.00', 0),
(25, 22, '[{\"productID\":2,\"name\":\"Nike Dunk Low SE Lottery Pack Grey Fog\",\"image\":\"https://d2cva83hdk3bwc.cloudfront.net/nike-dunk-low-se-lottery-pack-grey-fog-2.jpg\",\"description\":\"The Best Nike Dunk low EVER\",\"type\":\"shoes\",\"price\":3500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:34.000Z\",\"sold\":0}]', '2023-09-27 23:22:38', '3500.00', 0),
(26, 25, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-09-21T04:52:43.000Z\",\"sold\":0}]', '2023-09-29 14:57:57', '5200.00', 0),
(27, 25, '[{\"productID\":17,\"name\":\"Zara Basic V-neck T-shirt\",\"image\":\"https://static.zara.net/photos///2023/V/0/1/p/4424/154/800/2/w/1920/4424154800_6_1_1.jpg?ts=1671547236806\",\"description\":\"Zara Basic V-neck T-shirt\",\"type\":\"shirt\",\"price\":1500,\"instock\":7,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-09-21T04:36:49.000Z\",\"sold\":0}]', '2023-09-29 15:11:22', '1500.00', 0),
(28, 1, '[{\"productID\":18,\"name\":\"Uniqlo Flannel Shirt\",\"image\":\"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/453173/item/goods_30_453173.jpg?width=494\",\"description\":\"Uniqlo Flannel Shirt\",\"type\":\"shirt\",\"price\":2500,\"instock\":10,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-09-21T04:36:49.000Z\",\"sold\":0}]', '2023-10-03 15:26:59', '2500.00', 0),
(29, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-09-21T04:52:48.000Z\",\"sold\":0}]', '2023-10-03 15:42:39', '5500.00', 0),
(30, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-09-21T04:52:48.000Z\",\"sold\":0}]', '2023-10-03 15:42:48', '5500.00', 0),
(31, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":-1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-03T08:42:50.000Z\",\"sold\":2}]', '2023-10-03 15:44:07', '5500.00', 0),
(32, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":-1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-03T08:42:50.000Z\",\"sold\":2}]', '2023-10-03 15:44:51', '5500.00', 0),
(33, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":-1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-03T08:42:50.000Z\",\"sold\":2}]', '2023-10-03 15:44:56', '5500.00', 0),
(34, 1, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":1,\"created_at\":\"2023-09-19T07:47:03.000Z\",\"updated_at\":\"2023-09-27T11:55:56.000Z\",\"sold\":1}]', '2023-10-03 15:45:39', '6490.00', 0),
(35, 1, '[{\"productID\":20,\"name\":\"Tommy Hilfiger Classic Fit Shirt\",\"image\":\"https://shoptommy.scene7.com/is/image/ShopTommy/78J8440_VP8_FNT?wid=720&hei=960&fmt=pjpeg&qlt=85%2C0&resMode=sharp2&op_usm=0.9%2C1.0%2C8%2C0&iccEmbed=0\",\"description\":\"Tommy Hilfiger Classic Fit Shirt\",\"type\":\"shirt\",\"price\":3200,\"instock\":8,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-09-21T04:36:49.000Z\",\"sold\":0}]', '2023-10-03 15:46:50', '3200.00', 0),
(36, 23, '[{\"productID\":61,\"name\":\"Persol PO714SM Folding Sunglasses\",\"image\":\"https://assets2.persol.com/cdn-record-files-pi/100541b8-6b2f-40c0-b541-a35901534206/8b69c84e-f38b-4934-bd93-aed6014e9ce7/0PO0714SM__96_S3__P21__shad__qt.png?impolicy=HB_parameters_transp&wid=292&bgcolor=%23f7f7f7\",\"description\":\"Persol PO714SM Folding Sunglasses\",\"type\":\"other\",\"price\":3200,\"instock\":14,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 08:14:11', '3200.00', 0),
(37, 23, '[{\"productID\":61,\"name\":\"Persol PO714SM Folding Sunglasses\",\"image\":\"https://assets2.persol.com/cdn-record-files-pi/100541b8-6b2f-40c0-b541-a35901534206/8b69c84e-f38b-4934-bd93-aed6014e9ce7/0PO0714SM__96_S3__P21__shad__qt.png?impolicy=HB_parameters_transp&wid=292&bgcolor=%23f7f7f7\",\"description\":\"Persol PO714SM Folding Sunglasses\",\"type\":\"other\",\"price\":3200,\"instock\":14,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 08:15:22', '3200.00', 0),
(38, 23, '[{\"productID\":25,\"name\":\"Nike Sportswear Logo T-shirt\",\"image\":\"https://d2cva83hdk3bwc.cloudfront.net/nike-new-embroidery-logo-pocket-tee-white-1.jpg\",\"description\":\"Nike Sportswear Logo T-shirt\",\"type\":\"shirt\",\"price\":1800,\"instock\":14,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0},{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":20,\"created_at\":\"2023-09-19T07:47:03.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":2}]', '2023-10-14 08:15:46', '8290.00', 0),
(39, 1, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":19,\"created_at\":\"2023-09-19T07:47:03.000Z\",\"updated_at\":\"2023-10-14T01:15:46.000Z\",\"sold\":3}]', '2023-10-14 08:59:30', '6490.00', 0),
(40, 1, '[{\"productID\":8,\"name\":\"Timberland Earthkeepers Original Leather Boots\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR228GbQMEPYBX2K4X4HrcVltFB-FET78DVpw&usqp=CAU\",\"description\":\"Timberland Earthkeepers Original Leather Boots\",\"type\":\"shoes\",\"price\":4800,\"instock\":12,\"created_at\":\"2023-09-21T04:36:29.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":3}]', '2023-10-14 09:01:41', '4800.00', 0),
(41, 23, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":20,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":1}]', '2023-10-14 09:03:00', '5200.00', 0),
(42, 23, '[{\"productID\":66,\"name\":\"Ray-Ban Aviator Sunglasses\",\"image\":\"https://images.ray-ban.com/is/image/RayBan/805289005568__002.png?impolicy=RB_Product&width=720&bgc=%23f2f2f2\",\"description\":\"Ray-Ban Aviator Sunglasses\",\"type\":\"other\",\"price\":1800,\"instock\":20,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 09:04:21', '1800.00', 0),
(43, 23, '[{\"productID\":64,\"name\":\"Gucci GG0022S Square Sunglasses\",\"image\":\"https://www.fashioneyewear.com/cdn/shop/products/gucci_image.jpg?v=1647617343&width=100\",\"description\":\"Gucci GG0022S Square Sunglasses\",\"type\":\"other\",\"price\":3500,\"instock\":16,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 09:04:52', '3500.00', 0),
(44, 1, '[{\"productID\":39,\"name\":\"Uniqlo Slim Fit Chino Pants\",\"image\":\"https://image.uniqlo.com/UQ/ST3/th/imagesgoods/450251/item/thgoods_09_450251.jpg?width=750\",\"description\":\"Uniqlo Slim Fit Chino Pants\",\"type\":\"pants\",\"price\":1800,\"instock\":18,\"created_at\":\"2023-09-21T05:11:23.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 09:07:30', '1800.00', 0),
(45, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":20,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-10-14T07:43:25.000Z\",\"sold\":5}]', '2023-10-14 02:26:29', '5500.00', 0),
(46, 1, '[{\"productID\":59,\"name\":\"Tom Ford FT0712 Square Sunglasses\",\"image\":\"https://www.designerframesoutlet.com/images/thumbs/0777369_tom-ford-sunglasses-ft0712-d_550.jpeg\",\"description\":\"Tom Ford FT0712 Square Sunglasses\",\"type\":\"other\",\"price\":3900,\"instock\":12,\"created_at\":\"2023-09-21T12:13:28.000Z\",\"updated_at\":\"2023-10-14T07:43:25.000Z\",\"sold\":0}]', '2023-10-14 02:28:02', '3900.00', 0),
(47, 1, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":19,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-10-14T09:03:00.000Z\",\"sold\":2}]', '2023-10-14 02:29:37', '5200.00', 0),
(56, 23, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\"}]', '2023-09-27 11:05:04', '5500.00', 0),
(57, 18, '[{\"productID\":10,\"name\":\"Reebok Classic Leather Sneakers\",\"image\":\"https://reebok.bynder.com/m/21ed8b69779e080f/webimage-23FW_Classic-Essentials-Classic-Leather_Image-Collection-TileA.png\",\"description\":\"Reebok Classic Leather Sneakers\",\"type\":\"shoes\",\"price\":2600,\"instock\":6,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-27 11:06:40', '2600.00', 0),
(58, 20, '[{\"productID\":37,\"name\":\"Levi\'s Classic Straight Leg Jeans\",\"image\":\"https://lsco.scene7.com/is/image/lsco/392500050-front-pdp?fmt=jpeg&qlt=70&resMode=bisharp&fit=crop,0&op_usm=1.25,0.6,8&wid=2000&hei=1800\",\"description\":\"Levi\'s Classic Straight Leg Jeans\",\"type\":\"pants\",\"price\":3500,\"instock\":5,\"created_at\":\"2023-09-21T12:11:23.000Z\",\"updated_at\":\"2023-09-21T12:11:23.000Z\"}]', '2023-09-27 11:07:08', '3500.00', 0),
(59, 21, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":1,\"created_at\":\"2023-09-19T14:47:03.000Z\",\"updated_at\":\"2023-09-21T11:52:58.000Z\"}]', '2023-09-27 11:07:51', '6490.00', 0),
(60, 19, '[{\"productID\":22,\"name\":\"The North Face Thermoball Eco Hoodie\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyTb4kUtaCR36-rtv15fVLL2RQ2B7Uh3R7lw&usqp=CAU\",\"description\":\"The North Face Thermoball Eco Hoodie\",\"type\":\"shirt\",\"price\":4200,\"instock\":6,\"created_at\":\"2023-09-21T11:36:49.000Z\",\"updated_at\":\"2023-09-21T11:36:49.000Z\"},{\"productID\":39,\"name\":\"Uniqlo Slim Fit Chino Pants\",\"image\":\"https://image.uniqlo.com/UQ/ST3/th/imagesgoods/450251/item/thgoods_09_450251.jpg?width=750\",\"description\":\"Uniqlo Slim Fit Chino Pants\",\"type\":\"pants\",\"price\":1800,\"instock\":8,\"created_at\":\"2023-09-21T12:11:23.000Z\",\"updated_at\":\"2023-09-21T12:11:23.000Z\"}]', '2023-09-27 11:08:28', '6000.00', 0),
(61, 5, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:43.000Z\"},{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:48.000Z\"},{\"productID\":13,\"name\":\"Vans Old Skool Classic Skate Shoes\",\"image\":\"https://down-th.img.susercontent.com/file/th-11134207-7qul6-lijrbmxlx1u9ef\",\"description\":\"Vans Old Skool Classic Skate Shoes\",\"type\":\"shoes\",\"price\":2200,\"instock\":9,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-28 19:19:14', '12900.00', 0),
(62, 22, '[{\"productID\":7,\"name\":\"Dr. Martens 1460 Classic 8-Eye Boots\",\"image\":\"https://image.goxip.com/lGgDu1n4dpBeLFAFtkETTiBgoww=/fit-in/500x500/filters:format(jpg):quality(80):fill(white)/https:%2F%2Fs4.thcdn.com%2F%2Fproductimg%2F1600%2F1600%2F12596200-1254778514030327.jpg\",\"description\":\"Dr. Martens 1460 Classic 8-Eye Boots\",\"type\":\"shoes\",\"price\":3900,\"instock\":10,\"created_at\":\"2023-09-21T11:36:29.000Z\",\"updated_at\":\"2023-09-21T11:36:29.000Z\"}]', '2023-09-28 11:32:01', '3900.00', 0),
(63, 22, '[{\"productID\":2,\"name\":\"Nike Dunk Low SE Lottery Pack Grey Fog\",\"image\":\"https://d2cva83hdk3bwc.cloudfront.net/nike-dunk-low-se-lottery-pack-grey-fog-2.jpg\",\"description\":\"The Best Nike Dunk low EVER\",\"type\":\"shoes\",\"price\":3500,\"instock\":1,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-09-21T11:52:34.000Z\",\"sold\":0}]', '2023-09-27 23:22:38', '3500.00', 0),
(64, 25, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-09-21T04:52:43.000Z\",\"sold\":0}]', '2023-09-29 14:57:57', '5200.00', 0),
(65, 25, '[{\"productID\":17,\"name\":\"Zara Basic V-neck T-shirt\",\"image\":\"https://static.zara.net/photos///2023/V/0/1/p/4424/154/800/2/w/1920/4424154800_6_1_1.jpg?ts=1671547236806\",\"description\":\"Zara Basic V-neck T-shirt\",\"type\":\"shirt\",\"price\":1500,\"instock\":7,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-09-21T04:36:49.000Z\",\"sold\":0}]', '2023-09-29 15:11:22', '1500.00', 0),
(66, 1, '[{\"productID\":18,\"name\":\"Uniqlo Flannel Shirt\",\"image\":\"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/453173/item/goods_30_453173.jpg?width=494\",\"description\":\"Uniqlo Flannel Shirt\",\"type\":\"shirt\",\"price\":2500,\"instock\":10,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-09-21T04:36:49.000Z\",\"sold\":0}]', '2023-10-03 15:26:59', '2500.00', 0),
(67, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-09-21T04:52:48.000Z\",\"sold\":0}]', '2023-10-03 15:42:39', '5500.00', 0),
(68, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-09-21T04:52:48.000Z\",\"sold\":0}]', '2023-10-03 15:42:48', '5500.00', 0),
(69, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":-1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-03T08:42:50.000Z\",\"sold\":2}]', '2023-10-03 15:44:07', '5500.00', 0),
(70, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":-1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-03T08:42:50.000Z\",\"sold\":2}]', '2023-10-03 15:44:51', '5500.00', 0),
(71, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":-1,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-03T08:42:50.000Z\",\"sold\":2}]', '2023-10-03 15:44:56', '5500.00', 0),
(72, 1, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":1,\"created_at\":\"2023-09-19T07:47:03.000Z\",\"updated_at\":\"2023-09-27T11:55:56.000Z\",\"sold\":1}]', '2023-10-03 15:45:39', '6490.00', 0),
(73, 1, '[{\"productID\":20,\"name\":\"Tommy Hilfiger Classic Fit Shirt\",\"image\":\"https://shoptommy.scene7.com/is/image/ShopTommy/78J8440_VP8_FNT?wid=720&hei=960&fmt=pjpeg&qlt=85%2C0&resMode=sharp2&op_usm=0.9%2C1.0%2C8%2C0&iccEmbed=0\",\"description\":\"Tommy Hilfiger Classic Fit Shirt\",\"type\":\"shirt\",\"price\":3200,\"instock\":8,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-09-21T04:36:49.000Z\",\"sold\":0}]', '2023-10-03 15:46:50', '3200.00', 0),
(74, 23, '[{\"productID\":61,\"name\":\"Persol PO714SM Folding Sunglasses\",\"image\":\"https://assets2.persol.com/cdn-record-files-pi/100541b8-6b2f-40c0-b541-a35901534206/8b69c84e-f38b-4934-bd93-aed6014e9ce7/0PO0714SM__96_S3__P21__shad__qt.png?impolicy=HB_parameters_transp&wid=292&bgcolor=%23f7f7f7\",\"description\":\"Persol PO714SM Folding Sunglasses\",\"type\":\"other\",\"price\":3200,\"instock\":14,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 08:14:11', '3200.00', 0),
(75, 23, '[{\"productID\":61,\"name\":\"Persol PO714SM Folding Sunglasses\",\"image\":\"https://assets2.persol.com/cdn-record-files-pi/100541b8-6b2f-40c0-b541-a35901534206/8b69c84e-f38b-4934-bd93-aed6014e9ce7/0PO0714SM__96_S3__P21__shad__qt.png?impolicy=HB_parameters_transp&wid=292&bgcolor=%23f7f7f7\",\"description\":\"Persol PO714SM Folding Sunglasses\",\"type\":\"other\",\"price\":3200,\"instock\":14,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 08:15:22', '3200.00', 0),
(76, 23, '[{\"productID\":25,\"name\":\"Nike Sportswear Logo T-shirt\",\"image\":\"https://d2cva83hdk3bwc.cloudfront.net/nike-new-embroidery-logo-pocket-tee-white-1.jpg\",\"description\":\"Nike Sportswear Logo T-shirt\",\"type\":\"shirt\",\"price\":1800,\"instock\":14,\"created_at\":\"2023-09-21T04:36:49.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0},{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":20,\"created_at\":\"2023-09-19T07:47:03.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":2}]', '2023-10-14 08:15:46', '8290.00', 0),
(77, 1, '[{\"productID\":5,\"name\":\"Arizona Birkenstock (Black)\",\"image\":\"https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Arizona Birkenstock but its BLACK\",\"type\":\"shoes\",\"price\":6490,\"instock\":19,\"created_at\":\"2023-09-19T07:47:03.000Z\",\"updated_at\":\"2023-10-14T01:15:46.000Z\",\"sold\":3}]', '2023-10-14 08:59:30', '6490.00', 0),
(78, 1, '[{\"productID\":8,\"name\":\"Timberland Earthkeepers Original Leather Boots\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR228GbQMEPYBX2K4X4HrcVltFB-FET78DVpw&usqp=CAU\",\"description\":\"Timberland Earthkeepers Original Leather Boots\",\"type\":\"shoes\",\"price\":4800,\"instock\":12,\"created_at\":\"2023-09-21T04:36:29.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":3}]', '2023-10-14 09:01:41', '4800.00', 0),
(79, 23, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":20,\"created_at\":\"2023-09-19T07:41:04.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":1}]', '2023-10-14 09:03:00', '5200.00', 0),
(80, 23, '[{\"productID\":66,\"name\":\"Ray-Ban Aviator Sunglasses\",\"image\":\"https://images.ray-ban.com/is/image/RayBan/805289005568__002.png?impolicy=RB_Product&width=720&bgc=%23f2f2f2\",\"description\":\"Ray-Ban Aviator Sunglasses\",\"type\":\"other\",\"price\":1800,\"instock\":20,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 09:04:21', '1800.00', 0),
(81, 23, '[{\"productID\":64,\"name\":\"Gucci GG0022S Square Sunglasses\",\"image\":\"https://www.fashioneyewear.com/cdn/shop/products/gucci_image.jpg?v=1647617343&width=100\",\"description\":\"Gucci GG0022S Square Sunglasses\",\"type\":\"other\",\"price\":3500,\"instock\":16,\"created_at\":\"2023-09-21T05:13:28.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 09:04:52', '3500.00', 0),
(82, 1, '[{\"productID\":39,\"name\":\"Uniqlo Slim Fit Chino Pants\",\"image\":\"https://image.uniqlo.com/UQ/ST3/th/imagesgoods/450251/item/thgoods_09_450251.jpg?width=750\",\"description\":\"Uniqlo Slim Fit Chino Pants\",\"type\":\"pants\",\"price\":1800,\"instock\":18,\"created_at\":\"2023-09-21T05:11:23.000Z\",\"updated_at\":\"2023-10-14T00:43:25.000Z\",\"sold\":0}]', '2023-10-14 09:07:30', '1800.00', 0),
(83, 1, '[{\"productID\":4,\"name\":\"Air Jordan 1 Zoom CMFT 2\",\"image\":\"https://media.discordapp.net/attachments/459354486469689347/1059516649532821504/image.png\",\"description\":\"Air Jordan 1 Zoom CMFT 2\",\"type\":\"shoes\",\"price\":5500,\"instock\":20,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-10-14T07:43:25.000Z\",\"sold\":5}]', '2023-10-14 02:26:29', '5500.00', 0),
(84, 1, '[{\"productID\":59,\"name\":\"Tom Ford FT0712 Square Sunglasses\",\"image\":\"https://www.designerframesoutlet.com/images/thumbs/0777369_tom-ford-sunglasses-ft0712-d_550.jpeg\",\"description\":\"Tom Ford FT0712 Square Sunglasses\",\"type\":\"other\",\"price\":3900,\"instock\":12,\"created_at\":\"2023-09-21T12:13:28.000Z\",\"updated_at\":\"2023-10-14T07:43:25.000Z\",\"sold\":0}]', '2023-10-14 02:28:02', '3900.00', 0),
(85, 1, '[{\"productID\":3,\"name\":\"Nike Dunk Low By You\",\"image\":\"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png\",\"description\":\"Dunk Low By You!!!\",\"type\":\"shoes\",\"price\":5200,\"instock\":19,\"created_at\":\"2023-09-19T14:41:04.000Z\",\"updated_at\":\"2023-10-14T09:03:00.000Z\",\"sold\":2}]', '2023-10-14 02:29:37', '5200.00', 0),
(92, 1, '[{\"productID\":52,\"name\":\"Coach Signature Mini Backpack\",\"image\":\"https://thailand.coach.com/media/catalog/product/3/0/306ef348b043cb50c14fd0d8f819035725a6e32443759253ecde54a463284351.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700\",\"description\":\"Coach Signature Mini Backpack\",\"type\":\"other\",\"price\":2200,\"instock\":10,\"created_at\":\"2023-09-21T12:13:23.000Z\",\"updated_at\":\"2023-10-29T13:59:49.000Z\",\"sold\":0}]', '2023-10-30 09:50:15', '2200.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'other',
  `price` int(11) NOT NULL DEFAULT 0,
  `instock` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sold` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `name`, `image`, `description`, `type`, `price`, `instock`, `created_at`, `updated_at`, `sold`) VALUES
(2, 'Nike Dunk Low SE Lottery Pack Grey Fog', 'https://d2cva83hdk3bwc.cloudfront.net/nike-dunk-low-se-lottery-pack-grey-fog-2.jpg', 'The Best Nike Dunk low EVER', 'shoes', 3500, 10, '2023-09-19 14:41:04', '2023-10-29 13:59:49', 1),
(3, 'Nike Dunk Low By You', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png', 'Dunk Low By You!!!', 'shoes', 5200, 10, '2023-09-19 14:41:04', '2023-10-29 13:59:49', 50),
(4, 'Air Jordan 1 Zoom CMFT 2', 'https://szopex.blob.core.windows.net/shops/media/f1000/2023/jordan/220748/jordan-brand-air-jordan-1-zoom-air-cmft-2-wmns-ore-black-dv1305-001-64fef9b41b411.jpg', 'Air Jordan 1 Zoom CMFT 2', 'shoes', 5500, 10, '2023-09-19 14:41:04', '2023-11-06 06:32:04', 1),
(5, 'Arizona Birkenstock (Black)', 'https://ikonthailand.com/media/catalog/product/4/5/45a6b38945e22f6d8762cce5d7f929bd2b6b74f7cae14aaaf77a70f3b1b41250.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700', 'Arizona Birkenstock but its BLACK', 'shoes', 6490, 10, '2023-09-19 14:47:03', '2023-10-29 13:59:49', 2),
(6, 'Fear of God Essentials T-shirt Wheat', 'https://d2cva83hdk3bwc.cloudfront.net/fear-of-god-essentials-t-shirt-wheat-1.jpg', 'Fear of God Essentials T-shirt Wheat', 'shirt', 2090, 10, '2023-09-19 15:25:25', '2023-10-29 13:59:49', 0),
(7, 'Dr. Martens 1460 Classic 8-Eye Boots', 'https://image.goxip.com/lGgDu1n4dpBeLFAFtkETTiBgoww=/fit-in/500x500/filters:format(jpg):quality(80):fill(white)/https:%2F%2Fs4.thcdn.com%2F%2Fproductimg%2F1600%2F1600%2F12596200-1254778514030327.jpg', 'Dr. Martens 1460 Classic 8-Eye Boots', 'shoes', 3900, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(8, 'Timberland Earthkeepers Original Leather Boots', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR228GbQMEPYBX2K4X4HrcVltFB-FET78DVpw&usqp=CAU', 'Timberland Earthkeepers Original Leather Boots', 'shoes', 4800, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 3),
(9, 'Skechers GOwalk Evolution Ultra-Impeccable Slip-On Shoes', 'https://m.media-amazon.com/images/I/81sC1NAzcoL._AC_UY780_.jpg', 'Skechers GOwalk Evolution Ultra-Impeccable Slip-On Shoes', 'shoes', 1800, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(10, 'Reebok Classic Leather Sneakers', 'https://reebok.bynder.com/m/21ed8b69779e080f/webimage-23FW_Classic-Essentials-Classic-Leather_Image-Collection-TileA.png', 'Reebok Classic Leather Sneakers', 'shoes', 2600, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(11, 'New Balance Fresh Foam 1080v11 Running Shoes', 'https://runtoparadise.com/wp/wp-content/uploads/2021/10/NB1080-Blue-Men-790x790.jpg', 'New Balance Fresh Foam 1080v11 Running Shoes', 'shoes', 3800, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 4),
(12, 'Puma RS-X3 Puzzle Sneakers', 'https://d2cva83hdk3bwc.cloudfront.net/puma-rs-x3-puzzle-white-dazzling-1.jpg', 'Puma RS-X3 Puzzle Sneakers', 'shoes', 3200, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(13, 'Vans Old Skool Classic Skate Shoes', 'https://down-th.img.susercontent.com/file/th-11134207-7qul6-lijrbmxlx1u9ef', 'Vans Old Skool Classic Skate Shoes', 'shoes', 2200, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(14, 'Adidas Ultraboost Running Shoes', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/7514bba857bd47e8a32daf2c012d2c70_9366/Ultraboost_1.0_Shoes_Blue_HQ2200_01_standard.jpg', 'Adidas Ultraboost Running Shoes', 'shoes', 4200, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(15, 'Converse Chuck Taylor All Star High Top Sneakers', 'https://www.converse.co.th/media/catalog/product/cache/d0475204e12cfc30c4466d49c86ee9e6/m/9/m9160_standard_1_1_1.jpg', 'Converse Chuck Taylor All Star High Top Sneakers', 'shoes', 2800, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 5),
(16, 'Nike Air Max 97 Sneakers - Black/White', 'https://cdn-images.farfetch-contents.com/13/15/76/87/13157687_14717164_600.jpg', 'Nike Air Max 97 Sneakers in Black/White', 'shoes', 6500, 10, '2023-09-21 11:36:29', '2023-10-29 13:59:49', 0),
(17, 'Zara Basic V-neck T-shirt', 'https://static.zara.net/photos///2023/V/0/1/p/4424/154/800/2/w/1920/4424154800_6_1_1.jpg?ts=1671547236806', 'Zara Basic V-neck T-shirt', 'shirt', 1500, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(18, 'Uniqlo Flannel Shirt', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/453173/item/goods_30_453173.jpg?width=494', 'Uniqlo Flannel Shirt', 'shirt', 2500, 10, '2023-09-21 11:36:49', '2023-09-21 11:36:49', 0),
(19, 'H&M Basic T-shirt', 'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/4bab3ac577dbe1a62443870a0d170352e1c24f28_xxl-1.jpg', 'H&M Basic T-shirt', 'shirt', 900, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(20, 'Tommy Hilfiger Classic Fit Shirt', 'https://shoptommy.scene7.com/is/image/ShopTommy/78J8440_VP8_FNT?wid=720&hei=960&fmt=pjpeg&qlt=85%2C0&resMode=sharp2&op_usm=0.9%2C1.0%2C8%2C0&iccEmbed=0', 'Tommy Hilfiger Classic Fit Shirt', 'shirt', 3200, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 1),
(21, 'Ralph Lauren Polo Shirt', 'https://image.goxip.com/GbbeLAbgg_uMAHIzvw3FeqfAnLs=/fit-in/500x500/filters:format(jpg):quality(80):fill(white)/https:%2F%2Fcdn-images.farfetch-contents.com%2F13%2F93%2F61%2F80%2F13936180_17913291_1000.jpg', 'Ralph Lauren Polo Shirt', 'shirt', 2800, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(22, 'The North Face Thermoball Eco Hoodie', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyTb4kUtaCR36-rtv15fVLL2RQ2B7Uh3R7lw&usqp=CAU', 'The North Face Thermoball Eco Hoodie', 'shirt', 4200, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(23, 'Patagonia Better Sweater', 'https://www.rei.com/media/7723fb1e-a397-471a-9cba-9978f0e0c179.jpg?size=576x768', 'Patagonia Better Sweater', 'shirt', 3500, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(24, 'Under Armour Tech 2.0 T-shirt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiOHr0EDRP73WQttWWOteNvS37NUw_bf2nkxH7sogX_3Ox7Bq8nrp9eUkUW2g529NPc0g&usqp=CAU', 'Under Armour Tech 2.0 T-shirt', 'shirt', 1500, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(25, 'Nike Sportswear Logo T-shirt', 'https://d2cva83hdk3bwc.cloudfront.net/nike-new-embroidery-logo-pocket-tee-white-1.jpg', 'Nike Sportswear Logo T-shirt', 'shirt', 1800, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(26, 'Adidas Originals Trefoil Tee', 'https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/c02239c36b8343589a49a930014dc026_9366/%E0%B9%80%E0%B8%AA%E0%B8%B7%E0%B9%89%E0%B8%AD%E0%B8%A2%E0%B8%B7%E0%B8%94-trefoil.jpg', 'Adidas Originals Trefoil Tee', 'shirt', 2200, 10, '2023-09-21 11:36:49', '2023-10-29 13:59:49', 0),
(37, 'Levi\'s Classic Straight Leg Jeans', 'https://lsco.scene7.com/is/image/lsco/392500050-front-pdp?fmt=jpeg&qlt=70&resMode=bisharp&fit=crop,0&op_usm=1.25,0.6,8&wid=2000&hei=1800', 'Levi\'s Classic Straight Leg Jeans', 'pants', 3500, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(38, 'Nike Sportswear Tech Fleece Joggers', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6a97d3c7-591f-46a5-a3ec-03fe0c076883/sportswear-tech-fleece-joggers-xZp1BV.png', 'Nike Sportswear Tech Fleece Joggers', 'pants', 4500, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(39, 'Uniqlo Slim Fit Chino Pants', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/450251/item/thgoods_09_450251.jpg?width=750', 'Uniqlo Slim Fit Chino Pants', 'pants', 1800, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(40, 'H&M Skinny Jeans', 'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/d3834500e9fc794f87afbd8c7f04bfc8551cbf1b_xxl-1.jpg', 'H&M Skinny Jeans', 'pants', 1500, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(41, 'Zara Tapered Fit Dress Pants', 'https://static.zara.net/photos///2023/I/0/2/p/1564/351/708/2/w/824/1564351708_2_1_1.jpg?ts=1689605446242', 'Zara Tapered Fit Dress Pants', 'pants', 2800, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(42, 'J.Crew Slim Broken-In Chino Pants', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0vpR6ZQ55FU15QCER7GLDlVric1pXpXC_KVaZd1jHPSFBDgIua0Grn7vPrplOCxRkUGY&usqp=CAU', 'J.Crew Slim Broken-In Chino Pants', 'pants', 3200, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(43, 'Tommy Hilfiger Classic Fit Khaki Pants', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg9k-iLYKStbZQdgQNIMtPXnwlRMaj5COWFw&usqp=CAU', 'Tommy Hilfiger Classic Fit Khaki Pants', 'pants', 2600, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(44, 'GAP Straight Fit Cargo Pants', 'https://dynamic.zacdn.com/d1nYqWknxpQa3Hn0Jcg1LiTMbYg=/filters:quality(70):format(webp)/https://static-my.zacdn.com/p/gap-8915-3865033-3.jpg', 'GAP Straight Fit Cargo Pants', 'pants', 2200, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(45, 'Dockers Classic Fit Pleated Front Pants', 'https://i.ebayimg.com/images/g/EQgAAOSwGJJfwKnk/s-l1600.jpg', 'Dockers Classic Fit Pleated Front Pants', 'pants', 3900, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(46, 'Calvin Klein Slim Fit Dress Pants', 'https://static-ssp.supersports.co.th/media/catalog/product/4/5/45802889bd525993dc7858ef21a6e5d1c679b1ac_mkp1519696.jpegdummy.jpg?impolicy=resize&width=440', 'Calvin Klein Slim Fit Dress Pants', 'pants', 3200, 10, '2023-09-21 12:11:23', '2023-10-29 13:59:49', 0),
(47, 'Louis Vuitton Monogram Canvas Backpack', 'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-montsouris-pm-monogram-canvas-natural-leather-handbags--M45501_PM2_Front%20view.png?wid=600&hei=600', 'Louis Vuitton Monogram Canvas Backpack', 'other', 9500, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 1),
(48, 'Herschel Little America Backpack', 'https://herschel.com/content/dam/herschel/products/10014/10014-02232-OS_01.jpg.sthumbnails.2000.2500.webp', 'Herschel Little America Backpack', 'other', 2800, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(49, 'Gucci GG Marmont Small Shoulder Bag', 'https://media.gucci.com/style/White_Center_0_0_250x170/1515492904/443497_DTDIT_1000_001_063_0000_Light--GG-Marmont-small-matelass-shoulder-bag.jpg', 'Gucci GG Marmont Small Shoulder Bag', 'other', 7500, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(50, 'Prada Saffiano Leather Tote Bag', 'https://www.prada.com/content/dam/pradabkg_products/2/2VG/2VG084/2FADF0002/2VG084_2FAD_F0002_V_DOO_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg', 'Prada Saffiano Leather Tote Bag', 'other', 6800, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(51, 'Fjallraven Kanken Classic Backpack', 'https://www.fjallraven.co.th/cdn/shop/products/Kanken-Classic-52_720x.png?v=1669717650', 'Fjallraven Kanken Classic Backpack', 'other', 1200, 10, '2023-09-21 12:13:23', '2023-09-21 12:13:23', 0),
(52, 'Coach Signature Mini Backpack', 'https://thailand.coach.com/media/catalog/product/3/0/306ef348b043cb50c14fd0d8f819035725a6e32443759253ecde54a463284351.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700', 'Coach Signature Mini Backpack', 'other', 2200, 9, '2023-09-21 12:13:23', '2023-10-30 09:50:15', 1),
(53, 'Michael Kors Jet Set Tote', 'https://michaelkors.scene7.com/is/image/MichaelKors/30F3GIMM2L-0005_IS?$productMain$', 'Michael Kors Jet Set Tote', 'other', 3200, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(54, 'Kate Spade New York Crossbody Bag', 'https://images.katespade.com/is/image/KateSpade/KC924_300?$desktopProductTile$', 'Kate Spade New York Crossbody Bag', 'other', 1800, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(55, 'The North Face Recon Backpack', 'https://images.thenorthface.com/is/image/TheNorthFace/NF0A52SH_YLM_int?wid=1300&hei=1510&fmt=jpeg&qlt=90&resMode=sharp2&op_usm=0.9,1.0,8,0', 'The North Face Recon Backpack', 'other', 2800, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(56, 'Samsonite Winfield 3 Hardside Luggage', 'https://cdn-fsly.yottaa.net/596fc2e932f01c02ab33ec55/shop.samsonite.com/v~4b.7f/dw/image/v2/BBZB_PRD/on/demandware.static/-/Sites-product-catalog/default/dw6030641d/collections/_samsonite/winfield3-dlx/500x500/1207531112-25Spinner.jpg?sw=912&sh=912&yocs=F', 'Samsonite Winfield 3 Hardside Luggage', 'other', 4200, 10, '2023-09-21 12:13:23', '2023-10-29 13:59:49', 0),
(57, 'Maui Jim Breakwall Polarized Sunglasses', 'https://m.media-amazon.com/images/I/51mmS7hF4KL._AC_UY1000_.jpg', 'Maui Jim Breakwall Polarized Sunglasses', 'other', 2600, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(58, 'Dior DIORID1 Round Sunglasses', 'https://www.kits.com/cart/images/frames/items/8/86/86000001188_IMG.jpg', 'Dior DIORID1 Round Sunglasses', 'other', 4500, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(59, 'Tom Ford FT0712 Square Sunglasses', 'https://www.designerframesoutlet.com/images/thumbs/0777369_tom-ford-sunglasses-ft0712-d_550.jpeg', 'Tom Ford FT0712 Square Sunglasses', 'other', 3900, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(60, 'Fendi FF0324S Oversized Sunglasses', 'https://www.optifashion.com/pub/media/catalog/product/cache/59ff990c21c2a6be0ddc2223bea32206/2/0/20164703yg08_p02.jpg', 'Fendi FF0324S Oversized Sunglasses', 'other', 4800, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(61, 'Persol PO714SM Folding Sunglasses', 'https://assets2.persol.com/cdn-record-files-pi/100541b8-6b2f-40c0-b541-a35901534206/8b69c84e-f38b-4934-bd93-aed6014e9ce7/0PO0714SM__96_S3__P21__shad__qt.png?impolicy=HB_parameters_transp&wid=292&bgcolor=%23f7f7f7', 'Persol PO714SM Folding Sunglasses', 'other', 3200, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(62, 'Versace VE4353 Cat Eye Sunglasses', 'https://www.sunglassworld.net/wp-content/uploads/2020/01/0VE4353__GB1_87.jpg', 'Versace VE4353 Cat Eye Sunglasses', 'other', 4200, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(63, 'Prada PR01OS Aviator Sunglasses', 'https://cdn1.visiofactory.com/31442-thickbox/prada-pr01os-2au6e1-5517-tortoise-medium-polarized-gradient.jpg', 'Prada PR01OS Aviator Sunglasses', 'other', 2800, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(64, 'Gucci GG0022S Square Sunglasses', 'https://www.fashioneyewear.com/cdn/shop/products/gucci_image.jpg?v=1647617343&width=100', 'Gucci GG0022S Square Sunglasses', 'other', 3500, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(65, 'Oakley Holbrook Sunglasses', 'https://cl.lnwfile.com/_/cl/_raw/sj/e7/0c.jpg', 'Oakley Holbrook Sunglasses', 'other', 1600, 10, '2023-09-21 12:13:28', '2023-10-29 13:59:49', 0),
(66, 'Ray-Ban Aviator Sunglasses', 'https://images.ray-ban.com/is/image/RayBan/805289005568__002.png?impolicy=RB_Product&width=720&bgc=%23f2f2f2', 'Ray-Ban Aviator Sunglasses', 'other', 1800, 10, '2023-09-21 12:13:28', '2023-09-21 12:13:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `email`, `password`, `isAdmin`, `created_at`, `updated_at`, `last_login`, `address`) VALUES
(1, 'A', 'A@A', '1', 1, '0000-00-00 00:00:00', '2023-11-05 18:04:41', '2023-11-05 18:04:41', NULL),
(5, 'Admin', 'Admin@email.kmutnb.ac.th', '1234', 1, '2023-09-19 16:02:28', '2023-09-27 18:11:07', '2023-09-27 18:11:07', NULL),
(18, 'oak', 'oak@gmail.com', 'Oakoak123', 0, '2023-09-27 17:55:26', '2023-09-27 18:06:34', '2023-09-27 18:06:34', NULL),
(19, 'pach', 'pach@gmail.com', 'Pachmakub', 0, '2023-09-27 17:55:53', '2023-09-27 18:08:18', '2023-09-27 18:08:18', NULL),
(20, 'Kaymon', 'KaymonOnFriday@gmail.com', 'Kaymontoday', 0, '2023-09-27 17:56:32', '2023-09-27 18:07:01', '2023-09-27 18:07:01', NULL),
(21, 'Peem', 'peem@teenoi.com', 'Peemwanttoeat', 0, '2023-09-27 17:56:58', '2023-09-27 18:07:45', '2023-09-27 18:07:45', NULL),
(22, 'pokky', 'pokky@gmail.com', 'Pokkygrade4', 0, '2023-09-27 17:58:20', '2023-09-27 18:24:36', '2023-09-27 18:24:36', NULL),
(23, 'oat', 'oat@gmail.com', 'O12345678', 0, '2023-09-27 17:59:13', '2023-09-27 18:00:40', '2023-09-27 18:00:40', NULL),
(24, 'Big', 'Doctor@gmail.com', 'Bigsmalldiff', 0, '2023-09-27 18:00:03', '2023-09-27 18:00:03', '2023-09-27 18:00:03', NULL),
(25, 'new', 'new@new.com', 'New1234567', 0, '2023-09-29 13:08:53', '2023-09-29 13:09:08', '2023-09-29 13:09:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
