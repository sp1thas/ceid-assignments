-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2014 at 06:21 μμ
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`email`, `password`, `first_name`, `last_name`, `phone`) VALUES
('admin1@example1.gr', '12345', 'Πάνος', 'Πάνου', 1548745698),
('admin2@example2.gr', '12345', 'Νίκος', 'Νικολάου', 1368974563),
('admin3@example3.gr', '12345', 'Γιώργος', 'Γεωργίου', 1945785632),
('admin4@example4.gr', '12345', 'Δημήτρης', 'Δημητρίου', 1978456397);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `type` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`type`) VALUES
('Εξωτερικές'),
('Εσωτερικές');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
`id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `category` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `date_added` date NOT NULL,
  `date_resolved` date NOT NULL,
  `user_add` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_resolve` varchar(50) COLLATE utf8_bin NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `comments` varchar(50) COLLATE utf8_bin NOT NULL,
  `photo1` varchar(50) COLLATE utf8_bin NOT NULL,
  `photo2` varchar(50) COLLATE utf8_bin NOT NULL,
  `photo3` varchar(50) COLLATE utf8_bin NOT NULL,
  `photo4` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=42 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `title`, `category`, `status`, `description`, `date_added`, `date_resolved`, `user_add`, `user_resolve`, `lat`, `lng`, `comments`, `photo1`, `photo2`, `photo3`, `photo4`) VALUES
(1, 'Σπασμένο τζαμι', 'Εξωτερικές', 'closed', 'Σπασμένο τζάμι στο πίσω μέρος της πρυτανείας', '2014-07-17', '2014-09-27', 'user1@example1.gr', 'admin1@example1.gr', 38.2856, 21.7874, 'αλλάχτηκε', 'images/20.jpeg', 'images/19.jpeg', '0', '0'),
(2, 'Μεγάλη Λακούβα', 'Εξωτερικές', 'open', 'Μεγάλη λακούβα στο δρόμο μπροστά από το συνεδριακό', '2014-07-05', '0000-00-00', 'user2@example2.gr', '', 38.2906, 21.7857, '', 'images/21.jpeg', 'images/18.jpeg', '0', '0'),
(3, 'Χαλασμένο φαναρι ', 'Εξωτερικές', 'open', 'στην διασταύρωση της πρυτανείας', '2014-09-12', '0000-00-00', 'user3@example3.gr', '', 38.2919, 21.7906, '', 'images/22.jpeg', 'images/17.jpeg', '0', '0'),
(4, 'Χαλασμένο κλιματιστικό', 'Εσωτερικές', 'closed', 'Χαλασμένο κλιματιστικό στο ισόγειο της ιατρικής', '2014-07-29', '2014-07-31', 'user3@example3.gr', 'admin1@example1.gr', 38.2924, 21.7923, 'ειδοποιήθηκε η αντιπροσωπεία και επισκευάστηκε', 'images/23.jpeg', 'images/16.jpeg', '0', '0'),
(5, 'Σπασμένη Πόρτα', 'Εσωτερικές', 'closed', 'Σπασμένη πόρτα στον 1ο όροφο του χημικού', '2014-07-02', '2014-07-04', 'user1@example1.gr', 'admin2.example2.gr', 38.2902, 21.7872, '', 'images/24.jpeg', 'images/15.jpeg', '0', '0'),
(6, 'Χαλασμένο ποτιστικό', 'Εξωτερικές', 'open', 'χαλασμένο ποτιστικό στον χώρο της εστίας', '2014-08-10', '0000-00-00', 'user2@example2.gr', '', 38.2862, 21.7889, '', 'images/25.jpeg', 'images/14.jpeg', '0', '0'),
(7, 'Σπασμένη Πόρτα', 'Εσωτερικές', 'closed', 'Σπασμένη πόρτα στο ισόγειο του κτιρίου των ηυ', '2014-08-11', '2014-07-17', 'user4@example4.gr', 'admin2@example2.gr', 38.2847, 21.788, 'επισκευάστηκε από την τεχνική υπηρεσία του πανεπισ', 'images/26.jpeg', 'images/13.jpeg', '0', '0'),
(8, 'Σπασμένη Πινακίδα', 'Εξωτερικές', 'open', 'σπασμένη πινακίδα δίπλα στην πρώτη στάση', '2014-08-23', '0000-00-00', 'user1@example1.gr', '', 38.2857, 21.7849, '', 'images/27.jpeg', 'images/12.jpeg', '0', '0'),
(9, 'Χαλασμένος Σωλήνας', 'Εσωτερικές', 'open', 'χαλασμένος σωλήνας στάζει στις τουαλέτες του ισογείο στο κτήριο του μαθηματικού', '2014-06-11', '0000-00-00', 'user2@example2.gr', '', 38.2904, 21.789, '', 'images/28.jpeg', 'images/11.jpeg', '0', '0'),
(10, 'Σπασμένη Κλειδαρία', 'Εσωτερικές', 'closed', 'σπασμένη κλειδαριά στον πρώτο όροφο του κριρίου των ηλεκτρολόγων.', '2014-07-06', '2014-07-09', 'user3@example3.gr', 'admin1@example1.gr', 38.2878, 21.7884, 'αντικαταστάθηκε επιτυχώς', 'images/29.jpeg', 'images/10.jpeg', '0', '0'),
(11, 'Σπασμένο Λουκέτο', 'Εσωτερικές', 'open', 'σπασμένη κλειδαρία στον χώρο των ηυ', '2014-09-10', '0000-00-00', 'user4@example4.gr', '', 38.2882, 21.7827, '', 'images/30.jpeg', 'images/9.jpeg', '0', '0'),
(12, 'Χαλασμένη Πόρτα', 'Εξωτερικές', 'open', 'Χαλασμένη Πόρτα στο θεατρικών σπουδών', '2014-09-22', '0000-00-00', 'user2@example2.gr', '', 38.2868, 21.789, '', 'images/31.jpeg', 'images/8.jpeg', '0', '0'),
(13, 'Σπασμένο κλιματιστικό', 'Εσωτερικές', 'open', 'σπασμένο κλιματιστικό στο ισόγιο', '2014-09-02', '0000-00-00', 'user3@example3.gr', '', 38.289, 21.7842, '', 'images/32.jpeg', 'images/7.jpeg', '0', '0'),
(14, 'Λακούβα', 'Εξωτερικές', 'open', 'λακούβα έξω από την ιατρική', '2014-09-13', '0000-00-00', 'user4@example4.gr', '', 38.2885, 21.7849, '', 'images/33.jpeg', 'images/6.jpeg', '0', '0'),
(15, 'Βουλομένη τουαλέτα', 'Εσωτερικές', 'open', 'βουλομένη τουαλέτα στο μαθηματικό', '2014-09-15', '0000-00-00', 'user1@example1.gr', '', 38.2872, 21.7857, '', 'images/34.jpeg', 'images/5.jpeg', '0', '0'),
(16, 'Σπασμένη πινακίδα', 'Εξωτερικές', 'open', 'Σπασμένη πινακίδα στην πρυτανεία ', '2014-09-14', '0000-00-00', 'user2@example2.gr', '', 38.2849, 21.7839, '', 'images/35.jpeg', 'images/4.jpeg', '0', '0'),
(17, 'Χαλασμένο πομολο', 'Εσωτερικές', 'open', 'χαλασμένο πόμολο στην αρχιτεκτονικη', '2014-09-22', '0000-00-00', 'user3@example3.gr', '', 38.2897, 21.7877, '', 'images/36.jpeg', 'images/3.jpeg', '0', '0'),
(18, 'Χαλασμένο παράθυρο', 'Εσωτερικές', 'open', 'στο μαθηματικό', '2014-09-12', '0000-00-00', 'user4@example4.gr', '', 38.2897, 21.7839, '', 'images/37.jpeg', 'images/2.jpeg', '0', '0'),
(19, 'Σπασμένο Τζάμι', 'Εσωτερικές', 'open', 'στους ηυ', '2014-09-29', '0000-00-00', 'user2@example2.gr', '', 38.2877, 21.7862, '', 'images/38.jpeg', 'images/1.jpeg', '0', '0'),
(20, 'Διαροή', 'Εξωτερικές', 'open', 'έξω απο το φυσικο', '2014-09-14', '0000-00-00', 'user4@example4.gr', '', 38.2869, 21.7846, '', 'images/39.jpeg', '0', '0', '0'),
(21, 'Σπασμένος Σωλήνας', 'Εξωτερικές', 'open', 'στους ηλεκτρολόγους', '2014-09-02', '0000-00-00', 'user1@example1.gr', '', 38.2881, 21.7849, '', 'images/40.jpeg', '0', '0', '0'),
(22, 'Διαροή', 'Εξωτερικές', 'open', 'στο δρόμο μπροστά από την πρυτανεία', '2014-09-15', '0000-00-00', 'user2@example2.gr', '', 38.2887, 21.784, '', 'images/41.jpeg', '0', '0', '0'),
(23, 'Διαροή', 'Εξωτερικές', 'closed', 'στο δρόμο', '2014-08-11', '2014-09-03', 'user1@example1.gr', 'admin1@example1.gr', 38.2898, 21.7891, 'διορθώθηκε', 'images/42.jpeg', '0', '0', '0'),
(24, 'Σπασμένη Πινακίδα', 'Εξωτερικές', 'closed', 'στην ιατρική', '2014-09-08', '2014-09-09', 'user1@example1.gr', 'admin2@example2.gr', 38.291, 21.7909, 'αντικαταστάθηκε', 'images/43.jpeg', '0', '0', '0'),
(26, 'Σπασμένη Βανα', 'Εσωτερικές', 'open', 'στην ιατρική', '2014-08-23', '0000-00-00', 'user2@example2.gr', '', 38.2919, 21.7897, '', 'images/44.jpeg', '0', '0', '0'),
(37, 'Σπασμένη Λάμπα', 'Εσωτερικές', 'open', 'στο συνεδριακό', '2014-09-25', '0000-00-00', 'user1@example1.gr', '', 38.2931, 21.7905, '', 'images/45.jpeg', '0', '0', '0'),
(38, 'Σπασμένο Πεζοδρόμιο', 'Εξωτερικές', 'open', 'στην πρυτανεία', '2014-09-25', '0000-00-00', 'admin1@example1.gr', '', 38.2903, 21.7892, '', 'images/46.jpeg', '0', '0', '0'),
(39, 'Σπασμένη Βρύση', 'Εσωτερικές', 'open', 'σφδσδ', '2014-09-27', '0000-00-00', 'user1@example1.gr', '', 38.2576, 21.7425, '', 'images/code-works.jpg', '0', '0', '0'),
(40, 'Σπασμένος Σωλίνας', 'Εξωτερικές', 'open', 'στο μαθηματικό', '2014-09-27', '0000-00-00', 'user1@example1.gr', '', 38.2857, 21.791, '', 'images/photo1.jpg', '', '', ''),
(41, 'Χαλασμένο Κλιματιστικό', 'Εσωτερικές', 'open', 'στην ιατρική', '2014-09-27', '0000-00-00', 'user1@example1.gr', '', 38.2918, 21.7897, '', 'images/photo1.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `first_name`, `last_name`, `phone`) VALUES
('user1@example1.gr', '1234', 'Νίκος', 'Παπαδόπουλος', 1024789563),
('user2@example2.gr', '1234', 'Κώστας', 'Κωσταντίνου', 1647895642),
('user3@example3.gr', '1234', 'Θοδωρής', 'Θεοδώρου', 1345784455),
('user4@example4.gr', '1234', 'Γιώργος', 'Γεωργίου', 1122334455);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
