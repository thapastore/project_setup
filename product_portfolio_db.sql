-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Jan 29, 2025 at 10:56 AM
=======
-- Generation Time: Jan 07, 2025 at 11:44 AM
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(20) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_name`, `password`) VALUES
<<<<<<< HEAD
(1, 'katha@gmail.com', 'Katha Patel', 'Katha7434'),
(2, 'xyz@gmail.com', 'Xyz Mno', 'Xyz@1234'),
(3, 'mni@gmail.com', 'Mni Pqr', 'Mni@7654'),
(5, 'abc@gmail.com', 'abc mno', 'Abc@1234'),
(6, 'abcd@gmail.com', 'Abcd Patel', 'Abcd@1234'),
(7, 'keshvi@gmail.com', 'Keshvi Choksi', 'Keshvi@123');
=======
(1, 'katha@gmail.com', 'Vivek Gokhale', 'Katha7434'),
(2, 'xyz@gmail.com', 'Xyz Mno', 'Xyz@1234'),
(5, 'abc@gmail.com', 'abc mno', 'Abc@1234'),
(6, 'abc@gmail.com', 'Bhargav', 'tEST123456');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `applied_coupons`
--

CREATE TABLE `applied_coupons` (
  `user_id` int(11) NOT NULL,
  `coupon_code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applied_coupons`
--

INSERT INTO `applied_coupons` (`user_id`, `coupon_code`) VALUES
<<<<<<< HEAD
(3, 'BOGO'),
(3, 'FREESHIP'),
(3, 'WELCOME20'),
(7, 'BOGO'),
(7, 'FLAT50'),
(7, 'FREESHIP'),
(7, 'SAVE10'),
(7, 'WELCOME20'),
(8, 'BOGO'),
(8, 'FLAT50'),
(8, 'SAVE10'),
(8, 'WELCOME20');
=======
(3, 'FREESHIP'),
(3, 'WELCOME20');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `product_qty`) VALUES
<<<<<<< HEAD
(8, 18, 1);
=======
(5, 18, 1),
(3, 18, 1),
(3, 34, 1),
(3, 17, 1);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(4, 'Jewellery'),
(5, 'Food'),
(6, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_code` varchar(11) NOT NULL,
  `coupon_percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_code`, `coupon_percentage`) VALUES
('BOGO', 8),
<<<<<<< HEAD
('FLAT50', 50),
('FREESHIP', 5),
('SAVE10', 10),
=======
('FLAT5', 5),
('FREESHIP', 5),
('SAVE5', 5),
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
('WELCOME20', 20);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_order`
--

CREATE TABLE `delivery_order` (
  `delivery_id` int(11) NOT NULL,
  `delivery_partner_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_order`
--

INSERT INTO `delivery_order` (`delivery_id`, `delivery_partner_id`, `order_id`, `status`) VALUES
<<<<<<< HEAD
(6, 1, 17, 'Delivered'),
(7, 1, 18, 'Delivered'),
(8, 1, 14, 'Delivered'),
(9, 1, 26, 'Delivered'),
(10, 1, 17, 'Delivered'),
(11, 1, 18, 'Delivered'),
(12, 1, 15, 'Delivered'),
(13, 1, 30, 'Delivered'),
(14, 1, 27, 'Delivered'),
(15, 1, 31, 'Delivered'),
(16, 1, 29, 'Delivered'),
(17, 1, 29, 'Delivered'),
(18, 1, 28, 'Delivered'),
(19, 1, 33, 'Delivered'),
(20, 1, 34, 'Delivered'),
(21, 1, 35, 'Delivered'),
(22, 1, 32, 'Delivered'),
(23, 1, 25, 'Completed'),
(24, 3, 36, 'Completed'),
(25, 1, 37, 'Accepted');
=======
(6, 1, 17, 'Completed'),
(7, 1, 18, 'Completed'),
(8, 1, 19, 'Completed'),
(10, 1, 22, 'Completed'),
(11, 1, 21, 'Accepted');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `delivery_partner`
--

CREATE TABLE `delivery_partner` (
  `delivery_partner_id` int(11) NOT NULL,
  `dp_contact_no` bigint(11) NOT NULL,
  `dp_name` varchar(20) NOT NULL,
  `dp_password` varchar(10) NOT NULL,
  `dp_email` varchar(30) NOT NULL,
  `dp_address` varchar(50) NOT NULL,
  `identity_proof` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_partner`
--

INSERT INTO `delivery_partner` (`delivery_partner_id`, `dp_contact_no`, `dp_name`, `dp_password`, `dp_email`, `dp_address`, `identity_proof`) VALUES
<<<<<<< HEAD
(1, 7434829331, 'Katha Patel', 'K$tha7434', 'katha02@gmail.com', 'd14 fkso dmrucs msksdioe ksdmkwd', 'dp-1.jpg'),
(3, 2345678901, 'Keshvi Choksi', 'Abcd@1234', 'abcd@gmail.com', '12, abcd row house, Mumbai, Maharastra', 'login.png');
=======
(1, 7434829331, 'Vivek Gokhale', 'K$tha7434', 'katha02@gmail.com', 'd14 fkso dmrucs msksdioe ksdmkwd', 'dp-1.jpg');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `nl_id` int(11) NOT NULL,
  `nl_subject` varchar(255) NOT NULL,
  `nl_content` text NOT NULL,
  `nl_image` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`nl_id`, `nl_subject`, `nl_content`, `nl_image`, `status`) VALUES
(2, 'Newsletter for sale on the website', '<html><body>Hello!!From Website</body></html>', '66709261958e7.jpg', 'Pending'),
(3, 'Welcome to the website', '<html>\r\n<body>\r\n<center><h1>SALE! </h1></center>\r\n<h2>Shop now with 50% off</h2>\r\n</body\r\n</html>', '6672afa1c0b84.jpg', 'Sent');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_ids` varchar(255) NOT NULL,
  `product_qtys` varchar(255) NOT NULL,
<<<<<<< HEAD
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `payment_option` varchar(20) NOT NULL,
  `delivery_status` varchar(20) NOT NULL,
  `assigned_partner_name` varchar(255) DEFAULT NULL
=======
  `order_date` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `payment_option` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_status` varchar(20) NOT NULL
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

<<<<<<< HEAD
INSERT INTO `orders` (`order_id`, `user_id`, `product_ids`, `product_qtys`, `order_date`, `total_amount`, `coupon_code`, `payment_option`, `delivery_status`, `assigned_partner_name`) VALUES
(14, 3, '[31,17,18,19]', '[1,2,1,1]', '2024-06-27 06:33:10', 2657307.00, '[\"FREESHIP\",\"WELCOME20\"]', 'online', 'Delivered', NULL),
(15, 3, '[31,20,21]', '[1,1,1]', '2025-01-23 10:35:57', 1027998.00, '[\"FREESHIP\",\"WELCOME20\"]', 'online', 'Completed', NULL),
(17, 3, '[20,28]', '[2,1]', '2025-01-22 09:17:40', 43724.00, '[\"FREESHIP\",\"WELCOME20\"]', 'online', 'Completed', NULL),
(18, 3, '[22]', '[1]', '2024-07-10 08:28:24', 1509999.00, '[\"FREESHIP\",\"WELCOME20\"]', 'online', 'Delivered', NULL),
(25, 3, '[17,18,19]', '[1,1,1]', '2025-01-27 20:35:06', 1763077.00, '[\"FREESHIP\",\"WELCOME20\"]', 'online', 'Completed', NULL),
(26, 3, '[25]', '[1]', '2024-07-10 06:38:34', 14999.00, NULL, 'online', 'Delivered', NULL),
(27, 7, '[17]', '[1]', '2025-01-22 09:46:58', 899999.00, '[]', 'online', 'Completed', NULL),
(28, 7, '[31]', '[1]', '2025-01-27 19:14:30', 61600.00, '[\"BOGO\",\"FLAT50\",\"FREESHIP\",\"SAVE10\",\"WELCOME20\"]', 'online', 'Completed', NULL),
(29, 7, '[18]', '[1]', '2025-01-23 10:16:38', 798999.00, NULL, 'online', 'Completed', NULL),
(30, 7, '[17]', '[1]', '2025-01-22 09:25:22', 899999.00, NULL, 'online', 'Completed', NULL),
(31, 7, '[31]', '[1]', '2025-01-22 13:06:31', 880000.00, NULL, 'online', 'Completed', NULL),
(32, 7, '[20,17]', '[1,1]', '2025-01-27 19:35:34', 919998.00, '[\"BOGO\",\"FLAT50\",\"FREESHIP\",\"SAVE10\",\"WELCOME20\"]', 'online', 'Completed', NULL),
(33, 7, '[32]', '[1]', '2025-01-27 19:22:10', 800911.00, NULL, 'online', 'Completed', NULL),
(34, 7, '[19]', '[1]', '2025-01-23 14:58:48', 64079.00, NULL, 'online', 'Completed', NULL),
(35, 7, '[32]', '[1]', '2025-01-23 14:40:23', 800911.00, NULL, 'online', 'Completed', NULL),
(36, 7, '[18]', '[1]', '2025-01-28 11:01:39', 798999.00, NULL, 'online', 'Completed', 'Keshvi Choksi'),
(37, 7, '[18]', '[1]', '2025-01-28 11:15:43', 798999.00, NULL, 'online', 'Assigned', 'Katha Patel'),
(38, 25, '[32]', '[1]', '2025-01-29 08:18:58', 800911.00, NULL, 'online', 'Pending', NULL);
=======
INSERT INTO `orders` (`order_id`, `user_id`, `product_ids`, `product_qtys`, `order_date`, `total_amount`, `coupon_code`, `payment_option`, `timestamp`, `delivery_status`) VALUES
(17, 4, '[17,18]', '[1,1]', '2024-07-09', 4000, NULL, 'cod', '2024-07-09 06:12:55', 'Completed'),
(18, 4, '[20,21,29]', '[1,2,1]', '2024-07-08', 10000, NULL, 'online', '2024-07-10 10:24:09', 'Completed'),
(19, 4, '[20,21]', '[1,1]', '2024-07-08', 10000, NULL, 'online', '2024-07-10 10:30:51', 'Completed'),
(21, 3, '[17,18,21,19]', '[1,1,1,1]', '2024-10-30', 1891077, '[\"FREESHIP\",\"WELCOME20\"]', 'online', '2024-12-26 17:20:33', 'Assigned'),
(22, 3, '[34]', '[1]', '2024-11-06', 798999, NULL, 'online', '2024-11-12 08:28:54', 'Completed');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_mrp` decimal(11,2) NOT NULL,
  `product_discount` int(11) DEFAULT NULL,
  `product_description` varchar(100) NOT NULL,
  `product_brand` varchar(30) NOT NULL,
  `no_of_items` int(11) NOT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) NOT NULL,
  `tax` int(11) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_mrp`, `product_discount`, `product_description`, `product_brand`, `no_of_items`, `product_color`, `product_image`, `tax`, `isFeatured`) VALUES
<<<<<<< HEAD
(17, 4, 'Meteora bangle', 9999.99, 10, 'The Subtle Trilogy Bracelet features an elegant rhodium-plated design with three round-cut white cry', 'Kalyaan', 46, '[', '[\"66746dc5988ea.png\",\"66746dc598cca.png\"]', 0, 1),
(18, 4, 'Bracelet', 8499.99, 6, 'The Meteora Bangle features a sleek, rhodium-plated design adorned with brilliant white crystals, co', 'Kalyaan', 96, '[\"Grey\"]', '[\"66746eb49155d.png\",\"66746eb49195c.png\"]', 18, 1),
(19, 5, 'Veg Mayonnaise', 800.99, 20, 'Hellmann\'s Veg Mayonnaise offers a creamy, delicious taste perfect for sandwiches, salads, and dips.', 'Hellmann', 28, '', '[\"66746f291b09b.png\"]', 18, 0),
(20, 5, 'Kellogs Cornflakes', 199.99, 0, 'Kellogg\'s Corn Flakes with Immuno Nutrients provides a nutritious and delicious breakfast option, en', 'Nestle', 19, '', '[\"66746f73a13cd.png\"]', 18, 0),
(21, 6, 'Watches', 1599.99, 20, 'Smartwatch with a 1.3-inch AMOLED display, water-resistant design, fitness tracking features, and a ', 'FitTech', 19, '[\"Black\",\"Purple\",\"Green\"]', '[\"66746fbd125f1.png\"]', 18, 0),
(22, 6, 'Television', 15099.99, 0, 'Smartwatch with a 1.3-inch AMOLED display, water-resistant design, fitness tracking features, and a ', 'Samsung', 19, '[\"Grey\"]', '[\"66746ffb57550.png\"]', 18, 0),
(23, 6, 'Laptop', 999.99, 12, 'Powerful laptop with a quad-core i5 processor, 8GB RAM, 256GB SSD, and a 14-inch FHD display.', 'Dell', 50, '[\"Blue\"]', '[\"667470468a371.png\"]', 18, 0),
(24, 6, 'Smartphone', 499.99, 15, 'Feature-rich smartphone with a 6.2-inch screen, 12MP dual camera, 128GB storage, and a 4000mAh batte', 'TechGadget', 100, '[\"Red\"]', '[\"667470bf636cb.png\"]', 18, 0),
(25, 6, 'Wireless Headphones', 149.99, 0, 'High-quality wireless headphones with over-ear design, 20 hours of battery life, and a sleek black c', 'SoundBeats', 29, '[\"Brown\"]', '[\"6674711933ae6.png\"]', 18, 0),
(26, 6, 'Speakers', 5049.99, 20, 'High-quality wireless headphones with over-ear design, 20 hours of battery life, and a sleek black c', 'SoundBeats', 30, '[\"Brown\"]', '[\"667471920cd30.png\"]', 18, 0),
(27, 5, 'Biscuit', 18.00, 0, 'Britannia NutriChoice Digestive High Fibre Biscuits offer a wholesome snacking experience with their', 'Nutri Choice', 19, '', '[\"667471deebe07.png\"]', 18, 0),
(28, 5, 'Milkybar Choo', 40.50, 8, 'Indulge in the delightful sweetness of Milkybar Choo Strawberry Chocolate Pack. Each bite delivers a', 'Nestle', 10, '', '[\"6674730219678.png\"]', 18, 0),
(30, 5, 'Solid Masti', 20.00, 15, 'Kurkure Solid Masti Masala Twisteez Crisps are a flavorful delight, blending a spicy kick with a sat', 'Lays', 10, '', '[\"667477f28c612.png\"]', 18, 0),
(31, 4, 'Necklace', 11000.00, 20, 'The Swarovski Infinity necklace beautifully intertwines the timeless symbol of infinity with a delic', 'Swarovski', 8, '[\"White\"]', '[\"667478967cef4.png\",\"667478967d055.png\"]', 18, 1),
(32, 4, 'Earrings', 8999.00, 11, 'The Attract Trilogy hoop earrings feature a stunning round cut design, embellished with radiant whit', 'Swarovski', 11, '[', '[\"667479520d7c3.png\"]', 0, 1),
(33, 4, 'Pendant', 22000.00, 0, 'The Hyperbola pendant showcases a captivating blend of mixed cuts, accentuated by a mesmerizing infi', 'Swarovski', 5, '[  ', '[\"6674799d19cef.png\"]', 0, 0),
(39, 5, 'Potato Chips', 20.00, 0, 'A very flavoured crispy potato chips available at very low price', 'Lays', 100, '', '[\"67921369c5a99.png\"]', 0, 0);
=======
(17, 4, 'Meteora bangle', 9999.99, 10, 'The Subtle Trilogy Bracelet features an elegant rhodium-plated design with three round-cut white cry', 'Kalyaan', 49, '[\"White\",\"Black\"]', '[\"66746dc5988ea.png\",\"66746dc598cca.png\"]', 0, 1),
(18, 4, 'Bracelet', 8499.99, 6, 'The Meteora Bangle features a sleek, rhodium-plated design adorned with brilliant white crystals, co', 'Kalyaan', 99, '[\"Gray\"]', '[\"66746eb49155d.png\",\"66746eb49195c.png\"]', 18, 1),
(19, 5, 'Veg Mayonnaise', 800.99, 20, 'Hellmann\'s Veg Mayonnaise offers a creamy, delicious taste perfect for sandwiches, salads, and dips.', 'Hellmann', 29, '', '[\"66746f291b09b.png\"]', 18, 0),
(20, 5, 'Kellogs Cornflakes', 199.99, 0, 'Kellogg\'s Corn Flakes with Immuno Nutrients provides a nutritious and delicious breakfast option, en', 'Nestle', 20, '', '[\"66746f73a13cd.png\"]', 18, 0),
(21, 6, 'Watches', 1599.99, 20, 'Smartwatch with a 1.3-inch AMOLED display, water-resistant design, fitness tracking features, and a ', 'FitTech', 19, '[\"Black\"]', '[\"66746fbd125f1.png\"]', 18, 0),
(22, 6, 'Television', 15099.99, 0, 'Smartwatch with a 1.3-inch AMOLED display, water-resistant design, fitness tracking features, and a ', 'Samsung', 20, '[\"Gray\"]', '[\"66746ffb57550.png\"]', 18, 0),
(23, 6, 'Laptop', 999.99, 12, 'Powerful laptop with a quad-core i5 processor, 8GB RAM, 256GB SSD, and a 14-inch FHD display.', 'Dell', 50, '[\"Blue\"]', '[\"667470468a371.png\"]', 18, 0),
(24, 6, 'Smartphone', 499.99, 15, 'Feature-rich smartphone with a 6.2-inch screen, 12MP dual camera, 128GB storage, and a 4000mAh batte', 'TechGadget', 100, '[\"Red\"]', '[\"667470bf636cb.png\"]', 18, 0),
(25, 6, 'Wireless Headphones', 149.99, 0, 'High-quality wireless headphones with over-ear design, 20 hours of battery life, and a sleek black c', 'SoundBeats', 30, '[\"Brown\"]', '[\"6674711933ae6.png\"]', 18, 0),
(26, 6, 'Speakers', 5049.99, 20, 'High-quality wireless headphones with over-ear design, 20 hours of battery life, and a sleek black c', 'SoundBeats', 30, '[\"Brown\"]', '[\"667471920cd30.png\"]', 18, 0),
(27, 5, 'Biscuit', 18.00, 0, 'Britannia NutriChoice Digestive High Fibre Biscuits offer a wholesome snacking experience with their', 'Nutri Choice', 20, '', '[\"667471deebe07.png\"]', 18, 0),
(28, 5, 'Milkybar Choo', 40.50, 8, 'Indulge in the delightful sweetness of Milkybar Choo Strawberry Chocolate Pack. Each bite delivers a', 'Nestle', 10, '', '[\"6674730219678.png\"]', 18, 0),
(29, 5, 'Potato Chips', 20.00, 0, 'Lay\'s India\'s Magic Masala Potato Chips (40g) offer a tantalizing fusion of spices, delivering an ex', 'Kurkure', 100, '', '[\"6674750d87386.png\",\"last.jpg\"]', 18, 1),
(30, 5, 'Solid Masti', 20.00, 15, 'Kurkure Solid Masti Masala Twisteez Crisps are a flavorful delight, blending a spicy kick with a sat', 'Lays', 10, '', '[\"667477f28c612.png\"]', 18, 0),
(31, 4, 'Necklace', 11000.00, 20, 'The Swarovski Infinity necklace beautifully intertwines the timeless symbol of infinity with a delic', 'Swarovski', 10, '[\"White\"]', '[\"667478967cef4.png\",\"667478967d055.png\"]', 18, 1),
(32, 4, 'Earrings', 8999.00, 11, 'The Attract Trilogy hoop earrings feature a stunning round cut design, embellished with radiant whit', 'Swarovski', 15, '[\"Gray\"]', '[\"667479520d7c3.png\"]', 18, 0),
(34, 4, 'Bracelet', 8499.99, 6, 'The Meteora Bangle features a sleek, rhodium-plated design adorned with brilliant white crystals, co', 'Kalyaan', 99, '[\"Gray\"]', '[\"66746eb49155d.png\",\"66746eb49195c.png\"]', 18, 1);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `product_review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
<<<<<<< HEAD
  `feedback_headline` varchar(255) NOT NULL,
  `product_rating` int(11) NOT NULL,
  `product_feedback` varchar(255) NOT NULL,
  `product_review_image` varchar(255) NOT NULL
=======
  `product_rating` int(11) NOT NULL,
  `feedback_headline` varchar(30) NOT NULL,
  `product_feedback` varchar(100) NOT NULL,
  `product_review_image` varchar(20) NOT NULL
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

<<<<<<< HEAD
INSERT INTO `product_review` (`product_review_id`, `product_id`, `user_id`, `order_id`, `feedback_headline`, `product_rating`, `product_feedback`, `product_review_image`) VALUES
(34, 19, 3, 14, 'Smootiness', 4, 'This mayonnaise is incredibly smooth and creamy, perfect for sandwiches and salads. It spreads easily and enhances the flavor of any dish.', ''),
(35, 31, 3, 14, 'Designing', 3, 'The necklace\'s design is exquisite, with intricate detailing and a modern touch. It\'s a beautiful, elegant piece that stands out.', ''),
(37, 25, 3, 26, 'Sound Quality', 4, 'I recently purchased these earbuds and I am thoroughly impressed with the sound quality they deliver. From the moment I put them on, I noticed a significant difference compared to other earbuds I\'ve used in the past.', '[\"1720593763288-earbud.jpg\"]'),
(39, 17, 7, 27, 'good product', 0, 'it is a veryy veryy nice product and very useful a must try product gives very rich look and enhances the beauty ', '[]'),
(40, 31, 7, 31, 'no', 0, 'wcewrbtynty tnynry hntyrn yntyb tb5yb tb5n 535h 56h35h 53h56h 5h356 56h56h yh56yh 5yh56h 56h56nb 56gh56he 5h6g56h56nn 56h56nn  6h5n 65h64n 6h46h 56h4n 5h4h6 5n56ynh h56h65n h6h6', '[]'),
(41, 17, 7, 30, 'g', 0, 'dg', '[\"1737553913979-ForgetPassword.png\"]');
=======
INSERT INTO `product_review` (`product_review_id`, `product_id`, `user_id`, `order_id`, `product_rating`, `feedback_headline`, `product_feedback`, `product_review_image`) VALUES
(1, 34, 3, 22, 4, 'Quality', 'Beautiful bracelet! Excellent quality and comfortable to wear. Looks elegant and matches any outfit.', '[\"1731400969665-Scre');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `registered_newsletter`
--

CREATE TABLE `registered_newsletter` (
  `registered_newletter_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_newsletter`
--

INSERT INTO `registered_newsletter` (`registered_newletter_id`, `email`) VALUES
(1, 'kathapatel0204@gmail.com'),
(2, 'kathapatel9814@gmail.com'),
(3, 'kashishshah3114@gmail.com'),
(4, 'vivekgokhale23@gmail.com'),
<<<<<<< HEAD
(5, 'kashual34@gmail.com'),
(6, 'bhargav21@gmail.com'),
(7, 'keshvichoksi@gmail.com'),
(8, 'neeraja.joshi02@gmail.com');
=======
(5, 'kashual34@gmail.com');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `site_feedback`
--

CREATE TABLE `site_feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `feedback` varchar(255) NOT NULL,
<<<<<<< HEAD
  `type` tinyint(1) NOT NULL
=======
  `type` int(11) NOT NULL
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_feedback`
--

INSERT INTO `site_feedback` (`feedback_id`, `user_email`, `feedback`, `type`) VALUES
<<<<<<< HEAD
(1, 'vivek23@gmail.com', 'this site needs improvement', 1),
(2, 'vivek23@gmail.com', 'this site needs improvement', 0),
(3, 'keshvichoksi@gmail.com', 'can do better for filters!!', 1),
(4, 'keshvichoksi@gmail.com', 'Can do better with filters!!', 0),
(5, 'keshvichoksi@gmail.com', 'can do better with filters!!', 0),
(6, 'keshvichoksi@gmail.com', 'this is a website\n', 1);
=======
(1, 'hello@gmail.com', 'Great Website!!!! Never seen such nice website. Very user friendly and easy to use. Definitely will recommend others.', 0),
(2, 'leetcodegokhle@bindra.com', 'u can s*** my d***', 0);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
<<<<<<< HEAD
=======
  `phone_no` bigint(11) NOT NULL,
  `name` varchar(30) NOT NULL,
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
  `pincode` varchar(6) NOT NULL,
  `house_apartment` varchar(100) NOT NULL,
  `area` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `town_city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
<<<<<<< HEAD
  `is_default` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_no` varchar(11) NOT NULL
=======
  `is_default` int(11) NOT NULL
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_addresses`
--

<<<<<<< HEAD
INSERT INTO `user_addresses` (`aid`, `user_id`, `pincode`, `house_apartment`, `area`, `landmark`, `town_city`, `state`, `is_default`, `name`, `phone_no`) VALUES
(19, 3, '382350', 'D/63 Uttam nagar society', 'Nikol Gam road', 'kotiya hospital', 'Ahemedabad', 'GUJARAT', 1, 'Vivek', '9898442572'),
(20, 7, '395007', '37, abs row house', 'abc street', 'science center', 'surat', 'GUJARAT', 1, 'Keshvi Choksi', '1234567890'),
(21, 8, '395007', '37, abs row house', 'abc street', '', 'surat', 'GUJARAT', 1, 'KeshviChoksi', '1234567890'),
(22, 23, '395007', '102', 'adajan', 'pal lake', 'Surat', 'India', 0, 'Deev Patel', '09601988469'),
(23, 24, '395007', '102', 'adajan', 'pal lake', 'Surat', 'India', 1, 'neeraja joshi', '99999999999'),
(24, 25, '395007', '100', 'dumas road', 'carolina', 'surat', 'Gujarat', 1, 'Shrey Solanki', '0123456789');
=======
INSERT INTO `user_addresses` (`aid`, `user_id`, `phone_no`, `name`, `pincode`, `house_apartment`, `area`, `landmark`, `town_city`, `state`, `is_default`) VALUES
(15, 3, 9934840305, 'Akshay Kumar', '382350', 'D/63 Uttam nagar society', 'Nikol Gam road', 'kotiya hospital', 'Ahemedabad', 'GUJARAT', 1),
(16, 4, 7379239131, 'ABC', '380004', 'E-101 Shivalik Apartments ', 'Memnagar', 'Opposite HP Petrol Pump', 'Ahmedabad', 'Gujarat', 1);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `user_register_details`
--

CREATE TABLE `user_register_details` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_phone_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_register_details`
--

INSERT INTO `user_register_details` (`user_id`, `user_email`, `user_password`, `first_name`, `last_name`, `user_phone_no`) VALUES
<<<<<<< HEAD
(3, 'vivekgokhale23@gmail.com', '$2a$10$m7LRUj/mPnhJCG2bxOFKvOIdo/g1JagvABEEb9PrVhXlpGZbUID2e', 'Vivek', 'Gokhale', '9727380991'),
(4, 'kathapatel31@gmail.com', '$2a$10$vHHvXJP6hIcyK.9gQ9YKc.Cfd5cNAP4VSK/UnPLbb6S737EGPcxli', 'katha', 'patel', '9893789845'),
(5, 'kashish23@gmail.com', '$2a$10$h.dvzKsw/mZ1fvFQ61g3I.BsWA.Azo7SdzM8MZ1..cJooKEu2tekC', 'Kashish', 'Shah', '9898679845'),
(6, 'kaushal90@gmail.com', '$2a$10$0TgZylcy7ftsHrmE.JNz1uFtoMohEZafyGLiHve3L05VHvozhUgne', 'kaushal', 'prajapati', '9898679767'),
(7, 'keshvi@gmail.com', '$2a$10$tBPAUNNvV8kefT530tB2ee6xG0SeDNiLcnQbw.RkvMFLlMqYoKOai', 'keshvi', 'choksi', '1234567890'),
(8, 'keshvichoksi@gmail.com', '$2a$10$wnOmoDNicbMsjFp46JkSrO7aKIXXAv9YTzWZ.eSZoeFfkMc7n6fYq', 'keshvi', 'choksi1', '1234568970'),
(9, 'neerajajoshi@gmail.com', '$2a$10$2zZE/GsYz6pXt4dNSLhY1ef2b.5jjo7ddAYZ2SExWJwIuQjvFfKQC', 'Neeraja', 'Joshi', '1234567890'),
(10, 'k@gmail.com', '$2a$10$8Bli9Wnf9QWp5ZlRGLDFi.13ypUnftEvqLHGfPgxAzGzf.HVf1lzm', 'Kesh', 'Patel', '12345678790'),
(11, 'ke@gmail.com', '$2a$10$Giqx4uy/On2fUdsG14qqmeHcq4n1zKSU2ILr/9RhWmU7mwMBQSjZC', 'abcd', 'patel', '35476970362'),
(12, 'dp@gmail.com', '$2a$10$qQVuKSXGVRG7YhrAgWSojun6.VILJZ.ha5J0Ew3UeEwNVkWWofT8G', 'deev', 'patel', '01234565678'),
(13, 't@gmail.com', '$2a$10$RhHIblapitsQSJNhp19NbefeMdIpb8u.XAEtHvYxL1au9qQUmo/2i', 'Tejal', 'Joshi', '1234567890'),
(14, 'deevpatel.01@gmail.com', '$2a$10$yyDZJ/mjQZY8ZNRTBNyXrOADbj93IxUFk805i1BkIjUr.vdwzYKQS', 'Deev', 'PATEL', '0123456789'),
(15, 'neeraja@gmail.com', '$2a$10$Jmm4uZhNTYVCxej8JvAKMOVYcSuGLgeq1SWudxncRM8NpIWUtAEqq', 'neeraja', 'joshi', '9825650548'),
(16, 'aakanxapatel987@gmail.com', '$2a$10$ZwKXi6OfDv90PW3JDpDjBOzWhpX6uRo3ZGGtyKCMaR4i7aMuwbLpG', 'Aakanxa', 'Patel', '9537678045'),
(17, 'aa@gmail.com', '$2a$10$qyaW.7lMmxCqvxeBRCsRLeu/fb3bpizo9ezIljjnjRkJEN6sZnrRS', 'aayush', 'panchal', '0123456789'),
(18, 'bb@gmail.com', '$2a$10$3beZiFev6c60h5la7nLjcuuLBAAjL0.vxpBMwJPyFG4.n0GsoA/ye', 'aayush', 'panchal', '0123456789'),
(19, 'carpediemop.gg@gmail.com', '$2a$10$TdtQ97awWNTaMfwGOuIDK.flq3haLvE7VGaL4Kn4E49gD0PX2bdqq', 'Carpediem', 'op', '09099747444'),
(20, 'neeraja2@gmail.com', '$2a$10$g36GFsCkExSr2H0BTn4OluvahN8r/yr.ygkJ7vjpAl53U/cTkLJq6', 'neeraja', 'joshi', '09825650548'),
(21, 'd2@gmail.com', '$2a$10$dOFLFtifEH/8bIaG02zxBuvH1n4cTKkXCun8v3NXtLYY6ZLF2y1H.', 'Deev', 'Patel', '09601988469'),
(23, 'd3@gmail.com', '$2a$10$q5yAx0zjSPA2HJ9gh5e5Y.1ejMcvNazp2T37m9k60uXcYwggeWMXq', 'Deev', 'Patel', '09601988469'),
(24, 'z@gmail.com', '$2a$10$ffiu8C4nQD5Je/7gpOHGOehKxuN/t8MgOUuu3XglEEgzLMrPO3ME2', 'neeraja', 'joshi', '99999999999'),
(25, 'shrey@gmail.com', '$2a$10$tMkph26MhBARKLUB8W4suOWxGnnXYn8KvUgyM4K2EWy4seFn5fnJG', 'Shrey', 'Solanki', '0123456789');
=======
(3, 'vivekgokhale23@gmail.com', '$2a$10$lC1riSNMHtODQETFAXB9PuIz3ayquLD3U64VNB0qYPktwEBihTOdu', 'Vivek', 'Gokhale', '9727380991'),
(4, 'kathapatel0204@gmail.com', '$2a$10$vHHvXJP6hIcyK.9gQ9YKc.Cfd5cNAP4VSK/UnPLbb6S737EGPcxli', 'katha', 'patel', '9893789845'),
(5, 'stuti@gmail.com', '$2a$10$x29MX0WgzxVwR4RljswnLeAMWm0S4ZnoeD0qjm6btUJDfTCoOazBa', 'stuti', 'gohil', '9727380991');
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`user_id`, `product_id`, `product_qty`) VALUES
<<<<<<< HEAD
(5, 17, 1),
(5, 18, 1),
(3, 31, 1),
(3, 19, 1),
(7, 17, 1);
=======
(3, 18, 1),
(3, 31, 1);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `applied_coupons`
--
ALTER TABLE `applied_coupons`
  ADD UNIQUE KEY `coupon_identify` (`user_id`,`coupon_code`),
  ADD KEY `coupon_con2` (`coupon_code`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cart_ibfk_2` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_code`);

--
-- Indexes for table `delivery_order`
--
ALTER TABLE `delivery_order`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `delivery_partner_id` (`delivery_partner_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `delivery_partner`
--
ALTER TABLE `delivery_partner`
  ADD PRIMARY KEY (`delivery_partner_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`nl_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`product_review_id`),
  ADD KEY `product_id` (`product_id`),
<<<<<<< HEAD
  ADD KEY `product_review_ibfk_2` (`user_id`),
  ADD KEY `product_review_ibfk_3` (`order_id`);
=======
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- Indexes for table `registered_newsletter`
--
ALTER TABLE `registered_newsletter`
  ADD PRIMARY KEY (`registered_newletter_id`);

--
-- Indexes for table `site_feedback`
--
ALTER TABLE `site_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `add_con1` (`user_id`);

--
-- Indexes for table `user_register_details`
--
ALTER TABLE `user_register_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `wishlist_ibfk_2` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
<<<<<<< HEAD
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
=======
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
<<<<<<< HEAD
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
=======
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `delivery_order`
--
ALTER TABLE `delivery_order`
<<<<<<< HEAD
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
=======
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `delivery_partner`
--
ALTER TABLE `delivery_partner`
<<<<<<< HEAD
  MODIFY `delivery_partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
=======
  MODIFY `delivery_partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `nl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
<<<<<<< HEAD
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
=======
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
<<<<<<< HEAD
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
=======
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
<<<<<<< HEAD
  MODIFY `product_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
=======
  MODIFY `product_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `registered_newsletter`
--
ALTER TABLE `registered_newsletter`
<<<<<<< HEAD
  MODIFY `registered_newletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
=======
  MODIFY `registered_newletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `site_feedback`
--
ALTER TABLE `site_feedback`
<<<<<<< HEAD
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
=======
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
<<<<<<< HEAD
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
=======
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- AUTO_INCREMENT for table `user_register_details`
--
ALTER TABLE `user_register_details`
<<<<<<< HEAD
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
=======
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_coupons`
--
ALTER TABLE `applied_coupons`
  ADD CONSTRAINT `coupon_con1` FOREIGN KEY (`user_id`) REFERENCES `user_register_details` (`user_id`),
  ADD CONSTRAINT `coupon_con2` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_details` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `delivery_order`
--
ALTER TABLE `delivery_order`
  ADD CONSTRAINT `delivery_order_ibfk_1` FOREIGN KEY (`delivery_partner_id`) REFERENCES `delivery_partner` (`delivery_partner_id`),
  ADD CONSTRAINT `delivery_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_details` (`user_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `product_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_register_details` (`user_id`),
  ADD CONSTRAINT `product_review_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `add_con1` FOREIGN KEY (`user_id`) REFERENCES `user_register_details` (`user_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_register_details` (`user_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
