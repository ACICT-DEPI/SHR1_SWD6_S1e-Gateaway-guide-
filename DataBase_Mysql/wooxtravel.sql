-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2024 at 01:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wooxtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'kamoza625@gmail.com', '$2y$12$7taPHT1kjyqlJdFCum1InuttJujgEoCKj6jSpeJHYx0HpPhrD9X3e', '2024-09-23 17:20:42', '2024-09-23 14:27:09'),
(3, 'Mohamed', 'mohamedsadekreyad1@gmail.com', '$2y$12$wSudUJ1wB0ZouaNIB8fmZObG33Li1HsP6DwZv2b1wrZyM5eQFuvg6', '2024-09-23 17:20:42', '2024-09-23 14:27:09'),
(4, 'Mohamed', 'mohamedsadekreyad2@gmail.com', '$2y$12$BCErnG0ah9NxVGlg0EWqi.NVMOH9.alE00NwhoHtEcT4D70XLbzWS', '2024-09-23 17:20:42', '2024-09-23 14:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('kamoza625@gmail.com|127.0.0.1', 'i:1;', 1727531408),
('kamoza625@gmail.com|127.0.0.1:timer', 'i:1727531408;', 1727531408);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(24, 'Historical', '2024-09-11 15:45:04', '2024-09-11 15:45:04'),
(25, 'Entertainment', '2024-09-11 15:45:04', '2024-09-11 15:45:04'),
(26, 'Cultural', '2024-09-11 15:45:04', '2024-09-11 15:45:04'),
(27, 'Natural', '2024-09-11 15:45:04', '2024-09-11 15:45:04'),
(28, 'Religious', '2024-09-11 15:45:04', '2024-09-11 15:45:04'),
(29, 'Adventure', '2024-09-11 15:45:04', '2024-09-11 15:45:04'),
(30, 'Shopping', '2024-09-26 16:31:09', '2024-09-25 18:00:00'),
(31, 'Culinary', '2024-09-26 16:32:14', '2024-09-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL,
  `price` varchar(30) NOT NULL,
  `num_days` int(11) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`, `video`, `price`, `num_days`, `country_id`, `created_at`, `updated_at`) VALUES
(2, 'Cairo ', 'cairo.jpg', '0914.mp4', '100', 5, 1, '2024-09-10 18:09:56', '2024-09-10 18:09:56'),
(3, 'Alex', 'alex.jpg', '0914.mp4', '100', 6, 1, '2024-09-10 18:09:56', '2024-09-27 19:23:31'),
(5, 'Luxor', 'download (2).jpg', '0926(1).mp4', '100', 6, 1, '2024-09-26 17:15:51', '2024-09-26 19:21:13'),
(6, 'Aswan', 'aswan.jpg', '0926.mp4', '100', 5, 1, '2024-09-26 19:40:35', '2024-09-26 19:40:35'),
(7, 'South Sinai', 'south.jpg', '0914.mp4', '150', 7, 1, '2024-09-27 21:13:15', '2024-09-27 21:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `population` varchar(30) NOT NULL,
  `territory` varchar(30) NOT NULL,
  `avg_price` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `continent` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `population`, `territory`, `avg_price`, `description`, `image`, `continent`, `created_at`, `updated_at`, `video`) VALUES
(1, 'Egypt', '500', '254', 3000, 'welcome to egypt', 'Egypt.jpg', 'africa', '2024-09-09 13:52:48', '2024-09-26 19:13:01', 'Let s Go - Egypt _ A Beautiful Destinations Original.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landmarks`
--

CREATE TABLE `landmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mainImage` varchar(255) NOT NULL DEFAULT 'default_image.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landmarks`
--

INSERT INTO `landmarks` (`id`, `city_id`, `name`, `desc`, `video`, `address`, `created_at`, `updated_at`, `mainImage`) VALUES
(38, 5, 'Luxor Temple', 'The Luxor Temple was constructed of sandstone blocks from Nubia. The temple is surrounded by mud-brick walls which symbolize the separation between the world and the sacred realm of the gods. The Temple\'s design during the New Kingdom exhibited a set of common design features in the construction of the temple.', 'templeluxor.mp4', 'Luxor City, Luxor, Luxor Governorate', '2024-09-26 18:10:41', '2024-09-27 19:34:11', '1727385041_معبد الاقصر .jpg'),
(39, 5, 'Karnak Temple', 'The Karnak Temple is a massive temple complex to which dozens of pharaohs added their own constructions. The area was in constant development and use between the Middle Kingdom (2080–1640 B.C.) and the early Christian period.', 'Drone footage of Karnak temple in Luxor, Egypt.mp4', 'Karnak, Luxor, Luxor Governorate', '2024-09-26 18:21:54', '2024-09-26 18:21:54', '1727385714_download (1).jpeg'),
(40, 5, 'Mortuary Temple of Hatshepsut', 'Hatshepsut\'s temple, Djeser-djeseru “the Holy of Holies” was designed by the chief steward of Amun, Senenmut. The temple consists of three levels each of which has a colonnade at its far end. On the uppermost level, an open courtyard lies just beyond the portico.', 'Mortuary Temple of Hatshepsut, Egypt\'s Most Powerful Queen .mp4', 'Qurna, Luxor Governorate', '2024-09-26 18:27:23', '2024-09-26 18:27:23', '1727386043_download (1).jpeg'),
(41, 5, 'Valley of the Kings', 'The Valley of the Kings refers to the sloping cliffs above the western floodplain, where the bodies of the pharaohs were laid to rest in tombs cut deep into the rock. These tombs range in size from single chamber burials to massive complexes spanning several thousand square meters.', 'valley of kings.mp4', 'Luxor Center, Luxor Governorate', '2024-09-26 18:38:47', '2024-09-26 18:38:47', '1727386727_download (1).jpeg'),
(46, 6, 'High Dam', 'Aswan High Dam is a rock-fill dam with a length of 3830 meters at the top, of which 520 meters are between the two banks of the Nile and the rest extends in the form of two wings on both sides of the river. Aswan High Dam measures 111m in height, its width at the top is 40 metres.09‏/06‏/2022', '1727480400_The High Dam - Aswan High Dam - What to See in Egypt - Egypt Travel - History of Egypt.mp4', 'High Dam Area, Aswan District, Aswan Governorate', '2024-09-27 20:40:00', '2024-09-27 20:40:00', '1727480400_download (2).jpeg'),
(47, 6, 'The missing obelisk', 'for the temple of Amun in Karnak, work was abandoned because of flaws in the stone and the presence of multiple fissures. Had it been finished, it would have weighed 1168 tonnes, and stood at a height of around 42 metres, taller than any other ancient Egyptian obelisk.', 'The missing obelisk.mp4', 'the northern region of the stone quarries of ancient Egypt in Aswan, Egypt', '2024-09-27 20:45:19', '2024-09-27 20:45:19', '1727480719_download.jpeg'),
(48, 6, 'Elephantine Island', 'Elephantine is 1,600 metres from north to south and 450 metres across at its widest point. The layout of this and other nearby islands in Aswan can be seen from west bank hillsides along the Nile. The island is located just downstream of the First Cataract, at the southern border of Upper Egypt with Lower Nubia.', 'Travel and Explore Elephantine Island in Egypt.mp4', 'First Sheikha, Aswan District, Aswan Governorate', '2024-09-27 20:49:22', '2024-09-27 20:49:22', '1727480962_2022-11-19.jpg'),
(49, 6, 'El Nabatat Island', 'El Nabatat Island or Kitchener\'s Island, ( Geziret En Nabatat (Plant Island) or the Botanical Island) is a small, oval-shaped island in the Nile at Aswan, Egypt. It is less than a kilometer long and its width is less than ½ a kilometer. The Aswan Botanical Garden is located on the island.', 'Samsung S21 Ultra, The Plants Island, Aswan, Egypt..mp4', 'Area, Aswan District, Aswan Governorate', '2024-09-27 20:52:54', '2024-09-28 13:57:01', '1727481174_download (5).jpeg'),
(50, 3, 'Qaitbay Citadel', 'The Citadel of Qaitbay (or the Fort of Qaitbay) is a 15th-century defensive fortress located on the Mediterranean sea coast, in Alexandria, Egypt. It was built from 1477 to 1479 AD (882–884 AH) by Sultan Al-Ashraf Sayf al-Din Qa\'it Bay.', 'egyptian landmarks - Qaitbay CITADEL.mp4', 'Al-Sayala East, Customs Department, Qaitbay Citadel, Alexandria', '2024-09-27 20:56:29', '2024-09-27 20:56:29', '1727481389_download (1).jpeg'),
(51, 3, 'Alexandria National Museum', 'The Alexandria National Museum contains around 1,800 artifacts that narrate the story of Alexandria and Egypt. Most of these pieces came from other Egyptian museums. The museum mainly focuses on three collections spread over three floors: Floor 1: Pharaonic epoch.', 'التصوير فى متحف الأسكندرية القومي - Alexandria National Museum.mp4', '131 Martyr Jalal Al-Desouki, Bab Sharqi and Wabour Al-Maiah, Bab Sharqi District, Alexandria Governorate', '2024-09-27 20:59:56', '2024-09-27 20:59:56', '1727481596_download (1).jpeg'),
(52, 3, 'Royal Jewelery Museum', 'The Royal Jewelry Museum is located in Alexandria, Egypt, specifically in the Zizenia neighborhood. It features a vast collection of over 11,000 displays, showcasing the luxurious items belonging to the Egyptian royal family, founded by Muhammad Ali Pasha in 1805. The museum occupies a substantial area of approximately 185 square meters, making it one of the largest museums in Egypt. It highlights the opulent lifestyle and history of the monarchy, particularly through the collection of artifacts from Prince Mohamed Ali Tawfik.', 'musem.mp4', '27 Ahmed Yahya, San Stefano, Raml Second District, Alexandria Governorate', '2024-09-27 21:02:42', '2024-09-27 21:02:42', '1727481762_download (1).jpeg'),
(53, 3, 'Alexandria Library', 'The exact layout of the library is not known, but ancient sources describe the Library of Alexandria as comprising a collection of scrolls, Greek columns, a peripatos walk, a room for shared dining, a reading room, meeting rooms, gardens, and lecture halls, creating a model for the modern university campus.', 'Alexandria, Egypt - Library of Alexandria (Bibliotheca Alexandrina) HD (2013).mp4', 'El Shatby, Alexandria Egypt', '2024-09-27 21:05:40', '2024-09-27 21:05:40', '1727481940_download (4).jpeg'),
(54, 7, 'Dahab', 'Dahab comprises two gulfs, the Laguna or Ghazala, which is characterized by the city\'s only sandy beach and the city\'s cistern, as well as resorts along its shores that integrate with the surrounding nature with log-and-palm kiosks for tourists.', 'DAHAB EGYPT - LIVE AND LOVE.mp4', 'Dahab City, South Sinai, Egypt Dahab', '2024-09-27 21:15:13', '2024-09-27 21:15:13', '1727482513_download (1).jpeg'),
(55, 7, 'Ras Muhammad', 'Ras Muhammad is a national park located at the southern tip of the Sinai Peninsula in Egypt, overlooking the Gulf of Suez to the west and the Gulf of Aqaba to the east. Established in 1983, it is recognized as the first and oldest national park in Egypt, created to protect its unique marine and wildlife. The park is renowned for its stunning coastal landscapes and crystal-clear waters, making it a popular destination for those interested in exploring its underwater ecosystems, though it is not primarily known for hiking or trekking.', '0914 (1)(1).mp4', 'Sharm El Sheikh - Ras Mohammed, Second Sharm El Sheikh, South Sinai Governorate', '2024-09-27 21:17:22', '2024-09-27 21:17:22', '1727482642_download (1).jpeg'),
(56, 7, 'Sharm El Sheikh', 'Sharm el-Sheikh is a tourist city located at the confluence of the Gulfs of Aqaba and Suez on the Red Sea coast. It covers an area of ​​480 km2 and has a population of 35 thousand people. It is the largest city in South Sinai Governorate', 'A Perfect Day in Sharm El Sheikh, Red Sea, South Sinai .mp4', 'Sharm El-Sheikh Port, South Sinai.', '2024-09-27 21:20:05', '2024-09-27 21:20:05', '1727482805_download (1).jpeg'),
(57, 7, 'Nuweiba', 'Nuweiba is a coastal town located on the eastern part of the Sinai Peninsula in Egypt, along the coast of the Gulf of Aqaba. The town is known for its stunning natural beauty and is often referred to as a hidden paradise. Its name, \"Nuweiba,\" translates to \"Bubbling Springs\" in Arabic. The coastline is characterized by a variety of camps and small hotels, offering accommodations for visitors looking to enjoy the serene beach environment and scenic views.', 'nouiba.mp4', 'South Sinai.  Nuweiba City / near Central. Sector, East Delta', '2024-09-27 21:22:30', '2024-09-27 21:22:30', '1727482950_download (3).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `landmarks_images`
--

CREATE TABLE `landmarks_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `landmark_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landmarks_images`
--

INSERT INTO `landmarks_images` (`id`, `name`, `landmark_id`, `created_at`, `updated_at`) VALUES
(50, '1727385041_download (1).jpeg', 38, '2024-09-26 18:10:41', '2024-09-26 18:10:41'),
(51, '1727385041_download (2).jpeg', 38, '2024-09-26 18:10:41', '2024-09-26 18:10:41'),
(52, '1727385041_download (6).jpeg', 38, '2024-09-26 18:10:41', '2024-09-26 18:10:41'),
(53, '1727385041_download.jpeg', 38, '2024-09-26 18:10:41', '2024-09-26 18:10:41'),
(54, '1727385041_images.jpeg', 38, '2024-09-26 18:10:41', '2024-09-26 18:10:41'),
(55, '1727385714_download (1).jpeg\n', 38, '2024-09-26 18:10:41', '2024-09-26 18:10:41'),
(56, '1727385714_download (1).jpeg', 39, '2024-09-26 18:21:54', '2024-09-26 18:21:54'),
(57, '1727385714_download (2).jpeg', 39, '2024-09-26 18:21:54', '2024-09-26 18:21:54'),
(58, '1727385714_download (3).jpeg', 39, '2024-09-26 18:21:54', '2024-09-26 18:21:54'),
(59, '1727385714_download.jpeg', 39, '2024-09-26 18:21:54', '2024-09-26 18:21:54'),
(60, '1727385714_معبد الكرنك.jpeg', 39, '2024-09-26 18:21:54', '2024-09-26 18:21:54'),
(61, '1727386043_download (1).jpeg', 40, '2024-09-26 18:27:23', '2024-09-26 18:27:23'),
(62, '1727386043_download (2).jpeg', 40, '2024-09-26 18:27:23', '2024-09-26 18:27:23'),
(63, '1727386043_download (3).jpeg', 40, '2024-09-26 18:27:23', '2024-09-26 18:27:23'),
(64, '1727386043_download (4).jpeg', 40, '2024-09-26 18:27:23', '2024-09-26 18:27:23'),
(65, '1727386043_download.jpeg', 40, '2024-09-26 18:27:23', '2024-09-26 18:27:23'),
(66, '1727386043_معبد حتشبسوت.jpg', 40, '2024-09-26 18:27:23', '2024-09-26 18:27:23'),
(67, '1727386727_download (1).jpeg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(68, '1727386727_download (2).jpeg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(69, '1727386727_download (3).jpeg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(70, '1727386727_download (4).jpeg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(71, '1727386727_download (5).jpeg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(72, '1727386727_download.jpeg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(73, '1727386727_وادي الملوك .jpg', 41, '2024-09-26 18:38:47', '2024-09-26 18:38:47'),
(94, '1727480400_download (2).jpeg', 46, '2024-09-27 20:40:00', '2024-09-27 20:40:00'),
(95, '1727480400_licensed-image (1).jpeg', 46, '2024-09-27 20:40:00', '2024-09-27 20:40:00'),
(96, '1727480400_licensed-image (2).jpeg', 46, '2024-09-27 20:40:00', '2024-09-27 20:40:00'),
(97, '1727480400_licensed-image (3).jpeg', 46, '2024-09-27 20:40:00', '2024-09-27 20:40:00'),
(98, '1727480400_licensed-image.jpeg', 46, '2024-09-27 20:40:00', '2024-09-27 20:40:00'),
(99, '1727480400_السد العالي .jpg', 46, '2024-09-27 20:40:00', '2024-09-27 20:40:00'),
(100, '1727480719_download.jpeg', 47, '2024-09-27 20:45:19', '2024-09-27 20:45:19'),
(101, '1727480719_licensed-image (1).jpeg', 47, '2024-09-27 20:45:19', '2024-09-27 20:45:19'),
(102, '1727480719_licensed-image (2).jpeg', 47, '2024-09-27 20:45:19', '2024-09-27 20:45:19'),
(103, '1727480719_licensed-image (3).jpeg', 47, '2024-09-27 20:45:19', '2024-09-27 20:45:19'),
(104, '1727480719_licensed-image.jpeg', 47, '2024-09-27 20:45:19', '2024-09-27 20:45:19'),
(105, '1727480719_المسله الناقصه.jpg', 47, '2024-09-27 20:45:19', '2024-09-27 20:45:19'),
(106, '1727480962_2022-11-19.jpg', 48, '2024-09-27 20:49:22', '2024-09-27 20:49:22'),
(107, '1727480962_download (2).jpeg', 48, '2024-09-27 20:49:22', '2024-09-27 20:49:22'),
(108, '1727480962_download (3).jpeg', 48, '2024-09-27 20:49:22', '2024-09-27 20:49:22'),
(109, '1727480962_download (4).jpeg', 48, '2024-09-27 20:49:22', '2024-09-27 20:49:22'),
(110, '1727480962_جزيره الفنتين.jpeg', 48, '2024-09-27 20:49:22', '2024-09-27 20:49:22'),
(111, '1727481174_download (5).jpeg', 49, '2024-09-27 20:52:54', '2024-09-27 20:52:54'),
(112, '1727481174_download.jpeg', 49, '2024-09-27 20:52:54', '2024-09-27 20:52:54'),
(113, '1727481174_licensed-image (1).jpeg', 49, '2024-09-27 20:52:55', '2024-09-27 20:52:55'),
(114, '1727481175_licensed-image.jpeg', 49, '2024-09-27 20:52:55', '2024-09-27 20:52:55'),
(115, '1727481175_جزيره النباتات.jpeg', 49, '2024-09-27 20:52:55', '2024-09-27 20:52:55'),
(116, '1727481389_download (1).jpeg', 50, '2024-09-27 20:56:29', '2024-09-27 20:56:29'),
(117, '1727481389_download (2).jpeg', 50, '2024-09-27 20:56:29', '2024-09-27 20:56:29'),
(118, '1727481389_download (3).jpeg', 50, '2024-09-27 20:56:29', '2024-09-27 20:56:29'),
(119, '1727481389_download (4).jpeg', 50, '2024-09-27 20:56:29', '2024-09-27 20:56:29'),
(120, '1727481389_download (5).jpeg', 50, '2024-09-27 20:56:29', '2024-09-27 20:56:29'),
(121, '1727481389_download.jpeg', 50, '2024-09-27 20:56:29', '2024-09-27 20:56:29'),
(122, '1727481596_download (1).jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(123, '1727481596_download (2).jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(124, '1727481596_download (3).jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(125, '1727481596_download (4).jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(126, '1727481596_download (5).jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(127, '1727481596_download (6).jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(128, '1727481596_download.jpeg', 51, '2024-09-27 20:59:56', '2024-09-27 20:59:56'),
(129, '1727481762_download (1).jpeg', 52, '2024-09-27 21:02:42', '2024-09-27 21:02:42'),
(130, '1727481762_download (2).jpeg', 52, '2024-09-27 21:02:42', '2024-09-27 21:02:42'),
(131, '1727481762_download (3).jpeg', 52, '2024-09-27 21:02:42', '2024-09-27 21:02:42'),
(132, '1727481762_download.jpeg', 52, '2024-09-27 21:02:42', '2024-09-27 21:02:42'),
(133, '1727481762_images.jpeg', 52, '2024-09-27 21:02:42', '2024-09-27 21:02:42'),
(134, '1727481940_download (4).jpeg', 53, '2024-09-27 21:05:40', '2024-09-27 21:05:40'),
(135, '1727481940_download (6).jpeg', 53, '2024-09-27 21:05:40', '2024-09-27 21:05:40'),
(136, '1727481940_download.jpeg', 53, '2024-09-27 21:05:40', '2024-09-27 21:05:40'),
(137, '1727481940_download (1).jpeg', 53, '2024-09-27 21:05:40', '2024-09-27 21:05:40'),
(138, '1727481940_download (2).jpeg', 53, '2024-09-27 21:05:40', '2024-09-27 21:05:40'),
(139, '1727482513_download (1).jpeg', 54, '2024-09-27 21:15:13', '2024-09-27 21:15:13'),
(140, '1727482513_download (2).jpeg', 54, '2024-09-27 21:15:13', '2024-09-27 21:15:13'),
(141, '1727482513_download (3).jpeg', 54, '2024-09-27 21:15:13', '2024-09-27 21:15:13'),
(142, '1727482513_download.jpeg', 54, '2024-09-27 21:15:13', '2024-09-27 21:15:13'),
(143, '1727482513_images.jpeg', 54, '2024-09-27 21:15:13', '2024-09-27 21:15:13'),
(144, '1727482642_download (1).jpeg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(145, '1727482642_download (2).jpeg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(146, '1727482642_download (3).jpeg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(147, '1727482642_download (4).jpeg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(148, '1727482642_download (5).jpeg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(149, '1727482642_download.jpeg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(150, '1727482642_photo3jpg.jpg', 55, '2024-09-27 21:17:22', '2024-09-27 21:17:22'),
(151, '1727482805_download (1).jpeg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(152, '1727482805_download (2).jpeg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(153, '1727482805_download (3).jpeg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(154, '1727482805_download (4).jpeg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(155, '1727482805_download (5).jpeg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(156, '1727482805_download.jpeg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(157, '1727482805_sharm-el-sheikh.jpg', 56, '2024-09-27 21:20:05', '2024-09-27 21:20:05'),
(158, '1727482950_download (3).jpeg', 57, '2024-09-27 21:22:30', '2024-09-27 21:22:30'),
(159, '1727482950_download (6).jpeg', 57, '2024-09-27 21:22:30', '2024-09-27 21:22:30'),
(160, '1727482950_download.jpeg', 57, '2024-09-27 21:22:30', '2024-09-27 21:22:30'),
(161, '1727482950_download (1).jpeg', 57, '2024-09-27 21:22:30', '2024-09-27 21:22:30'),
(162, '1727482950_download (2).jpeg', 57, '2024-09-27 21:22:30', '2024-09-27 21:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `landmark_category`
--

CREATE TABLE `landmark_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landmark_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landmark_category`
--

INSERT INTO `landmark_category` (`id`, `landmark_id`, `category_id`, `created_at`, `updated_at`) VALUES
(92, 38, 24, NULL, NULL),
(93, 38, 26, NULL, NULL),
(94, 38, 29, NULL, NULL),
(95, 39, 24, NULL, NULL),
(96, 39, 26, NULL, NULL),
(97, 39, 29, NULL, NULL),
(98, 40, 24, NULL, NULL),
(99, 40, 26, NULL, NULL),
(100, 40, 29, NULL, NULL),
(101, 41, 24, NULL, NULL),
(102, 41, 26, NULL, NULL),
(103, 41, 29, NULL, NULL),
(104, 46, 24, NULL, NULL),
(105, 46, 26, NULL, NULL),
(106, 46, 27, NULL, NULL),
(107, 47, 24, NULL, NULL),
(108, 47, 26, NULL, NULL),
(109, 47, 29, NULL, NULL),
(110, 48, 25, NULL, NULL),
(111, 48, 26, NULL, NULL),
(112, 48, 27, NULL, NULL),
(113, 49, 25, NULL, NULL),
(114, 49, 26, NULL, NULL),
(115, 49, 27, NULL, NULL),
(116, 50, 24, NULL, NULL),
(117, 50, 26, NULL, NULL),
(118, 50, 29, NULL, NULL),
(119, 51, 24, NULL, NULL),
(120, 51, 26, NULL, NULL),
(121, 52, 24, NULL, NULL),
(122, 52, 26, NULL, NULL),
(123, 53, 24, NULL, NULL),
(124, 53, 26, NULL, NULL),
(125, 55, 25, NULL, NULL),
(126, 55, 27, NULL, NULL),
(127, 54, 25, NULL, NULL),
(128, 54, 27, NULL, NULL),
(129, 56, 25, NULL, NULL),
(130, 56, 27, NULL, NULL),
(131, 56, 30, NULL, NULL),
(132, 57, 25, NULL, NULL),
(133, 57, 26, NULL, NULL),
(134, 57, 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_08_175352_create_admins_table', 1),
(5, '2024_09_08_175352_create_countries_table', 1),
(6, '2024_09_08_175353_create_cities_table', 1),
(7, '2024_09_08_175353_create_landmarks_table', 1),
(8, '2024_09_08_175353_create_reservations_table', 1),
(9, '2024_09_09_164243_create_table_landmarks_images_table', 1),
(10, '2024_09_09_182110_add_video_to_cities_table', 1),
(11, '2024_09_10_213309_create_categories_table', 1),
(12, '2024_09_10_213640_create_landmark_category_table', 1),
(13, '2024_09_10_213746_create_preferences_table', 1),
(14, '2024_09_10_214242_create_preference_options_table', 1),
(15, '2024_09_10_234611_rename_table_landmarks_images_to_landmarks_images', 1),
(16, '2024_09_12_134609_add_main_image_to_landmarks_table', 1),
(17, '2024_09_14_194533_create_tour_guides_table', 1),
(18, '2024_09_18_142213_add_columns_to_reservations_table', 1),
(19, '2024_09_26_192109_add_video_to_cities_table', 2),
(20, '2024_09_26_194430_remove_video_from_cities_table', 2),
(21, '2024_09_26_194512_remove_video_from_cities_table', 3),
(22, '2024_09_26_194628_remove_video_from_cities_table', 4),
(23, '2024_09_26_194806_add_video_to_cities_table', 5),
(24, '2024_09_27_001236_add_phone_to_tour_guides_table', 6),
(25, '2024_09_27_001559_add_phone_to_tour_guides_table', 7),
(26, '2024_09_27_211354_add_video_to_countries_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` enum('single','multiple') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `question`, `type`, `created_at`, `updated_at`) VALUES
(13, 'What types of experiences are you looking for during your visit? Feel free to choose multiple options to explore the related landmarks :', 'multiple', '2024-09-11 15:45:04', '2024-09-28 13:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `preference_options`
--

CREATE TABLE `preference_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preference_options`
--

INSERT INTO `preference_options` (`id`, `preference_id`, `category_id`, `option`, `created_at`, `updated_at`) VALUES
(40, 13, 24, 'Historical : Famous Monuments , Ancient Ruins , Museums of History .', '2024-09-28 13:52:05', '2024-09-28 13:52:05'),
(41, 13, 25, 'Entertainment : Amusement Parks , Concert Venues , Cinemas and Theaters .', '2024-09-28 13:52:05', '2024-09-28 13:52:05'),
(42, 13, 26, 'Cultural : Traditional Markets , Art Galleries , Local Festivals .', '2024-09-28 13:52:05', '2024-09-28 13:52:05'),
(43, 13, 27, 'Natural : National Parks , Beaches and Islands , Mountains and Valleys .', '2024-09-28 13:52:05', '2024-09-28 13:52:05'),
(44, 13, 28, 'Religious : Mosques and Churches , Temples , Religious Sites .', '2024-09-28 13:52:06', '2024-09-28 13:52:06'),
(45, 13, 29, 'Adventure : Desert Safaris , Hiking Trails , Water Sports Locations .', '2024-09-28 13:52:06', '2024-09-28 13:52:06'),
(46, 13, 30, 'Shopping : Local Souks , Modern Malls , Craft Shops .', '2024-09-28 13:52:06', '2024-09-28 13:52:06'),
(47, 13, 31, 'Culinary : Traditional Restaurants, Street Food Spots, Fine Dining Experiences.', '2024-09-28 13:52:06', '2024-09-28 13:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `num_guests` int(11) NOT NULL,
  `check_in_date` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Processing',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `days` int(11) NOT NULL,
  `tourGuied_status` varchar(255) NOT NULL,
  `tourGuied_name` varchar(255) NOT NULL,
  `tourGuied_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone_number`, `num_guests`, `check_in_date`, `destination`, `price`, `user_id`, `status`, `created_at`, `updated_at`, `days`, `tourGuied_status`, `tourGuied_name`, `tourGuied_id`) VALUES
(1, 'mazen adel mohamed zakiy', 1288965010, 3, '2024-09-20', 'Cairo', 900, 3, 'Processing', '2024-09-18 04:56:20', '2024-09-18 04:56:20', 0, '', '', 0),
(2, 'shady adel Mohamed zakiy', 1288965010, 3, '2024-09-20', 'Cairo', 900, 3, 'Processing', '2024-09-18 05:08:17', '2024-09-18 05:08:17', 0, '', '', 0),
(3, 'sadek', 1111111111, 4, '2024-09-26', 'Cairo', 1200, 3, 'Booked Successfully', '2024-09-18 07:00:48', '2024-09-18 07:11:31', 0, '', '', 0),
(4, 'khalefa', 1288965010, 2, '2024-09-28', 'Giza', 800, 3, 'Processing', '2024-09-18 07:17:53', '2024-09-18 07:17:53', 0, '', '', 0),
(5, 'مازن عادل محمد ذكي', 1288965010, 1, '2024-09-28', 'Cairo', 300, 3, 'Processing', '2024-09-18 09:53:57', '2024-09-18 10:04:41', 1, 'online', 'mazen adel', 1),
(6, 'مازن عادل محمد ذكي', 1288965010, 1, '2024-09-20', 'Cairo', 100, 3, 'Booked Successfully', '2024-09-18 10:45:25', '2024-09-18 11:19:29', 1, 'online', 'mazen adel', 1),
(7, 'ahmed', 1119401324, 2, '2024-09-28', 'Cairo', 200, 4, 'Booked Successfully', '2024-09-23 15:10:22', '2024-09-23 15:11:23', 13, 'in_person', 'mazen adel', 1),
(8, 'Mohamed Sadek', 1148613809, 2, '2024-10-24', 'Aswan', 200, 5, 'Processing', '2024-10-03 21:34:22', '2024-10-03 21:34:22', 4, 'online', 'mazen adel', 1),
(9, 'Mohamed Sadek', 1148613809, 3, '2024-10-23', 'Aswan', 300, 5, 'Processing', '2024-10-03 21:36:07', '2024-10-03 21:36:07', 4, 'online', 'mazen adel', 1),
(10, 'Mohamed Sadek', 1148613809, 1, '2024-10-30', 'Aswan', 100, 5, 'Processing', '2024-10-03 21:36:58', '2024-10-03 21:36:58', 1, 'in_person', 'mazen adel', 1),
(11, 'Mohamed Sadek', 1148613809, 2, '2024-10-30', 'Aswan', 200, 5, 'Processing', '2024-10-03 21:37:07', '2024-10-03 21:37:07', 1, 'in_person', 'mazen adel', 1),
(12, 'Mohamed Sadek', 1148613809, 4, '2024-10-30', 'Aswan', 400, 5, 'Processing', '2024-10-03 21:37:12', '2024-10-03 21:37:12', 1, 'in_person', 'mazen adel', 1),
(13, 'Mohamed Sadek', 1148613809, 2, '2024-10-10', 'Luxor', 200, 6, 'Processing', '2024-10-07 08:36:30', '2024-10-07 08:36:30', 2, 'online', 'Mohamed Sadek', 7),
(14, 'Mohamed Sadek', 1148613809, 3, '2024-10-30', 'Luxor', 300, 5, 'Processing', '2024-10-07 08:39:48', '2024-10-07 08:39:48', 3, 'online', 'Mohamed Sadek', 7),
(15, 'Mohamed Sadek', 1148613809, 3, '2024-10-31', 'Luxor', 300, 5, 'Processing', '2024-10-07 09:02:24', '2024-10-07 09:02:24', 1, 'online', 'Mohamed Sadek', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zrJYWGoD1brLsanYmR2hQIcj1TmVMSPFLVDKruEU', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiUk1xaEZ4Qm03c1hkbkllUkdORGVDSTVWQXN1TkVoY0tVd09oVnpyUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmF2ZWxpbmcvc2hvdy80Ni9sYW5kbWFyayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3Mjc1NDU0NzY7fX0=', 1727545499);

-- --------------------------------------------------------

--
-- Table structure for table `tour_guides`
--

CREATE TABLE `tour_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `identification` bigint(20) NOT NULL,
  `identification_image` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gendre` enum('male','female') NOT NULL DEFAULT 'male',
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_guides`
--

INSERT INTO `tour_guides` (`id`, `name`, `email`, `phone`, `identification`, `identification_image`, `age`, `image`, `gendre`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'mazen adel ', 'mazenzaky153@gmail.com', '', 30103211300572, 'mazen.jpg', 24, 'mazen adel.jpg', 'male', 6, NULL, NULL),
(2, 'shadyadel ', 'shady@gmail.com', '', 30103211111111, 'shady.jpg', 24, 'shady.jpg', 'male', 2, NULL, NULL),
(6, 'Mohamed S.', 'mohamed@gmail.com', '', 30103211111111, 'shady.jpg', 24, 'shady.jpg', 'male', 3, NULL, NULL),
(7, 'Mohamed Sadek', 'mohamedsadek@gmail.com', '', 30103211111111, 'shady.jpg', 24, 'shady.jpg', 'male', 5, NULL, NULL),
(8, 'Ahmed Khalifa', 'ahmed@gmail.com', '', 30103211111111, 'shady.jpg', 24, 'shady.jpg', 'male', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-09-11 09:18:21', '$2y$12$rIngJdgHBHXxtfo7FWjdDufxl3D8.BmJvKkPY8P5Ez1MlKZ4Kga.2', 'HWyA42o1mS', '2024-09-11 09:18:22', '2024-09-11 09:18:22'),
(3, 'mazen adel mohamed zakiy', 'mazenzaky153@gmail.com', NULL, '$2y$12$8K8TnVSXQbRTgilnWqcZx.LMOFYMkArRwcS9X1QzWjn7/iiGvnADC', NULL, '2024-09-14 15:25:20', '2024-09-14 15:25:20'),
(4, 'ahmed khalifa', 'ahmedkhalifamoahmed20@gmail.com', NULL, '$2y$12$wgXa8JlpJ/79gguVPlQNheffgNxJrSajAl8qJCZ3TPrb5Fq23GwBG', NULL, '2024-09-23 14:47:16', '2024-09-23 14:47:16'),
(5, 'Mohamed Sadek', 'mohamedsadekreyad@gmail.com', NULL, '$2y$12$sbfuiFcqrikFNJM0S3.wfOq9aZLZyqQ86U65DB54hI5BnMoM0lJJG', NULL, '2024-10-03 21:21:09', '2024-10-03 21:21:09'),
(6, 'Mohamed Sadek', 'mohamedsadekreyad1@gmail.com', NULL, '$2y$12$wSudUJ1wB0ZouaNIB8fmZObG33Li1HsP6DwZv2b1wrZyM5eQFuvg6', NULL, '2024-10-06 12:35:47', '2024-10-06 12:35:47'),
(7, 'Mohamed', 'mohamedsadekreyad2@gmail.com', NULL, '$2y$12$BCErnG0ah9NxVGlg0EWqi.NVMOH9.alE00NwhoHtEcT4D70XLbzWS', NULL, '2024-10-07 15:59:48', '2024-10-07 15:59:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landmarks`
--
ALTER TABLE `landmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landmarks_city_id_foreign` (`city_id`);

--
-- Indexes for table `landmarks_images`
--
ALTER TABLE `landmarks_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_landmarks_images_landmark_id_foreign` (`landmark_id`);

--
-- Indexes for table `landmark_category`
--
ALTER TABLE `landmark_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landmark_category_landmark_id_foreign` (`landmark_id`),
  ADD KEY `landmark_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preference_options`
--
ALTER TABLE `preference_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preference_options_category_id_foreign` (`category_id`),
  ADD KEY `preference_options_preference_id_foreign` (`preference_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tour_guides`
--
ALTER TABLE `tour_guides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_guides_city_id_foreign` (`city_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landmarks`
--
ALTER TABLE `landmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `landmarks_images`
--
ALTER TABLE `landmarks_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `landmark_category`
--
ALTER TABLE `landmark_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `preference_options`
--
ALTER TABLE `preference_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tour_guides`
--
ALTER TABLE `tour_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `landmarks`
--
ALTER TABLE `landmarks`
  ADD CONSTRAINT `landmarks_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `landmarks_images`
--
ALTER TABLE `landmarks_images`
  ADD CONSTRAINT `table_landmarks_images_landmark_id_foreign` FOREIGN KEY (`landmark_id`) REFERENCES `landmarks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `landmark_category`
--
ALTER TABLE `landmark_category`
  ADD CONSTRAINT `landmark_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `landmark_category_landmark_id_foreign` FOREIGN KEY (`landmark_id`) REFERENCES `landmarks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `preference_options`
--
ALTER TABLE `preference_options`
  ADD CONSTRAINT `preference_options_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preference_options_preference_id_foreign` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tour_guides`
--
ALTER TABLE `tour_guides`
  ADD CONSTRAINT `tour_guides_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
