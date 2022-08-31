-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 07:54 PM
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
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Critically Endangered'),
(2, 'Endangered'),
(3, 'Vulnerable'),
(4, 'Near Threatened'),
(5, 'Least Concern'),
(6, 'Other Animals');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 10, 'Nodas Livogiannis', 'nl@gmail.com', 'Wolves are amazing!!', 'approved', '2022-08-05'),
(3, 7, 'Sandy', 'sandy@sandy.com', 'Hello mofo', 'unapproved', '2022-08-05'),
(4, 10, 'Soudan', 'soudan@soudan.com', 'Go Wolfie go!', 'approved', '2022-08-05'),
(5, 10, 'Soudan', 'soudan@soudan.com', 'Go Wolfie go!', 'unapproved', '2022-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 6, 'Sparky\'s day in life', 'Nodas Livogiannis', '2022-08-02', 'sparky.jpg', 'He is hustlin all day for food(esp. bananas).                                ', 'sparky, dogs, food, life', 0, 'draft'),
(2, 6, 'Ira\'s day in life', 'Nodas Livogiannis', '2022-08-02', 'ira.jpg', 'She lays all around the yard and she always wants to play.        ', 'ira, dogs, life, play', 0, 'draft'),
(5, 6, 'Koala', 'Nodas Livogiannis', '2022-08-02', 'unique-animals-australia.jpg', 'Koalas are amazing.                                  ', 'koala, wildlife, chill', 0, 'draft'),
(6, 2, 'Tigers are in danger', 'Takis Tsoukalas', '2022-08-06', 'tiger-facts-you-never-knew-you-wanted-to-know.jpg', 'There is actually only one tiger species, but each type of tiger is considered a subspecies. A subspecies is a group within a species that is either physically or genetically different from the rest. There are nine subspecies or types of tigers, three of which are now extinct. The remaining six subspecies include the Bengal, Indo-Chinese, South China, Amur, and Sumatran tigers.\r\nTigers are one of the most awe-inspiring, courageous wild animals living today. The world’s largest cat species can be found in far east Russia, parts of North Korea, China, India, Southwest Asia and the Indonesian island of Sumatra. However, the human population has grown and encroached on tiger habitats, causing their territory to decrease. Pressure from habitat loss, illegal killing and shrinking food supply have pushed all species of tigers on to the endangered list.                ', 'tigers, extinction, danger', 0, 'published'),
(7, 1, 'Saola', 'Nodas Livogiannis', '2022-08-02', 'Artenvielfalt09.webp', 'The saola (Pseudoryx nghetinhensis), also called spindlehorn, Asian unicorn, or infrequently, Vu Quang bovid, is one of the world\'s rarest large mammals, a forest-dwelling bovine native to the Annamite Range in Vietnam and Laos. It was described in 1993 following a discovery of remains in Vũ Quang National Park by a joint survey of the Vietnamese Ministry of Forestry and the World Wide Fund for Nature. Saolas have since been kept in captivity multiple times, although only for short periods as they died within a matter of weeks to months. The species was first reported in 1992 by Do Tuoc, a forest ecologist, and his associates. The first photograph of a living saola was taken in captivity in 1993. The most recent one was taken in 2013 by a movement-triggered camera in the forest of central Vietnam.', 'saola, critical, asia', 0, 'draft'),
(8, 3, 'Giant Panda', 'Takis Tsoukalas', '2022-08-02', 'panda.jpg', 'The giant panda, a black-and-white bear, has a body typical of bears. It has black fur on its ears, eye patches, muzzle, legs, and shoulders. The rest of the animal\'s coat is white. Although scientists do not know why these unusual bears are black and white, some speculate that the bold coloring provides effective camouflage. In patches of dense bamboo, an immobile giant panda is nearly invisible, and virtually disappears among snow covered rocky outcrops on a mountain slope. This theory does not work, however, when considering that giant pandas have no natural enemies to hide from. Another thought is that the pattern may accentuate social signals in some way, or help giant pandas to identify one another from a distance so they can avoid socializing, as they are typically a solitary animal. Another theory suggests that the black absorbs heat while the white reflects it, helping giant pandas maintain an even temperature. Unfortunately, there is no one conclusive theory as to why giant pandas are black and white.', 'panda, asia, vulnerable', 0, 'draft'),
(9, 4, 'Beluga Whale', 'Nodas Livogiannis', '2022-08-02', 'beluga-whale-3-1440x454.jpg', 'The beluga whale (/bɪˈluːɡə/) (Delphinapterus leucas) is an Arctic and sub-Arctic cetacean. It is one of two members of the family Monodontidae, along with the narwhal, and the only member of the genus Delphinapterus. It is also known as the white whale, as it is the only cetacean to regularly occur with this colour; the sea canary, due to its high-pitched calls; and the melonhead, though that more commonly refers to the melon-headed whale, which is an oceanic dolphin.\r\nThe beluga is adapted to life in the Arctic, with anatomical and physiological characteristics that differentiate it from other cetaceans. Amongst these are its all-white colour and the absence of a dorsal fin, which allows it to swim under ice with ease. It possesses a distinctive protuberance at the front of its head which houses an echolocation organ called the melon, which in this species is large and deformable. The beluga\'s body size is between that of a dolphin and a true whale, with males growing up to 5.5 m (18 ft) long and weighing up to 1,600 kg (3,530 lb). This whale has a stocky body. Like many cetaceans, a large percentage of its weight is blubber (subcutaneous fat). Its sense of hearing is highly developed and its echolocation allows it to move about and find breathing holes under sheet ice. ', 'whale, sea, arctic', 0, 'draft'),
(10, 5, 'Arctic Wolf', 'Nodas Livogiannis', '2022-08-28', 'Arctic-Wolf-877x432.jpg', 'The Arctic wolf (Canis lupus arctos), also known as the white wolf or polar wolf, is a subspecies of grey wolf native to the High Arctic tundra of Canada\'s Queen Elizabeth Islands, from Melville Island to Ellesmere Island. Unlike some populations that move between tundra and forest regions, Arctic wolves spend their entire lives north of the northern treeline. Their distribution to south is limited to the northern fringes of the Middle Arctic tundra on the southern half of Prince of Wales and Somerset Islands. It is a medium-sized subspecies, distinguished from the northwestern wolf by its smaller size, its whiter colouration, its narrower braincase, and larger carnassials. Since 1930, there has been a progressive reduction in size in Arctic wolf skulls, which is likely the result of wolf-dog hybridization.        ', 'wolf, arctic, least concern', 0, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'liboep', '4464', 'Nodas', 'Livogiannis', 'nodas@gmail.com', '', 'admin', ''),
(4, 'kpap', '1234567', 'Kostas', 'Papadopoulos', 'kpap@gmail.com', '', 'subscriber', ''),
(5, 'taktsouk', '345678', 'Takis', 'Tsoukalas', 'takis@gmail.com', '', 'admin', ''),
(7, 'swt', '1234567', 'Swtos', 'Koulis', 'swt@gmail.com', '', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
