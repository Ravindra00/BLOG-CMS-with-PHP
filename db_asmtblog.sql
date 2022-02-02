-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 10:36 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_asmtblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `featured_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`blog_id`, `blog_title`, `blog_description`, `category_id`, `is_active`, `featured_image`, `created_at`, `updated_at`) VALUES
(2, 'Deserunt cillum dolore saepe sint et reprehenderit non officia sint excepturi iusto eos', 'Ut veritatis eaque autem qui lorem magnam et aperiam velit ex eius assumenda qui id elit aut laborum qui', 5, 1, '', '2018-07-09 09:47:41', '2018-07-15 10:01:50'),
(3, 'Sit consectetur exercitation ut et reiciendis ut ea sapiente enim est dolores vitae id laboriosam ve', 'Placeat fuga Soluta molestiae nihil accusantium non accusantium minus et quas consequatur Ab inventore enim eiusmod suscipit quia necessitatibus', 6, 1, '', '2018-07-09 10:57:19', '0000-00-00 00:00:00'),
(4, 'A cum adipisicing rerum nostrum provident sit ea', 'Et porro voluptas nemo saepe ex et quo elit quaerat nobis vero et labore minus soluta labore tempor distinctio', 5, 0, '', '2018-07-09 10:57:57', '0000-00-00 00:00:00'),
(5, 'Aspernatur laboris veritatis neque est ea est ut fugiat ipsum anim corporis assumenda dolorem dolore', 'Voluptatem Tenetur ea velit nesciunt commodi', 6, 1, '', '2018-07-15 10:01:32', '0000-00-00 00:00:00'),
(6, 'Fugit accusamus obcaecati sit inventore voluptas', 'Accusamus sit nesciunt sequi sed eos veniam aute laudantium', 5, 0, '', '2018-07-16 06:23:57', '0000-00-00 00:00:00'),
(7, 'Voluptas similique molestiae velit ad est minima minima iste consequatur quae ut laborum Nesciunt pr', 'Et et nihil eos earum expedita', 5, 1, '', '2018-07-20 06:46:08', '0000-00-00 00:00:00'),
(9, 'Quis consequatur harum dolorem voluptatem mollitia magnam voluptatem Nostrud nostrum obcaecati rerum', 'Voluptas commodi reiciendis temporibus numquam corporis est amet in', 5, 1, 'Vijay Thapa about.jpg', '2018-07-22 09:40:08', '2018-07-23 06:32:49'),
(10, 'Pariatur Molestiae placeat maiores recusandae Facilis eos soluta reiciendis a labore nesciunt molest', 'Eaque neque eum pariatur Voluptates voluptate quidem et delectus quasi qui rem sit iure exercitationem dolores velit id cupiditate', 5, 0, 'ASMT_BLOG_940.jpg', '2018-07-23 16:41:23', '2018-07-23 16:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `include_in_menu` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_title`, `category_description`, `is_active`, `include_in_menu`, `created_at`, `updated_at`) VALUES
(3, 'Music', 'This is Music Category.', 0, 1, '2018-06-28 10:46:13', '2018-07-08 11:01:09'),
(4, 'Politics', 'This is Politics CAtegory.', 1, 1, '2018-07-08 11:01:27', '0000-00-00 00:00:00'),
(5, 'Health', 'This is Health Category.', 1, 1, '2018-07-08 11:01:51', '0000-00-00 00:00:00'),
(6, 'Travel', 'This is Travel Category.', 1, 1, '2018-07-08 11:02:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `full_name`, `username`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'Administrator', 'admin', 'admin@admin.com', 'admin', 1, '2018-07-10 09:15:51', '0000-00-00 00:00:00'),
(7, 'User', 'user', 'user@user.com', 'user', 1, '2018-07-11 09:07:36', '2018-07-11 09:07:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
