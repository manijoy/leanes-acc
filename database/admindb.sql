-- Host: 127.0.0.1:3307 

-- Generation Time: Jun 04, 2021 at 09:32 AM 

-- Server version: 10.4.18-MariaDB 

-- PHP Version: 8.0.3 

 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; 

START TRANSACTION; 

SET time_zone = "+00:00"; 

 

 

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; 

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; 

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; 

/*!40101 SET NAMES utf8mb4 */; 

 

-- 

-- Database: `administrative-portal` 

-- 

 

-- -------------------------------------------------------- 

 

-- 

-- Table structure for table `classes` 

-- 

 

CREATE TABLE `classes` ( 

  `id` int(11) NOT NULL, 

  `section` int(55) NOT NULL, 

  `teacher` int(11) NOT NULL, 

  `subject` int(11) NOT NULL, 

  `time` varchar(44) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

 

-- 

-- Dumping data for table `classes` 

-- 

 

INSERT INTO `classes` (`id`, `section`, `teacher`, `subject`, `time`) VALUES 

(2, 2, 3, 2, '01:50'), 

(4, 1, 4, 3, '7:54'); 

drop table classes; 

select * from classes; 

 

 

 

-- -------------------------------------------------------- 

 

-- 

-- Table structure for table `students` 

-- 

 

CREATE TABLE `students` ( 

  `id` int(11) NOT NULL, 

  `fname` varchar(55) NOT NULL, 

  `lname` varchar(55) NOT NULL, 

  `age` int(11) DEFAULT NULL, 

  `class` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

 

 

-- 

-- Dumping data for table `students` 

-- 

 

INSERT INTO `students` (`id`, `fname`, `lname`, `age`, `class`) VALUES 

(1, 'sai', 'kumar', 20, 1), 

(2, 'krishna', 'teja', 19, 2), 

(3, 'bharath', 'reddy', 18, 1), 

(4, 'chandana', 'chandu', 19, 2), 

(5, 'cathrine', 'vinuthna', 24, 1), 

(6, 'sharvan', 'kumar', 26, 2); 

drop table students; 

 

  

 

 

 

-- -------------------------------------------------------- 

 

-- 

-- Table structure for table `subjects` 

-- 

 

CREATE TABLE `subjects` ( 

  `id` int(11) NOT NULL, 

  `name` varchar(55) NOT NULL, 

  `shortcut` varchar(50) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

 

-- 

-- Dumping data for table `subjects` 

-- 

 

INSERT INTO `subjects` (`id`, `name`, `shortcut`) VALUES 

(3, 'HINDI', 'Hin'), 

(4, 'SCINCE', 'Sci'); 

select * from subjects; 

drop table subjects; 

 

-- -------------------------------------------------------- 

 

-- 

-- Table structure for table `teachers` 

-- 

 

CREATE TABLE `teachers` ( 

  `id` int(11) NOT NULL, 

  `fname` varchar(55) NOT NULL, 

  `lname` varchar(55) NOT NULL, 

  `age` varchar(11) DEFAULT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

 

-- 

-- Dumping data for table `teachers` 

-- 

 

INSERT INTO `teachers` (`id`, `fname`, `lname`, `age`) VALUES 

(3, 'prithvi', 'meghana', '78'), 

(4, 'goldie', 'sharat', '64'); 

drop table teachers; 

select *from teachers; 

 

-- 

-- Indexes for dumped tables 

-- 

 

-- 

-- Indexes for table `classes` 

-- 

ALTER TABLE `classes` 

  ADD PRIMARY KEY (`id`), 

  ADD KEY `subject_id` (`subject`), 

  ADD KEY `teacher_id` (`teacher`); 

 

-- 

-- Indexes for table `students` 

-- 

ALTER TABLE `students` 

  ADD PRIMARY KEY (`id`), 

  ADD KEY `class_id` (`class`); 

 

-- 

-- Indexes for table `subjects` 

-- 

ALTER TABLE `subjects` 

  ADD PRIMARY KEY (`id`); 

 

-- 

-- Indexes for table `teachers` 

-- 

ALTER TABLE `teachers` 

  ADD PRIMARY KEY (`id`); 

 

-- 

-- AUTO_INCREMENT for dumped tables 

-- 

 

-- 

-- AUTO_INCREMENT for table `classes` 

-- 

ALTER TABLE `classes` 

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3; 

 

-- 

-- AUTO_INCREMENT for table `students` 

-- 

ALTER TABLE `students` 

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8; 

 

-- 

-- AUTO_INCREMENT for table `subjects` 

-- 

ALTER TABLE `subjects` 

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3; 

 

-- 

-- AUTO_INCREMENT for table `teachers` 

-- 

ALTER TABLE `teachers` 

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3; 

 

-- 

-- Constraints for dumped tables 

-- 

 

-- 

-- Constraints for table `classes` 

-- 

ALTER TABLE `classes` 

  ADD CONSTRAINT `subject_id` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`), 

  ADD CONSTRAINT `teacher_id` FOREIGN KEY (`teacher`) REFERENCES `teachers` (`id`); 

  commit; 

 

-- 

-- Constraints for table `students` 

-- 

 

 

 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; 

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; 

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;