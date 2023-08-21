-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 06:32 AM
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
-- Database: `ehr_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `apointment_details`
--

CREATE TABLE `apointment_details` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(300) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `blood_grp` varchar(30) DEFAULT NULL,
  `app_reason` text DEFAULT NULL,
  `doctor_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appintmentdetails`
--

CREATE TABLE `appintmentdetails` (
  `id` int(11) NOT NULL,
  `dependent_name` varchar(300) DEFAULT NULL,
  `app_date` varchar(30) DEFAULT NULL,
  `app_time` varchar(30) DEFAULT NULL,
  `app_reason` varchar(500) DEFAULT NULL,
  `doctor_id` varchar(30) DEFAULT NULL,
  `c_user_email_id` varchar(30) DEFAULT NULL,
  `app_status` varchar(30) NOT NULL DEFAULT 'Confirm'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appintmentdetails`
--

INSERT INTO `appintmentdetails` (`id`, `dependent_name`, `app_date`, `app_time`, `app_reason`, `doctor_id`, `c_user_email_id`, `app_status`) VALUES
(4, 'Ritesh Rama Surange', '2021-05-31', '17:06', 'Covide-19', 'yuga1@gmail.com', 'riteshsurange20@gmail.com', 'Confirm'),
(5, 'Aaravi R Surange', '2021-05-29', '17:44', 'Temprature', 'yuga@gmail.com', 'riteshsurange20@gmail.com', 'Confirm'),
(6, 'Dinesh R Rathod', '2021-05-29', '05:57', 'Covide-19', 'yuga@gmail.com', 'riteshsurange20@gmail.com', 'Confirm'),
(7, 'Mangesh R Surange', '2021-06-09', '19:05', 'teeth', 'rohit@gmail.com', 'ram@gmail.com', 'Confirm'),
(10, 'Ramesh R Rathod', '2021-07-15', '20:30', 'Brain', 'yuga1@gmail.com', 'riteshsurange20@gmail.com', 'Confirm'),
(11, 'Ramesh R Rathod', '2021-07-23', '20:50', 'Brain', 'yuga@gmail.com', 'riteshsurange20@gmail.com', 'Confirm'),
(12, 'Avadhut Shivaji Lad', '2023-03-04', '18:50', 'Fewer', 'rohit@gmail.com', 'abc@gmail.com', 'Cancel'),
(13, 'Avadhut Shivaji Lad', '2023-03-04', '10:40', 'Bone facture', 'ross@gmail.com', 'abc@gmail.com', 'Confirm'),
(14, 'Aniruddha Rajesh Kakade', '2023-03-05', '10:48', 'Bone Fracture', 'ross@gmail.com', 'ani@gmail.com', 'Cancel'),
(15, 'Rajesh S Kakade', '2023-03-03', '18:08', 'temp', 'ram1@gmail.com', 'ani@gmail.com', 'Cancel'),
(16, 'Aniruddha Rajesh Kakade', '2023-03-04', '10:05', 'xyz', 'mayur@gmail.com', 'ani@gmail.com', 'Cancel'),
(17, 'Chandler C Bing', '2023-03-04', '12:24', 'Depression', 'joey123@gmail.com', 'chandler@gmail.com', 'Confirm'),
(18, 'Janhavi A Sangaonkar', '2023-03-03', '11:55', 'Dental Pain', 'null', 'janhavi312sangaonkar@gmail.com', 'Cancel'),
(19, 'Janhavi A Sangaonkar', '2023-03-02', '11:05', 'Toothache', 'samruddhi123@gmail.com', 'janhavi312sangaonkar@gmail.com', 'Confirm'),
(20, 'Aniruddha  Rajesh Kakade', '2023-03-17', '10:20', 'headache', 'vaish@gmail.com', 'ani@gmail.com', 'Cancel'),
(21, 'Aniruddha  Rajesh Kakade', '2023-03-17', '10:20', 'headache', 'vaish@gmail.com', 'ani@gmail.com', 'Cancel'),
(22, 'Aniruddha  Rajesh Kakade', '2023-03-17', '10:20', 'headache', 'vaish@gmail.com', 'ani@gmail.com', 'Cancel'),
(23, 'Aniruddha  Rajesh Kakade', '2023-03-20', '09:15', 'Pain in chest', 'ronit1011@gmail.com', 'ani@gmail.com', 'Cancel'),
(24, 'Sejal A Sakharkar', '2023-04-29', '12:00', 'Temprature', 'yuga@gmail.com', 'sejal@gmail.com', 'Confirm'),
(25, 'Sakshi Sujit Shirsat', '2023-05-08', '11:30', 'Hight fever headache', 'ak@gmail.com', 'sakshi@gmail.com', 'Confirm');

-- --------------------------------------------------------

--
-- Table structure for table `facility_schedule`
--

CREATE TABLE `facility_schedule` (
  `id` int(11) NOT NULL,
  `day_of_week` varchar(30) DEFAULT NULL,
  `s_time` varchar(30) DEFAULT NULL,
  `e_time` varchar(30) DEFAULT NULL,
  `facility_name` varchar(300) DEFAULT NULL,
  `dr_email` varchar(30) DEFAULT NULL,
  `c_date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `facility_schedule`
--

INSERT INTO `facility_schedule` (`id`, `day_of_week`, `s_time`, `e_time`, `facility_name`, `dr_email`, `c_date`) VALUES
(4, 'Monday', '10:00', '18:00', 'Daily Working', 'yuga@gmail.com', '29/04/2023'),
(5, 'Tuesday', '18:02', '20:02', 'Dentist', 'rohit@gmail.com', '08/04/2023'),
(7, 'Monday', '10:00', '17:00', 'ABC', 'ross@gmail.com', '03/03/2023'),
(8, 'Friday', '10:01', '12:01', 'Report Check', 'ram1@gmail.com', '03/03/2023'),
(9, 'Monday', '12:17', '13:17', 'Operation', 'joey123@gmail.com', '04/03/2023'),
(10, 'Monday', '10:00', '14:00', 'Operations', 'ak@gmail.com', '07/05/2023');

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(300) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `blood_grp` varchar(30) DEFAULT NULL,
  `app_reason` varchar(500) DEFAULT NULL,
  `body_temp` varchar(300) DEFAULT NULL,
  `spo2` varchar(30) DEFAULT NULL,
  `height` varchar(30) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `pulse_rate` varchar(30) DEFAULT NULL,
  `resporitory_rate` varchar(30) DEFAULT NULL,
  `systolic_pressure` varchar(30) DEFAULT NULL,
  `diastolic_pressure` varchar(30) DEFAULT NULL,
  `ailment` varchar(300) DEFAULT NULL,
  `chief_complaints` varchar(100) DEFAULT NULL,
  `physician_notes` text DEFAULT NULL,
  `dr_id` varchar(30) DEFAULT NULL,
  `reg_date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`id`, `dept_name`, `dob`, `gender`, `blood_grp`, `app_reason`, `body_temp`, `spo2`, `height`, `weight`, `pulse_rate`, `resporitory_rate`, `systolic_pressure`, `diastolic_pressure`, `ailment`, `chief_complaints`, `physician_notes`, `dr_id`, `reg_date`) VALUES
(2, 'Aaravi R Surange', '2021-05-29', 'Female', 'B Positive', 'Temprature-1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', 'yuga@gmail.com', '28/04/2023'),
(3, 'Mangesh R Surange', '2021-06-17', 'Male', 'AB Negative', 'teeth', '123', '111', '111', '111', '102', '11', '111', '111', '11', '11', 'Nice', 'rohit@gmail.com', '08/04/2023'),
(4, 'Rajesh S Kakade', '2017-03-22', 'Male', 'B Negative', 'temp', '101', '93', '4', '70', '69', '45', '89', '120', '87', '76', 'Paracetomol--3 days\r\nimoal\r\n\r\n', 'ram1@gmail.com', '03/04/2023'),
(5, 'Aniruddha Rajesh Kakade', '2017-03-22', 'Male', 'B Positive', 'xyz', '100', '52', '150', '65', '92', '33', '123', '12', '66', '664', 'Dolo 100mg -5', 'mayur@gmail.com', '03/03/2023'),
(6, 'Janhavi A Sangaonkar', '2001-08-31', 'null', 'A Positive', 'Toothache', '98', '95', '5', '45', '72', '11', '120', '80', '6', '3', 'T-LAC 20Mg', 'samruddhi123@gmail.com', '04/03/2023'),
(7, 'Sejal A Sakharkar', '0202-12-12', 'Female', 'A Positive', 'Temprature', '98', '96', '157', '49', '65', '56', '55', '45', '56', '76', 'Dolo 3 time in day morning afternoon evening after lunch\r\n', 'yuga@gmail.com', '29/04/2023'),
(8, 'Sakshi Sujit Shirsat', '2000-12-12', 'Female', 'A Positive', 'Hight fever headache', '100', '95', '150', '45', '65', '45', '54', '67', '56', '54', 'Dolo--- 3 Time 2 days\r\nPanta D--2 time 2 Days\r\n', 'ak@gmail.com', '07/05/2023');

-- --------------------------------------------------------

--
-- Table structure for table `physician_profile`
--

CREATE TABLE `physician_profile` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `full_name` varchar(300) DEFAULT NULL,
  `speacility` varchar(300) DEFAULT NULL,
  `qualification` varchar(300) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `society_name` varchar(300) DEFAULT NULL,
  `street_name` varchar(300) DEFAULT NULL,
  `locality` varchar(300) DEFAULT NULL,
  `city` varchar(300) DEFAULT NULL,
  `state` varchar(300) DEFAULT NULL,
  `pin_code` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `physician_profile`
--

INSERT INTO `physician_profile` (`id`, `email`, `full_name`, `speacility`, `qualification`, `gender`, `dob`, `mobile`, `society_name`, `street_name`, `locality`, `city`, `state`, `pin_code`) VALUES
(1, 'yuga@gmail.com', 'Yuga R Surange', 'Audiologist', 'MD', 'Male', '1992-08-12', '9876364878', 'ABCDE', 'QWER', 'Akurdi', 'null', 'Maharashtra', '4110044'),
(2, 'yuga1@gmail.com', 'Ramesh R Surange', 'Audiologist', 'MD', 'Male', '1992-08-12', '9876364878', 'ASDF', 'QAZ', 'Nigadi', 'null', 'Maharashtra', '4110044'),
(3, 'yuga2@gmail.com', 'Yogesh R Surange', 'Cardiologist', 'MBBS', 'Male', '2000-08-10', '9876364878', 'wsx', 'edc', 'PIMPRI', 'null', 'Maharashtra', '4110031'),
(4, 'yuga3@gmail.com', 'Dinesh R Surange', 'Cardiologist', 'MBBS', 'Male', '2000-09-10', '9876364878', 'poi', 'lkj', 'Chakan', 'null', 'Maharashtra', '4110031'),
(5, 'rohit@gmail.com', 'Prohit A Joshi', 'Dentist', 'MBBS', 'Male', '2000-12-12', '9876364878', 'ABC', 'XAY Road', 'Nashik', 'null', 'Maharashtra', '443103'),
(6, 'ross@gmail.com', 'Ross J Gellar', 'Orthopaedic Surgeon', 'MBBS', 'Male', '2001-01-17', '9876364878', 'Akurdi', 'FC Road', 'Pune', 'null', 'Maharashtra', '416012'),
(7, 'ram1@gmail.com', 'Ram R Rathod', 'Dentist', 'BHMS', 'Male', '1978-05-31', '9876364878', 'ABC Colony', 'Ram Road', 'Bhosari', 'null', 'Maharashtra', '441201'),
(8, 'mayur@gmail.com', 'Mayur Vijay Patil', 'Cardiologist', 'MBBS', 'Male', '2000-01-30', '9876364878', 'IMCC', 'FC', 'Ravet', 'null', 'Maharashtra', '413010'),
(10, 'janvhi@gmail.com', 'Janvhi Ajit sanganokar', 'Gynaecologist', 'MBBS', 'Male', '2001-10-31', '9876364878', 'IMCC', 'FC', 'Pune', 'null', 'Maharashtra', '123456'),
(11, 'joey123@gmail.com', 'Joey J Tribiani', 'Psychiatrists', 'MBBS', 'Male', '1993-06-08', '9876364878', 'Central Perk', 'NYC', 'NY', 'null', 'Maharashtra', '100105'),
(12, 'samruddhi123@gmail.com', 'Samruddhi  A Tarlekar', 'Dentist', 'B.D.S', 'Male', '1996-07-01', '9876364878', 'Alandi', 'Dehu Road', 'Atos', 'null', 'Maharashtra', '411044'),
(13, 'vaish@gmail.com', 'Vaishnavi S Waghmare', 'Neurologist', 'MBBS', 'Male', '2023-03-02', '9876364878', 'KArve', 'Kothrud', 'Mayur Colony', 'null', 'Maharashtra', '411044'),
(14, 'samruddhi123@gmail.com', 'Samruddhi  A Tarlekar', 'Dentist', 'B.D.S', 'Male', '1996-07-01', '9876364878', 'Alandi', 'Dehu Road', 'Atos', 'null', 'Maharashtra', '411044'),
(15, 'ronit1011@gmail.com', 'Ronit R Kakade', 'Cardiologist', 'MBBS', 'Male', '1998-04-13', '9881499861', 'C Ward', 'Shaniwar Peth', 'Kolhapur', 'null', 'Maharashtra', '416002'),
(16, 'ak@gmail.com', 'Akansha R Dombe', 'Audiologist', 'MD', 'Male', '2000-12-12', '8799879988', 'Sai Hospital', 'Bijali Nagar', 'Nigadi', 'null', 'Maharashtra', '4111044');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(300) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `uidno` varchar(30) DEFAULT NULL,
  `reg_date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `full_name`, `user_type`, `mobile`, `email`, `password`, `uidno`, `reg_date`) VALUES
(1, 'Ritesh Rama Surange', 'Member-Individual', '8275329929', 'riteshsurange20@gmail.com', '123123', NULL, '28/04/2023'),
(2, 'Yuga R Surange', 'Physician', '8900890089', 'yuga@gmail.com', '123456', NULL, '28/04/2023'),
(3, 'Rohit A Joshi', 'Physician', '8900890087', 'rohit@gmail.com', '123456', NULL, '08/04/2023'),
(4, 'Ram A Patil', 'Member-Individual', '9800980098', 'ram@gmail.com', '123123', NULL, '08/04/2023'),
(5, 'Avadhut Shivaji Lad', 'Member-Individual', '1234567890', 'abc@gmail.com', 'Avadhut123', NULL, '03/03/2023'),
(6, 'Ross J Gellar', 'Physician', '9876543210', 'ross@gmail.com', 'Ross123', NULL, '03/03/2023'),
(7, 'Aniruddha Rajesh Kakade', 'Member-Individual', '7218191186', 'ani@gmail.com', 'Aniruddha123', '865773016171', '03/03/2023'),
(8, 'Ram R Rathod', 'Physician', '9876987698', 'ram1@gmail.com', '123123', '123412341234', '03/03/2023'),
(9, 'Avadhut S Lad', 'Physician', '7972152407', 'avadhut@gmail.com', 'Avadhut@123', '852845164468', '03/03/2023'),
(10, 'Mayur Vijay Patil', 'Physician', '1122334455', 'mayur@gmail.com', 'mayur123', '112233445566666', '03/03/2023'),
(11, 'Janvhi Ajit sangaonkar', 'Physician', '1111122222', 'janvhi@gmail.com', 'janvhi123', '111111222222', '03/03/2023'),
(12, 'Joey J Tribiani', 'Physician', '9876543210', 'joey123@gmail.com', 'Joey123', '999988887777', '04/03/2023'),
(13, 'Chandler C Bing', 'Member-Individual', '1234567890', 'chandler@gmail.com', 'Chandler123', '333322221111', '04/03/2023'),
(14, 'Janhavi A Sangaonkar', 'Member-Individual', '9175310845', 'janhavi312sangaonkar@gmail.com', 'Janhavi123', '864082486711', '04/03/2023'),
(15, 'Samruddhi A Tarlekar', 'Physician', '7028257574', 'samruddhi123@gmail.com', 'Sam123', '111155557777', '04/03/2023'),
(16, 'Vaishnavi  S Waghmare', 'Physician', '7248950546', 'vaish@gmail.com', 'vaish123', '927213919682', '04/03/2023'),
(17, '00000000000 1111111111 333333333', 'Physician', '002021102000', '2', 'Aniruddha123', '30', '13/03/2023'),
(18, '4 5 5', 'Physician', '1', '2', 'Aniruddha123', '20', '13/03/2023'),
(19, 'Ronit R Kakade', 'Physician', '9881499861', 'ronit1011@gmail.com', 'ronit1011', '123456781234', '19/03/2023'),
(20, 'Sejal A Sakharkar', 'Member-Individual', '9879879877', 'sejal@gmail.com', '123123', '231321231231', '29/04/2023'),
(21, 'Akanksha  Ratnasinh Dombe', 'Physician', '9800980098', 'ak@gmail.com', '123123', '980098009899', '07/05/2023'),
(22, 'Sakshi Sujit Shirsat', 'Member-Individual', '8788567865', 'sakshi@gmail.com', '123123', '563456326909', '07/05/2023');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `full_name` varchar(300) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `blood_type` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `uid_no` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `society_name` varchar(300) DEFAULT NULL,
  `street_name` varchar(300) DEFAULT NULL,
  `locality` varchar(300) DEFAULT NULL,
  `city` varchar(300) DEFAULT NULL,
  `state` varchar(300) DEFAULT NULL,
  `pin_code` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_email`, `full_name`, `dob`, `blood_type`, `gender`, `uid_no`, `mobile`, `relation`, `society_name`, `street_name`, `locality`, `city`, `state`, `pin_code`) VALUES
(3, 'riteshsurange20@gmail.com', 'Ramesh R Rathod', '2014-10-30', 'O Negative', 'Male', '8900890089', '8900890089', 'Brother', 'A', 'B', 'C', 'null', 'Maharashtra', '443101'),
(4, 'riteshsurange20@gmail.com', 'Dinesh R Rathod', '2014-10-30', 'O Positive', 'Male', '8900890081', '8900890081', 'Big Brother', 'AA', 'BB', 'CV', 'null', 'Maharashtra', '443111'),
(5, 'ram@gmail.com', 'Mangesh R Surange', '1998-12-12', 'A Positive', 'Male', '89000890089', '8900897676', 'Brother', 'A', 'B', 'A', 'null', 'Maharashtra', '333333'),
(6, 'abc@gmail.com', 'Avadhut Shivaji Lad', '2001-03-01', 'O Positive', 'Male', '857883201827', '1234567890', 'self', 'Ravet', '1', 'Pune', 'null', 'Maharashtra', '416010'),
(7, 'ani@gmail.com', 'Aniruddha Rajesh Kakade', '2001-11-30', 'B Positive', 'Male', '865773016171', '7218191186', 'Self', 'Akurdi', 'xyz', 'Pune', 'null', 'Maharashtra', '411044'),
(9, 'chandler@gmail.com', 'Chandler C Bing', '1993-01-11', 'A Positive', 'Male', '333322221111', '1234567890', 'Self', 'NNN', 'YYY', 'CCC', 'null', 'Maharashtra', '111335'),
(10, 'janhavi312sangaonkar@gmail.com', 'Janhavi A Sangaonkar', '2001-08-31', 'A Positive', 'Female', '864082486711', '9175310845', 'Self', 'Karve Nagar', 'Canal Road', 'Warje', 'null', 'Maharashtra', '411052'),
(11, 'janhavi312sangaonkar@gmail.com', 'Janhavi A Sangaonkar', '2001-08-31', 'A Positive', 'Female', '864082486711', '9175310845', 'Self', 'Karve Nagar', 'Canal Road', 'Warje', 'null', 'Maharashtra', '411052'),
(12, 'ani@gmail.com', 'Aniruddha  Rajesh Kakade', '2001-11-30', 'B Positive', 'Male', '865773016171', '7218191186', 'Self', '2473 C Ward', 'Sali Galli', 'Sali Galli', 'null', 'Maharashtra', '416002'),
(13, 'ani@gmail.com', 'Aniruddha Rajesh Kakade', '2001-11-30', 'B Positive', 'Male', '865773016171', '7218191186', 'Self', 'C Ward', 'Shaniwar peth', 'Kop', 'null', 'Maharashtra', '416002'),
(14, 'sejal@gmail.com', 'Sejal A Sakharkar', '2000-12-12', 'A Positive', 'Female', '123412341234', 'sejal@gmail.com', 'Self', 'Flat NO401', 'Sai Road', 'Karve Nagar', 'null', 'Maharashtra', '411038'),
(15, 'sejal@gmail.com', 'Sarvesh A Sakharkar', '2004-01-28', 'A Positive', 'Male', '234523452345', '8900890089', 'Brother', 'Flat NO401', 'Sai Road', 'Karve Nagar', 'null', 'Maharashtra', '411038'),
(16, 'sakshi@gmail.com', 'Sakshi Sujit Shirsat', '2000-12-12', 'A Positive', 'Male', '980098009888', '9800786512', 'Self', 'Sai Appartment', 'Baliaji Road', 'Nigadi', 'null', 'Maharashtra', '411044'),
(17, 'sakshi@gmail.com', 'Sanjay S Shirsat', '2010-02-12', 'A Positive', 'Male', '546734564326', '9800980098', 'Brother', 'Sai Appartment', 'Baliaji Road', 'Nigadi', 'null', 'Maharashtra', '411044');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apointment_details`
--
ALTER TABLE `apointment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appintmentdetails`
--
ALTER TABLE `appintmentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_schedule`
--
ALTER TABLE `facility_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physician_profile`
--
ALTER TABLE `physician_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apointment_details`
--
ALTER TABLE `apointment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appintmentdetails`
--
ALTER TABLE `appintmentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `facility_schedule`
--
ALTER TABLE `facility_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient_history`
--
ALTER TABLE `patient_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `physician_profile`
--
ALTER TABLE `physician_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
