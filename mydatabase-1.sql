-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2020 lúc 12:21 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3
CREATE DATABASE mydatabase;
USE mydatabase;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydatabase`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customerID` varchar(20) NOT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customerID`, `customerName`, `phone`, `address`) VALUES
('ixVMeOJQY', 'asjdjahsd', 'asdasdas', 'adsdasdas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orderCode` varchar(20) NOT NULL,
  `orderDate` date NOT NULL,
  `customerId` varchar(20) NOT NULL,
  `productId` int(10) NOT NULL,
  `quantityOrdered` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orderCode`, `orderDate`, `customerId`, `productId`, `quantityOrdered`, `status`) VALUES
('-ZRZ3P_8J', '2020-04-29', 'ixVMeOJQY', 6, 1, 'ordered'),
('2MmdYuiOd', '2020-04-29', 'ixVMeOJQY', 8, 1, 'pending'),
('DEBKggQAC', '2020-04-29', 'ixVMeOJQY', 8, 1, 'ordered'),
('ltqJcEB-K', '2020-04-29', 'ixVMeOJQY', 8, 2, 'ordered'),
('szGNNu7wU', '2020-04-29', 'ixVMeOJQY', 10, 1, 'pending'),
('Y4r37Znml', '2020-04-29', 'ixVMeOJQY', 9, 1, 'ordered'),
('Z0yDq1YWT', '2020-04-29', 'ixVMeOJQY', 6, 1, 'ordered');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productbrands`
--

CREATE TABLE `productbrands` (
  `productBrand` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `countryOrigin` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `productbrands`
--

INSERT INTO `productbrands` (`productBrand`, `description`, `countryOrigin`, `image`) VALUES
('Asus', NULL, 'China', NULL),
('Dell', NULL, 'USA', NULL),
('Hp', NULL, 'USA', NULL),
('Lenovo', NULL, 'China', NULL),
('MacBook', NULL, 'USA', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `productId` int(10) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productScreen` varchar(255) NOT NULL,
  `productCPU` varchar(255) NOT NULL,
  `productRAM` varchar(255) NOT NULL,
  `productVGA` varchar(255) NOT NULL,
  `productOS` varchar(255) NOT NULL,
  `productWeight` varchar(255) NOT NULL,
  `productImage` varchar(255) NOT NULL,
  `quantityInStock` int(10) NOT NULL,
  `quantityBought` int(10) NOT NULL,
  `buyPrice` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`productId`, `productName`, `productBrand`, `productScreen`, `productCPU`, `productRAM`, `productVGA`, `productOS`, `productWeight`, `productImage`, `quantityInStock`, `quantityBought`, `buyPrice`) VALUES
(1, 'Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', 'MacBook', '13.3 inch, WXGA+(1440 x 900)', 'Intel Core i5 Broadwell, 1.80 GHz', '8 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 6000', 'Mac OS', 'Dày 17 mm, 1.35 Kg', 'mac1', 100, 60, '19.990.000đ'),
(2, 'Apple Macbook Pro Touch 2019 i5 1.4GHz/8GB/128GB', 'MacBook', '15.6 inch, WXGA+(1440 x 900)', 'Intel Core i5 Broadwell, 1.80 GHz', '8 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 645', 'Mac OS', 'Dày 14.9 mm, 1.37 kg', 'mac2', 100, 23, '32.990.000đ'),
(3, 'Apple Macbook Pro Coffee Lake 2018 i5 1.4GHz/8GB/256GB', 'MacBook', '13.3 inch, Retina (2560 x 1600)', 'Intel Core i5 Coffee Lake, 1.40 GHz', '8 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 6000', 'Mac OS', 'Dày 14.9 mm, 1.37 kg', 'mac3', 100, 69, '27.990.000đ'),
(4, 'Macbook Pro Touch 16 inch 2019 i7 2.6GHz/16GB/512GB/4GB Radeon Pro 5300M', 'MacBook', '16 inch, Retina (3072 x 1920', 'Intel Core i7 Coffee Lake, 2.60 GHz', '8 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 645', 'Mac OS', 'Dày 16.2 mm, 2.0 kg', 'mac4', 100, 56, '56.990.000đ'),
(5, 'Asus VivoBook X409JA i3 1005G1/4GB/512GB/Win10 (EK015T)', 'Asus', '14 inch, Full HD (1920 x 1080)', 'Intel Core i3 Ice Lake, 1005G1, 1.20 GHz', '4 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 6000', 'Windows 10 Home', 'Dày 22.9 mm, 1.5 kg', 'asus1', 100, 56, '12.390.000đ'),
(6, 'Asus VivoBook A412FA i5 10210U/8GB/512GB/Win10 (EK738T)', 'Asus', '15.6 inch, WXGA+(1440 x 900)', 'Intel Core i5 Broadwell, 1.80 GHz', '4 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 645', 'Windows 10 Home', 'Dày 14.9 mm, 1.37 kg', 'asus2', 100, 120, '12.990.000đ'),
(7, 'Asus VivoBook A412FA i5 8145U/4GB/32GB+512GB/Win10 (EK661T)', 'Asus', '15.6 inch, WXGA+(1440 x 900)', 'Intel Core i5 Broadwell, 1.80 GHz', '4 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 6000', 'Windows 10 Home XL', 'Dày 22 mm, 1.89 Kg', 'asus3', 100, 89, '13.690.000đ'),
(8, 'VivoBook A512FA i5 10210U/8GB/512GB/Chuột/Win10 (EJ1734T)', 'Asus', '15.6 inch, WXGA+(1440 x 900)', 'Intel Core i5 Broadwell, 1.80 GHz', '4 GB, DDR3L(On board), 1600 MHz', 'Card đồ họa tích hợp, Intel HD Graphics 645', 'Window 10 Home XL', 'Dày 16.9 mm, 1.87 kg', 'asus4', 100, 111, '14.990.000đ'),
(9, 'Dell Inspiron 3581 i3 7020U/4GB/1TB/Win10 (P75F005N81A)', 'Dell', '15.6 inch, Full HD (1920 x 1080)', 'Intel Core i3 Kabylake, 7020U, 2.30 GHz', '4 GB, DDR4 (2 khe), 2133 MHz', 'Card đồ họa tích hợp, Intel® UHD Graphics 620', 'Windows 10 Home SL', 'Dày 20.66 mm, 2.28 kg', 'dell1', 100, 156, '12.990.000đ'),
(10, 'Dell Inspiron N3580 i5 8265U/4GB/1TB/Win10 (P75F106N80I)', 'Dell', '15.6 inch, Full HD (1920 x 1080)', 'Intel Core i5 Coffee lake, 7020U, 2.30 GHz', '4 GB, DDR4 (2 khe), 2133 MHz', 'Card đồ họa tích hợp, Intel® UHD Graphics 620', 'Windows 10 Home SL', 'Dày 20.66 mm, 2.28 kg', 'dell2', 100, 98, '12.390.000đ'),
(11, 'Dell Vostro 3580 i5 8265U/4GB/1TB/2GB AMD520/Win10 (P75F010V80I)', 'Dell', '15.6 inch, Full HD (1920 x 1080)', 'Intel Core i5 Coffee Lake, 7020U, 2.30 GHz', '8 GB, DDR4 (2 khe), 2133 MHz', 'Card đồ họa rời, AMD Radeon 520, 2GB', 'Windows 10 Home SL', 'Dày 20.65 mm, 2.28 kg', 'dell3', 100, 78, '16.020.000đ'),
(12, 'Dell Vostro 5580 i7 8265U/4GB/1TB/2GB AMD520/Win10 (P75F010V80I)', 'Dell', '15.6 inch, Full HD (1920 x 1080)', 'Intel Core i7 Coffee Lake, 7020U, 2.30 GHz', '8 GB, DDR4 (2 khe), 2133 MHz', 'Card đồ họa rời, AMD Radeon 630, 4GB', 'Windows 10 Home SL', 'Dày 20.65 mm, 1.98 kg', 'dell4', 100, 78, '27.020.000đ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderCode`),
  ADD KEY `orders_fk_1` (`customerId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `productbrands`
--
ALTER TABLE `productbrands`
  ADD PRIMARY KEY (`productBrand`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `products_fk_1` (`productBrand`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_fk_1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_fk_1` FOREIGN KEY (`productBrand`) REFERENCES `productbrands` (`productBrand`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
