-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 12:26 PM
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
-- Database: `bdsl_annotation`
--

-- --------------------------------------------------------

--
-- Table structure for table `annotation`
--

CREATE TABLE `annotation` (
  `id` int(11) NOT NULL,
  `json` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `annotation`
--

INSERT INTO `annotation` (`id`, `json`, `status`, `timestamp`) VALUES
(7, '{\"VideoId\":2,\"signText\":\"নাম তোমার কি\",\"video\":\"http://techslides.com/demos/sample-videos/small.mp4\",\"annotation\":[],\"meta\":[{\"id\":1,\"key\":\"performer\",\"value\":\"expert\",\"performer\":\"expert\"},{\"id\":2,\"key\":\"camera\",\"value\":\"nikkon\",\"camera\":\"nikkon\"}]}', 'save', '2022-10-16 06:36:24'),
(8, '{\"VideoId\":1,\"signText\":\"কলা খাই আমি \",\"naturalText\":\"আমি কলা খাই \",\"video\":\"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4\",\"annotation\":[{\"id\":1,\"word\":\"কলা\",\"tsi\":3,\"tse\":0,\"vst\":0,\"vet\":0.545151}],\"meta\":[]}', 'save', '2022-10-16 07:12:43'),
(10, '{\"VideoId\":1,\"signText\":\"কলা খাই আমি \",\"naturalText\":\"আমি কলা খাই \",\"video\":\"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4\",\"annotation\":[{\"id\":3,\"word\":\"কলা\",\"tsi\":0,\"tse\":3,\"vst\":0,\"vet\":0.159999},{\"id\":4,\"word\":\"খাই\",\"tsi\":4,\"tse\":7,\"vst\":0.359998,\"vet\":0.539997},{\"id\":5,\"word\":\"আমি\",\"tsi\":8,\"tse\":11,\"vst\":0.659997,\"vet\":1.265602}],\"meta\":[{\"id\":1,\"key\":\"performer\",\"value\":\"expert\",\"performer\":\"expert\"},{\"id\":2,\"key\":\"camera\",\"value\":\"nikkon\",\"camera\":\"nikkon\"}]}', 'save', '2022-10-17 06:14:31'),
(11, '{\"VideoId\":\"SD17DSAT26S43\",\"signText\":\"তুমি গান সুন্দর, ভবিষ্যৎ তুমি বিখ্যাত হবে। \",\"naturalText\":\"তুমি তো দারুন গান গাও, তুমি তো বিখ্যাত সংগীতশিল্পী হবে! \",\"video\":\"/videos/SD17DSAT26S43.mp4\",\"annotation\":[{\"id\":4,\"word\":\"গান\",\"vst\":1.020761,\"vet\":1.65272},{\"id\":6,\"word\":\"তুমি\",\"vst\":7.577745,\"vet\":10.692645}],\"meta\":[{\"id\":7,\"key\":\"camera\",\"value\":\"nikkon\",\"camera\":\"nikkon\"}],\"annotationStartTime\":\"2022-10-19T06:59:17.145Z\",\"annotationEndTime\":\"2022-10-19T07:00:00.134Z\",\"totalTimeSpend\":42.989}', 'save', '2022-10-19 07:00:00'),
(12, '{\"VideoId\":\"3\",\"signText\":\"আমার বাবা কাজ পুলিশ। \",\"naturalText\":\"তার বাবা পুলিশে চাকুরী করে। \",\"video\":\"/videos/SD17DSAT26S45.mp4\",\"annotation\":[{\"id\":1,\"word\":\"কাজ\",\"vst\":0.35,\"vet\":0.55},{\"id\":2,\"word\":\"আমার\",\"vst\":2.61,\"vet\":5.23},{\"id\":3,\"word\":\"বাবা\",\"vst\":14.01,\"vet\":16.12}],\"meta\":[{\"id\":4,\"key\":\"hello\",\"value\":\"hi\",\"hello\":\"hi\"}],\"annotationStartTime\":\"2022-10-20T04:26:15.769Z\",\"annotationEndTime\":\"2022-10-20T04:27:14.486Z\",\"totalTimeSpend\":58.717}', 'save', '2022-10-20 04:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `json` longtext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `json`, `timestamp`) VALUES
(1, 'sdf', '[{\"id\":2,\"dbRowId\":10,\"timeStamp\":\"2022-10-17T06:14:31.000Z\",\"signText\":\"কলা খাই আমি \",\"naturalText\":\"আমি কলা খাই \",\"videoLink\":\"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4\",\"word\":\"কলা\",\"startIndex\":0,\"endIndex\":3,\"videoStart\":0,\"videoEnd\":0.159999,\"extractMeta\":[{\"id\":1,\"key\":\"performer\",\"value\":\"expert\",\"performer\":\"expert\"},{\"id\":2,\"key\":\"camera\",\"value\":\"nikkon\",\"camera\":\"nikkon\"}]},{\"id\":3,\"dbRowId\":10,\"timeStamp\":\"2022-10-17T06:14:31.000Z\",\"signText\":\"কলা খাই আমি \",\"naturalText\":\"আমি কলা খাই \",\"videoLink\":\"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4\",\"word\":\"খাই\",\"startIndex\":4,\"endIndex\":7,\"videoStart\":0.359998,\"videoEnd\":0.539997,\"extractMeta\":[{\"id\":1,\"key\":\"performer\",\"value\":\"expert\",\"performer\":\"expert\"},{\"id\":2,\"key\":\"camera\",\"value\":\"nikkon\",\"camera\":\"nikkon\"}]}]', '2022-10-17 12:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `videourl` varchar(100) NOT NULL,
  `signtext` varchar(100) NOT NULL,
  `naturaltext` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `videourl`, `signtext`, `naturaltext`, `timestamp`) VALUES
(1, 'http://clips.vorwaerts-gmbh.de/VfE_html5.mp4', 'কলা খাই আমি ', 'আমি কলা খাই ', '2022-10-13 11:08:06'),
(2, 'http://techslides.com/demos/sample-videos/small.mp4', 'নাম তোমার কি', 'তোমার নাম কি', '2022-10-16 05:08:02'),
(3, 'http://clips.vorwaerts-gmbh.de/VfE_html5.mp4', 'তুমি যাও স্কুলে ', 'তুমি স্কুলে যাও ', '2022-10-13 11:09:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annotation`
--
ALTER TABLE `annotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annotation`
--
ALTER TABLE `annotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
