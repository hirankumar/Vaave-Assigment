-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 04:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaave`
--

-- --------------------------------------------------------

--
-- Table structure for table `question_and_answers`
--

CREATE TABLE `question_and_answers` (
  `id` int(25) NOT NULL,
  `subject_names` varchar(255) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answers` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_and_answers`
--

INSERT INTO `question_and_answers` (`id`, `subject_names`, `question`, `answers`, `option1`, `option2`, `option3`, `option4`) VALUES
(1, 'Sports', 'National game of India', 'Hockey', 'Hockey', 'Cricket', 'Kabaddi', 'None of the above'),
(2, 'Sports', 'First Individual Olympic medal winner from independent India', 'KD Jadav', 'HariharBanerjee', 'KD Jadav', 'Pradip Bode', 'None of the above'),
(3, 'Sports', 'Asian Games Last held in India', '1982', '1972', '1986', '1982', '1990'),
(4, 'Sports', 'In which stadium Tendulkar completed his 100thShere Bangla Stadium Century', 'Shere Bangla Stadium', 'Eden Garden', 'Shere Bangla Stadium', 'Firoz Shah Kotla Ground', 'None of the above'),
(7, 'Sports', 'Term Chinaman is related to which sports', 'Cricket', 'Football', 'Hockey', 'Golf', 'Cricket'),
(8, 'Sports', 'The first Indian to cross seven important seas by swimming ____ ?', 'Bula Chaudhury', 'Amrendra Singh', ' Bula Chaudhury', 'Junko Taibei', 'Yuri Gagarin'),
(9, 'Sports', 'With which game does Santosh Trophy is associated', 'National Football', 'Tennis', 'Cricket', 'National Football', 'Golf'),
(10, 'Sports', ' Who hold the national record in 100m sprint running at 10.30 seconds', 'Anil Kumar Prakash', 'Bahadur Prasad', 'KM Binu', 'Anil Kumar Prakash', 'PT Usha'),
(11, 'Sports', 'Who was the first President of BCCI, when it was formed in December 1928', 'RE Grant Grovan', 'RE Grant Grovan', 'Anthony De Mello', 'JC Mukherjee', 'None of the above'),
(12, 'Sports', 'Who is the first recipient of Rajiv Gandhi Khel Ratna Award', 'Viswanathan Anand', 'Sunil Gavaskar', 'Sachin Tendular', 'Milkha Singh', 'Viswanathan Anand'),
(13, 'ScienceAndTechnology', 'Which company commissioned India\'s largest floating solar photovoltaic(PV) project of 25 megawatts (MW)?', 'NTPC', 'Tata Power', 'Adani Power', 'NTPC', 'Reliance Energy'),
(14, 'ScienceAndTechnology', 'Which of the following is a non-conventional energy source?', 'Wind energy', 'Coal', 'Petrol', 'Wind energy', 'Diesel'),
(15, 'ScienceAndTechnology', 'What does PUMA stand for in context of Robotics?', 'Programmable Universal Machine for Assembly', 'Programmable Used Machine to Assemble', 'Programmed Machine for Assembly', 'Programmable Universal Machine for Assembly', 'Programmed Utility Machine to Assemble'),
(16, 'ScienceAndTechnology', 'Microwaves are electromagnetic waves having frequencies in range of -', '3 MHz - 300 MHz', '300 KHz-3 MHz', '3 MHz - 300 MHz', '1 GHz-300 GHz', '300 GHz-400 THz'),
(17, 'ScienceAndTechnology', 'Which organization developed an Indian robot named Vyom mitra?', 'ISRO', 'C-DAC, Pune', 'ISRO', 'TIFR', 'DRDO'),
(18, 'ScienceAndTechnology', ' Which country has become the first one to approve commercial production of genetically modified golden rice?', 'The Philippines', 'Thailand', 'Cambodia', 'Bangladesh', 'The Philippines'),
(19, 'ScienceAndTechnology', 'The count of coliform bacteria provides an idea of -', 'Microbial contamination in river water', 'E. coli infection in blood', 'presence of E. coli in intestine', 'Microbial contamination in river water', 'microbial contamination in packaged food'),
(20, 'ScienceAndTechnology', 'Identify The INCORRECT statement about water cycle from the option given below .', 'Water vapour comes in atmosphere through transpiration only', 'Evaporation of water', 'Water vapour comes in atmosphere through transpiration only', 'Melting of snow is a part of water cycle', 'sunlight is also responsible for evaporation of water'),
(21, 'ScienceAndTechnology', 'Ultrasound waves are NOT used for the following purposes ?', 'To defeat aero plane in any air space', 'To locate its prey by a bat', 'To know the depth of sea bed by a ship', 'To diagnose defeat in internals organs of human body', 'To defeat aero plane in any air space'),
(22, 'ScienceAndTechnology', 'The Noble Prize for 2018 in the area of physics has been awarded for the work in the area of -', 'Laser physics', 'Laser physics', 'Black hole', 'Magnetic resonance', 'Gravitational wave'),
(23, 'Arts', 'The famous painter Vincent van Gogh belonged to which country?', 'The Netherlands', 'Spain', 'The Netherlands', 'Italy', 'France'),
(24, 'Arts', ' ‘Madhubani’ a style of folk paintings, is popular in which of the following states in India?', 'Bihar', 'Bihar', 'Madhya Pradesh', 'West Bengal', 'Rajasthan'),
(25, 'Arts', ' Pablo Picasso belonged to which country?', 'Spain', 'France', 'Germany', 'Spain', 'Italy'),
(26, 'Arts', 'Nand Lal Bose, Manjit Bawa, Tyeb Mehta are', 'Painters', 'Classical Singers', 'English Poets', 'Photographers', 'Painters'),
(27, 'Arts', 'Warli painting is indigenous to which State?', 'Maharashtra', 'Gujarat', 'Rajasthan', 'Odisha', 'Maharashtra'),
(28, 'Arts', 'Raja Harishchandra, an early Indian film was produced by', 'Dada Saheb Phalke', 'Dada Saheb Phalke', 'Ashok Kumar', 'Ardeshir Irani', 'Gurudatt'),
(29, 'Arts', 'Yavanika or curtain was introduced in Indian theatre by which of the following?', 'Greeks', 'Shakas', 'Greeks', 'Huns', 'Persians'),
(30, 'Arts', 'Who among the following is a distinguished actor as well as recipient of Jnanpith Award (the highest literary award in India)?', 'Girish Karnad', 'Vijay Tendulkar', 'Kaifi Azmi', 'Javed Akhtar', 'Girish Karnad'),
(31, 'Arts', 'Homi Vyarawalla is acclaimed as Indias first -', 'Lady Photojournalist', 'Lady Painter', 'Lady Photojournalist', 'Lady Kathak Dancer', 'Lady Playback singer'),
(32, 'Arts', 'Ikebana is Japanese art of :', 'flower arrangement', 'paper craft', 'dress designing', 'miniature tree farming', 'flower arrangement'),
(33, 'Politics', 'Union Budget is always presented first in ________', 'The Lok Sabha', 'The Lok Sabha', 'The Rajya Sabha', 'Joint session of the Parliament', 'Meeting of the Union Cabinet'),
(34, 'Politics', 'Who proposed the Preamble before the Drafting Committee of the Constitution', 'Jawaharlal Nehru', ' B.R. Ambedkar', 'B.N.Rau', 'Mahatma Gandhi', 'Jawaharlal Nehru'),
(35, 'Politics', 'Who proposed the Preamble before the Drafting Committee of the Constitution', 'Jawaharlal Nehru', ' B.R. Ambedkar', 'B.N.Rau', 'Mahatma Gandhi', 'Jawaharlal Nehru'),
(36, 'Politics', 'Who is the guardian of fundamental Rights enumerated in Indian Constitution?', 'Supreme Court', 'Parliament', 'Constitution', 'Supreme Court', 'President'),
(37, 'Politics', 'The first Law Officer of the Government of India is the', 'Attorney-General for India', 'Union Law Minister', 'Secreatary, Ministry of Law', 'Attorney-General for India', 'Chief Justice of the Supreme Court'),
(38, 'Politics', 'The Constitution of India borrowed the scheme of Indian Federation from the constitution of', 'Canada', 'USA', 'Canada', 'United Kingdom', 'Ireland'),
(39, 'Politics', 'Who have the power to decide an election petition?', 'High Courts', 'Parliament', 'Supreme Court', 'High Courts', 'Election Commission'),
(40, 'Politics', 'Right to property was removed from the list of Fundamental Rights during the rule of', 'Morarji Desai Government', 'Indhira Gandhi Government', 'Morarji Desai Government', 'Narasimha Rao Government', ' Vajpayee Government'),
(41, 'Politics', 'By virtue of which Act, Diarchy was introduced in India', ' Government of India Act, 1919', ' Indian Council Act, 1909', ' Government of India Act, 1919', 'Government of India Act, 1935', ' indian Independence Act, 1947'),
(42, 'Politics', '\'The Federal System with strong centre\' has been borrowed by the Indian Constitution from', 'Canada', 'USA', 'Canada', 'UK', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `subject_names`
--

CREATE TABLE `subject_names` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_names`
--

INSERT INTO `subject_names` (`id`, `subject_name`) VALUES
(1, 'Sports'),
(2, 'ScienceAndTechnology'),
(3, 'Arts'),
(4, 'Politics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question_and_answers`
--
ALTER TABLE `question_and_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_names`
--
ALTER TABLE `subject_names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question_and_answers`
--
ALTER TABLE `question_and_answers`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subject_names`
--
ALTER TABLE `subject_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
