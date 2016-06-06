-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 07:43 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posts`
--
CREATE DATABASE IF NOT EXISTS `posts` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `posts`;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `postID` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `postdesc` text NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`postID`, `title`, `postdesc`, `content`, `date`) VALUES
(1, 'Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in nibh eu risus varius commodo ac non ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc in justo nec odio luctus luctus. Nullam finibus felis a eros dictum, non facilisis felis mattis. Curabitur pulvinar vestibulum massa in iaculis. Aliquam quis feugiat ligula, vitae tempus arcu. Praesent scelerisque, tellus sit amet vulputate rhoncus, dui neque efficitur ante, et viverra turpis nisi maximus dolor. Fusce tristique rutrum sapien, in sollicitudin purus blandit et. Curabitur tristique fringilla orci vel pellentesque. Quisque a ex posuere, porttitor lectus sed, porttitor diam. Suspendisse sit amet ultrices tortor.', '2016-05-22 15:40:00'),
(2, 'Hello', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in nibh eu risus varius commodo ac non ex. Class aptent taciti', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in nibh eu risus varius commodo ac non ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc in justo nec odio luctus luctus. Nullam finibus felis a eros dictum, non facilisis felis mattis. Curabitur pulvinar vestibulum massa in iaculis. Aliquam quis feugiat ligula, vitae tempus arcu. Praesent scelerisque, tellus sit amet vulputate rhoncus, dui neque efficitur ante, et viverra turpis nisi maximus dolor. Fusce tristique rutrum sapien, in sollicitudin purus blandit et. Curabitur tristique fringilla orci vel pellentesque. Quisque a ex posuere, porttitor lectus sed, porttitor diam. Suspendisse sit amet ultrices tortor.', '2016-05-15 07:20:00'),
(4, 'Selling Books', 'I want to sell books.', 'I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.I want to sell books.', '2016-05-16 12:30:00'),
(5, 'Question about S.E IT Portion', 'Don''t believe anything that you read on the internet, it may be fake.', 'Don''t believe anything that you read on the internet, it may be fake.Don''t believe anything that you read on the internet, it may be fake.Don''t believe anything that you read on the internet, it may be fake.Don''t believe anything that you read on the internet, it may be fake.Don''t believe anything that you read on the internet, it may be fake.Don''t believe anything that you read on the internet, it may be fake.', '2016-05-19 11:16:00'),
(6, 'Selling my Cat', 'Throw a stick, and the servile dog wheezes and pants and stumbles to bring it to you. Do the same before a cat, and he will eye you with coolly polite and somewhat bored amusement.', 'Throw a stick, and the servile dog wheezes and pants and stumbles to bring it to you. Do the same before a cat, and he will eye you with coolly polite and somewhat bored amusement. And just as inferior people prefer the inferior animal which scampers excitedly because someone else wants something, so do superior people respect the superior animal which lives its own life and knows that the puerile stick-throwings of alien bipeds are none of its business and beneath its notice. The dog barks and begs and tumbles to amuse you when you crack the whip. That pleases a meekness-loving peasant who relishes a stimulus to his self importance. The cat, on the other hand, charms you into playing for its benefit when it wishes to be amused; making you rush about the room with a paper on a string when it feels like exercise, but refusing all your attempts to make it play when it is not in the humour. That is personality and individuality and self-respect -- the calm mastery of a being whose life is its own and not yours -- and the superior person recognises and appreciates this because he too is a free soul whose position is assured, and whose only law is his own heritage and aesthetic sense', '2016-05-17 06:29:00'),
(7, 'Random', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet lacus vitae pulvinar eleifend. Proin sit amet odio quam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet lacus vitae pulvinar eleifend. Proin sit amet odio quam. Vestibulum rutrum vestibulum enim, nec laoreet risus maximus sed. Donec consequat dapibus enim a sagittis. Curabitur eget erat nulla. Mauris pretium facilisis rutrum. Vestibulum dapibus, ipsum vitae vulputate sodales, mi enim sagittis tortor, vel luctus tellus nisl sit amet est. Pellentesque eu nibh dictum, molestie dui nec, egestas nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet lacus vitae pulvinar eleifend. Proin sit amet odio quam. Vestibulum rutrum vestibulum enim, nec laoreet risus maximus sed. Donec consequat dapibus enim a sagittis. Curabitur eget erat nulla. Mauris pretium facilisis rutrum. Vestibulum dapibus, ipsum vitae vulputate sodales, mi enim sagittis tortor, vel luctus tellus nisl sit amet est. Pellentesque eu nibh dictum, molestie dui nec, egestas nisi.', '2016-05-05 09:24:00'),
(8, 'Another post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet lacus vitae pulvinar eleifend. Proin sit amet odio quam. Vestibulum rutrum vestibulum enim, nec laor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet lacus vitae pulvinar eleifend. Proin sit amet odio quam. Vestibulum rutrum vestibulum enim, nec laoreet risus maximus sed. Donec consequat dapibus enim a sagittis. Curabitur eget erat nulla. Mauris pretium facilisis rutrum. Vestibulum dapibus, ipsum vitae vulputate sodales, mi enim sagittis tortor, vel luctus tellus nisl sit amet est. Pellentesque eu nibh dictum, molestie dui nec, egestas nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet lacus vitae pulvinar eleifend. Proin sit amet odio quam. Vestibulum rutrum vestibulum enim, nec laoreet risus maximus sed. Donec consequat dapibus enim a sagittis. Curabitur eget erat nulla. Mauris pretium facilisis rutrum. Vestibulum dapibus, ipsum vitae vulputate sodales, mi enim sagittis tortor, vel luctus tellus nisl sit amet est. Pellentesque eu nibh dictum, molestie dui nec, egestas nisi.', '2016-05-09 11:47:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
