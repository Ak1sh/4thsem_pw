-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 07:14 PM
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
-- Database: `hire_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`) VALUES
(2, 'admn@gmail.com', 'canedit');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(10) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Details` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Year` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `Name`, `status`, `Details`, `Contact`, `Year`) VALUES
(10, 'Ravi Sathish', 1, 'Scientist SG for ISRO', 'ravisathish@isro.gov.in', 2015),
(11, 'Akarsh Singh', 1, 'AI Architect at V-Labs', 'Akarsh@vlabs.com', 2013),
(12, 'Soniya Mahesh', 1, 'Security Engineer at Paypal', 'SoniyaM@paypal.com', 2015),
(13, 'Arpit Agarwal', 1, 'Blockchain Developer at Walmart', 'Arpit@walmart.com', 2016),
(14, 'Dr.Akhila Mishra', 1, 'Data Scientist at Reliance', 'akhila@reliance.ac.in', 2011),
(15, 'Teja J', 1, 'System Debugger at Intel', 'tejaj@intel.com', 2015),
(16, 'Arnav Majarekar', 1, 'Server Architect at HP', 'Arnav@hpe.com', 2015),
(17, 'Prerak Shukla', 1, 'CEO (Shukla Coaching Centre)', 'Prerak@shuklacoaching.io', 2020),
(18, 'Thrisha Jain', 1, 'Full Stack Developer at Food Panda', 'Thrisha@foodpanda.com', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Location` varchar(40) NOT NULL,
  `CGPA` float NOT NULL,
  `Vdate` date NOT NULL DEFAULT current_timestamp(),
  `Title` varchar(40) NOT NULL DEFAULT 'others'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`, `Location`, `CGPA`, `Vdate`, `Title`) VALUES
(30, 'Internship', 1, 'Amazon Banglore', 8, '2022-08-07', 'SDE'),
(35, 'Internship', 1, 'Google, Warsaw', 9, '2023-01-11', 'WEB'),
(36, 'Internship', 1, 'Flipkart, Mumbai', 8, '2024-01-11', 'DA'),
(37, 'Internship', 1, 'Adobe, Banglore', 7.5, '2022-08-16', 'others'),
(38, 'Full time', 1, 'ABC, Banglore', 7, '2022-08-08', 'SDE'),
(40, 'Internship', 1, 'Nutanix', 7, '2023-08-08', 'SDE'),
(41, 'Internship', 1, 'Foxconn , Tucheng', 7.5, '2022-08-16', 'Full Stack Developer'),
(42, 'Internship', 1, 'Dell , Texas', 8.67, '2002-08-08', 'Full Stack Developer'),
(43, 'Internship', 1, 'Sony, Tokyo', 9, '2022-09-28', 'Full Stack Developer'),
(44, 'Internship', 1, 'Hitachi ltd, Tokyo', 7, '2023-01-11', 'Full Stack Developer'),
(45, 'Internship', 1, 'Tencent, Shenzhen', 8, '2023-05-08', 'Full Stack Developer'),
(46, 'Internship', 1, 'Intel, Santa Clara', 7.5, '2022-11-16', 'SDE'),
(47, 'Internship', 1, 'Cred, Banglore', 7, '2023-01-16', 'SDE'),
(48, 'Internship', 1, 'Clootrack , Chennai', 9, '2022-08-29', 'Data Analyst'),
(49, 'Internship', 1, 'MSCI Inc, Mumbai', 7.5, '2022-12-16', 'Data  Analyst'),
(50, 'Internship', 1, 'Ecozen Solutions, Pune', 8, '2024-01-11', 'Data  Analyst'),
(51, 'Internship', 1, 'Cartier, Delhi', 7.5, '2023-01-11', 'Data  Analyst'),
(52, 'Internship', 1, 'Greenwhich Associates,Pune', 7.5, '2023-01-11', 'Data  Analyst'),
(53, 'Internship', 1, 'Deutsche Bank, Banglore', 7, '2022-08-16', 'Data  Analyst'),
(54, 'Internship', 1, 'Sigmoid, Banglore', 9, '2023-01-11', 'Dev Ops Engineer'),
(55, 'Internship', 1, 'Exact Space, Banglore', 8, '2023-01-11', 'Dev Ops Engineer'),
(56, 'Internship', 1, 'IBM, Banglore', 8.5, '2002-09-08', 'Dev Ops Engineer'),
(57, 'Internship', 1, 'NeuStar , Hyderabad', 7.5, '2023-01-11', 'Dev Ops Engineer'),
(58, 'Internship', 1, 'ITC infotech, Banglore', 9, '2023-01-11', 'Dev Ops Engineer'),
(59, 'Internship', 1, 'Tulota Tech Labs, Banglore', 8, '2023-01-11', 'Others'),
(60, 'Internship', 1, 'Entropic Tech(Backend Devloper), Hyderab', 7, '2023-01-11', 'others'),
(61, 'Internship', 1, 'Adobe(Analyst), Pune', 7, '2023-01-11', 'others'),
(62, 'Full Time', 1, 'Amazon Banglore', 8, '2022-08-07', 'SDE'),
(63, 'Full Time', 1, 'Google, Warsaw', 9, '2023-01-11', 'WEB'),
(64, 'Full Time', 1, 'Flipkart, Mumbai', 8, '2024-01-11', 'DA'),
(65, 'Full Time', 1, 'Adobe, Banglore', 7.5, '2022-08-16', 'others'),
(66, 'Full time', 1, 'ABC, Banglore', 7, '2022-08-08', 'SDE'),
(67, 'Full Time', 1, 'Nutanix', 7, '2023-08-08', 'SDE'),
(68, 'Full Time', 1, 'Foxconn , Tucheng', 7.5, '2022-08-16', 'Full Stack Developer'),
(69, 'Full Time', 1, 'Dell , Texas', 8.67, '2002-08-08', 'Full Stack Developer'),
(70, 'Full Time', 1, 'Sony, Tokyo', 9, '2022-09-28', 'Full Stack Developer'),
(71, 'Full Time', 1, 'Hitachi ltd, Tokyo', 7, '2023-01-11', 'Full Stack Developer'),
(72, 'Full Time', 1, 'Tencent, Shenzhen', 8, '2023-05-08', 'Full Stack Developer'),
(73, 'Full Time', 1, 'Intel, Santa Clara', 7.5, '2022-11-16', 'SDE'),
(74, 'Full Time', 1, 'Cred, Banglore', 7, '2023-01-16', 'SDE'),
(75, 'Full Time', 1, 'Clootrack , Chennai', 9, '2022-08-29', 'Data Analyst'),
(76, 'Full Time', 1, 'MSCI Inc, Mumbai', 7.5, '2022-12-16', 'Data  Analyst'),
(77, 'Full Time', 1, 'Ecozen Solutions, Pune', 8, '2024-01-11', 'Data  Analyst'),
(78, 'Full Time', 1, 'Cartier, Delhi', 7.5, '2023-01-11', 'Data  Analyst'),
(79, 'Full Time', 1, 'Greenwhich Associates,Pune', 7.5, '2023-01-11', 'Data  Analyst'),
(80, 'Full Time', 1, 'Deutsche Bank, Banglore', 7, '2022-08-16', 'Data  Analyst'),
(81, 'Full Time', 1, 'Sigmoid, Banglore', 9, '2023-01-11', 'Dev Ops Engineer'),
(82, 'Full Time', 1, 'Exact Space, Banglore', 8, '2023-01-11', 'Dev Ops Engineer'),
(83, 'Full Time', 1, 'IBM, Banglore', 8.5, '2002-09-08', 'Dev Ops Engineer'),
(84, 'Full Time', 1, 'NeuStar , Hyderabad', 7.5, '2023-01-11', 'Dev Ops Engineer'),
(85, 'Full Time', 1, 'ITC infotech, Banglore', 9, '2023-01-11', 'Dev Ops Engineer'),
(87, 'Full Time', 1, 'Tulota Tech Labs, Banglore', 8, '2023-01-11', 'Others'),
(88, 'Full Time', 1, 'Entropic Tech(Backend Devloper), Hyderab', 7, '2023-01-11', 'others'),
(89, 'Full Time', 1, 'Adobe(Analyst), Pune', 7, '2023-01-11', 'others');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_url`) VALUES
(1, 'IMG-630a2d0667d881.46697920.jpg'),
(2, 'IMG-630a2d0a1fb336.63031642.jpg'),
(3, 'IMG-630a2d2304cc44.27874225.jpg'),
(4, 'IMG-630a340ba76534.71070218.jpg'),
(5, 'IMG-630a374d215d36.50536704.jpg'),
(6, 'IMG-630a37547d3218.69683039.jpg'),
(7, 'IMG-630a37a13cd153.83616092.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(10) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Links` varchar(40) NOT NULL,
  `Title` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `Description`, `status`, `Links`, `Title`) VALUES
(10, 'AIX System administration for Beginners.', 1, 'https://www.udemy.com/course/aix-admin/', 'System Management'),
(11, 'Learn about servers, Active Directory ,D', 1, 'https://www.udemy.com/course/windowsserv', 'System Management'),
(12, 'Computer Security and Systems Management', 1, 'https://www.coursera.org/specializations', 'System Management'),
(13, 'Enterprise System Management and Securit', 1, 'https://www.coursera.org/learn/enterpris', 'System Management'),
(14, 'Linux Server Management and Security', 1, 'https://www.coursera.org/learn/linux-ser', 'System Management'),
(15, 'What does a SyStems Manager do.', 1, 'https://www.computerscience.org/careers/', 'System Managementsecond'),
(16, 'How to become a Systems Manager in 2022.', 1, 'https://www.zippia.com/systems-manager-j', 'System Managementsecond'),
(17, 'WHAT CAN I DO WITH A MANAGEMENT INFORMAT', 1, 'https://eller.arizona.edu/programs/under', 'System Managementsecond'),
(18, 'Systems Manager Job Description Template', 1, '\"https://hiring.monster.com/resources/jo', 'System Managementsecond'),
(19, 'IT Systems Manager Job Description and S', 1, 'https://www.upskilled.edu.au/your-career', 'System Managementsecond'),
(20, 'IT Systems Manager Job Description and S', 1, 'https://www.upskilled.edu.au/your-career', 'IT'),
(21, 'Learn how your company can protect its i', 1, 'https://www.udemy.com/course/isoiec-2700', 'IT'),
(22, 'Learn how your company can protect its i', 1, 'https://www.upskilled.edu.au/your-career', 'IT'),
(23, 'AWS Cloud Foundations Learning Plan', 1, 'https://aws.amazon.com/training/learn-ab', 'IT'),
(24, 'Google IT Support Professional Certifica', 1, 'https://www.coursera.org/professional-ce', 'IT'),
(25, 'Information Technology Foundations', 1, 'https://www.edx.org/course/information-t', 'ITsecond'),
(26, 'An Accenture technology career helps you', 1, 'https://www.accenture.com/in-en/careers/', 'ITsecond'),
(27, 'Professional IT Membership', 1, 'https://www.isaca.org/membership/profess', 'ITsecond'),
(28, '20 Jobs in IT to EXplore', 1, 'https://in.indeed.com/career-advice/find', 'ITsecond'),
(29, 'Information technology is a popular buzz', 1, 'https://www.wgu.edu/blog/information-tec', 'ITsecond'),
(30, 'Cyber Security Expert', 1, 'https://www.simplilearn.com/cyber-securi', 'Cyber Security'),
(31, 'Network & Security Courses', 1, 'https://www.udemy.com/courses/it-and-sof', 'Cyber Security'),
(32, 'IT & SoftwareNetwork & SecurityIT Troubl', 1, 'https://www.udemy.com/course/it-troubles', 'Cyber Security'),
(33, 'Learn network security online', 1, 'https://www.coursera.org/courses?query=n', 'Cyber Security'),
(34, 'cybersecurity careers', 1, 'https://www.accenture.com/in-en/careers/', 'Cyber Security second'),
(35, '10 Cybersecurity Jobs: Entry-Level and B', 1, 'https://www.coursera.org/articles/cybers', 'Cyber Security second'),
(36, 'Top 6 Cyber Security Jobs in 2022: Caree', 1, 'https://www.simplilearn.com/tutorials/cy', 'Cyber Security second'),
(37, 'HOW TO GET A GOVERNMENT JOB AS A CYBERSE', 1, 'https://www.analyticsinsight.net/how-to-', 'Cyber Security Second'),
(38, 'Apache Spark with Scala - Hands On with ', 1, 'https://www.udemy.com/course/apache-spar', 'Big Data'),
(39, 'Big Data Specialization Unlock Value in ', 1, 'https://www.coursera.org/specializations', 'Big Data'),
(40, 'Big Data Hadoop Certification Training C', 1, 'https://www.simplilearn.com/big-data-and', 'Big Data'),
(41, 'All Big Data Courses', 1, 'https://www.udemy.com/topic/big-data/', 'Big Data'),
(42, 'The Top 10 Highest-Paying Big Data Caree', 1, 'https://www.northeastern.edu/graduate/bl', 'Big Data second'),
(43, 'How to Boost Your Career in Big Data and', 1, 'https://www.simplilearn.com/how-to-boost', 'Big Data second'),
(44, 'How to Boost Your Career in Big Data and', 1, 'https://www.simplilearn.com/how-to-boost', 'Big Data second'),
(45, '10 Reasons Why Big Data Analytics is the', 1, 'https://www.edureka.co/blog/10-reasons-w', 'Big Data second');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(2, 'k', 'wccaccno8@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `ab` (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
