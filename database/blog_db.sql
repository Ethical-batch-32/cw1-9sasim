-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(2, 'sudat', 'e1d860d6c6f27bf1ba1592538f10f9264b739480'),
(3, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `admin_id`, `post_id`) VALUES
(3, 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `admin_id`, `name`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(5, 3, 'test', 'Rolls Royce ', 'j vayeni halam pic heram', 'lifestyle', 'front-left-side-47.webp', '2023-01-17', 'active'),
(6, 3, 'test', 'BUSINESS', 'Business model canvas', 'business', 'business-model-canvas-concept-with-paper-document-vector-31772521.jpg', '2023-01-17', 'active'),
(7, 3, 'test', 'UP', 'One of the Greatest animation ever created', 'animations', '10_up.jpg', '2023-01-17', 'active'),
(8, 3, 'test', 'Amazon', 'Free shipping on millions of items. Get the best of Shopping and Entertainment with Prime. Enjoy low prices and great deals', 'shopping', 'OG_image_Squid_Ink.png', '2023-01-17', 'active'),
(9, 3, 'test', 'Amir Khan&#39;s amazing transformation', 'Amazing body transformation for the movie Dangal.', 'health and fitness', 'images.jpg', '2023-01-17', 'active'),
(10, 3, 'test', 'New Restaurant!!!!!', 'restaurant just opened near you ', 'food and drinks', 'images (1).jpg', '2023-01-17', 'active'),
(11, 3, 'test', 'Amazing Design', 'Urban sci-fi design 3d model', 'design and development', 'download (2).jpg', '2023-01-17', 'active'),
(12, 3, 'test', 'island tour', 'come visit this island free till Jan 13, 2023\r\n', 'travel', 'ee.jpg', '2023-01-17', 'active'),
(13, 3, 'test', 'World cup 2022', 'Messi First World cup. A New Entry to the history books!!', 'sports', 'ss.jpg', '2023-01-17', 'active'),
(14, 3, 'test', 'PUBG championship', 'A historical feat achieved by the nepali team DRS', 'gaming', 's.jpg', '2023-01-17', 'active'),
(15, 3, 'test', 'MT Everest.', 'a Picture of the tallest mountain of the world\r\n', 'nature', 'f.jpg', '2023-01-17', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'sudat', 'sudatsasimshrestha@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d'),
(2, 'ganesh', 'gun@gmail.com', '5fa339bbbb1eeaced3b52e54f44576aaf0d77d96'),
(3, 'Pragyan Tuladhar', 'pragyantuladhar17@gmail.com', '3f8285cb6b55210612049a34c13c3a6a2dcf0e56'),
(4, 'aarju', 'aarju@gmail.com', '77b4e6f8048b17b4698970aa23523951ebaca5c3'),
(5, 'SUDAT', 'j@gmail.com', '17ba0791499db908433b80f37c5fbc89b870084b'),
(6, 'sws', 'sd@gmail.xcom', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(7, 'prag', 'prag@gmail.com', 'c0cfa19eebc97eb129ec6fe78c69c5ae3ebf9ed8'),
(8, 'sa', 'sa@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
