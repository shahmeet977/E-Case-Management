-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 06:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `profile`) VALUES
(1, 'admin', '1234', 'patient.jpg'),
(2, 'admin2', '1234', 'pat-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `d_id` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `a_date` date NOT NULL,
  `t_date` date NOT NULL,
  `dfees` int(100) NOT NULL,
  `cfees` int(100) NOT NULL,
  `mfees` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `b_id`, `p_id`, `d_id`, `p_name`, `d_name`, `a_date`, `t_date`, `dfees`, `cfees`, `mfees`, `total`) VALUES
(1, 1, 1, 1, 'patient', 'doctor', '2022-07-23', '2022-07-23', 200, 200, 300, 700),
(2, 2, 1, 1, 'patient', 'doctor', '2022-07-24', '2022-07-24', 300, 50, 200, 550);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `d_id` int(100) NOT NULL,
  `dname` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `adminstatus` varchar(100) NOT NULL,
  `doctorstatus` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `bill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `p_id`, `pname`, `d_id`, `dname`, `specialization`, `date`, `stime`, `etime`, `adminstatus`, `doctorstatus`, `payment`, `bill`) VALUES
(1, 1, 'patient', 1, 'doctor', 'Dentist', '2022-07-23', '23:38:00', '23:47:00', 'Aprroved', 'Aprroved', 'Aprroved', 'Aprroved'),
(2, 1, 'patient', 1, 'doctor', 'Dentist', '2022-07-24', '15:30:00', '16:30:00', 'Aprroved', 'Aprroved', 'Pending', 'Aprroved'),
(3, 1, 'patient', 1, 'doctor', 'Dentist', '2022-11-10', '22:00:00', '23:00:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(4, 2, 'patient2', 1, 'doctor', 'Dentist', '2022-07-26', '20:30:00', '21:30:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(5, 1, 'patient', 1, 'doctor', 'Dentist', '2022-07-23', '23:38:00', '23:47:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(6, 1, 'patient', 1, 'doctor', 'Dentist', '2022-07-23', '23:38:00', '23:47:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(7, 2, 'patient2', 1, 'doctor', 'Dentist', '2022-07-24', '15:30:00', '16:30:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(9, 3, 'patient3', 1, 'doctor', 'Dentist', '2022-07-24', '15:30:00', '16:30:00', 'Aprroved', 'Aprroved', 'Pending', 'Pending'),
(10, 2, 'patient2', 1, 'doctor', 'Dentist', '2022-11-10', '22:00:00', '23:00:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(11, 2, 'patient2', 1, 'doctor', 'Dentist', '2023-04-27', '11:19:00', '11:19:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(12, 1, 'patient', 1, 'doctor', 'Dentist', '2022-07-25', '11:28:00', '13:30:00', 'Aprroved', 'Pending', 'Pending', 'Pending'),
(13, 2, 'patient2', 1, 'doctor', 'Dentist', '2022-07-26', '20:30:00', '21:30:00', 'Aprroved', 'Pending', 'Pending', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `s_id` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `firstname`, `surname`, `username`, `email`, `gender`, `phone`, `specialization`, `s_id`, `password`, `salary`, `date_reg`, `status`, `profile`) VALUES
(1, 'doctor', 'doctor', 'doctor', 'fenildarji3210@gmail.com', 'Male', '1234567890', 'Dentist', 1, '1234', '100000', '2022-06-30 15:22:50', 'Aprroved', 'doctordp.jpg'),
(2, 'doctor2', 'doctor2', 'doctor2', 'malavgajjar123@gmail.com', 'Male', '0192837465', 'Psychiatrist', 2, '1234', '0', '2022-07-03 18:56:32', 'Pendding', 'doctordp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ecase`
--

CREATE TABLE `ecase` (
  `id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `date` date NOT NULL,
  `caseid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecase`
--

INSERT INTO `ecase` (`id`, `pid`, `bid`, `date`, `caseid`) VALUES
(1, 1, 1, '2022-11-10', 'CASE_1'),
(2, 2, 5, '2023-04-27', 'CASE_5'),
(3, 3, 9, '2022-07-24', 'CASE_9');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `firstname`, `surname`, `username`, `email`, `phone`, `gender`, `country`, `password`, `date_reg`, `profile`) VALUES
(1, 'patient', 'patient', 'patient', 'fd2492001@gmail.com', '1234567890', 'Male', 'Ahmedabad', '1234', '2022-06-30 14:51:08', 'patientdp.jpg'),
(2, 'patient2', 'patient2', 'patient2', 'chiragladdha9104@gmail.com', '0192837465', 'Male', 'Gandhinagar', '1234', '2022-07-03 18:52:45', 'patientdp.jpg'),
(3, 'patient3', 'patient3', 'patient3', 'fenildarji3210@gmail.com', '1029384756', 'Male', 'Ahmedabad', '1234', '2022-07-24 11:03:43', 'patientdp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `d_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `prescription` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `b_id`, `p_id`, `d_id`, `date`, `stime`, `etime`, `prescription`, `profile`) VALUES
(1, 1, 1, 1, '2022-07-23', '23:38:00', '23:47:00', 'You have normal fever.\r\nTake Paracetamol 3 times in a day for next 2 days.', 'prescription.png'),
(2, 1, 1, 1, '2022-07-23', '23:38:00', '23:47:00', 'blood report.\r\nhimoglobin : 13.8% \r\nblood group : B+.', 'pathrep01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `scheduleslot`
--

CREATE TABLE `scheduleslot` (
  `id` int(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheduleslot`
--

INSERT INTO `scheduleslot` (`id`, `specialization`, `doctor`, `date`, `stime`, `etime`) VALUES
(1, 'Dentist', 'doctor', '2022-07-24', '15:30:00', '16:30:00'),
(2, 'Dentist', 'doctor', '2022-07-26', '20:30:00', '21:30:00'),
(3, 'Dentist', 'doctor', '2022-11-10', '22:00:00', '23:00:00'),
(4, 'Dentist', 'doctor', '2022-07-23', '23:38:00', '23:47:00'),
(5, 'Dentist', 'doctor', '2023-04-27', '11:19:00', '11:19:00'),
(6, 'Dentist', 'doctor', '2022-07-25', '11:28:00', '13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `s_id` int(100) NOT NULL,
  `spe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`s_id`, `spe`) VALUES
(1, 'Dentist'),
(2, 'Psychiatrist'),
(3, 'Pediatrician'),
(4, 'Gynecologist'),
(5, 'Cardiologist');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `t_id` int(100) NOT NULL,
  `t_no` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `d_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `p_email` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `s_time` time NOT NULL,
  `e_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`t_id`, `t_no`, `p_id`, `d_id`, `p_name`, `d_name`, `p_email`, `date`, `s_time`, `e_time`) VALUES
(3, 1, 1, 1, 'patient', 'doctor', 'fd2492001@gmail.com', '2022-11-10', '22:00:00', '23:00:00'),
(4, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2022-07-26', '20:30:00', '21:30:00'),
(5, 1, 1, 1, 'patient', 'doctor', 'fd2492001@gmail.com', '2022-07-23', '23:38:00', '23:47:00'),
(6, 1, 1, 1, 'patient', 'doctor', 'fd2492001@gmail.com', '2022-07-23', '23:38:00', '23:47:00'),
(7, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2022-07-24', '15:30:00', '16:30:00'),
(8, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2022-11-10', '22:00:00', '23:00:00'),
(9, 2, 3, 1, 'patient3', 'doctor', 'fenildarji3210@gmail.com', '2022-07-24', '15:30:00', '16:30:00'),
(10, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2022-11-10', '22:00:00', '23:00:00'),
(11, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2023-04-27', '11:19:00', '11:19:00'),
(12, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2022-07-24', '15:30:00', '16:30:00'),
(13, 1, 1, 1, 'patient', 'doctor', 'fd2492001@gmail.com', '2022-07-25', '11:28:00', '13:30:00'),
(14, 2, 2, 1, 'patient2', 'doctor', 'chiragladdha9104@gmail.com', '2022-07-26', '20:30:00', '21:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecase`
--
ALTER TABLE `ecase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduleslot`
--
ALTER TABLE `scheduleslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ecase`
--
ALTER TABLE `ecase`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scheduleslot`
--
ALTER TABLE `scheduleslot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `s_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `t_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
