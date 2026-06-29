-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2026 lúc 01:50 AM
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
-- Cơ sở dữ liệu: `vinhlong_cuisine_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `image_path`, `link_url`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '/images/banners/banner-01.png', '#', 1, 1, '2026-06-16 08:32:31', '2026-06-16 09:36:21'),
(2, 'Banner 2', '/images/banners/banner-02.png', '#', 2, 1, '2026-06-16 08:32:31', '2026-06-16 09:36:21'),
(3, 'Banner 3', '/images/banners/banner-03.png', '#', 3, 1, '2026-06-16 08:32:31', '2026-06-16 09:36:21'),
(4, 'Banner 4', '/images/banners/banner-04.png', '#', 4, 1, '2026-06-16 08:32:31', '2026-06-16 09:36:21'),
(5, 'Banner 5', '/images/banners/banner-05.png', '#', 5, 1, '2026-06-16 08:32:31', '2026-06-16 09:36:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ẩm thực', 'am-thuc', '2026-06-15 09:24:14', '2026-06-15 09:24:14'),
(2, 'Mua sắm', 'mua-sam', '2026-06-15 09:24:14', '2026-06-15 09:24:14'),
(3, 'Diem Tham Quan', 'diem-tham-quan', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Phường 1', 'phuong-1', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(2, 'Phường 2', 'phuong-2', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(3, 'Phường 3', 'phuong-3', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(4, 'Phường 4', 'phuong-4', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(5, 'Phường 5', 'phuong-5', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(6, 'Phường 8', 'phuong-8', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(7, 'Phường 9', 'phuong-9', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(8, 'Phường Tân Hòa', 'phuong-tan-hoa', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(9, 'Phường Tân Hội', 'phuong-tan-hoi', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(10, 'Phường Tân Ngãi', 'phuong-tan-ngai', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(11, 'Phường Trường An', 'phuong-truong-an', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(12, 'Phường 10', 'phuong-10', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(13, 'Phường Hiệp Thành', 'phuong-hiep-thanh', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(14, 'Phường Hiệp Thới', 'phuong-hiep-thoi', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(15, 'Phường Hiệp Trí', 'phuong-hiep-tri', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(16, 'Phường Hồng Phú', 'phuong-hong-phu', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(17, 'Phường Long Hồ', 'phuong-long-ho', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(18, 'Phường Trà Lồng', 'phuong-tra-long', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(19, 'Phường Tô Châu', 'phuong-to-chau', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(20, 'Xã Tân Quới', 'xa-tan-quoi', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(21, 'Xã Trường An', 'xa-truong-an', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(22, 'Xã Tân Phú', 'xa-tan-phu', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(23, 'Xã Tân Hòa', 'xa-tan-hoa', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(24, 'Xã Tân An', 'xa-tan-an', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(25, 'Xã Tích Thiện', 'xa-tich-thien', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(26, 'Xã Đông Bình', 'xa-dong-binh', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(27, 'Xã Đông Thạnh', 'xa-dong-thanh', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(28, 'Xã Đông Phú', 'xa-dong-phu', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(29, 'Xã Mỹ Hòa', 'xa-my-hoa', '2026-06-15 09:34:39', '2026-06-15 09:34:39'),
(30, 'Thành phố Vĩnh Long', '', NULL, NULL),
(38, 'Thành phố Trà Vinh', 'dist-thành-phố-trà-vinh', NULL, NULL),
(39, 'Huyện Giồng Trôm', 'dist-huyện-giồng-trôm', NULL, NULL),
(40, 'Huyện Cầu Kè', 'dist-huyện-cầu-kè', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` enum('sent','processed') NOT NULL DEFAULT 'sent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `zalo_url` varchar(255) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `min_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `max_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `google_map_url` text DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(20) DEFAULT 'approved',
  `submitted_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `category_id`, `district_id`, `name`, `slug`, `address`, `phone`, `facebook_url`, `zalo_url`, `lat`, `lng`, `min_price`, `max_price`, `opening_time`, `closing_time`, `featured_image`, `description`, `type`, `google_map_url`, `view_count`, `created_at`, `updated_at`, `status`, `submitted_by`) VALUES
(1, 1, 38, 'Ẩm thực Cầu Tre - Trà Vinh', 'm-th-c-c-u-tre-tr-vinh', 'Liền kề ký túc xá, K4/D5 nối dài, Phường Hòa Thuận, Trà Vinh', '(0270) 000 0000', '', '', 9.91870890, 106.34915150, 100000.00, 300000.00, '09:00:00', '23:00:00', '/images/Dichvu/Am thuc/amthuc1.webp', 'Ẩm thực CẦU TRE là một tụ điểm ăn uống mang phong cách đồng quê nổi tiếng, rất được giới trẻ và gia đình ưa chuộng tại Trà Vinh. Nơi đây nổi bật với không gian mát mẻ bên bờ kênh cùng hệ thống nhà chòi riêng tư, vừa lãng mạn vừa thoải mái – lựa chọn quen thuộc cho các buổi liên hoan, họp mặt gia đình, gặp gỡ bạn bè hay hẹn hò. Đặc biệt, không gian thoáng đãng giúp thực khách vừa thưởng thức món ăn vừa ngắm cảnh thiên nhiên sông nước miền Tây đầy thơ mộng.\n\nThực đơn đa dạng gồm các món gà nướng cơm lam, lẩu hải sản, gỏi bông bần và nhiều món ăn đặc trưng khác. Nổi bật là những món nướng thơm lừng kết hợp với rau sống và nước chấm đậm đà. Nhà hàng còn có khu vực dành riêng cho nhóm đông người, rất thích hợp tổ chức tiệc sinh nhật hoặc gặp gỡ công ty. Giá cả ở mức trung bình (100.000 – 300.000đ/người), dịch vụ ân cần và tốc độ phục vụ nhanh chóng. Nhà hàng mở cửa từ 9h sáng đến 23h tối, cả tuần lẫn cuối tuần. Bãi đậu xe rộng rãi, thuận tiện di chuyển cả ô tô lẫn xe máy. Với chất lượng món ăn tươi ngon cùng bầu không khí gần gũi, Ẩm thực Cầu Tre là lựa chọn hàng đầu cho ai muốn trải nghiệm không gian \"chill\" nhưng vẫn đậm chất truyền thống.', 'Nhà hàng', 'https://www.google.com/maps/place/%E1%BA%A8m+th%E1%BB%B1c+C%E1%BA%A7u+Tre+-+Tr%C3%A0+Vinh/@9.9187142,106.3465766,17z/data=!3m1!4b1!4m6!3m5!1s0x31a0114616ce6459:0xbdfffd5d07a3d2cc!8m2!3d9.9187089!4d106.3491515!16s%2Fg%2F11fkt7bf5t', 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(2, 1, 38, 'Mì cay Yagami Ẩm thực Thái - Nhật - Hàn', 'm-cay-yagami-m-th-c-th-i-nh-t-h-n', 'W8FX+GMC, Hòa Thuận, Trà Vinh', '(0270) 000 0000', '', '', 9.91871420, 106.34657660, 50000.00, 150000.00, '10:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc2.jpg', 'Mì Cay Yagami là thương hiệu ẩm thực Thái – Nhật – Hàn hàng đầu tại Việt Nam với hơn 10 năm kinh nghiệm trong ngành F&B. Sau 10 năm phát triển cùng hệ thống hơn 190 chi nhánh trải dài khắp miền Nam, từ Đồng Nai, Bình Dương, TP. Hồ Chí Minh cho đến Vĩnh Long, Mì Cay Yagami đã trở thành điểm đến quen thuộc của hàng triệu thực khách yêu thích hương vị Châu Á.\n\nMì Cay Yagami mang đến thực đơn phong phú với các món đặc trưng như Mì Cay Hàn Quốc đủ cấp độ cay theo yêu cầu, Lẩu Thái chua chua cay cay đậm đà, Sushi Nhật Bản tươi ngon, cùng hàng chục món ăn đa dạng từ ba nền ẩm thực nổi tiếng. Món ăn được chế biến từ nguyên liệu tươi mới mỗi ngày, đảm bảo chất lượng và an toàn vệ sinh thực phẩm. Không gian nhà hàng hiện đại, trẻ trung, phù hợp với giới trẻ và gia đình đi nhóm. Mức giá bình dân (50.000 – 150.000đ/người) phù hợp túi tiền học sinh, sinh viên cũng như người đi làm. Quán mở cửa từ 10h sáng đến 10h tối, có hỗ trợ giao hàng tận nơi và đặt bàn trước qua điện thoại. Bãi giữ xe an toàn, rộng rãi. Với hương vị độc đáo cùng phong cách phục vụ chuyên nghiệp, Mì Cay Yagami là điểm đến lý tưởng cho mọi bữa tiệc nhỏ, gặp gỡ bạn bè hoặc đơn giản là thỏa mãn cơn thèm đồ ăn Á Đông.', 'Quán ăn', NULL, 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(3, 1, 38, 'Quán Nhà Lá', 'qu-n-nh-l', 'Đường D5, QL53, Hòa Thuận, Trà Vinh', '(0270) 000 0000', '', '', 9.92713350, 106.34802860, 100000.00, 250000.00, '08:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc3.jpg', 'Ẩm Thực Gia Đình Nhà Lá – Nơi Những Bữa Ăn Trở Thành Ký Ức. Được xây dựng theo phong cách nhà vườn truyền thống với mái lá, cây xanh rợp bóng, Nhà Lá mang đến không gian ăn uống gần gũi thiên nhiên, mát mẻ và yên tĩnh giữa lòng thành phố Vĩnh Long. Nhà hàng có thiết kế mở, thoáng đãng, đầy gió và ánh sáng tự nhiên, rất thích hợp cho các buổi tụ họp gia đình hoặc tiệc liên hoan bạn bè. Mỗi khu vực ngồi được bố trí hài hòa, vừa mang lại sự riêng tư vừa gần gũi, tạo cảm giác thân thuộc như đang về thăm quê.\n\nThực đơn của Nhà Lá tập trung vào các món hải sản tươi sống, canh chua cá, lẩu các loại và đặc biệt là những món ăn gia đình đậm đà hương vị miền Tây. Nguyên liệu được chọn lọc kỹ càng, chế biến theo công thức truyền thống giữ trọn vị ngon tự nhiên. Giá cả hợp lý (100.000 – 250.000đ/người), phù hợp với nhiều đối tượng thực khách từ sinh viên đến gia đình. Nhà hàng mở cửa từ 8h sáng đến 10h tối hằng ngày, phục vụ cả bữa sáng, trưa và tối. Bãi đậu xe rộng, đội ngũ nhân viên nhiệt tình và chu đáo. Với không gian xanh mát cùng hương vị món ăn gia đình đậm đà, Nhà Lá là điểm đến lý tưởng cho những ai yêu thích sự bình dị, chân thật và muốn tận hưởng bữa ăn ngon giữa thiên nhiên.', 'Nhà hàng', 'https://www.google.com/maps/place/Qu%C3%A1n+Nh%C3%A0+L%C3%A1/@10.0198017,106.1346637,11z/data=!4m10!1m2!2m1!1zUXXDoW4gTmjDoCBMw6E!3m6!1s0x31a0175c0b71a1ed:0xc386685923289a68!8m2!3d9.9271335!4d106.3480286', 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(4, 1, 38, 'NHÀ HÀNG LÀNG BÈ', 'nh-h-ng-l-ng-b', '6b ấp Mỹ An, Phú Túc, Trà Vinh', '(0270) 000 0000', '', '', 10.32744500, 106.35147930, 50000.00, 200000.00, '08:00:00', '20:00:00', '/images/Dichvu/Am thuc/amthuc4.jpg', 'Khu du lịch Làng Bè là điểm đến sinh thái hấp dẫn tại Vĩnh Long, mang đến cho du khách không gian miệt vườn sông nước yên bình đậm chất Tây Nam Bộ. Khu vui chơi có diện tích rộng với nhiều hoạt động trải nghiệm dân gian như chèo xuồng ba lá, câu cá giải trí, thăm vườn trái cây, hay thưởng thức ca nhạc dân ca, đờn ca tài tử. Đặc biệt, nhà hàng trong khu du lịch phục vụ các món ăn đặc sản miền Tây vô cùng phong phú như cá lóc nướng trui, lẩu cá, gỏi củ hủ dừa, cá tai tượng chiên xù, và nhiều món chế biến từ cá bè tươi sống nuôi ngay tại chỗ.\n\nKhông gian ăn uống tại Làng Bè rất thoáng mát, các khu vực bàn ăn nằm sát bên dòng sông, được bao quanh bởi cây xanh và bóng mát tự nhiên, tạo cảm giác thư giãn tuyệt vời. Giá cả bình dân (50.000 – 200.000đ/người), phù hợp cho gia đình và nhóm bạn đi du lịch cuối tuần. Khu du lịch mở cửa từ 8h sáng đến 8h tối, có bãi đậu xe rộng rãi, khu vực vệ sinh sạch sẽ và dịch vụ chu đáo. Đây là lựa chọn lý tưởng cho những chuyến đi kết hợp vui chơi giải trí và thưởng thức ẩm thực đồng quê ngon khó cưỡng. Làng Bè không chỉ là điểm đến ăn uống mà còn là trải nghiệm văn hóa miệt vườn sống động và đáng nhớ.', 'Nhà hàng', 'https://www.google.com/maps/place/NH%C3%80+H%C3%80NG+L%C3%80NG+B%C3%88/@10.3274503,106.3489044,17z/data=!3m1!4b1!4m6!3m5!1s0x310aaf7f2375ef5b:0x4081ab8db7859ec7!8m2!3d10.327445!4d106.3514793', 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(5, 1, 38, 'Nhà hàng Sông Nước Miền Tây', 'nh-h-ng-s-ng-n-c-mi-n-t-y', '52-53/18 Ấp 3, Phú Túc, Trà Vinh', '(0270) 000 0000', '', '', 10.33142710, 106.37755850, 100000.00, 350000.00, '07:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc5.jpg', 'Nhà hàng Sông Nước Miền Tây là điểm đến lý tưởng để thưởng thức ẩm thực đồng quê đặc trưng của vùng Tây Nam Bộ. Nổi bật với không gian miệt vườn mát mẻ, nhà hàng mang đến trải nghiệm ẩm thực đậm chất sông nước hữu tình, bao quanh bởi cây xanh, ao cá và không khí trong lành. Đặc biệt, khu vực bàn ăn được bố trí sát bờ sông giúp thực khách vừa thưởng thức món ăn vừa thư giãn giữa thiên nhiên.\n\nThực đơn của Nhà hàng Sông Nước Miền Tây rất phong phú với các đặc sản nổi tiếng như cá lóc nướng trui thơm phức, lẩu mắm đậm đà hương vị đồng quê, gỏi củ hủ dừa giòn ngọt, cùng nhiều món chế biến từ hải sản tươi sống và thịt gia súc được nuôi tại địa phương. Mỗi món đều mang hương vị dân dã nhưng tinh tế, phản ánh chân thực ẩm thực sông nước miền Tây. Giá cả từ 100.000 – 350.000đ/người tùy món, phù hợp cho nhiều đối tượng thực khách từ gia đình, nhóm bạn đến các đoàn du lịch. Nhà hàng mở cửa từ 7h sáng đến 10h tối hằng ngày, phục vụ suốt cả tuần. Không gian rộng rãi, bãi đậu xe thuận tiện, phục vụ nhanh chóng và nhiệt tình. Với bầu không khí thân thiện cùng món ăn thơm ngon đậm đà, Sông Nước Miền Tây là điểm dừng chân lý tưởng cho chuyến du lịch khám phá Vĩnh Long.', 'Nhà hàng', 'https://www.google.com/maps/place/Nh%C3%A0+h%C3%A0ng+S%C3%B4ng+N%C6%B0%E1%BB%9Bc+Mi%E1%BB%81n+T%C3%A2y/@10.3314324,106.3749836,17z/data=!3m1!4b1!4m6!3m5!1s0x310aafa6e7676f63:0xfc533eddf142df99!8m2!3d10.3314271!4d106.3775585', 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(6, 1, 40, 'Ất Sửu Quán (Bò Nướng Ngói)', 't-s-u-qu-n-b-n-ng-ng-i', 'Bờ kè Cách Mạng Tháng 8, Trà Cú, Trà Vinh', '(0270) 000 0000', '', '', 9.69019030, 106.25733620, 150000.00, 300000.00, '10:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc6.jpg', 'Ất Sửu Quán tại Trà Vinh là điểm đến nổi bật với món đặc sản Bò Nướng Ngói trứ danh, thu hút đông đảo thực khách gần xa ghé thăm. Điểm nhấn của quán chính là phong cách thưởng thức độc đáo: thực khách sẽ được tự tay nướng những lát thịt bò tươi ngon trên tấm ngói nung nóng đỏ, giúp giữ trọn độ ngọt tự nhiên, độ mềm dai vừa phải của thịt bò. Khi ăn kèm với rau sống, bánh tráng và nước chấm đặc biệt, món ăn trở nên vô cùng hấp dẫn và khó quên.\n\nKhông gian quán thoáng mát, nằm ven bờ kè Cách Mạng Tháng 8, view nhìn ra sông rất đẹp vào buổi chiều tối. Ngoài món bò nướng ngói, thực đơn còn có bò cuốn lá lốt, bò tái chanh, bò nhúng dấm và nhiều món ăn khác đều được chế biến cầu kỳ và tinh tế. Giá cả từ 150.000 – 300.000đ/người, phù hợp cho buổi tụ tập bạn bè hoặc tiệc gia đình. Quán mở cửa từ 10h sáng đến 10h tối, phục vụ liên tục cả tuần. Không gian sạch sẽ, bàn ghế ngăn nắp, phục vụ nhiệt tình. Bãi đậu xe rộng, thuận tiện cho khách đi ô tô. Với chất lượng món ăn xuất sắc cùng trải nghiệm nướng ngói độc đáo, Ất Sửu Quán là lựa chọn hàng đầu cho những ai yêu thích thịt bò và muốn thử một phong cách ẩm thực mới mẻ ở Trà Vinh.', 'Nhà hàng', 'https://www.google.com/maps/place/%E1%BA%A4t+S%E1%BB%ADu+Qu%C3%A1n+(B%C3%B2+N%C6%B0%E1%BB%9Bng+Ng%C3%B3i)/@9.6901903,106.1049009,12z/data=!4m11!1m3!2m2!1zbmjDoCBow6BuZyB2xKluaCBsb25nIGPFqQ!6e5!3m6!1s0x31a03bc995c8f4c5:0xadcb50bfd6a6d04e!8m2!3d9.6901903!4d106.2573362', 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(10, 1, 38, 'Hải sản Lưu Luyến', 'h-i-s-n-l-u-luy-n', 'W8QJ+695, Võ Văn Kiệt, Nguyệt Hóa, Trà Vinh', '02943844779', '', '', 9.93801250, 106.33096930, 0.00, 0.00, '08:00:00', '23:00:00', '/images/Dichvu/Am thuc/amthuc7.jpg', 'Quán Hải sản Lưu Luyến là một điểm hẹn ẩm thực nổi tiếng và được yêu thích tại thành phố Trà Vinh. Quán nổi tiếng với không gian rộng rãi, thoáng mát, cực kỳ lý tưởng để thưởng thức hải sản tươi sống và các món ăn đặc sản miền sông nước.\n Điểm nổi bật \nKhông gian & Thiết kế: Quán sở hữu không gian rộng rãi, sạch sẽ và thoáng đãng, tạo cảm giác thư giãn cho thực khách khi tụ tập cùng bạn bè hoặc gia đình. \nẨm thực phong phú: Thực đơn của quán rất đa dạng, bao gồm:\nHải sản tươi sống: Chế biến đậm đà hương vị biển cả.\nĐặc sản Trà Vinh: Các món ăn bình dân, thanh nhẹ mang đậm dấu ấn miền sông nước. \nDịch vụ & Giá cả: Phục vụ nhiệt tình, không gian vệ sinh sạch sẽ với mức giá cả bình dân, phải chăng.', 'Nhà hàng', 'https://www.google.com/maps/place/H%E1%BA%A3i+s%E1%BA%A3n+L%C6%B0u+Luy%E1%BA%BFn/@9.9377212,106.3309129,14z/data=!4m6!3m5!1s0x31a0174cf8195a59:0xdcd081ec0ff7c761!8m2!3d9.9380125!4d106.3309693', 0, '2026-06-15 09:48:05', '2026-06-16 09:36:21', 'approved', NULL),
(11, 1, 38, 'Ẩm thực Thanh Nhàn', 'm-th-c-thanh-nh-n', '134 Đ. Đồng Khởi, Khóm 9, Trà Vinh', '', '', '', 9.91871420, 106.34657660, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc8.jpg', 'Thanh Nhàn - Ẩm thực quán là một trong những địa điểm ẩm thực sân vườn nổi bật, rất thích hợp cho các buổi họp mặt gia đình, liên hoan hoặc tiệc tùng, gặp gỡ bạn bè.\n1. Không gian và Phong cách\nKhông gian sân vườn rộng rãi: Điểm cộng lớn nhất của quán là khuôn viên xanh mát, thoáng đãng với nhiều cây cối, mang lại cảm giác thư thái và gần gũi với thiên nhiên như một khu sinh thái thu nhỏ. Bố trí linh hoạt: Quán có các khu vực bàn ăn ngoài trời thoáng mát để tận hưởng khí trời, đồng thời cũng có các khu vực chòi riêng tư hoặc không gian thích hợp cho các bữa tiệc gia đình, tiếp khách, họp nhóm.\n2. Ẩm thực và Thực đơn\nMón ăn đa dạng: Thực đơn của quán thiên về các món ăn gia đình, món nhậu bình dân cho đến các món hải sản, đặc sản đồng quê Nam Bộ. Các món ăn được chế biến đa dạng từ nướng, lẩu, hấp, xào... phù hợp với khẩu vị của đại đa số thực khách địa phương. Các món ăn tại quán thường được đánh giá cao nhờ khâu lựa chọn nguyên liệu tươi sống, cách nêm nếm đậm đà mang đậm chất miền Tây.\n3. Dịch vụ và Tiện ích\nPhục vụ nhiệt tình: Đội ngũ nhân viên thân thiện, nhanh nhẹn, đáp ứng tốt nhu cầu của các bàn tiệc đông người. Phù hợp đa dạng nhu cầu: Quán là điểm đến quen thuộc để tổ chức tiệc sinh nhật, liên hoan cuối năm, họp mặt bạn bè hay đơn giản là bữa cơm gia đình ấm cúng vào dịp cuối tuần.\n4. Thông tin liên hệ\nĐịa chỉ: Số 134 Đường Đồng Khởi, Khóm 9, Phường 6, Thành phố Trà Vinh (khu vực giáp ranh/tuyến quản lý thuế liên tỉnh). Giờ mở cửa: từ 08:00 đến 23:00 hằng ngày. Số điện thoại: 0388 722 069\nNếu bạn đang tìm kiếm một không gian ẩm thực rộng rãi, mát mẻ để thư giãn và thưởng thức các món ăn ngon cùng gia đình hay bạn bè, hãy chọn Thanh Nhàn - Ẩm thực quán!	', 'Quán ăn', 'https://www.google.com/maps/search/%E1%BA%A8m+th%E1%BB%B1c+Thanh+Nh%C3%A0n+/@9.9187142,106.3465766,17z', 0, '2026-06-15 09:48:06', '2026-06-16 09:36:21', 'approved', NULL),
(12, 1, 38, 'Ẩm Thực Ven Sông', 'm-th-c-ven-s-ng', '315 Phú Hòa, Long Đức, Trà Vinh', '0838780878', '', '', 9.95220670, 106.32134810, 50000.00, 200000.00, '09:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc9.jpg', 'Ẩm Thực Ven Sông tại Vĩnh Long là một địa điểm ăn uống lý tưởng dành cho những ai muốn tìm kiếm không gian ẩm thực sông nước mát mẻ, mang đậm phong cách miền Tây Nam Bộ.\nDưới đây là một số thông tin giới thiệu về quán:\nĐịa chỉ: 315 Phú Hòa, Long Đức, Thành phố Vĩnh Long, Vĩnh Long.\nThời gian mở cửa: 09:00 – 22:00 hàng ngày.\nSố điện thoại: +84 838 780 878\nĐúng như tên gọi, quán sở hữu vị trí đắc địa ngay ven sông, mang lại bầu không khí vô cùng thông thoáng, lộng gió và mát mẻ tự nhiên. Đây là nơi rất thích hợp cho các buổi họp mặt gia đình, tiệc sinh nhật, liên hoan, gặp gỡ bạn bè hoặc các đoàn khách du lịch muốn dừng chân nghỉ ngơi và thưởng thức đặc sản xứ sở sông nước.\nMenu của quán tập trung vào các món ăn dân dã, đậm đà hương vị đồng quê miền Tây, được chế biến từ nguồn nguyên liệu tươi sống:\nCác món cá sông, đặc sản đồng ruộng như cá lóc nướng, các món lẩu mắm, lẩu cua đồng.\nThực đơn đa dạng từ các món khai vị nhẹ nhàng, món xào, nướng cho đến hải sản và các món lẩu nóng hổi, phù hợp cho bữa cơm gia đình lẫn các buổi tiệc lai rai.', 'Nhà hàng', 'https://www.google.com/maps/place/%E1%BA%A8m+Th%E1%BB%B1c+Ven+S%C3%B4ng/@9.952212,106.3187732,17z/data=!3m1!4b1!4m6!3m5!1s0x31a011bde6bd5297:0x1a251ed8ac5fe0bb!8m2!3d9.9522067!4d106.3213481', 0, '2026-06-15 09:48:06', '2026-06-16 09:36:21', 'approved', NULL),
(13, 1, 39, 'Bò Tơ Giồng Trôm', 'b-t-gi-ng-tr-m', '131 Trương Vĩnh Trọng, Khu Phố 1, Giồng Trôm, Bến Tre', '0919208068', '', '', 10.15174580, 106.51582570, 100000.00, 200000.00, '08:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc10.jpg', 'Địa chỉ: Đường tỉnh 885, Ấp 5, Xã Bình Thành, Huyện Giồng Trôm, Tỉnh Bến Tre.\nThời gian mở cửa: Thường đón khách từ sáng đến tối muộn, phục vụ linh hoạt theo thời gian diễn ra sự kiện.\nNơi đây sở hữu diện tích rộng rãi, thoáng đãng với hai khu vực chính biệt lập nhưng bổ trợ cho nhau. Khu vực nhà hàng sân vườn mang phong cách bình dị, gần gũi với thiên nhiên, thích hợp cho các bữa ăn gia đình hay gặp gỡ bạn bè. Khu vực trung tâm hội nghị và tiệc cưới được đầu tư thiết kế hiện đại, sảnh tiệc rộng với sức chứa lớn, trang bị hệ thống âm thanh, ánh sáng và sân khấu chỉn chu để phục vụ cho các ngày vui trọng đại, lễ kỷ niệm hay hội nghị doanh nghiệp.\nThực đơn tại đây rất phong phú, trong đó điểm nhấn chính là các món ăn được chế biến từ bò tơ tươi ngon, chuẩn vị. Thịt bò được tuyển chọn kỹ lưỡng để đảm bảo độ mềm, ngọt tự nhiên, biến tấu thành nhiều món ăn hấp dẫn như bò tơ tơ lụi sả, bò nướng tảng, các món lẩu đuôi bò, lòng bò. Bên cạnh đặc sản bò tơ, nhà hàng còn phục vụ đa dạng các món ăn đậm chất đồng quê Nam Bộ và các thực đơn tiệc cưới phong phú từ bình dân đến cao cấp, đáp ứng khẩu vị của nhiều đối tượng khách hàng.\nVới lợi thế không gian rộng và bãi đỗ xe thoải mái, trung tâm cung cấp dịch vụ trọn gói từ khâu trang trí gia tiên, điều phối tiệc cưới, chuẩn bị thực đơn cho đến phục vụ. Đội ngũ nhân viên tại đây được đánh giá là nhiệt tình, nhanh nhẹn, góp phần mang lại sự chỉn chu cho các sự kiện quan trọng của người dân địa phương và các khu vực lân cận.', 'Nhà hàng', 'https://www.google.com/maps/place/B%C3%B2+T%C6%A1+Gi%E1%BB%93ng+Tr%C3%B4m+-+Trung+T%C3%A2m+H%E1%BB%99i+Ngh%E1%BB%8B,+S%E1%BB%B1+Ki%E1%BB%87n+Ti%E1%BB%87c+C%C6%B0%E1%BB%9Bi+Gi%E1%BB%93ng+Tr%C3%B4m/@10.1517511,106.5132508,17z', 0, '2026-06-15 09:48:06', '2026-06-16 09:36:21', 'approved', NULL),
(14, 1, 39, 'Mai Rừng Quán', 'mai-r-ng-qu-n', 'Đường Phó Cơ Điều, Phường 3, Thành phố Vĩnh Long', '0944944443', '', '', 10.04461800, 106.58469130, 50000.00, 300000.00, '08:00:00', '12:00:00', '/images/Dichvu/Am thuc/amthuc11.jpg', 'Địa chỉ: Đường Phó Cơ Điều, Phường 3, Thành phố Vĩnh Long, Vĩnh Long (nằm trong khu vực trung tâm sầm uất nhưng quán vẫn giữ được không gian thoải mái).\nThời gian mở cửa: Phục vụ chủ yếu từ trưa đến tối muộn, rất thích hợp cho các buổi họp mặt lai rai.\nQuán sở hữu không gian rộng rãi, thoáng mát và bình dân, mang lại cảm giác gần gũi, thoải mái cho thực khách ngay khi bước vào. Đây là địa điểm lý tưởng dành cho các buổi tụ tập bạn bè, liên hoan gia đình, đồng nghiệp hoặc những ai muốn tìm một nơi nhẹ nhàng để thưởng thức các món ăn ngon sau giờ làm việc.\nThực đơn của Mai Rừng Quán rất đa dạng, nổi bật với các món ăn được chế biến từ nguồn nguyên liệu tươi ngon của vùng đồng quê và đặc sản rừng núi:\nCác món ăn từ thịt gà, thịt heo rừng, ếch, lươn được biến tấu đa dạng qua các hình thức nướng lu, xào lăn, chiên mắm hay hấp hành, mang lại hương vị đậm đà, bắt mồi.\nThực đơn các món lẩu nóng hổi, thanh ngọt từ nước dùng kết hợp với các loại rau đồng nội đặc trưng của miền Tây, tạo nên điểm nhấn khó quên cho bữa ăn.\nQuán nhận được nhiều phản hồi tích cực từ khách hàng nhờ phong cách phục vụ bình dân, chu đáo, món ăn được chế biến nhanh và giá cả rất phải chăng, phù hợp với túi tiền của đa số thực khách tại địa phương.', 'Nhà hàng', 'https://www.google.com/maps/place/Mai+R%E1%BB%ABng+Qu%C3%A1n/@10.044618,106.5821164,17z/data=!3m1!4b1!4m6!3m5!1s0x319ff927c5537727:0x9e679bc56a469c2e!8m2!3d10.0446127!4d106.5846913', 0, '2026-06-15 09:48:06', '2026-06-16 09:36:21', 'approved', NULL),
(15, 1, 39, 'Quán Nhậu Tường San', 'qu-n-nh-u-t-ng-san', 'Kp An Bình, Tân Thủy, Bến Tre', '0977554527', '', '', 10.04461800, 106.58211640, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc12.jpg', 'Địa chỉ: Nằm trên trục đường Nguyễn Văn Thiệt, Phường 3, Thành phố Vĩnh Long, Vĩnh Long.\nThời gian mở cửa: Phục vụ chủ yếu từ chiều tối cho đến đêm muộn.\nQuán sở hữu không gian mở, thiết kế theo phong cách bình dân, rộng rãi và vô cùng thoáng đãng. Điểm cộng lớn của quán là bầu không khí nhộn nhịp, thoải mái, rất thích hợp cho các buổi tụ tập bạn bè xem bóng đá, liên hoan gia đình, họp mặt đồng nghiệp sau những giờ làm việc căng thẳng.\nMenu tại Tường San rất phong phú với các món mồi bén, được chế biến từ nhiều nguồn nguyên liệu quen thuộc như hải sản, bò, heo, gà và các loại cá đồng:\nCác món nướng và xào lăn tại đây được nêm nếm đậm đà, dậy mùi thơm đặc trưng, rất thích hợp để dùng kèm với các loại đồ uống lạnh.\nCác món lẩu hải sản, lẩu thái hay lẩu xí quách với nước dùng ngọt thanh, đồ nhúng tươi ngon luôn là lựa chọn hàng đầu của thực khách để kết thúc bữa tiệc.\nQuán được lòng khách hàng địa phương nhờ tốc độ lên món khá nhanh, nhân viên phục vụ nhiệt tình và mức giá bình dân, hợp lý, phù hợp với túi tiền của đại đa số người lao động cũng như các bạn sinh viên.\n', 'Quán ăn', 'https://www.google.com/maps/search/Qu%C3%A1n+Nh%E1%BA%ADu+T%C6%B0%E1%BB%9Dng+San/@10.044618,106.5821164,17z', 0, '2026-06-15 09:48:07', '2026-06-16 09:36:21', 'approved', NULL),
(16, 1, 38, 'Bánh xèo Long Bình 2', 'b-nh-x-o-long-b-nh-2', 'Đường Đồng Khởi, Khóm 8, Trà Vinh', '0939946116', '', '', 9.91982080, 106.34318020, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc13.jpg', 'Địa chỉ: Đường Quốc lộ 53, Ấp Long Bình, Xã Long Phước, Huyện Long Hồ, Vĩnh Long (nằm dọc theo tuyến đường lớn, khá dễ tìm đối với khách đi đường dài).\nThời gian mở cửa: Phục vụ chủ yếu từ trưa cho đến chiều tối.\nGiá cả: trung bình 50.000 - 100.000/món\nQuán sở hữu không gian rộng rãi, thoáng mát, mang phong cách bình dị và mộc mạc của vùng sông nước. Sảnh ăn được bố trí nhiều bàn ghế để phục vụ các đoàn khách du lịch lớn hoặc các gia đình tụ họp vào dịp cuối tuần. Khu vực đổ bánh xèo thường được đặt ở phía trước hoặc không gian mở, giúp thực khách có thể tận mắt quan sát quy trình tráng bánh khéo léo của người thợ.\nĐiểm làm nên thương hiệu của Bánh xèo Long Bình 2 chính là sự chăm chút trong từng chiếc bánh và nguyên liệu đi kèm:\nVỏ bánh được tráng mỏng, rìa bánh giòn rụm, có màu vàng ươm đẹp mắt từ nghệ và thơm béo mùi nước cốt dừa nhưng không hề bị ngấy dầu mỡ.\nPhần nhân bánh rất đầy đặn, đa dạng với các lựa chọn như tôm, thịt ba chỉ, tép đồng kết hợp cùng giá đỗ, đậu xanh nứt vỏ, hoặc củ hủ dừa, măng non tùy theo mùa để tạo độ ngọt tự nhiên.\nNước chấm và rau rừng chính là linh hồn của món ăn tại đây. Quán phục vụ một rổ rau vô cùng phong phú với hàng chục loại rau sống và rau rừng đặc trưng của miền Tây như lá cách, đọt xoài, cải xanh, xà lách, rau thơm. Nước mắm chua ngọt được pha chế vừa vị, có thêm đồ chua từ củ cải trắng và cà rốt bào sợi, kích thích vị giác của người ăn.\nQuán nhận được nhiều đánh giá tích cực nhờ chất lượng món ăn ổn định qua nhiều năm, tốc độ phục vụ nhanh nhẹn ngay cả khi đông khách và mức giá cả phải chăng, xứng đáng với chất lượng.', 'Quán ăn', 'https://www.google.com/maps/place/B%C3%A1nh+x%C3%A8o+Long+B%C3%ACnh+2/@9.9198261,106.3406053,17z/data=!3m1!4b1!4m6!3m5!1s0x31a01776355162af:0xf630a2147e7e214b!8m2!3d9.9198208!4d106.3431802', 0, '2026-06-15 09:48:07', '2026-06-16 09:36:21', 'approved', NULL),
(17, 1, 38, 'Bún Nem Nướng Thủy Triều', 'b-n-nem-n-ng-th-y-tri-u', '04 Phạm Ngũ Lão, Trà Vinh', '0949127368', '', '', 9.95058820, 106.34064670, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc14.jpg', 'Địa chỉ: Nằm trên đường Nguyễn Huệ, Phường 2, Thành phố Vĩnh Long, Vĩnh Long (khu vực gần chợ hoặc các trường học, rất thuận tiện cho việc di chuyển).\nThời gian mở cửa: Thường phục vụ từ sáng sớm cho đến chiều tối, thích hợp cho cả bữa sáng năng lượng hay bữa xế nhẹ nhàng.\nQuán được thiết kế theo phong cách bình dân, mộc mạc và luôn được dọn dẹp sạch sẽ. Không gian tuy không quá lớn nhưng cách bố trí bàn ghế gọn gàng, tạo cảm giác thoải mái cho thực khách khi ngồi thưởng thức tại chỗ. Ngoài ra, quán cũng có lượng khách mua mang về rất đông nhờ tốc độ chuẩn bị món nhanh chóng.\nSức hút của tô bún tại đây đến từ sự kết hợp hài hòa giữa các nguyên liệu tươi ngon được chuẩn bị trong ngày:\nNem nướng được làm từ thịt heo tươi, quết kỹ để đạt độ dai ngon tự nhiên, nêm nếm gia vị đậm đà rồi xiên que nướng trên bếp than hồng. Nem khi chín có màu vàng nâu bắt mắt, dậy mùi thơm phức, khi ăn cảm nhận được vị ngọt của thịt và không bị khô.\nMột tô bún đầy đủ thường bao gồm bún tươi, nem nướng cắt nhỏ, chả giò chiên giòn rụm, cùng với các loại rau sống xắt nhỏ như xà lách, rau thơm, dưa leo và đồ chua từ củ cải, cà rốt.\nNước chấm đi kèm là nước mắm chua ngọt được pha chế khéo léo theo khẩu vị miền Tây, có độ sánh nhẹ, thêm chút ớt băm cay nồng giúp kích thích vị giác và làm tăng thêm độ đậm đà cho món ăn.', 'Quán ăn', 'https://www.google.com/maps/place/B%C3%BAn+Nem+N%C6%B0%E1%BB%9Bng+Th%E1%BB%A7y+Tri%E1%BB%81u/@9.9505935,106.3380718,17z/data=!3m1!4b1!4m6!3m5!1s0x31a010a8abf10b7f:0x13d1c41845747dcf!8m2!3d9.9505882!4d106.3406467', 0, '2026-06-15 09:48:07', '2026-06-16 09:36:21', 'approved', NULL),
(18, 1, 38, 'Quán Nem Nướng Ngã Ba Đuôi Cá', 'quan-nem-nuong-nga-ba-duoi-ca', 'W8QJ+695, Võ Văn Kiệt, Nguyệt Hóa, Trà Vinh', '0944146685', '', '', 9.95322540, 106.34071980, 0.00, 0.00, '22:00:00', '21:00:00', '/images/Dichvu/Am thuc/amthuc15.jpg', 'Quán Nem Nướng Ngã Ba Đuôi Cá là một địa chỉ ẩm thực quen thuộc, đặc biệt nổi tiếng với những ai yêu thích món nem nướng truyền thống tại khu vực Trà Vinh (nằm giáp ranh và rất gần với Vĩnh Long).\nDưới đây là một số thông tin giới thiệu về quán:\nĐịa chỉ: 110 Phạm Ngũ Lão, Khóm 4, Phường 1, Thành phố Trà Vinh, Tỉnh Trà Vinh.\nThời gian mở cửa: 10:00 – 21:00 hàng ngày.\nSố điện thoại: +84 944 146 685\nQuán mang phong cách bình dân, mộc mạc và gần gũi. Không gian tuy không quá cầu kỳ nhưng đổi lại luôn sạch sẽ, bàn ghế sắp xếp gọn gàng, tạo cảm giác thoải mái cho thực khách khi ngồi ăn tại chỗ. Nhờ vị trí nằm gần khu vực ngã ba quen thuộc nên quán rất dễ tìm và là điểm dừng chân hợp lý cho cả người dân địa phương lẫn khách vãng lai.\nMón ăn làm nên tên tuổi của quán chính là mẹt nem nướng được chuẩn bị chỉn chu:\nNem nướng được chế biến theo công thức gia truyền, thịt heo được quết khéo léo để giữ độ dai ngon tự nhiên, nướng xèo xèo trên bếp than mang lại mùi thơm ngào ngạt và màu sắc vàng nâu bắt mắt. Khi ăn, nem có vị ngọt béo hài hòa, không bị khô.\nMột phần nem nướng đầy đủ sẽ đi kèm với bánh tráng cuốn, bún tươi, bánh tráng chiên giòn rụm và một rổ rau sống tươi xanh, đa dạng các loại rau thơm, dưa leo, khế chua hoặc chuối chát xắt mỏng.\nNước chấm tại đây được pha chế theo công thức riêng, có độ sánh mịn, vị béo thơm vừa vặn, kết hợp cùng chút ớt xay cay nồng làm tăng thêm hương vị đậm đà khi cuốn thịt và rau.\nQuán nhận được mức đánh giá khá tốt 4.1/5 sao trên hệ thống Google Maps nhờ chất lượng món ăn ổn định, hương vị vừa miệng và phong cách phục vụ nhanh nhẹn, thân thiện.', 'Quán ăn', NULL, 0, '2026-06-15 09:48:07', '2026-06-15 09:48:07', 'approved', NULL),
(19, 1, 38, 'Ngô Đồng Garden', 'ng-ng-garden', '43 Lê Lợi, Trà Vinh', '0939730799', '', '', 9.95322540, 106.34071980, 0.00, 0.00, '10:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc16.jpg', 'Địa chỉ: 43 Lê Lợi, Thành phố Trà Vinh (nằm ở khu vực trung tâm, rất thuận tiện cho thực khách di chuyển từ các vùng lân cận).\nThời gian mở cửa: 10:00 – 22:00 hàng ngày.\nSố điện thoại: +84 939 730 799\nKhông gian quán\nNgô Đồng Garden sở hữu không gian sân vườn rộng rãi, thoáng mát đúng như tên gọi của mình. Quán được thiết kế theo phong cách hiện đại, kết hợp hài hòa giữa cây xanh và các góc check-in lên hình cực lung linh. Đây là địa điểm rất thích hợp cho các buổi tiệc gia đình, họp mặt bạn bè, tổ chức sinh nhật, liên hoan hoặc cho các cặp đôi muốn tìm kiếm một không gian lãng mạn, thư thái vào buổi tối.\nẨm thực đặc trưng\nMenu của quán rất phong phú, phục vụ đầy đủ từ các món ăn gia đình, món nhậu lai rai cho đến các món nước và ăn vặt hiện đại:\nCác món ăn được chế biến từ hải sản tươi sống, thịt heo, gà, bò với cách nêm nếm đậm đà, trang trí bắt mắt, phù hợp với khẩu vị của thực khách mọi lứa tuổi.\nBên cạnh thực đơn món ăn, quán còn có menu đồ uống đa dạng, được pha chế chỉn chu để phục vụ khách hàng đến thư giãn, trò chuyện.\nQuán nhận được mức đánh giá cực kỳ cao 4.8/5 sao trên hệ thống Google Maps nhờ không gian đẹp, đồ ăn ngon, sạch sẽ và phong cách phục vụ chu đáo, nhiệt tình của đội ngũ nhân viên. Nếu bạn đang tìm kiếm một không gian sân vườn thoáng đãng để dùng bữa và chụp ảnh đẹp thì Ngô Đồng Garden là một lựa chọn không nên bỏ qua.', 'Quán ăn', 'https://www.google.com/maps/place/Qu%C3%A1n+Nem+N%C6%B0%E1%BB%9Bng+Ng%C3%A3+Ba+%C4%90u%C3%B4i+C%C3%A1/@9.9532307,106.3381449,17z/data=!3m1!4b1!4m6!3m5!1s0x31a010a67afb09a1:0x4b648ab8cc70f4eb!8m2!3d9.9532254!4d106.3407198', 0, '2026-06-15 09:48:07', '2026-06-15 09:48:07', 'approved', NULL),
(20, 1, 38, 'Quán Hồng Trúc', 'quan-hong-truc', 'Khóm 1, Hòa Thuận, Trà Vinh', '0908747828', '', '', 9.94258270, 106.34780430, 0.00, 0.00, '08:00:00', '21:00:00', '/images/Dichvu/Am thuc/amthuc17.jpg', 'Thông tin chung\nĐịa chỉ: Khóm 1, Hòa Thuận, Châu Thành, Trà Vinh\nThời gian mở cửa: 07:30 – 21:30 hàng ngày.\nSố điện thoại: +84 908 747 828\nQuán sở hữu không gian mở mang phong cách bình dân, mộc mạc và rất thoáng đãng. Với lối thiết kế rộng rãi, bàn ghế sắp xếp đơn giản nhưng sạch sẽ, nơi đây tạo cảm giác gần gũi và thoải mái cho thực khách. Đây là địa điểm rất thích hợp để tụ họp bạn bè lai rai, tổ chức các bữa ăn gia đình ấm cúng hoặc liên hoan nhỏ sau giờ làm việc.\nThực đơn của Quán khá phong phú, tập trung vào các món ăn đồng quê, hải sản bình dân và các món mồi nhậu bắt vị:\nCác món ăn được chế biến từ nguồn nguyên liệu tươi sống như gà, heo, ếch, lươn và các loại cá đồng, được nêm nếm đậm đà theo đúng khẩu vị miền Tây sông nước.\nCác món nướng, chiên mắm, xào lăn hay các loại lẩu nóng hổi với nước dùng thanh ngọt, ăn kèm rau sống tươi xanh luôn là lựa chọn yêu thích của thực khách khi đến quán.\nQuán nhận được mức đánh giá khá tốt 4.1/5 sao trên hệ thống Google Maps nhờ hương vị món ăn vừa miệng, tốc độ lên món nhanh nhẹn và mức giá cả bình dân, hợp lý với túi tiền của mọi đối tượng khách hàng.', 'Nhà hàng', 'https://www.google.com/maps/place/Qu%C3%A1n+H%E1%BB%93ng+Tr%C3%BAc/@9.942588,106.3452294,17z', 0, '2026-06-15 09:48:08', '2026-06-15 09:48:08', 'approved', NULL),
(23, 1, 38, 'Quán Hoa Bằng Lăng', 'quan-hoa-bang-lang', '136 Đường 30 Tháng 4, Long Đức, Trà Vinh', '0799422906', '', '', 9.95345890, 106.31861320, 20000.00, 60000.00, '08:00:00', '12:00:00', '/images/Dichvu/Am thuc/amthuc18.jpg', 'Địa chỉ: 136 Đường 30 Tháng 4, Long Đức, Thành phố Vĩnh Long, Vĩnh Long.\nThời gian mở cửa: Mở cửa cả ngày.\nSố điện thoại: +84 799 422 906\nKhông gian quán\nQuán sở hữu phong cách mộc mạc, gần gũi và thoáng đãng nhờ vị trí nằm trên trục đường lớn. Thiết kế không gian mang lại cảm giác thoải mái, dễ chịu, không quá cầu kỳ nhưng lại rất ấm cúng. Nơi đây phù hợp cho nhiều nhu cầu khác nhau của thực khách, từ việc ngồi nhâm nhi ly cà phê sáng đọc báo, gặp gỡ đối tác công việc, cho đến những buổi tối tụ họp tán gẫu cùng gia đình và bạn bè dưới ánh đèn lung linh.\nThực đơn đồ uống\nMenu của quán tập trung vào các dòng thức uống truyền thống và hiện đại, đáp ứng tốt khẩu vị của nhiều lứa tuổi:\nCác món cà phê mang hương vị đậm đà, đặc trưng như cà phê đen đá, cà phê sữa đá pha phin truyền thống hoặc các dòng cà phê pha máy thơm nhẹ.\nBên cạnh cà phê, quán còn phục vụ đa dạng các loại trà trái cây nhiệt đới thanh mát, sinh tố, nước ép nguyên chất bổ dưỡng và các dòng trà sữa béo ngậy đi kèm nhiều loại topping cho giới trẻ.\nQuán nhận được phản hồi rất tích cực từ thực khách nhờ chất lượng đồ uống ổn định, giá cả bình dân, hợp lý cùng phong cách phục vụ thân thiện, chu đáo và nhanh nhẹn của đội ngũ nhân viên.', 'Nhà hàng', 'https://www.google.com/maps/place/Qu%C3%A1n+Hoa+B%E1%BA%B1ng+L%C4%83ng/@9.9534642,106.3160383,17z', 0, '2026-06-15 09:48:09', '2026-06-16 09:36:21', 'approved', NULL),
(37, 3, 24, 'Khu Du Lịch Huỳnh Kha', 'khu-du-lich-huynh-kha', 'Chu Văn An, Xóm Long Bình, Long Đức, Vĩnh Long, Việt Nam', '02946282828', NULL, NULL, 9.95685950, 106.34643350, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Diemthamquan/Diemthamquan1.jpg', 'Tọa lạc tại khu phố Long Bình, Phường 4, Thành phố Trà Vinh, Khu du lịch sinh thái Huỳnh Kha là một tổ hợp vui chơi, giải trí và ẩm thực có quy mô lớn, được đầu tư hiện đại. Nơi đây sở hữu khuôn viên rộng rãi với thảm thực vật xanh mướt, những hồ nước nhân tạo uốn lượn và hệ thống tiểu cảnh được chăm chút kỹ lưỡng. Đối với người dân địa phương và du khách, Huỳnh Kha như một \"lá phổi xanh\" ngay lòng thành phố, nơi lý tưởng để trốn khỏi sự ồn ào, tất bật của cuộc sống thường nhật.', NULL, 'https://www.google.com/maps/place/Khu+Du+L%E1%BB%8Bch+Hu%E1%BB%B3nh+Kha/@9.9568648,106.3438586,17z/data=!3m1!4b1!4m6!3m5!1s0x31a01bf295720ac3:0x92e8d1ff5d420a3c!8m2!3d9.9568595!4d106.3464335', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(38, 3, 28, 'Khu Du Lịch Cộng Đồng Cồn Chim', 'con-chim', 'Road, Hòa Minh, Vĩnh Long, Việt Nam', '0355732342', NULL, NULL, 9.92027120, 106.42325570, 0.00, 0.00, '07:00:00', '18:00:00', '/images/Diemthamquan/Diemthamquan2.jpg', 'Nằm giữa dòng sông Cổ Chiên thơ mộng thuộc xã Hòa Minh, huyện Châu Thành, Cồn Chim là một điểm sáng nổi bật của mô hình du lịch \"thuận thiên\" – tức là làm du lịch dựa vào tự nhiên, bảo vệ môi trường và giữ gìn văn hóa bản địa. Điểm đặc biệt nhất của Cồn Chim là người dân sống theo quy luật một mùa ngọt, một mùa mặn. Vào mùa nước ngọt, họ trồng lúa sạch không hóa chất; vào mùa nước mặn, họ nuôi tôm, cua tự nhiên.', NULL, 'https://www.google.com/maps/place/Khu+Du+L%E1%BB%8Bch+C%E1%BB%99ng+%C4%90%E1%BB%93ng+C%E1%BB%93n+Chim/@9.9202765,106.4206808,17z/data=!3m1!4b1!4m6!3m5!1s0x31a019f554e864c1:0x71e074844a0759bf!8m2!3d9.9202712!4d106.4232557', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(39, 3, 26, 'Di Tích Ao Bà Om', 'ao-ba-om', '68 Nguyễn Du, khóm 3, Nguyệt Hóa, Vĩnh Long, Việt Nam', NULL, NULL, NULL, 9.91809470, 106.30416150, 0.00, 0.00, '06:00:00', '18:00:00', '/images/Diemthamquan/Diemthamquan3.jpg', 'Ao Bà Om, còn được gọi là Ao Vuông, là một thắng cảnh danh tiếng bậc nhất và là niềm tự hào của người dân Trà Vinh. Nằm tại khóm 3, phường 8, thành phố Trà Vinh, di tích này là một hồ nước phẳng lặng, trong xanh, có hình dáng gần như một hình vuông hoàn hảo. Bao bọc xung quanh ao là những gò cát nhấp nhô với hàng trăm cây sao, cây dầu cổ thụ hàng trăm năm tuổi. Những bộ rễ cây khổng lồ, trồi lên khỏi mặt đất, uốn lượn thành vô số hình thù kỳ dị, độc đáo, tạo nên một không gian vô cùng huyền bí và cổ kính.', NULL, 'https://www.google.com/maps/place/Di+T%C3%ADch+Ao+B%C3%A0+Om/@9.9177076,106.3014906,17z/data=!4m10!1m2!2m1!1zRGkgVMOtY2ggQW8gQsOgIE9t!3m6!1s0x31a0170030507f83:0x44487e4f53103976!8m2!3d9.9180947!4d106.3041615', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(40, 3, 26, 'Chùa Khmer chùa Âng', 'chua-ang', 'QL53, khóm 13, Nguyệt Hóa, Vĩnh Long, Việt Nam', NULL, NULL, NULL, 9.91569340, 106.30358420, 0.00, 0.00, '06:00:00', '18:00:00', '/images/Diemthamquan/Diemthamquan4.jpg', 'Nằm ngay sát cạnh thắng cảnh Ao Bà Om, Chùa Âng (tên đầy đủ là Wat Angkor Raigore Rangsey) là một trong những ngôi chùa cổ kính, độc đáo và có kiến trúc đẹp nhất trong hệ thống hơn 140 ngôi chùa Khmer tại Trà Vinh. Được xây dựng từ nhiều thế kỷ trước, Chùa Âng mang đậm dấu ấn kiến trúc Angkor cổ điển của người Khmer, kết hợp hài hòa với cảnh quan thiên nhiên của những hàng cây cổ thụ xung quanh.', NULL, 'https://www.google.com/maps/place/Ch%C3%B9a+Khmer+ch%C3%B9a+%C3%82ng/@9.9156987,106.3010093,17z/data=!3m1!4b1!4m6!3m5!1s0x31a0171e96d21c49:0x6dd641af069fdf6b!8m2!3d9.9156934!4d106.3035842', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(41, 3, 29, 'KDL sinh thái Làng Xanh Bến Tre', 'lang-xanh-ben-tre', '111D, ĐT883, An Phú Thạnh, Phú Túc, Vĩnh Long 930000, Việt Nam', '0948008289', NULL, NULL, 10.31515150, 106.31462350, 50000.00, 150000.00, '08:00:00', '17:00:00', '/images/Diemthamquan/Diemthamquan5.jpg', 'Tọa lạc tại huyện Châu Thành, tỉnh Bến Tre, Khu du lịch sinh thái Làng Xanh là một điểm đến vui chơi giải trí mang đậm hơi thở đồng quê Nam Bộ nhưng được quy hoạch rất bài bản và hiện đại. Với diện tích rộng lớn, không gian nơi đây ngập tràn sắc xanh của những vườn dừa, ao sen và cây ăn trái mát mẻ. Đây là địa điểm được các hội nhóm, công ty và gia đình cực kỳ yêu thích để tổ chức các hoạt động dã ngoại, team building tràn ngập tiếng cười.', NULL, 'https://www.google.com/maps/place/KDL+sinh+th%C3%A1i+L%C3%A0ng+Xanh+B%E1%BA%BFn+Tre/@10.3151568,106.3120486,17z/data=!3m1!4b1!4m6!3m5!1s0x310aa5d8c156bb53:0x99a2e1ffb9b7aa21!8m2!3d10.3151515!4d106.3146235', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(42, 3, 25, 'Bảo Tàng Tỉnh Bến Tre', 'bao-tang-ben-tre', '69MF+XMF, Hùng Vương, An Hội, Vĩnh Long, Việt Nam', '02753822735', NULL, NULL, 10.23493950, 106.37415710, 0.00, 0.00, '07:30:00', '16:30:00', '/images/Diemthamquan/Diemthamquan6.jpg', 'Nằm bên bờ sông Bến Tre thơ mộng thuộc trung tâm thành phố, Bảo tàng tỉnh Bến Tre là một công trình kiến trúc mang đậm phong cách Pháp cổ kính, trang nhã. Ngôi nhà này ban đầu là dinh thự của các viên chức thời Pháp thuộc, sau đó được sử dụng làm nơi trưng bày, lưu giữ các giá trị lịch sử, văn hóa của quê hương xứ dừa. Khuôn viên bảo tàng rộng rãi, rợp bóng mát của những cây cổ thụ và trưng bày nhiều hiện vật thể khối lớn như máy bay, pháo binh quân sự.', NULL, 'https://www.google.com/maps/place/B%E1%BA%A3o+Ta%CC%80ng+Ti%CC%89nh+B%E1%BA%BFn+Tre/@10.2349448,106.3715822,17z/data=!3m1!4b1!4m6!3m5!1s0x310aa85c3fc00d0f:0x1107cf4ce5f17a01!8m2!3d10.2349395!4d106.3741571', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(43, 3, 29, 'Di tích Đạo Dừa', 'dao-dua', 'ấp Tân Vinh, Phú Túc, Vĩnh Long, Việt Nam', NULL, NULL, NULL, 10.33609740, 106.36928220, 0.00, 0.00, '07:00:00', '17:00:00', '/images/Diemthamquan/Diemthamquan7.jpg', 'Di tích Đạo Dừa nằm trong khuôn viên của Khu du lịch Cồn Phụng, thuộc xã Tân Thạch, huyện Châu Thành, tỉnh Bến Tre. Đây là nơi lưu giữ những dấu tích kiến trúc độc đáo gắn liền với cuộc đời của ông Nguyễn Thành Nam (1910 - 1990), người đã sáng lập ra giáo phái Đạo Dừa (hòa đồng các tôn giáo và chủ trương mang lại hòa bình) vào giữa thế kỷ 20. Khu di tích này mang một màu sắc văn hóa - tôn giáo vô cùng kỳ lạ và độc đáo.', NULL, 'https://www.google.com/maps/place/Di+t%C3%ADch+%C4%90%E1%BA%A1o+D%E1%BB%ABa/@10.3361027,106.3667073,17z/data=!3m1!4b1!4m6!3m5!1s0x310aaf98856d53b3:0x19cb5085ec80b587!8m2!3d10.3360974!4d106.3692822', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(44, 3, 4, 'Văn Thánh Miếu Vĩnh Long', 'van-thanh-mieu', 'Làng Long Hồ, Trần Phú, thành phố Vĩnh Long, Vĩnh Long, Việt Nam', NULL, NULL, NULL, 10.24266230, 105.98435890, 0.00, 0.00, '07:00:00', '17:00:00', '/images/Diemthamquan/Diemthamquan8.jpg', 'Nằm bên bờ sông Long Hồ thơ mộng thuộc phường 4, thành phố Vĩnh Long, Văn Thánh Miếu Vĩnh Long là một trong ba Văn Thánh Miếu được xây dựng đầu tiên ở vùng đất Nam Kỳ (cùng với Biên Hòa và Gia Định). Được khởi công xây dựng vào thế kỷ 19 dưới sự đề xướng của quan Kinh lược sứ Phan Thanh Giản và Đốc học Nguyễn Thông, công trình này được ví như \"Quốc Tử Giám của miền Tây\".', NULL, 'https://www.google.com/maps/place/V%C4%83n+Tha%CC%81nh+Mi%C3%AA%CC%81u+v%C4%A9nh+long/@10.2426676,105.981784,17z/data=!3m1!4b1!4m6!3m5!1s0x310a9d39a9d6c89d:0x9012f6966d03aba7!8m2!3d10.2426623!4d105.9843589', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(45, 3, 12, 'Đền Thờ Phạm Hùng', 'den-pham-hung', 'ấp Long Thuận A, Long Hồ, Vĩnh Long, Việt Nam', '02703834286', NULL, NULL, 10.22436050, 105.98906810, 0.00, 0.00, '07:00:00', '17:00:00', '/images/Diemthamquan/Diemthamquan9.jpg', 'Đền thờ Chủ tịch Hội đồng Bộ trưởng Phạm Hùng tọa lạc tại xã Long Phước, huyện Long Hồ, tỉnh Vĩnh Long, ngay bên dòng sông Long Hồ êm đềm. Đây là công trình văn hóa – lịch sử có ý nghĩa vô cùng to lớn, được xây dựng để tưởng nhớ và tri ân những công lao vĩ đại của đồng chí Phạm Hùng – một người con ưu tú của quê hương Vĩnh Long, một nhà lãnh đạo kiên trung, xuất sắc của Đảng và Cách mạng Việt Nam.', NULL, 'https://www.google.com/maps/search/%C4%90%E1%BB%81n+Th%E1%BB%9D+Ph%E1%BA%A1m+H%C3%B9ng/@10.2426676,105.981784,17z', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(46, 3, 18, 'Điểm du lịch lò gạch vườn táo Phước Lợi', 'lo-gach-phuoc-loi', '63C8+CQ7, Nhơn Phú, Vĩnh Long, Việt Nam', '0902205045', NULL, NULL, 10.22104210, 106.06691110, 20000.00, 50000.00, '08:00:00', '17:00:00', '/images/Diemthamquan/Diemthamquan10.jpg', 'Nằm tại khu vực Mang Thít, Vĩnh Long – nơi được mệnh danh là \"vương quốc lò gạch\" của miền Tây, Điểm du lịch lò gạch vườn táo Phước Lợi là một mô hình tham quan mới lạ, kết hợp độc đáo giữa di sản làng nghề truyền thống và du lịch sinh thái miệt vườn. Đến đây, bạn sẽ bị choáng ngợp bởi khung cảnh những lò gạch nung rêu phong có kiến trúc tựa như những tòa tháp cổ rực rỡ sắc cam dưới ánh nắng mặt trời.', NULL, 'https://www.google.com/maps/place/%C4%90i%E1%BB%83m+du+l%E1%BB%8Bch+l%C3%B2+g%E1%BA%A1ch+v%C6%B0%E1%BB%9Dn+t%C3%A1o+Ph%C6%B0%E1%BB%9Bc+L%E1%BB%A3i/@10.2210474,106.0643362,17z', 0, NULL, '2026-06-16 09:36:21', 'approved', NULL),
(58, 2, 26, 'GO! Trà Vinh', 'go-tra-vinh', '414 Võ Nguyên Giáp, Nguyệt Hóa, Trà Vinh', '0778708129', NULL, NULL, 9.92325870, 106.32853310, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Mua sam/muasam1.jpg', 'GO! Trà Vinh là trung tâm thương mại hiện đại quy mô lớn, tích hợp mua sắm, ăn uống, vui chơi giải trí đáp ứng nhu cầu mọi lứa tuổi.', NULL, 'https://www.google.com/maps/place/GO!+Tr%C3%A0+Vinh/@9.923264,106.3259582,17z', 0, NULL, NULL, 'approved', NULL),
(59, 2, 26, 'Siêu thị Co.opmart Trà Vinh', 'coopmart-tra-vinh', 'Đ. Nguyễn Đáng, Khóm 9, Trà Vinh', '0886500707', NULL, NULL, 9.92406490, 106.34052700, 0.00, 0.00, '07:00:00', '21:30:00', '/images/Dichvu/Mua sam/muasam2.jpg', 'Co.opmart Trà Vinh là điểm mua sắm thân quen gắn với đời sống hàng ngày của người dân. Hàng hóa đa dạng, chất lượng đảm bảo an toàn vệ sinh thực phẩm.', NULL, 'https://www.google.com/maps/search/Si%C3%AAu+th%E1%BB%8B+Co.opmart+Tr%C3%A0+Vinh/@9.923264,106.3259582,17z', 0, NULL, NULL, 'approved', NULL),
(60, 2, 26, 'Vincom Plaza Trà Vinh', 'vincom-plaza-tra-vinh', '24 Nguyễn Thị Minh Khai, Trà Vinh', '0947051636', NULL, NULL, 9.93595730, 106.33691900, 0.00, 0.00, '09:30:00', '21:30:00', '/images/Dichvu/Mua sam/muasam3.jpg', 'Vincom Plaza Trà Vinh là biểu tượng mua sắm hiện đại, quy tụ thương hiệu thời trang, mỹ phẩm, khu ẩm thực và rạp chiếu phim.', NULL, 'https://www.google.com/maps/search/Vincom+Plaza+Tr%C3%A0+Vinh/@9.9240702,106.3379521,17z', 0, NULL, NULL, 'approved', NULL),
(61, 2, 25, 'Trung tâm thương mại SENSE CITY', 'sense-city-ben-tre', '26A Trần Quốc Tuấn, An Hội, Bến Tre', '02753833999', NULL, NULL, 10.24134810, 106.37653380, 0.00, 0.00, '08:30:00', '22:00:00', '/images/Dichvu/Mua sam/muasam4.jpg', 'Sense City Bến Tre là trung tâm thương mại giải trí quy mô lớn, kết hợp mua sắm, ẩm thực, rạp phim và khu vui chơi trẻ em.', NULL, 'https://www.google.com/maps/search/Trung+t%C3%A2m+th%C6%B0%C6%A1ng+m%E1%BA%A1i+SENSE+CITY/@9.9359626,106.3343441,17z', 0, NULL, NULL, 'approved', NULL),
(62, 2, 24, 'Siêu thị Điện máy XANH', 'dien-may-xanh-tra-vinh', 'Ấp Sa Bình, Long Đức, Trà Vinh', '1900232461', NULL, NULL, 9.95853510, 106.33979030, 0.00, 0.00, '07:30:00', '20:30:00', '/images/Dichvu/Mua sam/muasam5.jpg', 'Điện máy Xanh chuyên phân phối tivi, tủ lạnh, máy giặt, điện thoại. Chính sách bảo hành rõ ràng, giao hàng lắp đặt tận nơi.', NULL, 'https://www.google.com/maps/search/Si%C3%AAu+th%E1%BB%8B+%C4%90i%E1%BB%87n+m%C3%A1y+XANH/@10.4323793,105.9240268,10z', 0, NULL, NULL, 'approved', NULL),
(63, 2, 26, 'WinMart Vincom Trà Vinh', 'winmart-vincom-tra-vinh', 'TTTM VinCom Plaza, Phường 2, Trà Vinh', '0559701593', NULL, NULL, 9.93592500, 106.33648000, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Mua sam/muasam6.jpg', 'WinMart tại Vincom Plaza cung cấp thực phẩm tươi sống, nông sản an toàn và đồ gia dụng. Không gian sạch sẽ, thanh toán nhanh chóng.', NULL, 'https://www.google.com/maps/search/WinMart+Vincom+Tr%C3%A0+Vinh/@10.4323793,105.9240268,10z', 0, NULL, NULL, 'approved', NULL),
(64, 2, 27, 'Siêu Thị Dừa Bến Tre', 'sieu-thi-dua-ben-tre', 'SHP1.06 Nguyễn Thị Định, Phú Tân, Bến Tre', '0907328728', NULL, NULL, 10.25668830, 106.37860180, 0.00, 0.00, '08:00:00', '17:00:00', '/images/Dichvu/Mua sam/muasam7.jpg', 'Siêu Thị Dừa chuyên đặc sản từ cây dừa Bến Tre: kẹo dừa, bánh phồng, dầu dừa, mỹ phẩm thiên nhiên và đồ thủ công mỹ nghệ.', NULL, 'https://www.google.com/maps/place/Si%C3%AAu+Th%E1%BB%8B+D%E1%BB%ABa+B%E1%BA%BFn+Tre/@10.2566936,106.3760269,17z', 0, NULL, NULL, 'approved', NULL),
(65, 2, 25, 'Siêu thị điện máy nội thất Chợ Lớn', 'dien-may-cho-lon-ben-tre', '171D Võ Nguyên Giáp, Bến Tre', '02753835868', NULL, NULL, 10.24242310, 106.34823810, 0.00, 0.00, '08:30:00', '21:30:00', '/images/Dichvu/Mua sam/muasam8.jpg', 'Điện máy nội thất Chợ Lớn Bến Tre chuyên điện tử, điện lạnh, đồ gia dụng và nội thất cao cấp. Thường xuyên ưu đãi trả góp linh hoạt.', NULL, 'https://www.google.com/maps/place/Si%C3%AAu+thi%CC%A3+%C4%91i%C3%AA%CC%A3n+ma%CC%81y+n%C3%B4%CC%A3i+th%C3%A2%CC%81t+Ch%C6%A1%CC%A3+L%C6%A1%CC%81n/@10.2424284,106.3456632,17z', 0, NULL, NULL, 'approved', NULL),
(66, 2, 25, 'DreamKids Bến Tre', 'dreamkids-ben-tre', 'Sense City, An Hội, Bến Tre', '02753838833', NULL, NULL, 10.24187010, 106.37673810, 0.00, 0.00, '09:00:00', '21:30:00', '/images/Dichvu/Mua sam/muasam9.jpg', 'DreamKids là khu vui chơi trong nhà quy mô lớn cho trẻ em tại Bến Tre. Nhà phao, nhà bóng, cầu trượt và các góc chơi giáo dục sáng tạo.', NULL, 'https://www.google.com/maps/place/DreamKids+B%E1%BA%BFn+Tre/@10.2418754,106.3741632,17z', 0, NULL, NULL, 'approved', NULL),
(67, 2, 27, 'Trung Tâm Mua Sắm Điện Máy Nguyễn Kim Bến Tre', 'nguyen-kim-ben-tre', '336 A1 Đại lộ Đồng Khởi, Phú Tân, Bến Tre', '02757306768', NULL, NULL, 10.25406530, 106.37059110, 0.00, 0.00, '08:00:00', '22:00:00', '/images/Dichvu/Mua sam/muasam10.jpg', 'Nguyễn Kim Bến Tre là trung tâm bán lẻ điện máy uy tín tại Đại lộ Đồng Khởi. Đa dạng sản phẩm, dịch vụ trả góp và bảo hành chuyên nghiệp.', NULL, 'https://www.google.com/maps/place/Trung+T%C3%A2m+Mua+S%E1%BA%AFm+%C4%90i%E1%BB%87n+M%C3%A1y+Nguy%E1%BB%85n+Kim+B%E1%BA%BFn+Tre/@10.2540706,106.3680162,17z', 0, NULL, NULL, 'approved', NULL),
(68, 1, 38, 'T-Cup_Drink & Food', 't-cup-drink-food', '10.016 khu vực Trà Vinh', '(0270) 000 0000', NULL, NULL, 10.01615950, 106.40250940, 0.00, 0.00, '07:00:00', '22:00:00', '/images/Dichvu/Am thuc/amthuc19.jpg', 'T-Cup Drink & Food là chuỗi đồ uống và ăn nhẹ hiện đại, phục vụ các loại trà, cà phê, smoothie và các món ăn nhẹ thơm ngon. Không gian trẻ trung, phù hợp cho giới trẻ.', 'Café', 'https://www.google.com/maps/place/T-Cup_Drink+%26+Food/@10.0161648,106.3999345,17z', 0, NULL, NULL, 'approved', NULL),
(69, 1, 38, 'Cà phê 30 tháng tư', 'ca-phe-30-thang-tu', 'Khu vực Trà Vinh', '(0270) 000 0000', NULL, NULL, 10.01616480, 106.39993450, 0.00, 0.00, '06:00:00', '23:00:00', '/images/Dichvu/Am thuc/amthuc20.jpg', 'Cà phê 30 tháng tư là điểm hẹn cà phê quen thuộc của người dân địa phương. Không gian thoáng mát, thức uống đa dạng từ cà phê truyền thống đến các loại nước ép tươi.', 'Café', 'https://www.google.com/maps/search/C%C3%A0+ph%C3%AA+30+th%C3%A1ng+t%C6%B0/@10.0161648,106.3999345,17z', 0, NULL, NULL, 'approved', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_galleries`
--

CREATE TABLE `location_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `location_galleries`
--

INSERT INTO `location_galleries` (`id`, `location_id`, `image_path`, `created_at`, `updated_at`) VALUES
(469, 37, '/images/Diemthamquan/Diemthamquan1_1.jpg', NULL, NULL),
(470, 37, '/images/Diemthamquan/Diemthamquan1_2.jpg', NULL, NULL),
(471, 37, '/images/Diemthamquan/Diemthamquan1_3.jpg', NULL, NULL),
(472, 38, '/images/Diemthamquan/Diemthamquan2_1.jpg', NULL, NULL),
(473, 38, '/images/Diemthamquan/Diemthamquan2_2.jpg', NULL, NULL),
(474, 38, '/images/Diemthamquan/Diemthamquan2_3.jpg', NULL, NULL),
(475, 39, '/images/Diemthamquan/Diemthamquan3_1.jpg', NULL, NULL),
(476, 39, '/images/Diemthamquan/Diemthamquan3_2.jpg', NULL, NULL),
(477, 39, '/images/Diemthamquan/Diemthamquan3_3.jpg', NULL, NULL),
(478, 40, '/images/Diemthamquan/Diemthamquan4_1.jpg', NULL, NULL),
(479, 40, '/images/Diemthamquan/Diemthamquan4_2.jpg', NULL, NULL),
(480, 40, '/images/Diemthamquan/Diemthamquan4_3.jpg', NULL, NULL),
(481, 41, '/images/Diemthamquan/Diemthamquan5_1.jpg', NULL, NULL),
(482, 41, '/images/Diemthamquan/Diemthamquan5_2.jpg', NULL, NULL),
(483, 41, '/images/Diemthamquan/Diemthamquan5_3.jpg', NULL, NULL),
(484, 42, '/images/Diemthamquan/Diemthamquan6_1.jpg', NULL, NULL),
(485, 42, '/images/Diemthamquan/Diemthamquan6_2.jpg', NULL, NULL),
(486, 42, '/images/Diemthamquan/Diemthamquan6_3.jpg', NULL, NULL),
(487, 43, '/images/Diemthamquan/Diemthamquan7_1.jpg', NULL, NULL),
(488, 43, '/images/Diemthamquan/Diemthamquan7_2.jpg', NULL, NULL),
(489, 43, '/images/Diemthamquan/Diemthamquan7_3.jpg', NULL, NULL),
(490, 44, '/images/Diemthamquan/Diemthamquan8_1.jpg', NULL, NULL),
(491, 44, '/images/Diemthamquan/Diemthamquan8_2.jpg', NULL, NULL),
(492, 44, '/images/Diemthamquan/Diemthamquan8_3.jpg', NULL, NULL),
(493, 45, '/images/Diemthamquan/Diemthamquan9_1.jpg', NULL, NULL),
(494, 45, '/images/Diemthamquan/Diemthamquan9_2.jpg', NULL, NULL),
(495, 45, '/images/Diemthamquan/Diemthamquan9_3.jpg', NULL, NULL),
(496, 46, '/images/Diemthamquan/Diemthamquan10_1.jpg', NULL, NULL),
(497, 46, '/images/Diemthamquan/Diemthamquan10_2.jpg', NULL, NULL),
(498, 46, '/images/Diemthamquan/Diemthamquan10_3.jpg', NULL, NULL),
(499, 58, '/images/Dichvu/Mua sam/muasam1_1.jpg', NULL, NULL),
(500, 58, '/images/Dichvu/Mua sam/muasam1_2.jpg', NULL, NULL),
(501, 58, '/images/Dichvu/Mua sam/muasam1_3.jpg', NULL, NULL),
(502, 59, '/images/Dichvu/Mua sam/muasam2_1.jpg', NULL, NULL),
(503, 59, '/images/Dichvu/Mua sam/muasam2_2.jpg', NULL, NULL),
(504, 59, '/images/Dichvu/Mua sam/muasam2_3.jpg', NULL, NULL),
(505, 60, '/images/Dichvu/Mua sam/muasam3_1.jpg', NULL, NULL),
(506, 60, '/images/Dichvu/Mua sam/muasam3_2.jpg', NULL, NULL),
(507, 60, '/images/Dichvu/Mua sam/muasam3_3.jpg', NULL, NULL),
(508, 61, '/images/Dichvu/Mua sam/muasam4_1.jpg', NULL, NULL),
(509, 61, '/images/Dichvu/Mua sam/muasam4_2.jpg', NULL, NULL),
(510, 61, '/images/Dichvu/Mua sam/muasam4_3.jpg', NULL, NULL),
(511, 62, '/images/Dichvu/Mua sam/muasam5_1.jpg', NULL, NULL),
(512, 62, '/images/Dichvu/Mua sam/muasam5_2.jpg', NULL, NULL),
(513, 62, '/images/Dichvu/Mua sam/muasam5_3.jpg', NULL, NULL),
(514, 63, '/images/Dichvu/Mua sam/muasam6_1.jpg', NULL, NULL),
(515, 63, '/images/Dichvu/Mua sam/muasam6_2.jpg', NULL, NULL),
(516, 63, '/images/Dichvu/Mua sam/muasam6_3.jpg', NULL, NULL),
(517, 64, '/images/Dichvu/Mua sam/muasam7_1.jpg', NULL, NULL),
(518, 64, '/images/Dichvu/Mua sam/muasam7_2.jpg', NULL, NULL),
(519, 64, '/images/Dichvu/Mua sam/muasam7_3.jpg', NULL, NULL),
(520, 65, '/images/Dichvu/Mua sam/muasam8_1.jpg', NULL, NULL),
(521, 65, '/images/Dichvu/Mua sam/muasam8_2.jpg', NULL, NULL),
(522, 65, '/images/Dichvu/Mua sam/muasam8_3.jpg', NULL, NULL),
(523, 66, '/images/Dichvu/Mua sam/muasam9_1.jpg', NULL, NULL),
(524, 66, '/images/Dichvu/Mua sam/muasam9_2.jpg', NULL, NULL),
(525, 66, '/images/Dichvu/Mua sam/muasam9_3.jpg', NULL, NULL),
(526, 67, '/images/Dichvu/Mua sam/muasam10_1.jpg', NULL, NULL),
(527, 67, '/images/Dichvu/Mua sam/muasam10_2.jpg', NULL, NULL),
(528, 67, '/images/Dichvu/Mua sam/muasam10_3.jpg', NULL, NULL),
(529, 1, '/images/Dichvu/Am thuc/amthuc1_1.webp', NULL, NULL),
(530, 1, '/images/Dichvu/Am thuc/amthuc1_2.webp', NULL, NULL),
(531, 2, '/images/Dichvu/Am thuc/amthuc2_1.jpg', NULL, NULL),
(532, 2, '/images/Dichvu/Am thuc/amthuc2_2.jpg', NULL, NULL),
(533, 2, '/images/Dichvu/Am thuc/amthuc2_3.jpg', NULL, NULL),
(534, 3, '/images/Dichvu/Am thuc/amthuc3_1.jpg', NULL, NULL),
(535, 3, '/images/Dichvu/Am thuc/amthuc3_2.jpg', NULL, NULL),
(536, 4, '/images/Dichvu/Am thuc/amthuc4_1.jpg', NULL, NULL),
(537, 4, '/images/Dichvu/Am thuc/amthuc4_2.jpg', NULL, NULL),
(538, 4, '/images/Dichvu/Am thuc/amthuc4_3.jpg', NULL, NULL),
(539, 5, '/images/Dichvu/Am thuc/amthuc5_1.jpg', NULL, NULL),
(540, 5, '/images/Dichvu/Am thuc/amthuc5_2.jpg', NULL, NULL),
(541, 5, '/images/Dichvu/Am thuc/amthuc5_3.jpg', NULL, NULL),
(542, 6, '/images/Dichvu/Am thuc/amthuc6_1.jpg', NULL, NULL),
(543, 6, '/images/Dichvu/Am thuc/amthuc6_2.jpg', NULL, NULL),
(544, 6, '/images/Dichvu/Am thuc/amthuc6_3.jpg', NULL, NULL),
(545, 10, '/images/Dichvu/Am thuc/amthuc7_1.jpg', NULL, NULL),
(546, 10, '/images/Dichvu/Am thuc/amthuc7_2.jpg', NULL, NULL),
(547, 10, '/images/Dichvu/Am thuc/amthuc7_3.jpg', NULL, NULL),
(548, 11, '/images/Dichvu/Am thuc/amthuc8_1.jpg', NULL, NULL),
(549, 11, '/images/Dichvu/Am thuc/amthuc8_2.jpg', NULL, NULL),
(550, 11, '/images/Dichvu/Am thuc/amthuc8_3.jpg', NULL, NULL),
(551, 12, '/images/Dichvu/Am thuc/amthuc9_1.jpg', NULL, NULL),
(552, 12, '/images/Dichvu/Am thuc/amthuc9_2.jpg', NULL, NULL),
(553, 12, '/images/Dichvu/Am thuc/amthuc9_3.jpg', NULL, NULL),
(554, 13, '/images/Dichvu/Am thuc/amthuc10_1.jpg', NULL, NULL),
(555, 13, '/images/Dichvu/Am thuc/amthuc10_2.jpg', NULL, NULL),
(556, 14, '/images/Dichvu/Am thuc/amthuc11_1.jpg', NULL, NULL),
(557, 14, '/images/Dichvu/Am thuc/amthuc11_2.jpg', NULL, NULL),
(558, 14, '/images/Dichvu/Am thuc/amthuc11_3.jpg', NULL, NULL),
(559, 15, '/images/Dichvu/Am thuc/amthuc12_1.jpg', NULL, NULL),
(560, 15, '/images/Dichvu/Am thuc/amthuc12_2.jpg', NULL, NULL),
(561, 15, '/images/Dichvu/Am thuc/amthuc12_3.jpg', NULL, NULL),
(562, 16, '/images/Dichvu/Am thuc/amthuc13_1.jpg', NULL, NULL),
(563, 16, '/images/Dichvu/Am thuc/amthuc13_2.jpg', NULL, NULL),
(564, 16, '/images/Dichvu/Am thuc/amthuc13_3.jpg', NULL, NULL),
(565, 17, '/images/Dichvu/Am thuc/amthuc14_1.jpg', NULL, NULL),
(566, 17, '/images/Dichvu/Am thuc/amthuc14_2.jpg', NULL, NULL),
(567, 17, '/images/Dichvu/Am thuc/amthuc14_3.jpg', NULL, NULL),
(568, 18, '/images/Dichvu/Am thuc/amthuc15_1.jpg', NULL, NULL),
(569, 18, '/images/Dichvu/Am thuc/amthuc15_2.jpg', NULL, NULL),
(570, 18, '/images/Dichvu/Am thuc/amthuc15_3.jpg', NULL, NULL),
(571, 19, '/images/Dichvu/Am thuc/amthuc16_1.jpg', NULL, NULL),
(572, 19, '/images/Dichvu/Am thuc/amthuc16_2.jpg', NULL, NULL),
(573, 19, '/images/Dichvu/Am thuc/amthuc16_3.jpg', NULL, NULL),
(574, 20, '/images/Dichvu/Am thuc/amthuc17_1.jpg', NULL, NULL),
(575, 20, '/images/Dichvu/Am thuc/amthuc17_2.jpg', NULL, NULL),
(576, 20, '/images/Dichvu/Am thuc/amthuc17_3jpg.jpg', NULL, NULL),
(577, 23, '/images/Dichvu/Am thuc/amthuc18_1.jpg', NULL, NULL),
(578, 23, '/images/Dichvu/Am thuc/amthuc18_2.jpg', NULL, NULL),
(579, 23, '/images/Dichvu/Am thuc/amthuc18_3.jpg', NULL, NULL),
(580, 68, '/images/Dichvu/Am thuc/Amthuc19_1.png', NULL, NULL),
(581, 68, '/images/Dichvu/Am thuc/amthuc19_2.jpg', NULL, NULL),
(582, 68, '/images/Dichvu/Am thuc/Amthuc19_3.png', NULL, NULL),
(583, 69, '/images/Dichvu/Am thuc/Amthuc20_1.png', NULL, NULL),
(584, 69, '/images/Dichvu/Am thuc/amthuc20_2.jpg', NULL, NULL),
(585, 69, '/images/Dichvu/Am thuc/amthuc20_3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_scores`
--

CREATE TABLE `location_scores` (
  `location_id` int(11) NOT NULL,
  `total_reviews` int(11) DEFAULT 0,
  `avg_rating` decimal(3,2) DEFAULT 0.00,
  `five_star_count` int(11) DEFAULT 0,
  `popularity_score` decimal(8,4) DEFAULT 0.0000,
  `highlight_score` decimal(8,4) DEFAULT 0.0000,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `location_scores`
--

INSERT INTO `location_scores` (`location_id`, `total_reviews`, `avg_rating`, `five_star_count`, `popularity_score`, `highlight_score`, `updated_at`) VALUES
(1, 45, 4.60, 28, 32.8800, 28.4200, '2026-06-21 06:53:48'),
(2, 38, 4.40, 20, 27.9200, 22.2800, '2026-06-21 06:53:48'),
(3, 52, 4.70, 35, 37.8100, 34.0400, '2026-06-21 06:53:48'),
(4, 41, 4.50, 25, 30.0500, 25.7000, '2026-06-21 06:53:48'),
(5, 35, 4.50, 22, 25.8500, 22.4000, '2026-06-21 06:53:48'),
(6, 30, 4.30, 18, 22.2900, 18.8600, '2026-06-21 06:53:48'),
(10, 28, 4.40, 17, 20.9200, 17.7800, '2026-06-21 06:53:48'),
(11, 22, 4.20, 12, 16.6600, 13.4400, '2026-06-21 06:53:48'),
(12, 60, 4.80, 45, 43.4400, 41.4600, '2026-06-21 06:53:48'),
(13, 25, 4.30, 15, 18.7900, 15.8600, '2026-06-21 06:53:48'),
(14, 18, 4.10, 9, 13.8300, 10.7200, '2026-06-21 06:53:48'),
(15, 20, 4.20, 11, 15.2600, 12.3400, '2026-06-21 06:53:48'),
(16, 55, 4.90, 42, 39.9700, 38.4800, '2026-06-21 06:53:48'),
(17, 32, 4.40, 20, 23.7200, 20.4800, '2026-06-21 06:53:48'),
(18, 27, 4.30, 16, 20.1900, 16.9600, '2026-06-21 06:53:48'),
(19, 15, 4.00, 7, 11.7000, 8.8000, '2026-06-21 06:53:48'),
(20, 48, 4.70, 33, 35.0100, 31.8400, '2026-06-21 06:53:48'),
(23, 21, 4.20, 12, 15.9600, 13.1400, '2026-06-21 06:53:48'),
(37, 1, 5.00, 1, 2.2000, 1.8000, '2026-06-21 06:53:48'),
(38, 58, 4.70, 42, 42.0100, 39.3400, '2026-06-21 06:53:48'),
(39, 1, 5.00, 1, 2.2000, 1.8000, '2026-06-21 06:53:48'),
(40, 1, 4.00, 0, 1.9000, 1.1000, '2026-06-21 06:53:48'),
(41, 45, 4.60, 32, 32.8800, 30.4200, '2026-06-21 06:53:48'),
(42, 38, 4.40, 26, 27.9200, 25.2800, '2026-06-21 06:53:48'),
(43, 42, 4.50, 30, 30.7500, 28.5000, '2026-06-21 06:53:48'),
(44, 35, 4.30, 22, 25.7900, 22.3600, '2026-06-21 06:53:48'),
(45, 30, 4.20, 18, 22.2600, 18.8400, '2026-06-21 06:53:48'),
(46, 1, 4.00, 0, 1.9000, 1.1000, '2026-06-21 06:53:48'),
(58, 70, 4.50, 48, 50.3500, 45.9000, '2026-06-21 06:53:48'),
(59, 62, 4.40, 40, 44.7200, 39.4800, '2026-06-21 06:53:48'),
(60, 55, 4.60, 38, 39.8800, 36.4200, '2026-06-21 06:53:48'),
(61, 43, 4.30, 28, 31.3900, 27.7600, '2026-06-21 06:53:48'),
(62, 38, 4.40, 25, 27.9200, 24.7800, '2026-06-21 06:53:48'),
(63, 35, 4.30, 22, 25.7900, 22.3600, '2026-06-21 06:53:48'),
(64, 28, 4.50, 19, 20.9500, 18.8000, '2026-06-21 06:53:48'),
(65, 25, 4.20, 14, 18.7600, 15.3400, '2026-06-21 06:53:48'),
(66, 48, 4.70, 35, 35.0100, 32.8400, '2026-06-21 06:53:48'),
(67, 32, 4.40, 21, 23.7200, 20.9800, '2026-06-21 06:53:48'),
(68, 19, 4.10, 9, 14.5300, 11.0200, '2026-06-21 06:53:48'),
(69, 14, 3.90, 6, 10.9700, 7.9800, '2026-06-21 06:53:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_tag`
--

CREATE TABLE `location_tag` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_utility`
--

CREATE TABLE `location_utility` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `utility_id` bigint(20) UNSIGNED NOT NULL
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimedia`
--

CREATE TABLE `multimedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('video','album_image') NOT NULL DEFAULT 'video',
  `media_url` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 5,
  `comment` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `location_id`, `user_id`, `user_name`, `rating`, `comment`, `image_path`, `created_at`) VALUES
(2, 39, '8', 'Nhat User', 5, 'Ao Bà Om, một địa điểm xanh ở TP. Trà Vinh với ao sen lớn, nhiều cây cổ thụ xanh.', 'data:image/jpeg;base64,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', '2026-06-19 06:57:37');
INSERT INTO `reviews` (`id`, `location_id`, `user_id`, `user_name`, `rating`, `comment`, `image_path`, `created_at`) VALUES
(3, 37, '8', 'Nhat User', 5, 'Vô đây từ lúc lần đầu học trường chuyên năm 2015. Nơi gắn bó nhiều kỷ niệm với cảnh đẹp, chụp ảnh tết hằng năm cùng người thân gia đình.', NULL, '2026-06-19 07:04:24'),
(4, 40, '8', 'Nhat User', 4, 'Chùa Âng (Wat Angkorajaborey) được xây dựng vào tk X. Trải qua hơn k năm, các cột gỗ to và cao được lấy từ CPC về để dựng chùa đến giờ vẫn còn tốt, theo như nhà sư trụ trì thì chùa đã thay 1 cột nhưng chỉ được 1 tgian là hỏng lại phải thay mới. Hiện tại vị sư trụ trì là Thạch Sok Xane đã ngoài 70 tuổi. Từ cổng vào là tòa chính điện, bên phải là là nơi học và phía sau là nơi ở của sư trụ trì và các nhà như khác. Bên trái có nhiều căn nhà lá nhỏ có thể là nơi các vị sư tu hành. Trong chùa có nhiều cây to và cao khá mát mẻ. Đường trước cổng chùa hơi nhỏ và không có bãi đỗ xe oto nên phải để xe oto ngoài đường dọc theo bờ tường của chùa. Qua cổng chùa rẽ trái là bãi để xe máy. Phía trước chùa là bảo tàng Khmer, đi qua chùa sâu vào bên trong là Ao Bà Om.', NULL, '2026-06-19 07:15:04'),
(5, 46, '8', 'Nhat User', 4, 'Đây là chú Lợi và lò gạch của nhà chú. Chú đã chuyển đổi từ việc sản xuất gạch hàng chục năm qua sang du lịch sinh thái để giữ gìn nét đẹp văn hoá di sản của Măng Thít, Vĩnh Long cũng như giảm thiểu tác động ô nhiễm môi trường do các lò gạch gây ra. Nhà chú có 3 lò gạch và là địa điểm tham quan chụp hình check-in siêu siêu đẹp. Hiện nay chú còn trồng thêm nho và táo cũng như mở rộng thêm một số loại hình du lịch, tham quan và trải nghiệm mới. Mọi người đi du lịch Vĩnh Long nhớ ghé tham quan lò gạch của chú với giá vé tham quan siêu siêu rẻ chỉ bằng một ly caffee take away thui.', NULL, '2026-06-19 07:16:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_widgets`
--

CREATE TABLE `system_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_location`
--

CREATE TABLE `tour_location` (
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `step_order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_activity`
--

CREATE TABLE `user_activity` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `activity_type` enum('view','search','review','click') NOT NULL DEFAULT 'view',
  `search_query` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_activity`
--

INSERT INTO `user_activity` (`id`, `user_id`, `location_id`, `activity_type`, `search_query`, `created_at`) VALUES
(1, '8', 39, 'view', NULL, '2026-06-19 06:56:50'),
(2, '8', 37, 'view', NULL, '2026-06-19 07:03:52'),
(3, '8', 40, 'view', NULL, '2026-06-19 07:08:27'),
(4, '8', 46, 'view', NULL, '2026-06-19 07:08:46'),
(5, '8', 1, 'view', NULL, '2026-06-19 07:10:16'),
(6, '8', 41, 'view', NULL, '2026-06-19 07:12:45'),
(7, '8', 40, 'view', NULL, '2026-06-19 07:12:51'),
(8, '8', 44, 'view', NULL, '2026-06-19 07:15:35'),
(9, '8', 46, 'view', NULL, '2026-06-19 07:15:47'),
(10, '8', 39, 'click', NULL, '2026-06-20 09:53:59'),
(11, '8', 39, 'view', NULL, '2026-06-20 09:53:59'),
(12, '8', 2, 'view', NULL, '2026-06-25 10:48:46'),
(13, '8', 2, 'view', NULL, '2026-06-25 10:48:46'),
(14, '8', 39, 'view', NULL, '2026-06-25 10:49:22'),
(15, '8', 39, 'view', NULL, '2026-06-25 10:49:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `utilities`
--

CREATE TABLE `utilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Chỉ mục cho bảng `location_galleries`
--
ALTER TABLE `location_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Chỉ mục cho bảng `location_scores`
--
ALTER TABLE `location_scores`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `idx_popularity` (`popularity_score`),
  ADD KEY `idx_highlight` (`highlight_score`);

--
-- Chỉ mục cho bảng `location_tag`
--
ALTER TABLE `location_tag`
  ADD PRIMARY KEY (`location_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `location_utility`
--
ALTER TABLE `location_utility`
  ADD PRIMARY KEY (`location_id`,`utility_id`),
  ADD KEY `utility_id` (`utility_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_location` (`location_id`,`user_id`),
  ADD KEY `idx_location` (`location_id`);

--
-- Chỉ mục cho bảng `system_widgets`
--
ALTER TABLE `system_widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `tour_location`
--
ALTER TABLE `tour_location`
  ADD PRIMARY KEY (`tour_id`,`location_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_location` (`location_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Chỉ mục cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `location_galleries`
--
ALTER TABLE `location_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `system_widgets`
--
ALTER TABLE `system_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `location_galleries`
--
ALTER TABLE `location_galleries`
  ADD CONSTRAINT `location_galleries_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `location_tag`
--
ALTER TABLE `location_tag`
  ADD CONSTRAINT `location_tag_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `location_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `location_utility`
--
ALTER TABLE `location_utility`
  ADD CONSTRAINT `location_utility_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `location_utility_ibfk_2` FOREIGN KEY (`utility_id`) REFERENCES `utilities` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tour_location`
--
ALTER TABLE `tour_location`
  ADD CONSTRAINT `tour_location_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_location_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
