-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 03:29 PM
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
-- Database: `srms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fname`, `lname`, `email`, `password`, `department_id`, `department_name`, `institution`, `created_at`) VALUES
(1, 'Joseph', 'Mensah', 'joseph@gmail.com', '$2y$10$.7IfugBRYQFJdD0ECNX.5ux5.6Lp4HCVynUGqhI.RqcJU5nj0EPIi', '2312', 'Computer Science', 'Ashesi University', '2024-12-09 11:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  `credit_hours` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `department_id`, `credit_hours`, `created_at`, `description`) VALUES
(1, 'CS101', 'Data Structures and Algorithms', '2312', 1, '2024-12-11 20:16:07', 'There are many algorithms for different purposes. They interact with different data structures in the same computational complexity scale. Think of algorithms as dynamic underlying pieces that interact with static data structures.'),
(2, 'MATH101', 'Calculus I', '2312', 1, '2024-12-11 23:44:48', 'Calculus I is a course that covers the basics of calculus, including limits and continuity, derivatives, Analytical geometry, the definite integral, and differentiation of trigonometric and algebraic functions.');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `grade` char(2) NOT NULL CHECK (`grade` in ('A+','A','B+','B','C+','C','D','E','F')),
  `grade_point` decimal(3,2) NOT NULL CHECK (`grade_point` >= 0.00 and `grade_point` <= 4.00),
  `semester` int(11) NOT NULL,
  `academic_year` varchar(9) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `exam_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `course_code`, `course_name`, `grade`, `grade_point`, `semester`, `academic_year`, `created_by`, `created_at`, `exam_date`) VALUES
(2, 1, 'CS101', '', 'A+', 0.00, 3, '', 1, '2024-12-12 00:08:28', '0000-00-00'),
(3, 2, 'MATH101', '', 'A', 0.00, 1, '', 1, '2024-12-12 00:09:41', '0000-00-00'),
(4, 6, 'MATH101', '', 'B', 0.00, 1, '', 1, '2024-12-12 00:11:11', '2024-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `email`, `password`, `student_id`, `institution`, `program`, `year`, `created_at`) VALUES
(1, 'Shadrack', 'Tetteh', 'berdahshadrack@gmail.com', '$2y$10$uq.sBPMRKjQ855yAPAJDEu3Cx0kU/4fEyJEOHHtGoComdwboC0Rby', '23452026', 'Ashesi University', 'computer_science', 3, '2024-12-09 09:59:09'),
(2, 'Abednego', 'Deveer', 'abednego@gmail.com', '$2y$10$MNWZmP3whupXIW.opQ./9uSyFoc8xDoLiapAwKZMJYQk69RZZsJnW', '4552026', 'Accra Academy', 'engineering', 1, '2024-12-09 10:01:23'),
(3, 'Ernest', 'Berdah', 'ernest@gmail.com', '$2y$10$C7gI3vTNgjvdmB6.mquPS.jNmlY0e5hWK2mDL2FqFs9.3xrrKAUpG', '23122026', 'Accra Academy', 'business', 4, '2024-12-09 10:35:39'),
(4, 'Francis', 'Berdah', 'francis@gmail.com', '$2y$10$AnoA9aqWpnD85XJWsNNjC.knxpTykI4ZlwRtkxoRdfQ0fGSXDjdFe', '4122026', 'Central University', 'computer_science', 3, '2024-12-09 10:49:37'),
(6, 'Richard', 'Deveer', 'deveer@gmail.com', '$2y$10$x19/JLZ3cTGICeBzOCDZ4eZJ36j.g3Are3QfClVoxtVoBq6/rmACu', '04122026', 'Accra Academy', 'business', 2, '2024-12-09 10:54:03'),
(7, 'Enock', 'Berdah', 'enock@gmail.com', '$2y$10$.XF3y.KgBS0L0CZQfLlZFeovT5kZmX4lZMXnmbpu2lVFAUeT62FeC', '23422026', 'Accra Academy', 'Computer Science', 1, '2024-12-09 10:57:00'),
(8, 'Roseline', 'Tsatsu', 'roseline@gmail.com', '$2y$10$4c8iUfZQneB2Di8NGGhQtunUjI11s1njqSQej9g9c.l4srgV.oWSG', '04322026', '', 'Computer Science', 3, '2024-12-11 20:42:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
