-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 04:47 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_shop_dep`
--
CREATE DATABASE IF NOT EXISTS `web_shop_dep` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `web_shop_dep`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE IF NOT EXISTS `banner_image` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `title` varchar(64) DEFAULT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner_image`
--

INSERT INTO `banner_image` (`banner_id`, `link`, `image`, `sort_order`, `title`, `sub_title`, `description`, `price`, `status`) VALUES
(1, 'index.php?route=product/manufacturer/info&manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0, 'HP Banner', '', '', '0.0000', 0),
(2, '/product-info.php?product_id=79', 'catalog/banners/banner1.png', 1, 'Dép', '', '<p><br></p>', '0.0000', 1),
(3, '/product-info.php?product_id=80', 'catalog/banners/banner2.png', 2, 'Dép', 'Sieu pham cua ', '<p><br></p>', '0.0000', 1),
(4, '/product-info.php?product_id=81', 'catalog/banners/banner5.png', 0, 'Dép', 'Say Hello to Future !', '<p><br></p>', '0.0000', 1),
(5, '/product-info.php?product_id=65', 'catalog/banners/cach-chon-giay-sandal-nam-cuc-chuan-va-phu-hop-thumb-1-1200x628.jpg', 2, 'chưa có tựa đề', '', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '0.0000', 1),
(6, 'http://www.acer.com', '', 0, 'chưa có tựa đề', '', '<p><br></p>', '0.0000', 0),
(7, 'http://www.asus.com', '', 0, 'chưa có tựa đề', '', '<p><br></p>', '0.0000', 0),
(8, 'http://www.canon.com', 'catalog/manufacturers/Canon_logo.png', 0, 'chưa có tựa đề', '', '<p><br></p>', '0.0000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `featured`) VALUES
(70, 'catalog/products/Keedo/02e243389e949cbeff10c69dee42bd9c.jpg', 0, 1, 0, 1, 1, '2016-02-23 13:58:14', '2022-10-15 09:18:13', 'Dép quai ngang', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 0),
(72, 'catalog/products/sandal/sandal.jpg', 0, 1, 0, 2, 1, '2016-02-23 13:59:01', '2022-10-15 09:38:10', 'Sandal', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 1),
(77, 'catalog/products/crocs/OIP (1).jpg', 0, 1, 1, 4, 1, '2022-09-21 00:18:19', '2022-10-15 08:52:25', 'Crocs', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 1),
(78, 'catalog/products/Kep/dep-kep-nam-keedo-19-300x300.jpg', 0, 1, 1, 0, 1, '2022-10-14 08:53:19', '2022-10-15 09:19:49', 'Dép kẹp', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_path`
--

DROP TABLE IF EXISTS `category_path`;
CREATE TABLE IF NOT EXISTS `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_path`
--

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
(70, 70, 0),
(72, 72, 0),
(77, 77, 0),
(78, 78, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_added`, `date_modified`, `phone`, `date`, `address`, `website`) VALUES
(9, 'Lê Minh Họa', 'hoa@gmail.com', 'V/v chính sách khách hàng', 'Tôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.', '2020-07-05 11:45:21', '2020-07-11 18:11:22', NULL, NULL, NULL, NULL),
(10, 'Ví Văn Dụ', 'vidu@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị', '2020-07-11 18:17:31', '2020-07-11 18:34:18', '+(84)-0912247115', '2020-07-13 09:35:00', NULL, NULL),
(11, 'Khách Văn Hàng', 'hang@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án', '2020-07-11 22:12:42', '2020-07-14 14:43:59', '0915147115', '2020-07-15 12:15:00', '285 Đội Cấn. Hà Nội', 'http://hang.org');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname`, `email`, `telephone`, `address`, `password`, `status`, `date_added`) VALUES
(1, 'Bình', 'binh@fpt.vn', '0979999999', '285 Doi Can, Ba Dinh, HaNoi', '$2y$10$T.kuGeuZQRLuWraL3zclZuHl67q8InDwn4tmzFJ/Tn4lCb2OqaK5G', 1, '2015-07-10 13:37:34'),
(3, 'Quảng', 'quang@bkav.com', '0915686868', '69 Quan Hoa Cầu Giấy Hà Nội', '$2y$10$yeJkGSXTPLQoBX6QqjPlteI9qE496Qkl0z7jsQK0PJUa/pf9kOtua', 1, '2016-03-02 10:55:52'),
(4, 'Đức', 'demo@project.com', '0968686868', 'Playku Gialai2', '$2y$10$P1kJFjMxDqMP0jRhkkXVPuDv8hGLEDLGxmLyaX39.QObjsl0usu9.', 1, '2016-03-06 23:14:33'),
(5, 'Linh', 'linh@gmail.com', '0915147115', 'Hanoi 2', '$2y$10$KcH17v0lydo.ak/7.fEOdO3kPAE1nlZubuhlM3ygN9WBdYRjJ2TAS', 1, '2020-07-03 15:20:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `featured`) VALUES
(5, 'valentino', 'catalog/categories/070/valen.jpg', 0, 0),
(7, 'LV', 'catalog/logos/Louis-Vuitton-Emblem-700x394.png', 0, 1),
(8, 'Keedo', 'catalog/logos/images2.jpg', 0, 1),
(16, 'nike', 'catalog/logos/Nike-Logo.png', 0, 1),
(35, 'Supreme', 'catalog/categories/070/supreme.jpg', 0, 1),
(36, 'puma', 'catalog/logos/abd21a1a0ca69d934b2fcb95d22d336f.png', 0, 1),
(37, 'Adidas', 'catalog/categories/070/adidas.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `email`, `telephone`, `fullname`, `address`, `comment`, `total`, `date_added`) VALUES
(23, 4, 'minhhoahuuvu@gmail.com', '043668866', 'Đức', '285 Doi Can', '', '601.0000', '2015-05-11 22:52:08'),
(25, 4, 'minhhoa2@gmail.com', '0968222222', 'Đức', 'Ngõ 285 Đội Cấn 1', '', '12020000.0000', '2015-06-16 04:16:17'),
(26, 4, 'minhhoa3@gmail.com', '0968333333', 'Đức', 'hà nội 3', '', '4020000.0000', '2015-06-16 04:24:58'),
(27, 4, 'minhhoa4@gmail.com', '0968444444', 'Đức', 'Ngõ 285 Đội Cấn 4', '', '16020000.0000', '2015-06-16 09:36:03'),
(28, 4, 'minhhoa5@gmail.com', '0968555555', 'Đức', 'Palo Alto CA 5', 'Some comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5', '16020000.0000', '2015-06-17 08:14:16'),
(29, 4, 'minhhoa6@gmail.com', '0968 666 666', 'Đức', 'Palo Alto CA 6', 'Some comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6', '12020000.0000', '2015-06-17 09:17:52'),
(30, 4, 'minhhoa7@gmail.com', '0968777777', 'Đức', 'Address 7', 'Some comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7', '14020000.0000', '2015-07-01 05:44:03'),
(31, 4, 'minhhoa8@gmail.com', '0968888888', 'Đức', '285 Doi Can Hanoi', 'I like these products', '6020000.0000', '2015-07-09 09:09:08'),
(32, 4, 'minhhoa9@gmail.com', '0968999999', 'Đức', '285 Doi Can 9', 'Fuck it offf', '14020000.0000', '2015-07-09 09:10:55'),
(33, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:14:08'),
(34, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:15:17'),
(35, 4, 'minhhoa12@gmail.com', '0968111111', 'Đức', '285 Doi Can', 'Don hang nay mang so bao danh 11', '34020000.0000', '2015-07-09 13:33:00'),
(36, 4, 'minhhoa13@gmail.com', '09681313133', 'Đức', '285 Doi Can 13', 'Fuck offf 13', '4020000.0000', '2015-07-09 13:41:13'),
(37, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '12020000.0000', '2015-07-11 10:02:33'),
(38, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '16020000.0000', '2015-07-11 10:02:56'),
(39, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', 'Some test comment from minhhoa', '6020000.0000', '2015-07-11 11:06:09'),
(40, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Đây là những sản phẩm công nghệ đắt tiền tôi yêu thích, quý công ty vui lòng vận chuyển cẩn thận và phải trực tiếp đến tay tôi.', '82720000.0000', '2016-12-30 09:29:24'),
(41, 0, 'tham@gmail.com', '09688028282', 'Thám', '285 Đội Cấn', 'Đây chỉ là một màn test', '13360000.0000', '2017-04-03 15:57:06'),
(42, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Hello 20170405', '10100000.0000', '2017-04-05 09:41:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_details_to_order` (`order_id`),
  KEY `fk_order_details_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`) VALUES
(23, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000'),
(23, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000'),
(25, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(25, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(26, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(26, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(27, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(27, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(28, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(28, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(28, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(28, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(29, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(29, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(30, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(30, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(30, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(31, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(31, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(31, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(32, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(32, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(32, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(34, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(34, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(35, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 43, 'MacBook', 'Product 16', 3, '10000000.0000', '30000000.0000'),
(36, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(36, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(38, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(38, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(38, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(38, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(39, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(39, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(39, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(40, 30, 'Pixel C', 'Product 3', 2, '11340000.0000', '22680000.0000'),
(40, 40, 'iPhone 3gs', '3GS', 2, '2020000.0000', '4040000.0000'),
(40, 41, 'iMac', 'iMac MK142ZP/A', 1, '26000000.0000', '26000000.0000'),
(40, 43, 'MacBook', 'Mac Old', 3, '10000000.0000', '30000000.0000'),
(41, 30, 'Pixel C', 'Product 3', 1, '11340000.0000', '11340000.0000'),
(41, 40, 'iPhone 3gs', '3GS', 1, '2020000.0000', '2020000.0000'),
(42, 40, 'iPhone 3gs', '3GS', 5, '2020000.0000', '10100000.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_to_manufacturer` (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `price`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `tag`, `best_seller`, `featured`) VALUES
(28, 'Dép kẹp ngang', 'catalog/categories/070/25.jpg', 8, '460000.0000', 0, 1, '2009-02-03 16:06:50', '2022-10-14 08:57:33', 'Dép kẹp nam da bò thật cao cấp KEEDO TN-9021-11', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul><ul>\r\n</ul>\r\n', '', 0, 1),
(29, 'VENTO', 'catalog/categories/070/vento.jpg', 8, '260000.0000', 0, 1, '2009-02-03 16:42:17', '2022-10-14 08:50:43', '  Sandanl nam VENTO', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\">Sandanl nam VENTO cao cấp mới Siêu Đẹp Siêu Bền rất đa tiện ích dùng để đi học, đi chơi, đi du lịch hay đi phượt và đi bất cứ đâu bạn muốn.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ:</span>&nbsp;Made in Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kế:&nbsp;</span>Đơn giản, trẻ trung</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;quai dù dễ vệ sinh, đế cao su chống trợt</li></ul><ul>\r\n</ul>\r\n', '', 0, 0),
(30, 'Product 3', 'catalog/categories/070/dep-kep-nam-da-bo-that-keedo-17-600x600.jpg', 37, '220000.0000', 0, 1, '2009-02-03 16:59:00', '2022-10-14 08:58:16', 'Dép xỏ ngón nam da bò thật KEEDO TN-T82', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật bền đẹp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 1),
(31, '', 'catalog/products/crocs/OIP (1).jpg', 37, '280000.0000', 0, 1, '2009-02-03 17:00:10', '2022-10-12 16:45:02', 'crocs vàng', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 0),
(32, 'Sandal', 'catalog/categories/070/sandal-nam-keedo-14-1-600x600.jpg', 8, '245000.0000', 0, 1, '2009-02-03 17:07:26', '2022-09-11 15:12:12', 'Sandal nam chính hãng KEEDO KDS03', '<h2 style=\"text-align: justify;\"><p style=\"margin-bottom: 1.3em;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai dù cao cấp</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động, đi học, đi chơi…</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Nhận hàng và kiểm tra trước khi thanh toán</li><li></li></ul></h2>', '', 0, 1),
(33, 'quai ngang', 'catalog/categories/070/dep-nam-quai-ngang-keedo-4-3-600x600.jpg', 8, '520000.0000', 0, 1, '2009-02-03 17:08:31', '2022-09-12 14:54:13', 'Dép da nam trung niên quai ngang cao cấp KEEDO KD4076', '<div><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;May quai và đế rất chắc chắn. Kiểu dáng trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></div>\r\n', '', 0, 0),
(34, 'V10', 'catalog/categories/070/dep-nam-quai-ngang-da-bo-that-keedo-11-300x300.jpg', 8, '460000.0000', 0, 1, '2009-02-03 18:07:54', '2022-09-12 14:41:06', ' Dép quai ngang hàng hiệu da bò thật KEEDO KD368', '<h3 class=\"text-normal\"><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h3>', '', 0, 0),
(36, 'A39', 'catalog/categories/070/dep-hai-quai-ngang-keedo-20-600x600.jpg', 8, '290000.0000', 0, 1, '2009-02-03 18:09:19', '2022-09-12 14:45:13', ' Dép hai quai ngang nam KEEDO KD0505', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in VietNam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da tổng hợp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nhà</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 0),
(40, 'Sandal', 'catalog/categories/070/dep-sandal-quai-hau-keedo-1-600x600.jpg', 8, '485000.0000', 0, 1, '2009-02-03 21:07:12', '2022-09-11 15:05:26', 'Dép sandal hàng hiệu da bò thật KEEDO DR1016', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động vừa có thể làm dép, và làm giày quai hậu được</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>\r\n', '', 0, 1),
(41, 'Sandal', 'catalog/categories/070/Sandal-adidas-adilette-2-600x600.jpg', 8, '425000.0000', 0, 1, '2009-02-03 21:07:26', '2022-10-14 08:51:04', 'Sandal adidas adilette', '<h2 class=\"hero-headline\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;VNXK</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Trẻ trung, năng động dễ dàng mang vào tháo ra</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 1),
(43, 'Dép quai ngang', 'catalog/categories/070/dep-quai-ngang-nam-ca-sau -keedo-4-1-600x600.jpg', 5, '460000.0000', 0, 1, '2009-02-03 21:07:49', '2022-09-11 16:01:21', 'Dép Quai Ngang Cá Sấu KEEDO KD7622', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt. Thoải mái đi mưa đi biển.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 1),
(46, 'KD1505', 'catalog/categories/070/dep-nam-hai-quai-keedo-14-600x600.jpg', 8, '360000.0000', 0, 1, '2009-02-03 21:08:29', '2022-09-12 15:09:17', ' Dép Hai Quai Ngang Nam KEEDO-KD1505', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai vải dù cao cấp</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 0),
(47, 'Quai ngang ', 'catalog/categories/070/dep-nam-quai-ngang-keedo-15-600x600.jpg', 8, '360000.0000', 0, 1, '2009-02-03 21:08:40', '2022-09-12 15:01:33', 'Dép Hai Quai Ngang Nam KEEDO-KD1705', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai vải dù cao cấp</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 0),
(48, 'quai ngang', 'catalog/categories/070/Dep-nam-quai-cheo-keedo-1-600x600.jpg', 8, '480000.0000', 0, 1, '2009-02-08 17:21:51', '2022-09-12 14:49:36', 'Dép da nam quai chéo cao cấp KEEDO BH01016', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 12 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 0),
(49, 'KD912', 'catalog/categories/070/Dep-nam-keedo-kd912-4-600x600.jpg', 8, '290000.0000', 1, 1, '2011-04-26 08:57:34', '2022-09-12 15:27:33', ' Dép Hai Quai Ngang KEEDO-KD912', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt. Quai da tổng hợp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>\r\n', '', 0, 0),
(60, 'Quai ngang ', 'catalog/categories/070/dep-quai-ngang-nam-keedo-14-600x600.jpg', 8, '480000.0000', 0, 1, '2015-06-22 06:46:02', '2022-09-12 14:57:50', 'Dép 2 Quai Ngang cao cấp KEEDO BH01014', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 0),
(63, 'Quai ngang ', 'catalog/categories/070/dep-nam-hai-quai-keedo-4-1-600x600.jpg', 8, '380000.0000', 1, 1, '2016-02-23 14:33:11', '2022-09-11 15:46:44', 'Dép 2 Quai Ngang cao cấp KEEDO TNG-50824', '<h2 class=\"hero-subtitle subsection-headline\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '...', 0, 1),
(64, 'dép ', 'catalog/categories/070/dep-kep-nam-keedo-19-600x600.jpg', 8, '240000.0000', 1, 1, '2016-02-23 14:50:04', '2022-10-14 08:57:13', 'Dép kẹp nam cao cấp KEEDO D28', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Việt Nam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt. Thoải mái đi mưa đi biển.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 0),
(65, ' DR223', 'catalog/categories/070/dep-nam-quai-cheo-may-san-doctor-8-600x600.jpg', 8, '345000.0000', 1, 1, '2016-02-23 15:12:12', '2022-09-12 15:22:33', 'Dép doctor quai chéo da bò thật may sẵn DR223', '<div class=\"wrap inner-x left\">\r\n<div class=\"title active black m-black\"><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\">Dép doctor quai chéo được may hoàn toàn 100% thủ công, đều dặn và chắc chắn. Mang em này di chuyển thoải mái bởi chất đế cao su tự nhiên. Đế bám đường, chịu lực tốt trên nhiều địa hình.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Thailand</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x left\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\">\r\n</div></div>\r\n</div></div>\r\n</div></div>\r\n</div>', '...', 0, 0),
(66, 'KD2802', 'catalog/categories/070/kd2802.jpg', 8, '290000.0000', 1, 1, '2016-02-23 15:25:42', '2022-09-12 15:32:58', 'Dép Nam Cao Cấp KEEDO KD2802', '<h3 class=\"content-block-enhanced-caption__headline\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in VietNam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da tổng hợp bền đẹp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nhà</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h3><div class=\"content-block-enhanced-caption\"><div class=\"content-block-enhanced-caption-content-wrapper half-wrapper\">\r\n </div>\r\n </div>', '...', 0, 0),
(67, 'Dép quai ngang', 'catalog/categories/070/dep-nam-quai-ngang-keedo-3-2-600x600.jpg', 8, '380000.0000', 1, 1, '2016-02-23 16:29:43', '2022-09-11 15:04:46', 'Dép Quai Ngang Cao Cấp KEEDO TNG-50827', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 1, 1),
(68, 'Luxury', 'catalog/categories/070/dep-kep-nam-cao-cap-keedo-1-600x600.jpg', 36, '290000.0000', 1, 1, '2016-02-23 16:44:19', '2022-10-14 08:56:52', 'Dép kẹp nam cao cấp hàng hiệu KEEDO KD0604', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Dép kẹp được may hoàn toàn bằng thủ công, đều dặn và chắc chắn. Mang em này di chuyển thoải mái bởi chất đế cao su tự nhiên. Đế bám đường, chịu lực tốt trên nhiều địa hình.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Việt Nam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trượt, Quai model mới</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 0),
(69, 'KD2904', 'catalog/categories/070/dep-nam-hai-quai-da-bo-that-15-600x600.jpg', 8, '460000.0000', 1, 1, '2016-11-22 18:07:40', '2022-09-21 00:02:21', 'Dép 2 Quai Ngang cao cấp đế may sẵn KEEDO KD2904', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;May quai và đế rất chắc chắn. Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 1, 0),
(70, '', 'catalog/products/crocs/OIP.jpg', 16, '300000.0000', 1, 1, '2022-09-28 08:29:44', '2022-09-28 08:29:44', 'crocs đen', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(71, '', 'catalog/products/crocs/images (10).jpg', 16, '250000.0000', 1, 1, '2022-10-12 09:45:52', '2022-10-12 09:49:08', 'crocs đế cam', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(72, '', 'catalog/products/crocs/images (13).jpg', 37, '480000.0000', 1, 1, '2022-10-12 09:51:11', '2022-10-12 16:42:19', 'crocs đế xanh', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(73, '', 'catalog/products/crocs/images (12).jpg', 36, '320000.0000', 1, 1, '2022-10-12 10:06:36', '2022-10-20 16:45:43', 'crocs trắng', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(74, '', 'catalog/products/crocs/images (11).jpg', 36, '300000.0000', 1, 1, '2022-10-12 10:10:00', '2022-10-12 10:14:08', 'crocs canh nhạt', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(75, '', 'catalog/categories/070/10.jpg', 16, '320000.0000', 1, 1, '2022-10-12 10:54:45', '2022-10-12 10:54:45', 'sandal caro', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(76, '', 'catalog/products/sandal/images (2).jpg', 37, '370000.0000', 1, 1, '2022-10-12 16:34:25', '2022-10-12 16:43:04', 'Sandal MWC', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(77, '', 'catalog/products/Kep/images (2).jpg', 7, '590000.0000', 1, 1, '2022-10-12 16:39:49', '2022-10-14 08:56:33', 'dép kẹp LV', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(78, '', 'catalog/products/Kep/tải xuống (2).jpg', 16, '290000.0000', 1, 1, '2022-10-12 16:41:41', '2022-10-14 08:57:49', 'Dép kẹp X2212', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1),
(79, '', 'catalog/products/Keedo/02e243389e949cbeff10c69dee42bd9c.jpg', 37, '330000.0000', 1, 1, '2022-10-15 08:48:48', '2022-10-15 08:49:17', 'dép quai ngang sọc', '<ul style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">Dép đôi quai ngang dán nam nữ thời trang 4 SỌC cao cấp phong cách ulzzang hàn quốc - Dép lê unisex đi êm siêu Hot TH-76</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">CAM KẾT: HÌNH CHỤP THẬT 100% SẢN PHẨM</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">CAM KẾT: Giá tốt nhất thị trường.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">CAM KẾT: Sản phẩm đúng như hình</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">Mang không vừa đổi size trong vòng 1 tuần</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">-Shop Giầy Dép Của Tớ Đảm Bảo Chất Lượng , Mẫu Mã Đa Dạng</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">- NHẬN SỈ CTV TOÀN TOÀN QUỐC</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">-ĐC: Cầu Giấy – Hà Nội</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">Dép đôi quai ngang dán nam nữ thời trang 4 SỌC cao cấp phong cách ulzzang hàn quốc - Dép lê unisex đi êm siêu Hot TH-76</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️Dép làm hoàn toàn từ nhựa EVA, PVC cao cấp, hạt nhựa tròn, nhẹ, trong suốt, có độ dẻo dai và mềm mại khi ở nhiệt độ thấp, khả năng chịu lực cao và không độc hại</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️Dép nhựa mềm dẻo, êm chân và lại cực bền, với thiết kế những lỗ thoáng khí trên bề mặt giúp đôi chân luôn thoáng mát, không tạo mùi hôi ở chân.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️Size kép dễ lựa chọn</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️ Đế thiêt kế ma sát chống trơn trượt, trống nước cực tốt. Mọi người đi mưa lội nước thoải mái mà không lo hỏng dép nhé.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️Đặc biệt mau khô vì vậy chân hay dép bị ướt nhẹt thì các bạn cũng không bao giờ phải lo lắng chuyện đôi chân của bạn bị bốc mùi như những dòng dép khác.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️Đặc biệt với dòng dép này càng đi sẽ càng mềm và êm chân.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">️Cảm Ơn Khách Hàng Luôn Tin Tưởng Và Ủng Hộ Shop</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">-Thanh toán khi nhận hàng</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">- Ship COD siêu tốc toàn quốc</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px;\">Dép đôi quai ngang dán nam nữ thời trang 4 SỌC cao cấp phong cách ulzzang hàn quốc - Dép lê unisex đi êm siêu Hot TH-76</p></ul><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Sản phẩm này là tài sản cá nhân được bán bởi Nhà Bán Hàng Cá Nhân và không thuộc đối tượng phải chịu thuế GTGT. Do đó hoá đơn VAT không được cung cấp trong trường hợp này.</p>', '...', 0, 1);
INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `price`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `tag`, `best_seller`, `featured`) VALUES
(80, '', 'catalog/products/Keedo/c913bb65d63127708c66439c847bcb7a.jpg', 37, '420000.0000', 1, 1, '2022-10-15 08:58:59', '2022-10-15 08:58:59', 'dép quai ngang chữ H', '<h2 style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; margin: 0px; font-size: inherit; font-weight: inherit; color: rgb(107, 114, 128); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">Dép Kẹp Nam THÁI LAN kiểu dáng trẻ trung, năng động.</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">•Đôi dép thiết kế với quai ngang truyền thống phù hợp với nhiều lứa tuổi từ học sinh, sinh viên, và người đi làm, ...</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">Chi tiết sản phẩm:</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">•Chất liệu: PU cao cấp nhập khẩu</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">•Gia công 100% bằng tay</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">•Đế đúc nguyên khối chuẩn Châu Á</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">•Keo dán và may mặt rất chắc chắn và tinh tế</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\"></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent;\">•Hấp hơi hoàn thiện khâu cuối để tới được tay các bạn</span></h2>', '...', 0, 1),
(81, '', 'catalog/products/Keedo/487c3c3668c6b002bc31920b7f5e8a02.jpg', 16, '350000.0000', 1, 1, '2022-10-15 09:13:50', '2022-10-15 09:16:23', 'Dép quai ngang 2 quai dán Fashion phong cách Hàn Quốc', '<p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 15.2px;\">Dép Form nhỏ khách nhích lên 1 size ạ OBIKING – HÀNG CÓ SẴN – TỐI ƯU THỜI GIAN NHẬN HÀNG Sau một thời gian dài nghỉ ngơi nay Obiking đã quay lại với một tinh thần mới, lĩnh vực mới, mong được sự ủng hộ của khách hàng yêu quý Obiking trong suốt thời gian qua —-&gt; -Chất liệu: vải dù -Màu sắc: Đen, trắng -Kích thước: 35/36,37/38,39/40,41/42,43/44 -Chất liệu đế: cao su kếp -Hình dạng của mũi giày: hở ✔️ Đế giày được thiết kế chịu ma sát tốt, , nhẹ, êm, cân bằng và thoáng khí ✔️ Kiểu dáng hottrend của năm nay. ✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm… ✔️ Có thể kết hợp Đồ, jeans, sooc, Ngố vv…. Đều phù hợp </span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 15.2px;\">– Với thiết kế phong cách đơn giản , đôi dép có những điểm nhấn cực kì bắt mắt và nổi bật khiến người đi nổi bật giữa đám đông .</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 15.2px;\"> – Kiểu dáng trẻ trung hiện đại, đơn giản để bạn dễ dàng mang vào chân và tháo ra, thật nhanh chóng và tiện lợi, thời trang nhưng không kém phần thanh lịch, sang trọng. Dễ dàng kết hợp với nhiều loại trang phục như váy, đầm, quần jeans, quần tây, quần kaki…để đi làm, xuống phố cùng bạn bè, hoặc tham dự những dịp quan trọng. </span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 15.2px;\">– Dép được sản xuất với những nguyên vật liệu tốt nhất nên dép mang lâu sẽ không bị hôi. Đường may chắc chắn, tỉ mỉ..</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 15.2px;\"> – Dép có form dáng chuẩn, ôm gọn đôi bàn chân.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 15.2px;\"> Sản phẩm phù hợp đi chơi, đi tiệc, đi học, du lịch, dạo phố….</span><br></p>', '...', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`image`),
  KEY `product_id` (`product_id`),
  KEY `fk_product_image_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`product_id`, `image`, `sort_order`) VALUES
(28, 'catalog/categories/070/24.jpg', 2),
(28, 'catalog/categories/070/25.jpg', 2),
(28, 'catalog/categories/070/26.jpg', 3),
(29, 'catalog/categories/070/90.jpg', 0),
(29, 'catalog/categories/070/91.jpg', 0),
(29, 'catalog/categories/070/92.jpg', 0),
(30, 'catalog/categories/070/2.jpg', 0),
(30, 'catalog/categories/070/3.jpg', 0),
(30, 'catalog/categories/070/4.jpg', 0),
(31, 'catalog/products/crocs/images (12).jpg', 0),
(31, 'catalog/products/crocs/images (2).jpg', 0),
(31, 'catalog/products/crocs/OIP (3).jpg', 0),
(31, 'catalog/products/crocs/OIP.jpg', 0),
(32, 'catalog/categories/070/10.jpg', 0),
(32, 'catalog/categories/070/11.jpg', 0),
(32, 'catalog/categories/070/12.jpg', 0),
(33, 'catalog/categories/070/55.jpg', 0),
(33, 'catalog/categories/070/56.jpg', 0),
(33, 'catalog/categories/070/57.jpg', 0),
(33, 'catalog/categories/070/58.jpg', 0),
(34, 'catalog/categories/070/44.jpg', 0),
(34, 'catalog/categories/070/45.jpg', 0),
(34, 'catalog/categories/070/46.jpg', 0),
(34, 'catalog/categories/070/47.jpg', 0),
(36, 'catalog/categories/070/48.jpg', 0),
(36, 'catalog/categories/070/49.jpg', 0),
(36, 'catalog/categories/070/50.jpg', 0),
(36, 'catalog/categories/070/51.jpg', 0),
(40, 'catalog/categories/070/13.jpg', 0),
(40, 'catalog/categories/070/14.jpg', 0),
(40, 'catalog/categories/070/15.jpg', 0),
(40, 'catalog/categories/070/16.jpg', 0),
(40, 'catalog/categories/070/17.jpg', 0),
(40, 'catalog/categories/070/18.jpg', 0),
(41, 'catalog/categories/070/27.jpg', 0),
(41, 'catalog/categories/070/28.jpg', 0),
(41, 'catalog/categories/070/29.jpg', 0),
(41, 'catalog/categories/070/30.jpg', 0),
(43, 'catalog/categories/070/19.jpg', 0),
(43, 'catalog/categories/070/20.jpg', 0),
(43, 'catalog/categories/070/22.jpg', 0),
(43, 'catalog/categories/070/23.jpg', 0),
(46, 'catalog/categories/070/65.jpg', 0),
(46, 'catalog/categories/070/66.jpg', 1),
(46, 'catalog/categories/070/67.jpg', 2),
(46, 'catalog/categories/070/68.jpg', 3),
(46, 'catalog/categories/070/69.jpg', 4),
(47, 'catalog/categories/070/62.jpg', 0),
(47, 'catalog/categories/070/63.jpg', 0),
(47, 'catalog/categories/070/64.jpg', 0),
(48, 'catalog/categories/070/52.jpg', 0),
(48, 'catalog/categories/070/53.jpg', 0),
(48, 'catalog/categories/070/54.jpg', 0),
(49, 'catalog/categories/070/81.jpg', 0),
(49, 'catalog/categories/070/82.jpg', 0),
(49, 'catalog/categories/070/83.jpg', 0),
(49, 'catalog/categories/070/84.jpg', 0),
(49, 'catalog/categories/070/85.jpg', 0),
(60, 'catalog/categories/070/59.jpg', 0),
(60, 'catalog/categories/070/60.jpg', 1),
(60, 'catalog/categories/070/61.jpg', 2),
(63, 'catalog/categories/070/31.jpg', 0),
(63, 'catalog/categories/070/32.jpg', 0),
(63, 'catalog/categories/070/33.jpg', 0),
(63, 'catalog/categories/070/34.jpg', 0),
(63, 'catalog/categories/070/35.jpg', 0),
(64, 'catalog/categories/070/41.jpg', 0),
(64, 'catalog/categories/070/42.jpg', 0),
(64, 'catalog/categories/070/43.jpg', 0),
(65, 'catalog/categories/070/74.jpg', 0),
(65, 'catalog/categories/070/75.jpg', 0),
(65, 'catalog/categories/070/76.jpg', 0),
(65, 'catalog/categories/070/77.jpg', 0),
(65, 'catalog/categories/070/78.jpg', 0),
(65, 'catalog/categories/070/79.jpg', 0),
(65, 'catalog/categories/070/80.jpg', 0),
(66, 'catalog/categories/070/86.jpg', 0),
(66, 'catalog/categories/070/87.jpg', 0),
(66, 'catalog/categories/070/88.jpg', 0),
(66, 'catalog/categories/070/89.jpg', 0),
(67, 'catalog/categories/070/5.jpg', 0),
(67, 'catalog/categories/070/6.jpg', 0),
(67, 'catalog/categories/070/7.jpg', 0),
(67, 'catalog/categories/070/8.jpg', 0),
(67, 'catalog/categories/070/9.jpg', 0),
(68, 'catalog/categories/070/36.jpg', 0),
(68, 'catalog/categories/070/37.jpg', 0),
(68, 'catalog/categories/070/38.jpg', 0),
(68, 'catalog/categories/070/39.jpg', 0),
(69, 'catalog/categories/070/70.jpg', 0),
(69, 'catalog/categories/070/71.jpg', 0),
(69, 'catalog/categories/070/72.jpg', 0),
(69, 'catalog/categories/070/73.jpg', 0),
(70, 'catalog/products/crocs/OIP (2).jpg', 0),
(70, 'catalog/products/crocs/OIP (3).jpg', 0),
(71, 'catalog/products/crocs/images (12).jpg', 0),
(71, 'catalog/products/crocs/images (13).jpg', 0),
(71, 'catalog/products/crocs/images (2).jpg', 0),
(71, 'catalog/products/crocs/images (4).jpg', 0),
(71, 'catalog/products/crocs/OIP.jpg', 0),
(72, 'catalog/products/crocs/images (13).jpg', 0),
(72, 'catalog/products/crocs/images (4).jpg', 0),
(72, 'catalog/products/crocs/images (5).jpg', 0),
(72, 'catalog/products/crocs/images (7).jpg', 0),
(72, 'catalog/products/crocs/OIP (2).jpg', 0),
(73, 'catalog/products/crocs/be46949f86834440b5b2162340de83fe.jpg', 0),
(73, 'catalog/products/crocs/images (1).jpg', 0),
(73, 'catalog/products/crocs/images (4).jpg', 0),
(73, 'catalog/products/crocs/images (5).jpg', 0),
(73, 'catalog/products/crocs/OIP (2).jpg', 0),
(74, 'catalog/products/crocs/be46949f86834440b5b2162340de83fe.jpg', 0),
(74, 'catalog/products/crocs/images (13).jpg', 0),
(74, 'catalog/products/crocs/images (4).jpg', 0),
(74, 'catalog/products/crocs/OIP (1).jpg', 0),
(74, 'catalog/products/crocs/OIP (3).jpg', 0),
(75, 'catalog/categories/070/11.jpg', 0),
(75, 'catalog/categories/070/12.jpg', 0),
(75, 'catalog/categories/070/14.jpg', 0),
(75, 'catalog/categories/070/15.jpg', 0),
(76, 'catalog/products/sandal/images (2).jpg', 0),
(76, 'catalog/products/sandal/images (5).jpg', 0),
(76, 'catalog/products/sandal/images (6).jpg', 0),
(76, 'catalog/products/sandal/images (8).jpg', 0),
(77, 'catalog/products/Kep/images (1).jpg', 0),
(77, 'catalog/products/Kep/images.jpg', 0),
(77, 'catalog/products/Kep/tải xuống (3).jpg', 0),
(77, 'catalog/products/Kep/tải xuống.jpg', 0),
(78, 'catalog/products/Kep/dep-kep-nam-da-ca-sau-10-300x300.jpg', 0),
(78, 'catalog/products/Kep/dep-kep-nam-keedo-18-300x300.jpg', 0),
(78, 'catalog/products/Kep/images.jpg', 0),
(78, 'catalog/products/Kep/tải xuống (4).jpg', 0),
(79, 'catalog/products/Keedo/3f9dcab336fa7db4c52cbe2ac4abc0bb_tn.jpg', 0),
(79, 'catalog/products/Keedo/5f4e1f9f73badf2e6b13f1dabb38a68c.jpg', 0),
(79, 'catalog/products/Keedo/8f1606ccd4217cb254fec8d045d953f8.jpg', 0),
(79, 'catalog/products/Keedo/images.jpg', 0),
(80, 'catalog/products/Keedo/44.jpg', 0),
(80, 'catalog/products/Keedo/9e11139fa3ea705ba4c61d01ee12801c.jpg', 0),
(80, 'catalog/products/Keedo/c913bb65d63127708c66439c847bcb7a.jpg', 0),
(80, 'catalog/products/Keedo/d26.jpg', 0),
(81, 'catalog/products/Keedo/281e8c11f59b89bea12515a8eec2d72a.jpg', 0),
(81, 'catalog/products/Keedo/487c3c3668c6b002bc31920b7f5e8a02.jpg', 0),
(81, 'catalog/products/Keedo/7144c48920ae3d63fa224d7ce58542c1.jpg', 0),
(81, 'catalog/products/Keedo/8b8a38cae91a68d107192978504ca1ff.jpg', 0),
(81, 'catalog/products/Keedo/e483cf17c1adcbd5831c8e056e165deb.jpg', 0),
(81, 'catalog/products/Keedo/giam-gia-dep-di-bien-dep-quai-ngang-di-choi-sandal-phong-cach-han-quoc-1.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `fk_product_to_category_to_category` (`category_id`),
  KEY `fk_product_to_category_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(28, 78),
(29, 72),
(30, 78),
(31, 77),
(32, 72),
(33, 70),
(34, 70),
(36, 70),
(40, 72),
(41, 72),
(43, 70),
(46, 70),
(47, 70),
(48, 70),
(49, 70),
(60, 70),
(63, 70),
(64, 78),
(65, 70),
(66, 70),
(67, 70),
(68, 78),
(69, 70),
(70, 77),
(71, 77),
(72, 77),
(73, 77),
(74, 77),
(75, 72),
(76, 72),
(77, 78),
(78, 78),
(79, 70),
(80, 70),
(81, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`setting_id`, `key`, `value`) VALUES
(171, 'config_name', 'Newbie'),
(172, 'config_owner', 'Steve Jobs'),
(173, 'config_address', 'Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, t.p Hà Nội. Việt Nam.'),
(176, 'config_telephone', '0968999888'),
(178, 'config_image', 'catalog/logos/Apple_logo.png'),
(179, 'config_open', '08h:00'),
(180, 'config_comment', 'Cửa hành chỉ nhận thanh toán tiền mặt.'),
(194, 'config_product_count', '1'),
(195, 'config_product_limit', '15'),
(196, 'config_product_description_length', '100'),
(197, 'config_limit_admin', '20'),
(220, 'config_order_mail', '0'),
(231, 'config_logo', 'catalog/logos/newbie.png'),
(232, 'config_icon', 'catalog/logos/newbie.png'),
(233, 'config_image_category_width', '80'),
(234, 'config_image_category_height', '80'),
(235, 'config_image_thumb_width', '228'),
(236, 'config_image_thumb_height', '228'),
(237, 'config_image_popup_width', '500'),
(238, 'config_image_popup_height', '500'),
(239, 'config_image_product_width', '228'),
(240, 'config_image_product_height', '228'),
(241, 'config_image_additional_width', '74'),
(242, 'config_image_additional_height', '74'),
(243, 'config_image_related_width', '80'),
(244, 'config_image_related_height', '80'),
(245, 'config_image_compare_width', '90'),
(246, 'config_image_compare_height', '90'),
(247, 'config_image_wishlist_width', '47'),
(248, 'config_image_wishlist_height', '47'),
(249, 'config_image_cart_width', '47'),
(250, 'config_image_cart_height', '47'),
(251, 'config_image_location_width', '268'),
(252, 'config_image_location_height', '50'),
(269, 'config_file_max_size', '300000'),
(270, 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods'),
(271, 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet'),
(272, 'config_maintenance', '0'),
(273, 'config_password', '1'),
(275, 'config_compression', '0'),
(276, 'config_error_display', '1'),
(277, 'config_error_log', '1'),
(278, 'config_error_filename', 'error.log'),
(280, 'config_email', 'newbie@gmail.com'),
(281, 'config_url', 'http://localhost:82/xxxxxx/'),
(282, 'products_featured_limit', '12'),
(283, 'products_best_seller_limit', '5'),
(284, 'html_google_map_embed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8394895900146!2d105.77372317764168!3d21.039107486063962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313455d413b5a3dd%3A0xd4a4e08d79954dc4!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIELDoWNoIEtob2E!5e0!3m2!1svi!2s!4v1665498031448!5m2!1svi!2s\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(285, 'config_post_limit', '15'),
(286, 'categories_featured_limit', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `due_date` datetime NOT NULL DEFAULT '2099-01-01 23:00:00',
  `phone` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `image`, `code`, `status`, `date_added`, `due_date`, `phone`, `description`, `sort_order`) VALUES
(1, 'admin', '$2y$10$fyQlG9d3jfXRy8kApsS7j.hiUz5zMSjwMnzHS3spKpcAJkS5cT1UO', 'Lê Đức Sinh', '', 'catalog/profiles/Steve-Jobs-Profile.jpg', '', 1, '2015-01-29 08:07:20', '2099-01-01 23:00:00', '0356269477', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate about digital marketing, good food, animals, nature and coffee. </font><font style=\"vertical-align: inherit;\">I have lived abroad for many years, and have never stopped looking for good food, especially what could make me feel at home. </font><font style=\"vertical-align: inherit;\">Unfortunately even in times of globalization, certain products are not available in stores or on the Internet. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n \r\n	               Foodgenuine is an ambitious and special project, our aim\r\n is to \"reduce\" the distances and bring you that \"good time\", no matter \r\nwhere you are. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               I love pizza and pasta, and I could always eat Genoese focaccia. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               My slogan? </font><font style=\"vertical-align: inherit;\">\"You are what you eat\".</font></font></span></p>', 0),
(4, 'Chung', '$2y$10$ZLipDnO6LmBXDjAbV.PuBulf30fYTOpP4FW4fT3F949z52WmbGPJi', 'Lê Hải Chung', 'chung@gmail.com', 'catalog/profiles/billgates.jpg', '', 1, '2015-04-03 17:32:02', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">A lover of technology and the internet, I have worked in the Netherlands for more than 7 years in this area. </font><font style=\"vertical-align: inherit;\">I Holland food is not a factor of pride and my passion for good food and the difficulty of finding it in supermarkets and on the net has weighed heavily on my stay abroad. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Driven by this need, I started the creation of Foodgenuine, an e-commerce for the sale of food and drinks that are genuine, healthy, natural and non-industrial. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               My goal is also to offer small producers the opportunity to sell their products worldwide. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Good and healthy food for everyone; </font><font style=\"vertical-align: inherit;\">\" </font></font><span style=\"font-style: italic;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">food is not filling your belly, food is health</font></font></span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \".</font></font></span></p>', 3),
(5, 'Linh', '$2a$10$Onh3/KpeCpd5a.SuC18/geyLew.VHS73AFWq9mCcK4dW3.S45KbhS', 'Phạm Tài Linh', 'linh@linhhon.com', 'catalog/profiles/mark-zuckerberg.jpg', '', 1, '2015-04-06 18:25:04', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate\r\n about the internet and technology, health and well-being, I like to \r\ntravel and taste the typical products of different locations in search \r\nof the best products and unique flavors. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n	               So I decided to take part in the Foodgenuine project taking care of the IT aspect.</font></font></span></p>', 2),
(7, 'Kiều Anh Hera', '$2y$10$deoauGiQgarivYBASiGRZuto0DII3h7i6JO95xURyOb.Bx/8aBry.', 'Phạm Thị Kiều Anh ', 'kieuanh@hera.com', 'catalog/profiles/obama.png', '', 1, '2020-07-09 22:45:42', '2099-01-01 23:00:00', '', '<p><font style=\"font-size: 16px; vertical-align: inherit;\">Passionate about the internet and technology, health and well-being, I like to travel and taste the typical products of different locations in search of the best products and unique flavors.</font><br style=\"font-size: 16px;\"><font style=\"font-size: 16px; vertical-align: inherit;\">So I decided to take part in the Foodgenuine project taking care of the IT aspect.</font><br></p>', 0);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_to_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `fk_order_details_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_to_manufacturer` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
