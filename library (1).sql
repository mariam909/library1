-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 10:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_n` int(15) NOT NULL,
  `title` varchar(40) NOT NULL,
  `author` varchar(40) NOT NULL,
  `cost` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_n`, `title`, `author`, `cost`) VALUES
(1, 'becoming ', 'michelle obama', 22),
(2, 'khooni vaisakhi', 'suri', 5),
(3, 'my life , my mission', 'baba ramadev', 18),
(4, 'i am malala', 'malala yousafiza', 25),
(5, 'we are displaced', 'malala yousafiza', 20),
(6, 'darkness to light', 'lamar odam', 34);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `u_id`, `b_id`, `borrow_date`, `return_date`) VALUES
(1, 6, 2, '2020-02-01', '2020-02-18'),
(2, 5, 1, '2019-11-07', '2019-11-29'),
(3, 4, 3, '2020-03-10', '2020-03-31'),
(4, 3, 5, '2020-03-17', '2020-04-15'),
(5, 2, 4, '2020-04-03', '2020-05-08'),
(6, 1, 6, '2020-05-01', '2020-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_n` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `number` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_n`, `name`, `address`, `number`) VALUES
(1, 'ali', 'cairo', 114875366),
(2, 'mohamed', 'alex', 158221476),
(3, 'kareem', 'alex', 114875366),
(4, 'omnia', 'ismailia', 124852345),
(5, 'mona', 'cairo', 114878892),
(6, 'lilla', 'aswan', 1248529999),
(7, 'ghada', 'cairo', 342999978);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_n`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_n`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_n` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `books` (`book_n`),
  ADD CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `users` (`user_n`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
