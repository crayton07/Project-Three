-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2024 at 05:25 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_flavors`
--

-- --------------------------------------------------------

--
-- Table structure for table `coffee_flavors`
--

CREATE TABLE `coffee_flavors` (
  `id` int NOT NULL,
  `imported` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `distributer` varchar(45) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coffee_flavors`
--

INSERT INTO `coffee_flavors` (`id`, `imported`, `name`, `distributer`) VALUES
(1, 'Colombia', 'Morning Bliss', 'Java Penguin'),
(2, 'Ethiopia', 'Sunrise Roast', 'Lion Beans'),
(3, 'Brazil', 'Velvet Brew', 'Penguin Traders'),
(4, 'Kenya', 'Savanna Bold', 'Ostrich Distributors'),
(5, 'Guatemala', 'Highland Harmony', 'Ostrich Distributors'),
(6, 'Sumatra', 'Dark Elixir', 'Penguin Traders'),
(7, 'Costa Rica', 'Golden Brew', 'Penguin Traders'),
(8, 'Honduras', 'Misty Mountain', 'Otter Beans');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'mark', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-11-12 05:17:20'),
(2, 'joseph', '$2y$10$6fA4l/dKJqAz5wOAh0GKueymshMVUQw6wIenKk98JXdzFpdBLXiiC', '2024-11-12 05:24:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coffee_flavors`
--
ALTER TABLE `coffee_flavors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coffee_flavors`
--
ALTER TABLE `coffee_flavors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
