-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2024 lúc 07:17 AM
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
-- Cơ sở dữ liệu: `lab10`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(9, '2024_11_18_154228_tbl_customer', 2),
(10, '2024_11_18_163828_tbl_shipping', 2),
(11, '2024_11_21_155711_tbl_payment', 2),
(12, '2024_11_21_155805_tbl_order', 2),
(13, '2024_11_21_155828_tbl_order_details', 2),
(14, '2024_10_31_133620_create_personal_access_tokens_table', 3),
(15, '2024_11_04_155510_create_tbl_admin_table', 3),
(16, '2024_11_05_153446_create_tbl_category_product', 3),
(17, '2024_11_06_143457_create_tbl_brand_product', 3),
(18, '2024_11_07_062051_create_tbl_product', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('yJ2f3HgcQVMw5oKul0Q25JyqnM6dpzrVGHtxJZ7g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibjIyeGE0RG82amc0T25xMmJOcnJwQWxWbzZsNnBKWVppUEpWNjNCOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuZy1jaHUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjEwOiJhZG1pbl9uYW1lIjtzOjU6IkFkbWluIjtzOjg6ImFkbWluX2lkIjtpOjE7czo3OiJtZXNzYWdlIjtzOjM4OiJD4bqtcCBuaOG6rXQgc+G6o24gcGjhuqltIHRow6BuaCBjw7RuZyI7czoxMzoibG9naW5fbWVzc2FnZSI7czo0NjoiTeG6rXQga2jhuql1IGhv4bq3YyB0w6BpIGtob+G6o24ga2jDtG5nIMSRw7puZyI7fQ==', 1732601805);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin', '123', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'MSI', 'Bền, cấu hình đẹp', 0, NULL, NULL),
(2, 'Dell', 'ad', 0, NULL, NULL),
(3, 'Adidas', 'ád', 0, NULL, NULL),
(4, 'Rolex', 'eg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'Siêu rẻ', 0, NULL, NULL),
(2, 'Quần áo', 'Đẹp', 0, NULL, NULL),
(3, 'Giày', 'asda', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_desc`, `product_content`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Katana 15 B13UDXK (2213VN)', '22990000', '<ul><li><strong>CPU Intel® Core™ i5-13500H</strong></li><li>HĐH Windows 11 Home<br>(MSI khuyến nghị Windows 11 Pro cho doanh nghiệp)</li><li><strong>GPU NVIDIA® GeForce RTX™ 3050 6GB GDDR6</strong></li><li>Màn hình 15.6\" FHD (1920x1080), 144Hz, IPS-Level</li><li><strong>RAM 16GB</strong></li><li>SSD 1TB NVMe</li></ul>', '<p><strong>Giảm 2.000.000 VNĐ + Tặng Combo Bảo kiếm</strong></p>', 'MSI81.jpg', 0, NULL, NULL),
(2, 2, 3, 'Must Have BOS Tee FM5370', '420000', '<p>-Chất liệu dệt kim mềm mại giúp bạn luôn khô thoáng suốt cả ngày dài.<br>-Một món đồ tiện lợi có thể được sử dụng trong nhiều trường hợp, từ hoạt động thể thao đến sử dụng hàng ngày.<br>-Trang bị chức năng AERO READY giúp thấm hút mồ hôi nhanh chóng.</p>', '<figure class=\"table\"><table><tbody><tr><th>Kích thước:</th><td><a href=\"https://voisport.vn/kich-thuoc/l/\">L</a></td></tr><tr><th>Màu sắc</th><td><a href=\"https://voisport.vn/mau-sac/trang/\">Trắng</a></td></tr><tr><th>Thương hiệu</th><td><a href=\"https://voisport.vn/thuong-hieu/adidas/\">Adidas</a></td></tr></tbody></table></figure>', 'áo29.jpg', 0, NULL, NULL),
(3, 2, 4, 'Mẫu áo thun đồng phục có cổ khóa kéo xanh lá Rolex', '69000', '<p>Cung cấp đầy đủ các size cho hầu hết các lứa tuổi, cho nên mọi người đều có thể sử dụng được.&nbsp;</p><p>Gia đình: Phù hợp cho các gia đình đi tham quan du lịch, tham gia các hoạt động thể chất, hoặc chụp ảnh gia đình.</p><p>&nbsp;Nam-Nữ-Thanh, Thiếu niên: Dành cho các bạn có phong cách năng động, trẻ trung hay hoạt động thể chất, hoặc đơn giản là mặc ở nhà.&nbsp;</p><p>Trẻ em: Có những hình in dễ thương dành cho các bé cả trả lẫn gái, ba mẹ thoải mái lựa chọn cho các bé nhà mình.&nbsp;</p><p>Các cặp đôi: Cho các đôi bạn muốn thể hiện tình cảm qua trang phục, cho các buổi hẹn hò, đi ăn uống, du lịch cùng nhau.</p>', '<p>Gồm 4 phiên bản màu trẻ trung tươi sáng: Hồng phấn, Trắng, Vàng cúc, Xanh ngọc.&nbsp;</p><p>Có 7 sizes cho người lớn ( XS- S-M - L - XL – 2XL-3XL) và 6 size cho trẻ em (1-2-3-4-5-6), chi tiết tham khảo bảng kích cỡ.&nbsp;</p><p>Form FREESIZE, thoải mái, năng động.&nbsp;</p><p>Chất liệu: Cotton mềm mịn, thoáng mát.&nbsp;</p><p>Hình in rõ nét, mẫu mã đa dạng, không phai màu.</p>', 'aorolex49.jpg', 0, NULL, NULL),
(4, 1, 2, 'Laptop Dell Inspiron 3520 N5I5201W1', '16890000', '<p><strong>- CPU:</strong> Intel® Core™ i5-1235U<br>&nbsp;&nbsp;(1.3 GHz - 4.4 GHz/ 12MB/ 10 nhân, 12 luồng)<br><strong>- RAM: </strong>2 x 8GB 2666MHz DDR4<br>&nbsp;&nbsp;(Hỗ trợ tối đa 16GB)<br><strong>- VGA: </strong>Onboard graphics<br><strong>- Ổ cứng: </strong>512GB SSD M.2 NVMe<br><strong>- Màn hình: </strong>15.6\" Full HD (1920 x 1080) WVA, 120Hz, Màn hình chống lóa, 250 nits, 45% NTSC<br><strong>- Khác: </strong>Bàn phím thường, HD webcam, Non-EVO</p>', '<p>Thương hiệu: Dell</p><p>Bảo hành: 12 tháng</p>', 'dell39.webp', 0, NULL, NULL),
(5, 3, 4, 'Giày Nike Juniper Trail 3 Nam - Đen', '2390000', '<p>Nike Juniper Trail 3 là đôi giày hoàn hảo cho những ai yêu thích khám phá địa hình gồ ghề. Với thiết kế đế ngoài Nike Trail ATC, đôi giày mang đến khả năng bám vượt trội trên mọi bề mặt, ngay cả khi trời ẩm ướt, đảm bảo sự ổn định và an toàn&nbsp;trong mọi chuyến đi.</p>', '<p>Giày Nike Juniper Trail&nbsp;2 chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.</p>', 'giay25.webp', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
