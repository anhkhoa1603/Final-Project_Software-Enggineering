-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2024 lúc 06:28 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'Lavendor Rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'Red Tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'Cottage Rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'Pink Rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'Cottage Rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'Lavendor Rose', 13, 3, 'lavendor rose.jpg'),
(155, 19, 13, 'Pink Rose', 12, 1, 'pink roses.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 16, 'JayKyTruong', 'anhkhoa162003@gmail.com', '0369700300', 'Website is amazing!!!'),
(15, 16, 'JayKyTruong', 'anhkhoa162003@gmail.com', '0369700300', 'Beautifull flower!!!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 16, 'Truong Duc Anh Khoa', '0369700300', 'anhkhoa162003@gmail.com', 'cash on delivery', 'flat no. sbadfawef, agrsadgrsd, TP.HCM, Viet Nam - 700000', 'pink rose (1) ', 12, '03-May-2024', 'completed'),
(23, 16, 'JayKyTruong', '0369700300', 'anhkhoa162003@gmail.com', 'cash on delivery', 'flat no. 258, 717 District, Tanh Linh, Viet Nam - 700000', 'Pink Rose (1) , Cottage Rose (2) , Red Tulipa (3) ', 75, '10-May-2024', 'completed'),
(24, 16, 'JayKyTruong', '0369700300', 'anhkhoa162003@gmail.com', 'cash on delivery', 'flat no. 74, Dao Su Tich Street, Phuoc Kien, Viet Nam - 700000', 'Red Tulipa (1) , Lavendor Rose (1) , Yellow Tulipa (1) ', 39, '10-May-2024', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'Pink Rose', 'A symbol of grace and elegance, the pink rose is a tender blossom that speaks of admiration and joy.', 12, 'pink roses.jpg'),
(15, 'Cottage Rose', 'With its full, ruffled blooms, the cottage rose evokes the charm of a rustic English garden.', 15, 'cottage rose.jpg'),
(16, 'Lavendor Rose', 'A vision in violet, the lavender rose is rare and captivating, often representing enchantment and mystery.', 14, 'lavendor rose.jpg'),
(17, 'Yellow Tulipa', 'Bright and cheerful, yellow Tulipa bring a splash of sunshine to any bouquet, symbolizing happiness and warmth.', 14, 'yellow tulipa.jpg'),
(18, 'Red Tulipa', 'The classic red Tulipa stands bold and beautiful, a timeless emblem of true love and passion.', 11, 'red tulipa.jpg'),
(19, 'Pink Bouquet', 'A harmonious assembly of various pink shades, this bouquet is a delicate expression of affection and care.', 15, 'pink bouquet.jpg'),
(20, 'Pink Queen Rose', 'Regal and radiant, the Pink Queen Rose is a majestic variety that reigns supreme in beauty and poise.', 9, 'pink queen rose.jpg'),
(22, 'Beach Florist', 'Your go-to artisan for beach-inspired floral arrangements, where the breeze of the ocean meets the bloom of the land.', 8, 'beach florist.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(16, 'JayKyTruong', 'anhkhoa162003@gmail.com', '65d78e6b5ea131b53070a55e0e7a8806', 'user'),
(17, 'khoatruong', '521h0459@student.tdtu.edu.vn', '202cb962ac59075b964b07152d234b70', 'user'),
(18, 'JayKyTruong', 'ducdat147@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(19, 'JayKy', 'user@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'Pink Bouquet', 15, 'pink bouquet.jpg'),
(73, 16, 13, 'Pink Rose', 12, 'pink roses.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
