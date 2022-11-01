
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `hostel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(4, 'B190432CS', 1, 1, NULL, 'want room in ground floor'),
(5, 'B190161CS', 1, 1, NULL, ''),
(6, 'B190321CS', 3, 1, NULL, 'can take any room.'),
(7, 'b190695CS', 1, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(10) NOT NULL,
  `hostel_name` varchar(255) NOT NULL,
  `available_rooms` varchar(255) DEFAULT NULL,
  `total_rooms` varchar(255) DEFAULT NULL,
  `students_present` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `hostel_name`, `available_rooms`, `total_rooms`, `students_present`) VALUES
(1, 'A', NULL, '400', NULL),
(2, 'B', NULL, '400', NULL),
(3, 'C', NULL, '400', NULL),
(4, 'D', NULL, '400', NULL),
(5, 'E', NULL, '400', NULL),
(6, 'F', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `hm_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `h_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isadmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`hm_id`, `username`, `fname`, `lname`, `phone_no`, `h_id`, `password`, `isadmin`) VALUES
(1, 'hmadmin', 'matt', 'murdock', '9876543210', 1, '$2y$10$i2q6095O7c7A7eRtskl95eXCeWJQ4MzSzRYgtJAWwS.mYuV292yAi', 1),
(2, 'hmuser1', 'wilson', 'fisk', '9871234560', 1, '$2y$10$3u3zXfNmVGQAPYxZno.OJu7YKl9Pyj3Nf3W5BEQXM5QCakiRqSzQi', 0);


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

-- INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
-- (12, '2', 'b191060cs', 2, 'as', 'asas', '2021-12-01', '07:01 PM');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `h_id` int(10) NOT NULL,
  `room_no` int(10) NOT NULL,
  `allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `h_id`, `room_no`, `allocated`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 2, 1, 0),
(7, 2, 2, 0),
(8, 2, 3, 0),
(9, 2, 4, 0),
(10, 2, 5, 0),
(11, 3, 1, 0),
(12, 3, 2, 0),
(13, 3, 3, 0),
(14, 3, 4, 0),
(15, 3, 5, 0),
(16, 4, 1, 0),
(17, 4, 2, 0),
(18, 4, 3, 0),
(19, 4, 4, 0),
(20, 4, 5, 0),
(21, 5, 1, 0),
(22, 5, 2, 0),
(23, 5, 3, 0),
(24, 5, 4, 0),
(25, 5, 5, 0),
(26, 6, 1, 0),
(27, 6, 2, 0),
(28, 6, 3, 0),
(29, 6, 4, 0),
(30, 6, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `department` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `h_id` int(10) DEFAULT NULL,
  `room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `fname`, `lname`, `phone_no`, `department`, `year`, `email`, `password`, `h_id`, `room_id`) VALUES
('B190161CS', 'Saketh', 'Challa', '8688524646', 'cse', '2019', 'challa_b190161cs@nitc.ac.in', '$2y$10$hHI1S7spx2PajK.CMufdCOppd3x6wxXp2djNUF66wGf8u/AGiG/zq', NULL, NULL),
('B190432CS', 'Bhargav', 'Masina', '6301962245', 'cse', '2019', 'masinasai_b190432cs@nitc.ac.in', '$2y$10$9p0ssv2vKCPpzQaI1lALzugtVCiYLNGp1q0GYyrbjXNzu/4ndZ2VO', NULL, NULL),
('B190321CS', 'Varun', 'Suddala', '8374010545', 'cse', '2019', 'varun_b190321cs@nitc.ac.in', '$2y$10$FrO4DiShtEpD/ny1w5XBe.Y88O9gn.sNSKTJ5YXRzuLpHrYQmxWQq', NULL, NULL),
('B190695CS', 'Manogna', 'Moturu', '8179330802', 'cse', '2019', 'moturu_b190695cs@nitc.ac.in', '$2y$10$fKyxoZXJBWz3SPlDrAV1s.qA4rAADVf6NLv0FcOKROl6YalJnTk2W', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`hm_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `h_id` (`h_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `h_id` (`h_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `room_id` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `hm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hostel` (`hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hostel` (`hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hostel` (`hostel_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);
COMMIT;
