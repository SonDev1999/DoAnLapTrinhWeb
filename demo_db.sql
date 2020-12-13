-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2020 at 03:03 AM
-- Server version: 5.7.32-cll-lve
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
-- Database: `dstayxyz_demo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(43, 8, '/uploads/06-12-2020/88736c30c60b18faccf5b3791d49da34.jpg', 1607228480, 1607228480),
(44, 8, '/uploads/06-12-2020/68755273_502724043624381_1575447407796158464_n.jpg', 1607228480, 1607228480),
(51, 6, '/uploads/06-12-2020/giay-da-banh-adidas-chinh-hang-2.jpg', 1607229226, 1607229226),
(52, 6, '/uploads/06-12-2020/giay-da-banh-f1-adidas-nemeziz-messi-mau-xam.jpg', 1607229226, 1607229226),
(56, 4, '/uploads/06-12-2020/images_(1).jpg', 1607229699, 1607229699),
(57, 4, '/uploads/06-12-2020/images.jpg', 1607229699, 1607229699),
(58, 4, '/uploads/06-12-2020/shoes-2.jpg', 1607229699, 1607229699),
(67, 3, '/uploads/06-12-2020/giay-da-banh-adidas-chinh-hang-2.jpg', 1607255020, 1607255020),
(68, 3, '/uploads/06-12-2020/giay-da-banh-f1-adidas-nemeziz-messi-mau-xam.jpg', 1607255020, 1607255020),
(69, 5, '/uploads/06-12-2020/giay-da-bong-gia-re-ebet-xanh-da-quang-hana.jpg', 1607255034, 1607255034),
(70, 5, '/uploads/06-12-2020/giay-da-bong-nike.jpg', 1607255034, 1607255034),
(71, 5, '/uploads/06-12-2020/giay-da-bong-san-co-nhan-tao-mitre-bac-den-tf-hana.jpg', 1607255034, 1607255034),
(72, 7, '/uploads/06-12-2020/giay-da-bong-gia-re-ebet-xanh-da-quang-hana(1).jpg', 1607255070, 1607255070),
(73, 7, '/uploads/06-12-2020/giay-da-bong-nike(1).jpg', 1607255070, 1607255070),
(75, 2, '/uploads/06-12-2020/giay-da-banh-f1-adidas-nemeziz-messi-mau-xam(1).jpg', 1607255089, 1607255089),
(76, 2, '/uploads/06-12-2020/Giay-da-banh-Puma-future-4.1-moi-nhat-2019-5-1000x573.jpg', 1607255089, 1607255089),
(77, 2, '/uploads/06-12-2020/giay-da-banh-tre-em-adidas-2018-mau-xanh-ngoc-e1529202234977.jpg', 1607255089, 1607255089),
(78, 1, '/uploads/06-12-2020/iay-da-bong-giay-da-banh-fafa-ff01b-2_6dd5d3aedc6d4d1f8007e5868b540184_03bdd3c18556443291d35610160a0f7a_master.jpg', 1607255159, 1607255159),
(79, 1, '/uploads/06-12-2020/images_(1).jpg', 1607255159, 1607255159),
(80, 1, '/uploads/06-12-2020/images.jpg', 1607255159, 1607255159),
(90, 9, '/uploads/06-12-2020/5d4a753656484_mua-giay-da-banh-chinh-hang-tai-neymarsport(1).jpg', 1607293609, 1607293609),
(91, 9, '/uploads/06-12-2020/88736c30c60b18faccf5b3791d49da34(1).jpg', 1607293609, 1607293609),
(92, 10, '/uploads/06-12-2020/5d4a753656484_mua-giay-da-banh-chinh-hang-tai-neymarsport(1).jpg', 1607293713, 1607293713),
(93, 10, '/uploads/06-12-2020/88736c30c60b18faccf5b3791d49da34(1).jpg', 1607293713, 1607293713);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(1, 'Adidas X Ghosted 13', '/uploads/06-12-2020/shoes-3.jpg', 2000000, '<p><strong>Nằm trong bộ sưu tập&nbsp;IGNITION RED/WHITE với m&agrave;u sắc nổi bật , From gi&agrave;y thoải m&aacute;i kết hợp c&ugrave;ng chất liệu da tổng hợp trọng lượng gi&agrave;y nhẹ sẽ l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất khi cầm tr&ecirc;n tay .</strong></p>\r\n', 1607255159, 1607270174),
(2, 'Adidas X Ghosted', '/uploads/06-12-2020/ban-giay-da-banh-mitre-chinh-hang-ma-170501-de-tf-mau-den-gia-re(1).jpg', 2000000, '<p><strong>Adidas X Ghosted .3 FG/AG Precision To Blur - Signal Green/Energy Ink</strong><span style=\"color:rgb(85, 85, 85); font-family:roboto condensed,sans-serif; font-size:14px\">&nbsp;l&agrave; mẫu gi&agrave;y sử dụng cho s&acirc;n nh&acirc;n tự nhi&ecirc;n .Nằm trong bộ sưu tập mới nhất&nbsp;</span><strong>Precision To Blur</strong><span style=\"color:rgb(85, 85, 85); font-family:roboto condensed,sans-serif; font-size:14px\">&nbsp;Bề mặt chất liệu tổng hợp độc quyền Adidas&nbsp;m&agrave;u xanh dạ quang kết hợp logo 3 xọc adidas c&aacute;ch điệu như một bộ m&oacute;ng vuốt chạy dọc phần mu ch&iacute;nh diện d&agrave;y tạo cho người nh&igrave;n cảm gi&aacute;c nổi bật sắc b&eacute;n ma mị đ&uacute;ng như c&aacute;i t&ecirc;n Ghosted .</span></p>\r\n', 1607228571, 1607257211),
(3, 'MIZUNO MORELIA NEO III ', '/uploads/06-12-2020/giay-da-banh-adidas-chinh-hang-2(1).jpg', 2200000, '<p><strong>MIZUNO MORELIA NEO III PRO AS TF - IGNITION RED/BLACK l&agrave; mẫu gi&agrave;y cỏ nh&acirc;n tạo cao cấp của Mizuno với cấu tạo&nbsp;KẾT HỢP DA TỔNG HỢP V&Agrave; DA KAGAROO&nbsp;, phần sau g&oacute;t như một lớp vải dệt tổng hợp tạo sự thoải m&aacute;i khi di chuyển&nbsp;&nbsp;.&nbsp;Đ&acirc;y l&agrave; d&ograve;ng sản phẩm chứa đựng nhiều c&ocirc;ng nghệ mới của MIZUNO,&nbsp; mang lại cho người chơi cảm gi&aacute;c tốt nhất khi thi đấu .</strong></p>\r\n', 1607229737, 1607255020),
(4, 'NIKE REACT GATO', '/uploads/06-12-2020/ban-giay-da-banh-mitre-chinh-hang-ma-170501-de-tf-mau-den-gia-re.jpg', 1100000, '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto condensed,sans-serif; font-size:14px\">Nike React Gato IC Play Mode - Cardinal Red/Crimson Tint/Black/White l&agrave; mẫu gi&agrave;y chuy&ecirc;n d&agrave;nh cho mặt s&acirc;n Futsal v&agrave; Cỏ Nh&acirc;n Tạo 5 người.&nbsp;NIKE FOOTBALL được mệnh danh l&agrave; &quot;master on the small courts&quot; - chuy&ecirc;n gia trong lĩnh vực gi&agrave;y b&oacute;ng đ&aacute; trong nh&agrave;.</span></p>\r\n', 1607229699, 1607256770),
(5, 'NIKE TIEMPO LEGEND 8 ', '/uploads/06-12-2020/shoes-3.jpg', 2000000, '', 1607229442, 1607255034),
(6, 'PUMA FUTURE 6.3', '/uploads/06-12-2020/88736c30c60b18faccf5b3791d49da34(1).jpg', 1700000, '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto condensed,sans-serif; font-size:14px\">Đ&acirc;y l&agrave; mẫu gi&agrave;y nằm trong bộ sưu tập mới ra gần đ&acirc;y nhất của Mizuno - IGNITION RED/BLACK. Đối với Morelia Neo III Pro ở lần ra mắt n&agrave;y, đ&ocirc;i gi&agrave;y sở hữu sắc m&agrave;u đỏ rực , pha lẫn một ch&uacute;t cổ điển logo Đen xọc Mizuno .</span></p>\r\n', 1607229226, 1607256776),
(7, 'ADIDAS PREDATOR 20.4 ', '/uploads/06-12-2020/88736c30c60b18faccf5b3791d49da34(1).jpg', 1500000, '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto condensed,sans-serif; font-size:14px\">adidas Predator 20.4 TF Precision To Blur - Signal Green/Core Black l&agrave; mẫu gi&agrave;y chuy&ecirc;n gi&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người . Predator 20.4 l&agrave; ph&acirc;n kh&uacute;c phổ th&ocirc;ng được thiết kế với kiểu d&aacute;ng theo phong c&aacute;ch cổ điển truyền thống , chất liệu da tổng hợp độc quyền ADIDAS , phần mu ch&iacute;nh diện d&acirc;y buộc đơn giản, thiết kế lưỡi gi&agrave;y rời. ADIDAS PREDATOR 20.4 TF HARD WIRED - BLACK/BLUE chắc chắn l&agrave; mẫu gi&agrave;y dễ l&agrave;m quen với c&aacute;c cầu thủ c&oacute; mu b&agrave;n ch&acirc;n dầy v&agrave; ch&acirc;n b&egrave; .</span></p>\r\n', 1607228921, 1607255070),
(8, 'Gìày TMIZUNO MONARCIDA ', '/uploads/06-12-2020/5d4a753656484_mua-giay-da-banh-chinh-hang-tai-neymarsport.jpg', 1000000, '<p><em><strong>MIZUNO MONARCIDA SALA PRO TF&nbsp;l&agrave; d&ograve;ng&nbsp;sản phẩm d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người. Gam m&agrave;u mới đỏ đen nằm trong bộ sưu tập&nbsp;IGNITION được ra mắt cuối th&aacute;ng 11/2020 đ&atilde; tạo được nhiều hiệu ứng tốt. Phi&ecirc;n bản MONARCIDA SALA PRO l&agrave; ph&acirc;n kh&uacute;c cao cấp hơn MONARCIDA SELECT với nhiều c&ocirc;ng nghệ cải tiến đem lại sự thoải m&aacute;i cho người d&ugrave;ng.</strong></em></p>\r\n', 1607228480, 1607246034),
(9, 'Gìày Thể Thao Nike', '/uploads/06-12-2020/shoes-5.jpg', 5000000, '<p>Giafu đẹp</p>\r\n', 1607293609, 1607293616),
(10, 'Gï¿½ï¿½y Th? Thao Nike 1', '/uploads/06-12-2020/ban-giay-da-banh-mitre-chinh-hang-ma-170501-de-tf-mau-den-gia-re(1).jpg', 1000000, '', 1607293713, 1607365180);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`, `status`) VALUES
(15, 'admin', 'ADMIN', '81dc9bdb52d04dc20036dbd8313ed055', 944931600, 1607296998, 1607352486, 0),
(12, 'son', '123', '202cb962ac59075b964b07152d234b70', 944953200, 1607293186, 1607293465, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
