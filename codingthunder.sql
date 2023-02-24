-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 07:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first-post', 'firstpost@gmail.com', '1234567890', 'first-post', '2023-02-18 13:48:46'),
(2, 'Atharv Desai', 'avnibadkul@gmail.com', '1234567890', 'Hi, This is my new post.', '2023-02-21 18:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is my first-post', 'This is first post', 'first-post', 'This is my firtss post not at all excited .', 'about-bg.jpg', '2023-02-24 11:17:02'),
(2, 'Left Blog', 'Sorry yaar', 'sixth-post', 'A blog post is an individual web page on your website that dives into a particular sub-topic of your blog.\r\n\r\nFor instance, let\'s say you start a fashion blog on your retail website. One blog post might be titled, \"The Best Fall Shoes for 2019\". The post ties back to your overall blog topic as a whole (fashion), but it also addresses a very particular sub-topic (fall shoes).\r\n\r\nBlog posts allow you to rank on search engines for a variety of keywords. In the above example, your blog post could enable your business to rank on Google for \"fall shoes\". When someone searches for fall shoes and comes across your blog post, they have access to the rest of your company\'s website. They might click \"Products\" after they read your post, and take a look at the clothing items your company sells.', '', '2023-02-21 19:45:26'),
(3, 'This is second post', 'This is second post', 'second-post', 'This is my second post', 'about-bg.jpg', '2023-02-21 19:27:05'),
(4, 'Blogs', 'Coolest blog', 'third-post', 'A blog post is an individual web page on your website that dives into a particular sub-topic of your blog.\r\n\r\nFor instance, let\'s say you start a fashion blog on your retail website. One blog post might be titled, \"The Best Fall Shoes for 2019\". The post ties back to your overall blog topic as a whole (fashion), but it also addresses a very particular sub-topic (fall shoes).\r\n\r\nBlog posts allow you to rank on search engines for a variety of keywords. In the above example, your blog post could enable your business to rank on Google for \"fall shoes\". When someone searches for fall shoes and comes across your blog post, they have access to the rest of your company\'s website. They might click \"Products\" after they read your post, and take a look at the clothing items your company sells.', '', '2023-02-21 19:40:37'),
(5, 'New Blog', 'Funniest Blog', 'fourth-post', 'A blog post is an individual web page on your website that dives into a particular sub-topic of your blog.\r\n\r\nFor instance, let\'s say you start a fashion blog on your retail website. One blog post might be titled, \"The Best Fall Shoes for 2019\". The post ties back to your overall blog topic as a whole (fashion), but it also addresses a very particular sub-topic (fall shoes).\r\n\r\nBlog posts allow you to rank on search engines for a variety of keywords. In the above example, your blog post could enable your business to rank on Google for \"fall shoes\". When someone searches for fall shoes and comes across your blog post, they have access to the rest of your company\'s website. They might click \"Products\" after they read your post, and take a look at the clothing items your company sells.', '', '2023-02-21 19:41:20'),
(6, 'Vanshikas Post', 'Hey  Programmer', 'eight-post', 'A blog post is an individual web page on your website that dives into a particular sub-topic of your blog.\r\n\r\nFor instance, let\'s say you start a fashion blog on your retail website. One blog post might be titled, \"The Best Fall Shoes for 2019\". The post ties back to your overall blog topic as a whole (fashion), but it also addresses a very particular sub-topic (fall shoes).\r\n\r\nBlog posts allow you to rank on search engines for a variety of keywords. In the above example, your blog post could enable your business to rank on Google for \"fall shoes\". When someone searches for fall shoes and comes across your blog post, they have access to the rest of your company\'s website. They might click \"Products\" after they read your post, and take a look at the clothing items your company sells.', 'home-bg.jpg', '2023-02-24 11:29:12'),
(7, 'Atharvas Post', 'Ram Siya Ram', 'seventh-post', 'This is atharvas Post', 'home-bg.jpg', '2023-02-23 09:29:42'),
(9, 'Avikas Post', 'Foodieee', 'ninth-post', 'A foodie is a person who has an ardent or refined interest in food, and who eats food not only out of hunger but also as a hobby.', 'home-bg.jpg', '2023-02-24 11:46:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
