-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 08:37 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polyphpmysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(512) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tags` varchar(256) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `image`, `user_id`, `category_id`, `tags`, `status`, `created_at`) VALUES
(3, 'test', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'dist/uploads/20_1668004271_8928.jpg', 20, 2, '', 1, '2022-11-09 14:31:11'),
(4, 'lorem test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'dist/uploads/20_1668004340_3878.jpg', 20, 3, '', 1, '2022-11-09 14:32:20'),
(5, 'etst asdlfjdf ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'dist/uploads/20_1668004689_9207.jpg', 20, 1, '', 1, '2022-11-09 14:38:09'),
(6, 'my Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668005802_8435.jpg', 431, 3, '', 1, '2022-11-09 14:56:42'),
(7, 'my Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668006040_6120.jpg', 431, 3, '', 1, '2022-11-09 15:00:40'),
(8, 'test my test', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668006079_9600.png', 431, 2, '', 1, '2022-11-09 15:01:19'),
(9, 'test articale', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 'dist/uploads/432_1668006130_7814.png', 432, 2, '', 1, '2022-11-09 15:02:10'),
(10, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', 'dist/uploads/433_1668006181_4210.jpg', 433, 1, '', 1, '2022-11-09 15:03:01'),
(11, 'lorem text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'dist/uploads/11_1668006194_4677.jpg', 11, 1, '', 1, '2022-11-09 15:03:14'),
(12, 'lorem text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'dist/uploads/11_1668006198_1029.jpg', 11, 1, '', 1, '2022-11-09 15:03:18'),
(13, 'fgfdgdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', 'dist/uploads/435_1668006228_5640.jpg', 435, 2, '', 1, '2022-11-09 15:03:48'),
(14, 'lorem text 2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'dist/uploads/11_1668006279_4569.jpg', 11, 3, '', 1, '2022-11-09 15:04:39'),
(15, 'Article', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam dolor saepe magni sunt nostrum quaerat modi sint voluptates repellat? Vel fugiat laborum cumque voluptatum eligendi provident deserunt fuga, quod error aliquid esse non, labore, quibusdam qui cum eius blanditiis? Id hic ab minus, quibusdam exercitationem odit alias praesentium eius velit perspiciatis dolores suscipit laboriosam amet pariatur quia perferendis voluptatem? Voluptatum, laborum odio quia ad labore officia ut beatae aut, repudiandae molestiae nobis voluptate nihil numquam quis possimus iusto harum sed aspernatur nam ducimus rerum vero, tenetur nulla nemo? Exercitationem veniam laboriosam molestiae dolorem aliquid esse similique, ab doloribus ad.\r\n\r\n', 'dist/uploads/436_1668006590_2999.jfif', 436, 2, '', 1, '2022-11-09 15:09:50'),
(16, 'fgfdgdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', 'dist/uploads/435_1668007390_4015.jpg', 435, 2, '', 1, '2022-11-09 15:23:10'),
(17, 'test title', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'dist/uploads/20_1668262085_3602.jpg', 20, 1, '', 1, '2022-11-12 14:08:10'),
(18, 'another test article', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668262290_1312.jpg', 20, 2, '', 1, '2022-11-12 14:11:31'),
(19, 'Genuity Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668262759_5461.png', 431, 3, '', 1, '2022-11-12 14:19:20'),
(20, 'Genuity Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668262765_9140.png', 431, 3, '', 1, '2022-11-12 14:19:26'),
(21, 'Genuity Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668262773_2677.png', 431, 3, '', 1, '2022-11-12 14:19:33'),
(22, 'Genuity Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668262780_2387.png', 431, 3, '', 1, '2022-11-12 14:19:40'),
(23, 'Add Article Image', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam dolor saepe magni sunt nostrum quaerat modi sint voluptates repellat? Vel fugiat laborum cumque voluptatum eligendi provident deserunt fuga, quod error aliquid esse non, labore, quibusdam qui cum eius blanditiis? Id hic ab minus, quibusdam exercitationem odit alias praesentium eius velit perspiciatis dolores suscipit laboriosam amet pariatur quia perferendis voluptatem? Voluptatum, laborum odio quia ad labore officia ut beatae aut, repudiandae molestiae nobis voluptate nihil numquam quis possimus iusto harum sed aspernatur nam ducimus rerum vero, tenetur nulla nemo? Exercitationem veniam laboriosam molestiae dolorem aliquid esse similique, ab doloribus ad.', 'dist/uploads/436_1668262796_2472.jpg', 436, 2, '', 1, '2022-11-12 14:19:57'),
(24, 'test 4', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', 'dist/uploads/437_1668262872_5112.png', 437, 2, '', 1, '2022-11-12 14:21:13'),
(25, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure ther', 'dist/uploads/438_1668262878_2874.webp', 438, 1, '', 1, '2022-11-12 14:21:18'),
(26, 'title', '\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"\r\n\r\n', 'dist/uploads/11_1668262974_4484.png', 11, 3, '', 1, '2022-11-12 14:22:54'),
(27, 'title', '\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"\r\n\r\n', 'dist/uploads/11_1668262984_9966.png', 11, 3, '', 1, '2022-11-12 14:23:04'),
(28, 'Add Article Image', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam dolor saepe magni sunt nostrum quaerat modi sint voluptates repellat? Vel fugiat laborum cumque voluptatum eligendi provident deserunt fuga, quod error aliquid esse non, labore, quibusdam qui cum eius blanditiis? Id hic ab minus, quibusdam exercitationem odit alias praesentium eius velit perspiciatis dolores suscipit laboriosam amet pariatur quia perferendis voluptatem? Voluptatum, laborum odio quia ad labore officia ut beatae aut, repudiandae molestiae nobis voluptate nihil numquam quis possimus iusto harum sed aspernatur nam ducimus rerum vero, tenetur nulla nemo? Exercitationem veniam laboriosam molestiae dolorem aliquid esse similique, ab doloribus ad.', 'dist/uploads/436_1668263022_4674.jpg', 436, 2, '', 1, '2022-11-12 14:23:43'),
(29, 'Add Article Image', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam dolor saepe magni sunt nostrum quaerat modi sint voluptates repellat? Vel fugiat laborum cumque voluptatum eligendi provident deserunt fuga, quod error aliquid esse non, labore, quibusdam qui cum eius blanditiis? Id hic ab minus, quibusdam exercitationem odit alias praesentium eius velit perspiciatis dolores suscipit laboriosam amet pariatur quia perferendis voluptatem? Voluptatum, laborum odio quia ad labore officia ut beatae aut, repudiandae molestiae nobis voluptate nihil numquam quis possimus iusto harum sed aspernatur nam ducimus rerum vero, tenetur nulla nemo? Exercitationem veniam laboriosam molestiae dolorem aliquid esse similique, ab doloribus ad.', 'dist/uploads/436_1668263032_2391.jpg', 436, 2, '', 1, '2022-11-12 14:23:52'),
(31, 'Genuity Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668263098_4490.png', 431, 3, '', 1, '2022-11-12 14:24:59'),
(34, 'title', '\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"\r\n\r\n', 'dist/uploads/11_1668263249_4218.png', 11, 3, '', 1, '2022-11-12 14:27:30'),
(36, '12312342314', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668263274_2921.jpg', 20, 3, '', 1, '2022-11-12 14:27:57'),
(37, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 'dist/uploads/439_1668263281_3160.jfif', 439, 2, '', 1, '2022-11-12 14:28:02'),
(38, 'Where can I get some?', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'dist/uploads/439_1668263353_9999.jpeg', 439, 3, '', 1, '2022-11-12 14:29:13'),
(40, 'messag', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"\r\n\r\n', 'dist/uploads/11_1668263377_4505.png', 11, 3, '', 1, '2022-11-12 14:29:37'),
(41, 'my test Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668263401_7260.png', 431, 3, '', 1, '2022-11-12 14:30:01'),
(42, 'dfgfdsgfdg', 'dfgfdg dfgdfs gdfsg fdg dfgdfs gdfg dsfgsdfg dfgdf gdfgfdsgdfs gdfsg dsfgdfs gdsfg sdfgdfs g fdgdfs gfdfd gfdg fdg fg fd\r\nf g\r\nfd g\r\ndfs g\r\ndfg\r\n g\r\nfdfgg ', 'dist/uploads/20_1668263400_5310.jpg', 20, 2, '', 1, '2022-11-12 14:30:07'),
(43, 'Test 5', 'But I must explain to you how all this mistaken idea of reprobating pleasure and extolling pain arose. To do so, I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? [33] On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammeled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.', 'dist/uploads/437_1668263431_5314.jfif', 437, 3, '', 1, '2022-11-12 14:30:31'),
(44, 'web development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula, sapien sit amet sodales sagittis, odio elit maximus odio, eget mollis lorem ante a metus. Phasellus sodales consectetur mauris, vitae accumsan ligula. Duis placerat erat augue, sit amet gravida neque congue vitae. Sed cursus cursus lacus, id pharetra lorem viverra ac. Maecenas molestie luctus enim ut ultrices. Fusce volutpat malesuada bibendum. Duis quis diam et lectus commodo convallis euismod ac purus. Cras nec laoreet lorem, non pellentesque felis. Proin at risus suscipit, semper felis sit amet, venenatis neque.\r\n\r\nDuis eget nibh eget diam aliquam elementum vitae commodo augue. In fringilla sem eget mauris pellentesque, sed aliquet orci fermentum. Nunc suscipit, justo quis tincidunt venenatis, purus massa rhoncus massa, non volutpat elit neque at enim. Vestibulum posuere est diam, id tincidunt diam porta vel. Etiam tempor accumsan lacus, nec vehicula ipsum tempor ac. Proin eu tellus pharetra, consectetur lacus quis, vestibulum erat. Etiam elementum elit non fermentum luctus. Donec dapibus, nulla ullamcorper ornare malesuada, odio dolor gravida urna, quis scelerisque odio ipsum id metus. Sed tempus faucibus est eget eleifend.\r\n\r\nCras convallis ex vel faucibus eleifend. In eu nibh finibus neque vehicula ornare. Fusce a felis lobortis, cursus ligula sit amet, tincidunt mi. Nunc nec laoreet enim. Nunc tristique, dolor eget semper facilisis, libero nunc accumsan tellus, ut sodales sem libero non diam. Donec varius cursus purus. Ut enim enim, dignissim et mauris eget, volutpat accumsan libero. Nulla eget libero non arcu tempor posuere.\r\n\r\nPellentesque gravida laoreet dolor, et ullamcorper ante cursus eget. Duis pulvinar placerat ligula, id sollicitudin magna egestas id. Ut', 'dist/uploads/440_1668263436_2540.jpeg', 440, 1, '', 1, '2022-11-12 14:30:36'),
(45, 'asdf', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668263618_3183.jpg', 20, 1, '', 1, '2022-11-12 14:33:40'),
(46, 'Where does it come from?', 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'dist/uploads/439_1668263626_9420.jfif', 439, 1, '', 1, '2022-11-12 14:33:46'),
(47, 'Hi', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668263713_9511.png', 431, 1, '', 1, '2022-11-12 14:35:13'),
(48, 'sdafdsfdf', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668263733_6994.jpg', 20, 1, '', 1, '2022-11-12 14:35:35'),
(49, 'Hello Articale', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n', 'dist/uploads/431_1668263798_7470.png', 431, 2, '', 1, '2022-11-12 14:36:38'),
(50, 'sdfsdafdsf', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668263863_5908.jpg', 20, 3, '', 1, '2022-11-12 14:37:44'),
(51, 'dfsdg', 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'dist/uploads/439_1668263900_9052.jpg', 439, 2, '', 1, '2022-11-12 14:38:20'),
(52, 'sdfdsf', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668263933_1253.jpg', 20, 1, '', 1, '2022-11-12 14:38:56'),
(53, 'fh', 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'dist/uploads/439_1668263977_7322.jfif', 439, 3, '', 1, '2022-11-12 14:39:37'),
(54, 'monkey', 'Pellentesque gravida laoreet dolor, et ullamcorper ante cursus eget. Duis pulvinar placerat ligula, id sollicitudin magna egestas id. Ut tristique erat quis nisl vehicula, elementum volutpat ligula feugiat. Vestibulum sed velit turpis. Vestibulum pretium sapien tortor, non bibendum lorem placerat nec. Ut non scelerisque justo. Suspendisse volutpat congue nulla a consectetur. Pellentesque ultricies cursus metus eu elementum. Nulla ullamcorper cursus enim eu gravida. Duis mattis augue nec tellus finibus, nec volutpat orci posuere. Curabitur consectetur, nisl a ultricies feugiat, mauris metus pulvinar felis, a pretium arcu risus nec nunc.', 'dist/uploads/440_1668264002_7636.jpg', 440, 3, '', 1, '2022-11-12 14:40:03'),
(55, 'test article', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	', 'dist/uploads/20_1668264047_6137.jpg', 20, 1, '', 0, '2022-11-16 14:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'PHP', 'some desc', '2022-11-07 14:41:06'),
(2, 'Mysql', 'some desc', '2022-11-07 14:41:18'),
(3, 'Laravel', 'laravel', '2022-11-07 14:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `comment`, `user_id`, `status`, `created_at`) VALUES
(1, 53, 'asdfsdaf', 20, 1, '2022-11-12 15:11:21'),
(2, 53, 'sadfasdf', 20, 1, '2022-11-12 15:11:27'),
(3, 53, 'sadfasdfdf', 20, 1, '2022-11-12 15:19:51'),
(4, 53, 'hello', 437, 1, '2022-11-12 15:20:18'),
(5, 55, 'good', 440, 1, '2022-11-12 15:20:22'),
(6, 50, 'wow!!!', 440, 1, '2022-11-12 15:21:21'),
(7, 48, 'hi', 431, 1, '2022-11-12 15:23:16'),
(8, 46, 'nice', 20, 1, '2022-11-16 13:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`, `role`, `created_at`) VALUES
(8, 'Saimun Islam 007', 'nishatshubah@gmail.com', '$2y$10$.ctKAJVcGegNyOLyxHJWKeRfB/d/Qna/Ew3dKPgKvVI8ybomCf1Sa', 1, 1, '2022-11-05 14:30:39'),
(10, 'Afsana ', 'afsana@gmail.com', '$2y$10$IFZbe/6YxozbYkMF6GjrZOvvOSLNNH3BPScVhJQYOwGva.NyMoDZa', 1, 1, '2022-11-02 14:38:32'),
(11, 'ab rahman', 'abr@gmail.com', '$2y$10$7JP8BuMx0EpcFGOKgT0g5.txOaCEWZkP0uIejANzBPzxLFY4Ae0a.', 1, 1, '2022-11-02 14:38:34'),
(12, 'LAden125', 'ladenmia8125@gmail.com', '$2y$10$ZhpRybT/iiwPtqebsRQ1YOvkvvZTnIEIDunVRjG4EL7kRSK/ZKlbW', 1, 1, '2022-11-16 14:29:25'),
(15, 'yeamin active', 'yeamin@gamil.com', '$2y$10$v80h2s0oYfYvnnnp//EkYO9sui4DkWXcfj7HKFugMZfLpIPdxcdDC', 1, 3, '2022-11-16 14:34:03'),
(20, 'test55', 'test55@gmail.com', '$2y$10$Pd78Tdct1Uq/JHcjWmcezurpnwYSn8GzeA9V15HxjWqBw/xWEopuK', 1, 3, '2022-11-07 14:52:30'),
(21, 'user990', 'user990.@gmail.com', '$2y$10$BIy4IrVSTsV1go2xzjTtsersR9dfH1ikFKiLyTmyaZ0mXvk5Z0lrS', 1, 1, '2022-11-05 14:56:26'),
(22, 'user175', 'user175.@gmail.com', '$2y$10$c3K1VWG8TSxiWzNMlNGMNeaZhpXZYqTOn92Ix5QHK3F0VnzLFpVe6', 1, 1, '2022-11-05 14:56:26'),
(23, 'user237', 'user237.@gmail.com', '$2y$10$1AzyBxNxiZlnyHqmG6MNWe7kX58yiklSfovRacfc3K9Iub7EKPNB6', 1, 1, '2022-11-05 14:56:26'),
(24, 'user840', 'user840.@gmail.com', '$2y$10$Lz0vaHvtO5ZTdDGkDBm3TuhZCBTxGALebN6GFS8XH1pdbFIuyAe6u', 1, 1, '2022-11-05 14:56:26'),
(25, 'user281', 'user281.@gmail.com', '$2y$10$rdOw9QEcplCrAtBovSbJUO5GbAj4QQSanK1c8le5PsEqQIQg1NpOW', 1, 1, '2022-11-05 14:56:26'),
(26, 'user530', 'user530.@gmail.com', '$2y$10$EndXmjysUFOnfMLYQYVXbuhGeTjXj4FME7PBDCu/zK1ctXed.ugAW', 1, 1, '2022-11-05 14:56:26'),
(27, 'user457', 'user457.@gmail.com', '$2y$10$WfURhweS.ijo8LzNN7f1iuskgDgHPJYWY/bQZFrebkVyEQt.IpEZK', 1, 1, '2022-11-05 14:56:26'),
(28, 'user464', 'user464.@gmail.com', '$2y$10$VqKGo8Ayfsg7Nek15MquGuHPl7.7oiTFjfooxSHxCsrqoQme.uxca', 1, 1, '2022-11-05 14:56:26'),
(29, 'user239', 'user239.@gmail.com', '$2y$10$It8.X5VLeOm7Q02Lp1nsQe3GbmAJJMwGtSbz1gq1mY01eFmulZSIi', 1, 1, '2022-11-05 14:56:27'),
(30, 'user104', 'user104.@gmail.com', '$2y$10$rh8Aje8RJKwOISXK6NMn..R9yDU63RJKIZWGpCOg9Grcz2Q8025OO', 1, 1, '2022-11-05 14:56:27'),
(31, 'user339', 'user339.@gmail.com', '$2y$10$v5afeUrE9YWyuhwbX8MKCOXUeK1F1W1g24p.79L0ShjWk4h/QSUK6', 1, 1, '2022-11-05 14:56:27'),
(32, 'user501', 'user501.@gmail.com', '$2y$10$j.R.7K71Qo2grkxwiddEDel1FbWM28T04doUlDdAbO23CVSVFmAZa', 1, 1, '2022-11-05 14:56:27'),
(33, 'user952', 'user952.@gmail.com', '$2y$10$hsAUNRAJqseODjV9SU2ATeUE/0.JfaH14qRT3MpLLiJIWNuudnvfK', 1, 1, '2022-11-05 14:56:27'),
(34, 'user586', 'user586.@gmail.com', '$2y$10$J7YgFwd/pXsy7ZOZ4A.OeOAafADYXjZaj2rA2y.gKj8nJFVg5U8Y2', 1, 1, '2022-11-05 14:56:27'),
(35, 'user673', 'user673.@gmail.com', '$2y$10$weChRJCx8CRU90QmlD4JTOhU9i5VGScGWq0H4sRZ0cIhEA01BsHk2', 1, 1, '2022-11-05 14:56:27'),
(36, 'user374', 'user374.@gmail.com', '$2y$10$U9vhM5au1CWg5uNeHVESMuqniJPZpqO3WVTUwL7gNI0hdwxt50lzS', 1, 1, '2022-11-05 14:56:27'),
(37, 'user595', 'user595.@gmail.com', '$2y$10$n3bVE9ECO8xpMSsbo2MxKOolxki5btgQYwO2T1RKDhz4Ro31IFkRG', 1, 1, '2022-11-05 14:56:27'),
(38, 'user642', 'user642.@gmail.com', '$2y$10$dhcHiBJC4V6xtqHbZmU5Ye.wMz/cDwkqiEL6iFuSKFr.P0DmscioO', 1, 1, '2022-11-05 14:56:28'),
(39, 'user328', 'user328.@gmail.com', '$2y$10$dZYPM96ZYnwaIw9IKLdRCuGOJXkRu3cg1HEmNyF261SHkKhbTucam', 1, 1, '2022-11-05 14:56:28'),
(40, 'user365', 'user365.@gmail.com', '$2y$10$IPfZwxdLjuWE9caC5gpKoOUflGCBZdl6u4bteT9H9hl7NkcwRJsjq', 1, 1, '2022-11-05 14:56:28'),
(41, 'user675', 'user675.@gmail.com', '$2y$10$6Hi9Zpd2yzUodHt7tiskAuBqJ0z7d5Maxd0r0tHew.VzFK93emddW', 1, 1, '2022-11-05 14:56:28'),
(42, 'user174', 'user174.@gmail.com', '$2y$10$ekrYOqV53/X7IG/hzeATaeGsr5WUuWM9dtnOPGSgtN.e34UAluxTa', 1, 1, '2022-11-05 14:56:28'),
(43, 'user279', 'user279.@gmail.com', '$2y$10$oZCRsZVEkONHf1GcFIMG4OEx4TOJXkvVd7fPxScEKfjb6i.2xM4sy', 1, 1, '2022-11-05 14:56:28'),
(44, 'user678', 'user678.@gmail.com', '$2y$10$WQLF/xzZR8wl9lP7PMTDgubqIXNsoWtx7iI0i2JXvxnuvBHqsai6q', 1, 1, '2022-11-05 14:56:28'),
(45, 'user702', 'user702.@gmail.com', '$2y$10$AopM95CRWpYTwUcsPUCMyOAWy9.znqb8cpkv1H/PtDuvy193FTJJe', 1, 1, '2022-11-05 14:56:28'),
(46, 'user380', 'user380.@gmail.com', '$2y$10$wUU0G2KK1M8lMOAjcBUomOJeTD8.6kJXLBmiTYM94cCkQ1k/rRsim', 1, 1, '2022-11-05 14:56:28'),
(47, 'user873', 'user873.@gmail.com', '$2y$10$q34InngwmtvNNDaz9OLy7e3FPEugiYXlF/FKbMnRgq8/JjSYzN8LK', 1, 1, '2022-11-05 14:56:29'),
(48, 'user181', 'user181.@gmail.com', '$2y$10$aV5MmHsXzkhZn5LVjoZoU.i9I/7cUsbs/zPe5SGWbWeHL7ahwixlm', 1, 1, '2022-11-05 14:56:29'),
(49, 'user632', 'user632.@gmail.com', '$2y$10$l898z3UdFuKAD/gFUdEGlubXEG3a8Io04lqOFfKo8lHYz5s2/cPca', 1, 1, '2022-11-05 14:56:29'),
(50, 'user717', 'user717.@gmail.com', '$2y$10$yxeZJ7PxOUJVgnjLA94tXOb5n5dx6cupWEkNlL7mizcPNfF8ixSTq', 1, 1, '2022-11-05 14:56:29'),
(51, 'user462', 'user462.@gmail.com', '$2y$10$o1rzG.AWsRxkJvrK2AZAY.R12S.ZMJxjU1f.anzsVaFOQQJYftllS', 1, 1, '2022-11-05 14:56:29'),
(52, 'user201', 'user201.@gmail.com', '$2y$10$4VhM3xwTdSc4p3VcY52LauI.uz4oxshJ006JhOPio4XmRr0Hper.u', 1, 1, '2022-11-05 14:56:29'),
(53, 'user467', 'user467.@gmail.com', '$2y$10$GtJlMV.JbrWco9yuXstZ8uqfG2zoOne6TXuJT/D1dILqtBT6w.o/W', 1, 1, '2022-11-05 14:56:29'),
(54, 'user682', 'user682.@gmail.com', '$2y$10$9utiQube4s.44Ry7G1dzmuCpGASuUNotC3mV0B5qjP2RojpK7Mi1q', 1, 1, '2022-11-05 14:56:29'),
(55, 'user511', 'user511.@gmail.com', '$2y$10$mk.kQ9R68FX08d1hBE.qkeNkHLsDN98H4rPO0msLvqetsvz4g4MMu', 1, 1, '2022-11-05 14:56:29'),
(56, 'user455', 'user455.@gmail.com', '$2y$10$I1qaMcLf/RNob98ZhxcKsu1yQsPJKBHbgoGVO7/iQaqs379YzNG6.', 1, 1, '2022-11-05 14:56:30'),
(57, 'user826', 'user826.@gmail.com', '$2y$10$2x1JZt0OITsvBHh0T6MfgOWIhKwFy5hIVo7gZQirvHKL7SGB/r5OW', 1, 1, '2022-11-05 14:56:30'),
(58, 'user703', 'user703.@gmail.com', '$2y$10$6BioRKU0m0uVWv.HDTiWCe/oUAMt.1cX/cYgpFVItktF918IGqAKu', 1, 1, '2022-11-05 14:56:30'),
(59, 'user836', 'user836.@gmail.com', '$2y$10$DGSZ/3iTbDxLgNZ.411loelQQuXMZPDZSVY7IkXmO2qd1TZJjxzCC', 1, 1, '2022-11-05 14:56:30'),
(60, 'user490', 'user490.@gmail.com', '$2y$10$y0rsA5KHFlijS0/ka0OKleR/kSMvnt03Zz9Se0rAL4mVdYm2O4QwO', 1, 1, '2022-11-05 14:56:30'),
(61, 'user118', 'user118.@gmail.com', '$2y$10$kwi0oShsGV7vjkcqYfRE1.Zu4gypBQ8bdK3dt2CXZPNb0QOi5193G', 1, 1, '2022-11-05 14:56:30'),
(62, 'user857', 'user857.@gmail.com', '$2y$10$.61zJg04K8RCSm72Hmslf.EzK9juxUM5H2eEuwSok/4zxpPFV7kjK', 1, 1, '2022-11-05 14:56:30'),
(63, 'user994', 'user994.@gmail.com', '$2y$10$2Fct0N0.Ky5UZxJau69by.VtMYCKQ4uNIinUZXsEa.zTKSD/gN83G', 1, 1, '2022-11-05 14:56:30'),
(64, 'user342', 'user342.@gmail.com', '$2y$10$56esTB.1o49OrHKUrIluw.gqfXi4fAnKH344h8FzpKVAwCiZ4Jq6O', 1, 1, '2022-11-05 14:56:30'),
(65, 'user253', 'user253.@gmail.com', '$2y$10$EUnqBk/0OER2otDu3/x8Z.dBlB74XRpyfpq3BICKGAQUZnwTzjzw6', 1, 1, '2022-11-05 14:56:30'),
(66, 'user947', 'user947.@gmail.com', '$2y$10$hoLGaFt9U2zJ6t03Gyv1COmjGMf.IpBxE4XofDS8n2z7E7cw9Sl4C', 1, 1, '2022-11-05 14:56:31'),
(67, 'user551', 'user551.@gmail.com', '$2y$10$HxbqbYdmVVMIkjVsRY2u.uYbjjQQzj6UWFGqMe0kVVJAp6Xp5ZN6O', 1, 1, '2022-11-05 14:56:31'),
(68, 'user301', 'user301.@gmail.com', '$2y$10$oNO3BweJOhS9KTPZMCGjG.kHsDq1GB4q9tjh0WFPD8TveQ3N0TGhy', 1, 1, '2022-11-05 14:56:31'),
(69, 'user280', 'user280.@gmail.com', '$2y$10$KFtj3VNRBVgiG5WiMPjMte2gL4FfVAI0J3zm1lHJSUKrRos41/yJi', 1, 1, '2022-11-05 14:56:31'),
(70, 'user242', 'user242.@gmail.com', '$2y$10$o5SP6T.zjE1q9cB7ICsVtuIZtJ7oUD6ICA/VBK8ECViI2uR96e.Ua', 1, 1, '2022-11-05 14:56:31'),
(71, 'user483', 'user483.@gmail.com', '$2y$10$la6IANwMThR0BXvhIC2vgOXRjdFNClyIaL/Np8BGauhRAl5g/L4MG', 1, 1, '2022-11-05 14:56:31'),
(72, 'user179', 'user179.@gmail.com', '$2y$10$XlJiY2A9.iCuPlU1awaoAefng6DeeJtWxnka.ruP/JxFK9o2bs6QK', 1, 1, '2022-11-05 14:56:31'),
(73, 'user932', 'user932.@gmail.com', '$2y$10$eWq335HiRdQFT5LNiU7BA.ioNjTxnA7oBDXv43jrqosY1.j.goPvi', 1, 1, '2022-11-05 14:56:31'),
(74, 'user203', 'user203.@gmail.com', '$2y$10$HiZ.SlHJvxN.PqePGmcxW.CIkQCt8Qp2LU15j6.pO3bdRb9sbmiZ6', 1, 1, '2022-11-05 14:56:31'),
(75, 'user309', 'user309.@gmail.com', '$2y$10$mICDlqoBAjhQRUSzsDJSJuRJPEzjhEBR3bvLaXwydT.EpPnLlC9Nm', 1, 1, '2022-11-05 14:56:31'),
(76, 'user163', 'user163.@gmail.com', '$2y$10$3NNDhgVjY2tdA/rs8.UqmOC/8l1QEemVZR3SPjjvQbMAYY77mM55a', 1, 1, '2022-11-05 14:56:32'),
(77, 'user842', 'user842.@gmail.com', '$2y$10$yX20fXaTlZLpYD52m/wO2.U1XsrB5POq7SvN9SjqGIstw0Z7vd.AW', 1, 1, '2022-11-05 14:56:32'),
(78, 'user841', 'user841.@gmail.com', '$2y$10$XfzxsIpvBBAJxacdc9hec.Pua5ih.WjmSbHPwGwx0CG1AMgkRCS8O', 1, 1, '2022-11-05 14:56:32'),
(79, 'user421', 'user421.@gmail.com', '$2y$10$eR/tmLkLUtS6pcGPvg2seusLsU3AapYVNzA9vnKrnYPI03PBDdJ7q', 1, 1, '2022-11-05 14:56:32'),
(80, 'user531', 'user531.@gmail.com', '$2y$10$j3/anw9wZEDmFdvQXYn2yenOQZCCPtg8vAyTNNWF9YbeeOtw5nRWG', 1, 1, '2022-11-05 14:56:32'),
(81, 'user409', 'user409.@gmail.com', '$2y$10$HJaex5HfO7nv1k0jzMOXWOJ/dh29o3zjCDdW7I4EMdIDNPIRkm/ni', 1, 1, '2022-11-05 14:56:32'),
(82, 'user683', 'user683.@gmail.com', '$2y$10$3mfVpIIuNoybzNkKLdDOiulT9rq2FM2zChp./uOUnxNls6FbViJ8K', 1, 1, '2022-11-05 14:56:32'),
(83, 'user631', 'user631.@gmail.com', '$2y$10$WL41ILnA74EhoZ8MzQq3IuffSzueRWBbRZOXY67pt/4rj0JwMwj1S', 1, 1, '2022-11-05 14:56:32'),
(84, 'user686', 'user686.@gmail.com', '$2y$10$KjubEMMXWzeUHCFNAch93OkReTg3n1QLq/At5TmC8ARCGPTMuTeRu', 1, 1, '2022-11-05 14:56:33'),
(85, 'user919', 'user919.@gmail.com', '$2y$10$DiCanpTseoQBtXQsxtxvlebF8y83jdlTHAYJAn/poWJtsW2bDNnRy', 1, 1, '2022-11-05 14:56:33'),
(86, 'user287', 'user287.@gmail.com', '$2y$10$FYCQ55i7.CRpHrHkK4Jmpu6ZaOhKPoO9/YaXvt.46LefManN.Pbi6', 1, 1, '2022-11-05 14:56:33'),
(87, 'user116', 'user116.@gmail.com', '$2y$10$i6TWrCg8qotDjzbsQuJ2PuyO8JNxfbpwSyGzRLYEQZ0Xq2.NXxRau', 1, 1, '2022-11-05 14:56:33'),
(88, 'user360', 'user360.@gmail.com', '$2y$10$ThfZZPa/4oNARXVn3wvg3uLULHV3EAGppnP62gh9q9jEBCVUYk1Ru', 1, 1, '2022-11-05 14:56:33'),
(89, 'user350', 'user350.@gmail.com', '$2y$10$dFqArEKzX4UqReMweL1CGOYOUKQN6/c8n1.1Btn22N9TL3qg3XBrW', 1, 1, '2022-11-05 14:56:33'),
(90, 'user357', 'user357.@gmail.com', '$2y$10$8O3PCPNLG32Ye0Mw2WjN1eOHP0z8dc9UjguX7Rwm9dQCtThEQpCju', 1, 1, '2022-11-05 14:56:33'),
(92, 'user597', 'user597.@gmail.com', '$2y$10$VJqFLAJtUTxxj9Dv57wLxul6CNP7qMpzJToQh7it83eYl7QX5guYC', 1, 1, '2022-11-05 14:56:53'),
(93, 'user943', 'user943.@gmail.com', '$2y$10$gHLrL.b5pMQcPz8zAQUq/uAhxfO6bwNFcbgZONrZkXcug2FOsOdIS', 1, 1, '2022-11-05 14:56:53'),
(94, 'user944', 'user944.@gmail.com', '$2y$10$UyZJOOBgimff/qbRGtqNFOxeEFk/5ph.tDsFIQrYjU//tvYw1dYVK', 1, 1, '2022-11-05 14:56:53'),
(95, 'user264', 'user264.@gmail.com', '$2y$10$tzOpuntABOVbTXr.rZBnbOyKSxITPH4yigOWf/stlrfZZyuBhyCtu', 1, 1, '2022-11-05 14:56:53'),
(96, 'user745', 'user745.@gmail.com', '$2y$10$f9IkJ0uibJ0CJSWPibFVqOL.KRkMfLpExUvsdvWxucwwc6hsesWPC', 1, 1, '2022-11-05 14:56:53'),
(97, 'user494', 'user494.@gmail.com', '$2y$10$2YXA.o0sDQu2dtDZ/HrZhuBZOtNijBIgAFxGTjcZM3fic4m07Rblm', 1, 1, '2022-11-05 14:56:53'),
(98, 'user562', 'user562.@gmail.com', '$2y$10$nwsccDDN8FuikdPSsIvXueRz9g4PDOAgdZcfmhue/vnf5Z9M75tDy', 1, 1, '2022-11-05 14:56:53'),
(99, 'user272', 'user272.@gmail.com', '$2y$10$Iby9MCdlrMvWDDbOh9dAHuiYVV/O6HJlrII4VjXVCiZ29pRTLpUFu', 1, 1, '2022-11-05 14:56:54'),
(100, 'user744', 'user744.@gmail.com', '$2y$10$ZTuzGtElwhHTmXpBK9yNVeV.8fp1ulsH/o8AxRZiZRotOPVJ1IJkW', 1, 1, '2022-11-05 14:56:54'),
(101, 'user965', 'user965.@gmail.com', '$2y$10$jxGQZzjv5RhVF9.1WxpF2uiT/pQDwWScMirx47S9S5VQxhn/BQqYS', 1, 1, '2022-11-05 14:56:54'),
(102, 'user999', 'user999.@gmail.com', '$2y$10$uxUcTZGIh5WDOEHOFTIf3OK1z2P75QsFYLiXmrY6aDMi6SNJAqYBK', 1, 1, '2022-11-05 14:56:54'),
(103, 'user852', 'user852.@gmail.com', '$2y$10$yk79eayJ4HufJow3LmvGjO01OC0jkzWhMs/8FnXCiNzkkfBomnkY.', 1, 1, '2022-11-05 14:56:54'),
(104, 'user205', 'user205.@gmail.com', '$2y$10$G/X0ib21p43/wlSXjFggxeWJo7j1hlx0d8K89Ia6STqVZa4no4nRa', 1, 1, '2022-11-05 14:56:54'),
(105, 'user337', 'user337.@gmail.com', '$2y$10$.bbvhY7Qq3oj45ZSHFJCc.AHutEaTy/eIfWP9Re4giMBUvs8Yn/2y', 1, 1, '2022-11-05 14:56:54'),
(106, 'user934', 'user934.@gmail.com', '$2y$10$1JsAz0CK6CeLITpqqR2PlOMr0hRICbq4bkyJ5JqlNd0UbEqGzm5uy', 1, 1, '2022-11-05 14:56:54'),
(107, 'user308', 'user308.@gmail.com', '$2y$10$wIgr4ReFaPbnsv1l9jiy7eXzH1b2IUgiGDQrrcgehW/mAE9PX6cHC', 1, 1, '2022-11-05 14:56:54'),
(109, 'user1717', 'user1717.@gmail.com', '$2y$10$nUaX2La/Urly8QhWsPljVOYZLPNUyzuzj/CuR3hav7.KQhnNRx2O2', 1, 1, '2022-11-05 14:57:36'),
(110, 'user5546', 'user5546.@gmail.com', '$2y$10$FoP0NEYxmcebo/m8qYGelO20b9GE4BrpZ22Y9wQt/S4CN8GiZStJW', 1, 1, '2022-11-05 14:57:36'),
(111, 'user9153', 'user9153.@gmail.com', '$2y$10$PoRX29CH9qVka6SpHPTMne/MSx8v6XPoLSKrRV1ruN7/tuOZFytvO', 1, 1, '2022-11-05 14:57:36'),
(112, 'user2771', 'user2771.@gmail.com', '$2y$10$0Sk1Ac7mlVJiRmmZ/OvQQO.bzqXJ50jPJ7QElH9FK0JAThLd/aH5K', 1, 1, '2022-11-05 14:57:36'),
(113, 'user2195', 'user2195.@gmail.com', '$2y$10$RjS7.uJTygwekRO.xlwaAOGGXz.3HpeNZBDUvGRraZ1V5IeLAEkKW', 1, 1, '2022-11-05 14:57:37'),
(114, 'user3291', 'user3291.@gmail.com', '$2y$10$zCKzBN523X/j2K/RloKpE.0l95oKva7NDMSRUJ3PNoFKPt.3IXGsC', 1, 1, '2022-11-05 14:57:37'),
(115, 'user2580', 'user2580.@gmail.com', '$2y$10$0ucmmAWV7VCp8dQEDdu7d.4QZPO77RlmS15VwWXc4TH4RD3qEpWj6', 1, 1, '2022-11-05 14:57:37'),
(116, 'user1098', 'user1098.@gmail.com', '$2y$10$86wOGpF7ii59dl/ZLyr3keDOndNpXi0nychp.FuHgwotQF5aAoJ4S', 1, 1, '2022-11-05 14:57:37'),
(117, 'user3508', 'user3508.@gmail.com', '$2y$10$9Y4ixqckK9Jh7YpQaZwow.l6EU15L3/Cztuz7QR9ZH5hFm8LzBd3K', 1, 1, '2022-11-05 14:57:37'),
(118, 'user4359', 'user4359.@gmail.com', '$2y$10$vZk07EFw7vOqUqfgYdj2zOwgV1lA9JnxePD3I7BGFazwD3iVLY6y.', 1, 1, '2022-11-05 14:57:37'),
(119, 'user2523', 'user2523.@gmail.com', '$2y$10$Uy72t67rFNof93.xzvEf5u8.FByujmewrpBtcYJsrrJdJNVT6/ZG.', 1, 1, '2022-11-05 14:57:37'),
(120, 'user1335', 'user1335.@gmail.com', '$2y$10$fRTTlpwkspgJ7A91N.hkpOzJokop0GmFB2KJgCRP.sOLd4VfbUDqS', 1, 1, '2022-11-05 14:57:38'),
(121, 'user2381', 'user2381.@gmail.com', '$2y$10$zGaQsBPnYyctvOm5PkyENuT62GH5ro7h7CTZBjHlNWq9PB1I/4Qh.', 1, 1, '2022-11-05 14:57:38'),
(122, 'user9034', 'user9034.@gmail.com', '$2y$10$N.OgNfpA5gYhsGT59XeTYekk6PrmO0uqh.xEUVZ1tdggbWyLZYoTq', 1, 1, '2022-11-05 14:57:38'),
(123, 'user9562', 'user9562.@gmail.com', '$2y$10$Cp3m7sCec9FFXkLyuhVsZOS5CuLwC9Ady4B5lLLtcgO56Bw/Oecp6', 1, 1, '2022-11-05 14:57:38'),
(124, 'user8878', 'user8878.@gmail.com', '$2y$10$UVtofJ.s5EBQbXa/toikiu0s32vr3xUw1skuvdKdCz8el1hwSlgFW', 1, 1, '2022-11-05 14:57:38'),
(125, 'user3989', 'user3989.@gmail.com', '$2y$10$szuXhEDsAs3pM.kWzGtbq.4DGtaYJOShGvU1EAsEjx7lf3F1zeWsq', 1, 1, '2022-11-05 14:57:38'),
(126, 'user6870', 'user6870.@gmail.com', '$2y$10$0TauJ4OEdNEoI9BhccbOoevXVATZpELELTYow7eHUh39YAjaO55q.', 1, 1, '2022-11-05 14:57:38'),
(127, 'user8716', 'user8716.@gmail.com', '$2y$10$RslkUfxBcg/3OeaoKW3S5.9rP3uSNZIwMVi3P7YI90ZjLgJ5OAZby', 1, 1, '2022-11-05 14:57:38'),
(128, 'user9225', 'user9225.@gmail.com', '$2y$10$HOQVYhXl6xepa9wErKgUEOvUgSGF42sYe5ckZqxgYZHLWKFvrwKxK', 1, 1, '2022-11-05 14:57:38'),
(129, 'user8555', 'user8555.@gmail.com', '$2y$10$pfJLTDteZhakfuPMVykDM.WKR/.ZDZlng9u7x6VbUEKOWDwSqj1Au', 1, 1, '2022-11-05 14:57:38'),
(130, 'user2515', 'user2515.@gmail.com', '$2y$10$dm/4tw/OD.7Hj9HIfNYN9etVVrLxf1iNRzGxhHnxFFk5ue9nekIBa', 1, 1, '2022-11-05 14:57:39'),
(131, 'user2637', 'user2637.@gmail.com', '$2y$10$UU2ae9FrAOGQ757Wpt56DO93D9dX/3q9ED6gMxsE3OtKOmOxGJY22', 1, 1, '2022-11-05 14:57:39'),
(132, 'user7125', 'user7125.@gmail.com', '$2y$10$mT1oGYZOwS43KSCfgwlV4eN/huWxdvIKnqQ75ysuhHev05yVFAEnG', 1, 1, '2022-11-05 14:57:39'),
(133, 'user8557', 'user8557.@gmail.com', '$2y$10$sTmLVgfBJcw/9bfoH6TMtuzXUgalvaJ1dMXbua9O1LdW3./VRSEB.', 1, 1, '2022-11-05 14:57:39'),
(134, 'user4914', 'user4914.@gmail.com', '$2y$10$uRJgSRElDrWB/.fBEyzemuekfEGwtHZTu1XBEjNL7ry.o31eehInW', 1, 1, '2022-11-05 14:57:39'),
(135, 'user1190', 'user1190.@gmail.com', '$2y$10$35Otr2zmod0tUt7h7FEVluvEu/xzHdY5Cc.D1BIL9CLMOovs5ykRW', 1, 1, '2022-11-05 14:57:39'),
(136, 'user5341', 'user5341.@gmail.com', '$2y$10$WG1IXnEB31MXgjWD96NVfOxT35GBcjdJ.hg1Z/gLSQ.AXs8FpR07i', 1, 1, '2022-11-05 14:57:39'),
(137, 'user8627', 'user8627.@gmail.com', '$2y$10$9rxgYcHl0QS/P2X6ttqdjuUlE0n66/d9NdVmjVOCMuOmCT/KE7DLu', 1, 1, '2022-11-05 14:57:39'),
(138, 'user9265', 'user9265.@gmail.com', '$2y$10$S46TIutDVYvx1jW0yjUL0uFgDFfMNEUaSUm9lGVe2AVJMSsLHWM16', 1, 1, '2022-11-05 14:57:39'),
(139, 'user2894', 'user2894.@gmail.com', '$2y$10$gUYKx8h8fahwUzahdn69mO2YTa9cJNQX9YjoZW3/hTMwqqoP4dTi.', 1, 1, '2022-11-05 14:57:40'),
(140, 'user8047', 'user8047.@gmail.com', '$2y$10$iPXmnor7ThJMbUYvQanxZ.UEgWmuTj6jaxIJHWzPcURJ7MyNIb18m', 1, 1, '2022-11-05 14:57:40'),
(141, 'user8077', 'user8077.@gmail.com', '$2y$10$9B.PPmVoQyxJqw5l5F28zOKq51WeI4lVCjTE9W2YvW31iOVh4k9CK', 1, 1, '2022-11-05 14:57:40'),
(142, 'user5163', 'user5163.@gmail.com', '$2y$10$LnGLQblGE5CEKdfp9vIWEeRDtWbaK/yccaqRCCfqfeNuSZzVtPRSS', 1, 1, '2022-11-05 14:57:40'),
(143, 'user6780', 'user6780.@gmail.com', '$2y$10$gbFXgW5MbwZ1VqQVDLuATOw5eo96ZheuMEbbtwdnHdWVf4rrrpCyy', 1, 1, '2022-11-05 14:57:40'),
(144, 'user1607', 'user1607.@gmail.com', '$2y$10$/N4ZSRj8VPA3Rz9ZdAqfNeBTOqT1I8p8qFsfHWJjU8/0Tnyv3O9/.', 1, 1, '2022-11-05 14:57:40'),
(145, 'user1809', 'user1809.@gmail.com', '$2y$10$aVOL.jB8qvXw5Gc9O5YZwulbpwHeVRh.OqkG9e7JHmK0tIPfpKKTm', 1, 1, '2022-11-05 14:57:40'),
(146, 'user7781', 'user7781.@gmail.com', '$2y$10$7Nul3b2w47H1KhBtLDS/wOM4bRBpqTd0gkmyhqfIowwmDTuMFQMOW', 1, 1, '2022-11-05 14:57:40'),
(147, 'user3790', 'user3790.@gmail.com', '$2y$10$wCDC1GutZ62ZLKjFu89Cxet0eEn/OK5/kCN8eaZ1gmCYZ24WPnVbO', 1, 1, '2022-11-05 14:57:40'),
(148, 'user5519', 'user5519.@gmail.com', '$2y$10$TFtV1n61J71T8TI.5ls5..zOhWKrqu2rjZxNDZB1VuiIuNLvmrirC', 1, 1, '2022-11-05 14:57:41'),
(149, 'user5564', 'user5564.@gmail.com', '$2y$10$mXkux8Q.iT7oJlXL83uTJ.A/sewB1SWH.vR5AV5ekomVgtzcchMQe', 1, 1, '2022-11-05 14:57:41'),
(150, 'user5742', 'user5742.@gmail.com', '$2y$10$G2.yUPmO79SW/lYGD1mnp.WJVoFOJX9LIpiNTTf0bTI/lg5SlV9PO', 1, 1, '2022-11-05 14:57:41'),
(151, 'user1316', 'user1316.@gmail.com', '$2y$10$rAL9bsSqMixN9cwIY/aOaOtXEODs3UbiO1hDs2X8ZZxgEq.V85rqO', 1, 1, '2022-11-05 14:57:41'),
(152, 'user7005', 'user7005.@gmail.com', '$2y$10$wHGaP5C2lu..kXsSx6M7lOBuixk7FIEJTA2gHCdg/Udw4N2uiJvqC', 1, 1, '2022-11-05 14:57:41'),
(153, 'user7225', 'user7225.@gmail.com', '$2y$10$WVkwLVGu1pDh9B590vInC.w7cDJMsLsTQ.g3l8E4wLrMSheN1m9vu', 1, 1, '2022-11-05 14:57:41'),
(154, 'user7853', 'user7853.@gmail.com', '$2y$10$1XRRG9by6jol2accTuC6nuWhpoom0xwXkA5njMs31FcwCqoXeKNLe', 1, 1, '2022-11-05 14:57:41'),
(155, 'user2209', 'user2209.@gmail.com', '$2y$10$kYGt5flbr/PmYzStPAeOHOrIxjbxArJG.iIrNoBEpmWLw/W6qjze6', 1, 1, '2022-11-05 14:57:41'),
(156, 'user7314', 'user7314.@gmail.com', '$2y$10$3SdpY.I/Kq4E7NsP487OKuTsAQKuf94ktu4dE.9ddRSAYj1zZintW', 1, 1, '2022-11-05 14:57:41'),
(157, 'user5663', 'user5663.@gmail.com', '$2y$10$IMeuUtJ.qtjCx6nNJ8w5zOdtS2/pCYvvtEDF3T9y/EJWraRYYYrM2', 1, 1, '2022-11-05 14:57:42'),
(158, 'user4628', 'user4628.@gmail.com', '$2y$10$Xxv1UkarsEX1CaS9aEL0f.ZjK4eDnL9vwvBn9TV59ECdZ6MKFvaX.', 1, 1, '2022-11-05 14:57:42'),
(159, 'user3967', 'user3967.@gmail.com', '$2y$10$M1d9FwusUPFyUHNB8hAZGusAHSVRYUUo9by9Vm4.higwj96QoseyC', 1, 1, '2022-11-05 14:57:42'),
(160, 'user4480', 'user4480.@gmail.com', '$2y$10$H2x4ckMAMsSl40WO2aXIQuQA90mRnYNnmD.reh67qNnhoKe4.MBra', 1, 1, '2022-11-05 14:57:42'),
(161, 'user1866', 'user1866.@gmail.com', '$2y$10$jqQbsdi43StxGvpx0a4PGOWfTXcE6PMsOpNhnH5MnAEOfx3FJaCWy', 1, 1, '2022-11-05 14:57:42'),
(162, 'user3838', 'user3838.@gmail.com', '$2y$10$d0qWf4qsAu8i8tJFSLNFz.TQ/UwwItJDvdG5tFVEnnasgynhwgkHi', 1, 1, '2022-11-05 14:57:42'),
(163, 'user3837', 'user3837.@gmail.com', '$2y$10$bG/F6P3lsVjfvjJMH1n95.09SnBgtb03jLFD0JOW/KjcQRzpegY42', 1, 1, '2022-11-05 14:57:42'),
(164, 'user9033', 'user9033.@gmail.com', '$2y$10$yHRXOo6gVZf/76KTQcSlTO2y4ogYW3WUO8M6dSkXmvz0Lzkk/HQlW', 1, 1, '2022-11-05 14:57:42'),
(165, 'user2616', 'user2616.@gmail.com', '$2y$10$GT3uRdL/TjJPHuLitaImAeqH9DmryocjDOCdgeFMJNVBWo4Z0fTYm', 1, 1, '2022-11-05 14:57:42'),
(166, 'user7807', 'user7807.@gmail.com', '$2y$10$FkNBF5p54AlERq45MQsWC.EQUnxJT5p1R6lPvy/LMZJ/RslTNzJ9O', 1, 1, '2022-11-05 14:57:43'),
(167, 'user5841', 'user5841.@gmail.com', '$2y$10$AjHTjIEMSPXt.n66Iu2LeOhgznlFvC5/dXp.5nJOMmP1dVUnb82ka', 1, 1, '2022-11-05 14:57:43'),
(168, 'user6244', 'user6244.@gmail.com', '$2y$10$rr2Q8oRMNY1tKdhhYP45EuBi3k6z901zEtatF5PR9MsRxm5eohB.i', 1, 1, '2022-11-05 14:57:43'),
(169, 'user6125', 'user6125.@gmail.com', '$2y$10$7cOmMhh2Ln/8Av.wsV/R9ezjgskYIWKk4zlG/UZElj/Dcsaw9k1eu', 1, 1, '2022-11-05 14:57:43'),
(170, 'user3778', 'user3778.@gmail.com', '$2y$10$hP48t1NXYfRfTQP/pv4pyOB7Nxpo7HYK6D/MpJc2ooDyAM0rkgrIC', 1, 1, '2022-11-05 14:57:43'),
(171, 'user2013', 'user2013.@gmail.com', '$2y$10$R/MqfZj9BL5tSVkwGCrjvuT3B6mr8paesR3ghJ1KS9/h0sWoKjAju', 1, 1, '2022-11-05 14:57:43'),
(172, 'user2828', 'user2828.@gmail.com', '$2y$10$IlovLSJCNopFJp.glrSGEusrgWGb6f4/V41ppPwJ29StuzeIPhju2', 1, 1, '2022-11-05 14:57:43'),
(173, 'user2519', 'user2519.@gmail.com', '$2y$10$ebeYbSULC19jqBYuGHNCguTgL.4Tk7m9Q4Rprs0HJxTgvCNO0B6J6', 1, 1, '2022-11-05 14:57:43'),
(174, 'user5505', 'user5505.@gmail.com', '$2y$10$ZzaDuAqc8D3VYxzSgOtXFe4yDi9/MJwItsUYVi.IYwoNZOCqAJC3m', 1, 1, '2022-11-05 14:57:43'),
(175, 'user2171', 'user2171.@gmail.com', '$2y$10$AK/EvnvCEL1wCTff61Mz6umRdbHflnjP6UE5ppaO3czWS5SdfwJZa', 1, 1, '2022-11-05 14:57:44'),
(176, 'user2851', 'user2851.@gmail.com', '$2y$10$pxDeyyZX2f.dP7/bDGOdjeqZPdaitnQPIBOu1ZusZcldKivs3EYLi', 1, 1, '2022-11-05 14:57:44'),
(177, 'user1715', 'user1715.@gmail.com', '$2y$10$gBCfXJ6H5RRKIOnB/yOY7.NBzCpxfXA0KvMFhT7DegpjsEfPUIYlW', 1, 1, '2022-11-05 14:57:44'),
(178, 'user3254', 'user3254.@gmail.com', '$2y$10$5PQJxinfm6dZQNVkjUvKb.ygOR5AK5.gxpbKZH1vN6xqsx76N9FY2', 1, 1, '2022-11-05 14:57:44'),
(179, 'user4732', 'user4732.@gmail.com', '$2y$10$nf3gok25KcnV5oMuPdCDAeGRsu9.1OoGGWGZ/2W7OWEOyg2E/09Mu', 1, 1, '2022-11-05 14:57:44'),
(180, 'user8056', 'user8056.@gmail.com', '$2y$10$1wDqjLyoknkMsY8JPZ8/te4Qq3Y1oOe2dfpSdiweeEXUg15eK7w9K', 1, 1, '2022-11-05 14:57:44'),
(181, 'user6004', 'user6004.@gmail.com', '$2y$10$D.nSZZUdB2EfeHdgcv6fP.YckP3BPv8WNIxVFxN7eYowL58HQYnea', 1, 1, '2022-11-05 14:57:44'),
(182, 'user9172', 'user9172.@gmail.com', '$2y$10$YgzZ66QkSRKyZL0gbI0tl.xGSdsDDDA0khkpzzDGrTsyL1iW05uWK', 1, 1, '2022-11-05 14:57:44'),
(183, 'user2990', 'user2990.@gmail.com', '$2y$10$7HsGQA1aHXXZxauP3z57SuwJi5hFTW7EvYlISOnfsV.Tfl6kM9Ixy', 1, 1, '2022-11-05 14:57:44'),
(184, 'user9819', 'user9819.@gmail.com', '$2y$10$PsToNVdaUJPFRVaeVGXBY.0fuFStpgxB.JrVjWeZqZ0gThYvv.m6a', 1, 1, '2022-11-05 14:57:44'),
(185, 'user8684', 'user8684.@gmail.com', '$2y$10$SwSpNRh8YOwX9IYMkGnOE.73EUuORhEUHj.v6TForTLXmhS/K2kRm', 1, 1, '2022-11-05 14:57:45'),
(186, 'user7344', 'user7344.@gmail.com', '$2y$10$yerLcyRdNYhcXT8hiyZ9KOKLuaqtFBUCkMpASIanrmeGiZf8cBGES', 1, 1, '2022-11-05 14:57:45'),
(187, 'user8642', 'user8642.@gmail.com', '$2y$10$J4fAP0DPWr7SAFtqOM.tpeZ3AGPeSzFUmfjt7QRfGRVKPtvWyF0mG', 1, 1, '2022-11-05 14:57:45'),
(188, 'user3853', 'user3853.@gmail.com', '$2y$10$XYDEauwAfP59sqgcnKukveJwAyZaue2QulmXtcND68ZBAWUWV/nIm', 1, 1, '2022-11-05 14:57:45'),
(189, 'user4828', 'user4828.@gmail.com', '$2y$10$iUjnFTlqqR58lKdcHYvHKOp0Vs/RWv2KNvp9LLFktVe7EnfUovyFy', 1, 1, '2022-11-05 14:57:45'),
(190, 'user3526', 'user3526.@gmail.com', '$2y$10$SrS9z9bZDkRbnFKLK7Ku8OhlOMOj8tqvcX0fZAS7auVJOc8pT7f9S', 1, 1, '2022-11-05 14:57:45'),
(191, 'user7958', 'user7958.@gmail.com', '$2y$10$1j466fn.esgfezg8C//sa.1FISM74kE/oWhuxtBORy6uZNWrV2N4.', 1, 1, '2022-11-05 14:57:45'),
(192, 'user7831', 'user7831.@gmail.com', '$2y$10$MYgCPJlgEGoR9Z.Hio1LYu3lbp8wZWdkP/ykLBNXUOzjeKYM/oq1K', 1, 1, '2022-11-05 14:57:45'),
(193, 'user4474', 'user4474.@gmail.com', '$2y$10$SjsaE6zQuAL.4fTa2Z5Hk.Qxf/YLz0RruM3R1ythp4Gy1ivnfFXbW', 1, 1, '2022-11-05 14:57:45'),
(194, 'user1031', 'user1031.@gmail.com', '$2y$10$VKUvWdoIoqdlfzRCwZ4Tmejr6fvJVgV9Fnz3mEoR4uUZPhv2cZdpu', 1, 1, '2022-11-05 14:57:46'),
(195, 'user1652', 'user1652.@gmail.com', '$2y$10$zuI0hpZbmFEHfZD8nLTbfORKlFCL9GN77Gn5Z.u0uBj3DQ9.AD2fy', 1, 1, '2022-11-05 14:57:46'),
(196, 'user2783', 'user2783.@gmail.com', '$2y$10$yKL43Wvdk/zmY15hQBZRgukBMj9wkNDpuKLg6ACN/TxX/l4p4jYHK', 1, 1, '2022-11-05 14:57:46'),
(197, 'user8412', 'user8412.@gmail.com', '$2y$10$p7K8NMxztNV78FqhR2dn6utWu2I0Kf6G8ZkA77sTYjfWAvnFkKeXi', 1, 1, '2022-11-05 14:57:46'),
(198, 'user5113', 'user5113.@gmail.com', '$2y$10$cFYY3rZN9hcU/QqlMA0Il.MiSng0j0RW4Vd3h/t9/dtPhT.cnHWb2', 1, 1, '2022-11-05 14:57:46'),
(199, 'user8043', 'user8043.@gmail.com', '$2y$10$1Sxu6Nj0arjsUceLeexeIegghHgBBiYX8KGYrryLA1TGrvvUPIo82', 1, 1, '2022-11-05 14:57:46'),
(200, 'user4303', 'user4303.@gmail.com', '$2y$10$7uKDjDB92HZ.7qJD82NGkeYbejZA9l9UAOEvfXoHk5MYF929y.d5S', 1, 1, '2022-11-05 14:57:46'),
(201, 'user6699', 'user6699.@gmail.com', '$2y$10$3dIE/wos2/wWTFsikvvbfenf4fHH0BQMOaOEP.FBm1lWqNTTOL3Du', 1, 1, '2022-11-05 14:57:46'),
(202, 'user6223', 'user6223.@gmail.com', '$2y$10$vnhHVjRv7OWh5SY9jskRT.QDJgiZ99TWDJPgW62sykW6OP3JK7ety', 1, 1, '2022-11-05 14:57:46'),
(203, 'user8179', 'user8179.@gmail.com', '$2y$10$9Vvksxv6dWQXB3N.eENZSeJQ0m7YPCxDs5j/nVlNhmLnqAC4KyFkq', 1, 1, '2022-11-05 14:57:46'),
(204, 'user2827', 'user2827.@gmail.com', '$2y$10$EoNexiogjzNMV0/Wi9fKoOmuDKUoGK9nOG5YPBis/RcBInaJ.fJWS', 1, 1, '2022-11-05 14:57:47'),
(205, 'user7466', 'user7466.@gmail.com', '$2y$10$b.TTezTZz2.pE0mcfQ4a6ueqhk3Vx62fZ81LzT9ywSKQpT6QJVZZe', 1, 1, '2022-11-05 14:57:47'),
(206, 'user2997', 'user2997.@gmail.com', '$2y$10$Dk4YZDK.tx8DZIkfeRvkVeZ9CQOPg6RsoF9inYqFI4tssMqy.O5Ia', 1, 1, '2022-11-05 14:57:47'),
(207, 'user1302', 'user1302.@gmail.com', '$2y$10$2VfuIZ2OM/LD7G/GFP87Y.zSkFId1rqDtXmaGm3A/k/CjEkfF.Ff.', 1, 1, '2022-11-05 14:57:47'),
(208, 'user1191', 'user1191.@gmail.com', '$2y$10$5etrVoWTss2aMHrwm//jT.ntRNyGiqC6DJMYXt10JpszmVWG92.bq', 1, 1, '2022-11-05 14:57:47'),
(209, 'user2234', 'user2234.@gmail.com', '$2y$10$zusKb7YXrzGLBL8ynjkXF.kxOO9RILn/g8k6.3AjdrDnZTjQ9fJCa', 1, 1, '2022-11-05 15:18:35'),
(210, 'user3403', 'user3403.@gmail.com', '$2y$10$87.g9KCX6.qXi595XbehoOiKh1TvBAk7Q5Lui3SZCpUXsIwgg5TX.', 1, 1, '2022-11-05 15:18:35'),
(211, 'user7124', 'user7124.@gmail.com', '$2y$10$bNV7izCU4cPWF9vaVN7fzuh2WH0azWmy/WYnOqqkrYo9wkhytsNHe', 1, 1, '2022-11-05 15:18:36'),
(212, 'user3836', 'user3836.@gmail.com', '$2y$10$M1G46JoLRK0FOKJwpxH17.PNuRvwG./LxHi64Rieehcqh4Ok3Lksa', 1, 1, '2022-11-05 15:18:36'),
(213, 'user6566', 'user6566.@gmail.com', '$2y$10$eD6caBS/xiTvCxaPwV5eeeVTn0ai2WWvqCMYOhai.w6ImnWO5Kz5a', 1, 1, '2022-11-05 15:18:36'),
(214, 'user8325', 'user8325.@gmail.com', '$2y$10$NJgYU34D.LwPbYbQtUJnA.2Uk13DczPncoUhLvGx1pHJRSD7uCHxu', 1, 1, '2022-11-05 15:18:36'),
(215, 'user5130', 'user5130.@gmail.com', '$2y$10$aLUDadhRrITCPiyUjwjQv.j4Q/f2rYNwe6NJy4huk1NazIsNO7Qyy', 1, 1, '2022-11-05 15:18:36'),
(216, 'user9156', 'user9156.@gmail.com', '$2y$10$S34M0DtBMAFEz36HCKNeROeIyHuOqkIBl4NVwSaKRdnsr4YOHCO4a', 1, 1, '2022-11-05 15:18:36'),
(218, 'user8237', 'user8237.@gmail.com', '$2y$10$lw6NqWosiaaOqLl/xQXU0.ohs85ck157xb7MBMF74s05DDn3rE.qO', 1, 1, '2022-11-05 15:18:39'),
(219, 'user9264', 'user9264.@gmail.com', '$2y$10$hA3QT1tljnuHE6N0NtZqG.01/1eoo2N6enmNqIhKnHaCmiF34uWSG', 1, 1, '2022-11-05 15:18:40'),
(220, 'user7656', 'user7656.@gmail.com', '$2y$10$CH3cGXi8dkZLjCQ3ltoSkO8q6aRwSrcZWpcpl1B1RhI0HsgMlgt0a', 1, 1, '2022-11-05 15:18:40'),
(221, 'user4447', 'user4447.@gmail.com', '$2y$10$8GCi1P9WwfW2gpq4oe7CmOBDwDK5QDzXIT45.vAFWzkvYVmsoUBmG', 1, 1, '2022-11-05 15:18:40'),
(222, 'user9679', 'user9679.@gmail.com', '$2y$10$3qgScRBenh8uPaTIh/wDC.ZSUHv.GdcTT8fa7hbw28icqAk./Wumi', 1, 1, '2022-11-05 15:18:40'),
(223, 'user2200', 'user2200.@gmail.com', '$2y$10$3Rd5a6v7YCyUwsxFg8u1vOppVdKJlfXR6EwZgroIMbdmueHV8diXG', 1, 1, '2022-11-05 15:18:40'),
(224, 'user3951', 'user3951.@gmail.com', '$2y$10$0Q.krV2hki.4ZjGxi7eWmOo6a05Mk1YP7fPGNT2w0WqMAP/LYHJDm', 1, 1, '2022-11-05 15:18:40'),
(225, 'user8694', 'user8694.@gmail.com', '$2y$10$vKkv8/afLCnlG.g4R.HvROWb8pBybX2rINVHqW2NO17WVGL7kD4ZW', 1, 1, '2022-11-05 15:18:40'),
(226, 'user3931', 'user3931.@gmail.com', '$2y$10$7b6JWhiwEIO17EU95YCFveuylsnqBDgRqgXnMhzFubtojlhqWAt2e', 1, 1, '2022-11-05 15:18:40'),
(227, 'user2193', 'user2193.@gmail.com', '$2y$10$K0ohB1/AJDj.sVXTOQ/r7uZ1iOb55nY70QsiCdR.rEDFU8tMwBZOu', 1, 1, '2022-11-05 15:18:40'),
(228, 'user3344', 'user3344.@gmail.com', '$2y$10$EKsB2H3guHWp802W7akSneotikZFEoLHK/ZeK.wpo/jysO9B0AWSe', 1, 1, '2022-11-05 15:18:41'),
(229, 'user7955', 'user7955.@gmail.com', '$2y$10$64uOq4ZwfgDmE0erHSGtmu0stGIXXeoHg3GtL6.uJqncrj1yoyia6', 1, 1, '2022-11-05 15:18:41'),
(230, 'user9437', 'user9437.@gmail.com', '$2y$10$NVH/zKLpmKBcw/GbGMMxoOMJLdww9ypXz5o1zdecqfdZsuI7y0r5W', 1, 1, '2022-11-05 15:18:41'),
(231, 'user7349', 'user7349.@gmail.com', '$2y$10$s3YG3G38ylpzJnI06WAOaOzOq5qEuqWyvzMHXCZiamChrcgITMvXO', 1, 1, '2022-11-05 15:18:41'),
(232, 'user4696', 'user4696.@gmail.com', '$2y$10$Jk.sNh1TT.8dz0UITbq85OrDQ9p8L0W.E7ckLYXZ5ewL.G2eTrINy', 1, 1, '2022-11-05 15:18:41'),
(233, 'user5152', 'user5152.@gmail.com', '$2y$10$.p5ZUog8k183PiBzlNHXF.3DN1GjZfAh4PSYZJTAb/JK8.vXW4y9K', 1, 1, '2022-11-05 15:18:41'),
(234, 'user2406', 'user2406.@gmail.com', '$2y$10$Bo4D1oMutTzd2PSvQE7JAejF/zEg2mnToL6QuexRJEfzA7ChfqyLK', 1, 1, '2022-11-05 15:18:41'),
(235, 'user5899', 'user5899.@gmail.com', '$2y$10$N7MxtYkRhErJBmm3TESE9OWQOO701Qo9qd/PkFlwC6F6DvRxtpYCe', 1, 1, '2022-11-05 15:18:41'),
(236, 'user9709', 'user9709.@gmail.com', '$2y$10$E9.eyITupvZJp7tClpJh..dP8p.aeyVzg8KVW1gHuviTE87RNkIvq', 1, 1, '2022-11-05 15:18:41'),
(237, 'user6661', 'user6661.@gmail.com', '$2y$10$Xns7DT81.Gs5S3NL9NAIZOuAkkj9dbvQrkPlXpGOlui8/5ZleeHmW', 1, 1, '2022-11-05 15:18:41'),
(238, 'user1378', 'user1378.@gmail.com', '$2y$10$DuYLc80O7Phq1iJsGqYKM.lL1n6uAilobk9h21cTwkScndpI.Uvna', 1, 1, '2022-11-05 15:18:42'),
(239, 'user5092', 'user5092.@gmail.com', '$2y$10$gihH3o11r/bmSJw/cWWFueOBUTv7DJa6NtcOaB7GnKrM1ZWNA7aOq', 1, 1, '2022-11-05 15:18:42'),
(240, 'user7385', 'user7385.@gmail.com', '$2y$10$f7JVxVRjx.eVZwC7XCintOL.k8ygidkTWSlDRgCPDRdFVTmIHIhmO', 1, 1, '2022-11-05 15:18:42'),
(241, 'user1630', 'user1630.@gmail.com', '$2y$10$FT9sYHciTKA1VzQYQ9zWYeVtSeMCixSF/pK12o1qkkwciyQOTTiRC', 1, 1, '2022-11-05 15:18:42'),
(242, 'user3518', 'user3518.@gmail.com', '$2y$10$u27XlmA.0F9KytiXhZsj7.LOSxifk/tb5EvV9TAH.Bj8hKQYNwHjS', 1, 1, '2022-11-05 15:18:42'),
(243, 'user9245', 'user9245.@gmail.com', '$2y$10$LtNcfkwkZA1qIWzCd3zwnOizLs1nHAN7Xu5zbH6j.YpmjSPwiRygC', 1, 1, '2022-11-05 15:18:42'),
(244, 'user4973', 'user4973.@gmail.com', '$2y$10$7vfTyNIyFJciQw8Aweqbk.Xq.JZ3nxQo24pNj/gu2ZTQLSZaIz/hW', 1, 1, '2022-11-05 15:18:42'),
(245, 'user6847', 'user6847.@gmail.com', '$2y$10$HOAWs.xGi/3z7CuJigCQS.jx/gHeeDOrHBbRbTJ3t84YcdAUNuZVa', 1, 1, '2022-11-05 15:18:42'),
(246, 'user2792', 'user2792.@gmail.com', '$2y$10$uLJB16doeQei9pU75RDeYOs41zbhYs7HMztpb4jT5kk666QQ8VOW2', 1, 1, '2022-11-05 15:18:42'),
(248, 'user5750', 'user5750.@gmail.com', '$2y$10$ny1hLcaWV1wHAMupaeEJEev47qLfQSJ.g1MA4IT76NACP9d4xc9de', 1, 1, '2022-11-05 15:18:44'),
(249, 'user6727', 'user6727.@gmail.com', '$2y$10$HTqWgwLayzxxO22OZf00VePRyw49dpZcDRA5lqrGR//LKZ/9RA5de', 1, 1, '2022-11-05 15:18:44'),
(250, 'user8074', 'user8074.@gmail.com', '$2y$10$ZAvSLyFCGUtD97g2BdquLOI8ZGE0rAHBGYtDqvNPorjj1LQ4vMQN6', 1, 1, '2022-11-05 15:18:44'),
(251, 'user4528', 'user4528.@gmail.com', '$2y$10$waP8QGDZX67c0dmQG9WZk.1UuzktsywE3228xt0VBTaOv3Lme6ta.', 1, 1, '2022-11-05 15:18:45'),
(252, 'user9315', 'user9315.@gmail.com', '$2y$10$4iiOWEPuwHOmH2PSwLqcpuxFIH88Ycr8/lbtPCFHnn6evNzGeFEOy', 1, 1, '2022-11-05 15:18:45'),
(253, 'user7394', 'user7394.@gmail.com', '$2y$10$n0NLyK7Mbh1m1vTtycd.9eksFRnX7yM1JdDqkFKFVNOvo4yWGb7x6', 1, 1, '2022-11-05 15:18:45'),
(254, 'user7590', 'user7590.@gmail.com', '$2y$10$2cE41VM7sjpGw11AQsZnyeZtGlQ7uyBXc79K7KZlE7nUnSCPyppFq', 1, 1, '2022-11-05 15:18:45'),
(255, 'user1527', 'user1527.@gmail.com', '$2y$10$xHo.GpTSWaf8qKw3RK76KuZsDuEo4N9YO2DPDAi/DY3S02DVV4KCe', 1, 1, '2022-11-05 15:18:45'),
(256, 'user7964', 'user7964.@gmail.com', '$2y$10$dtrUQO2GXP5.17ZphdL6t.RbQzGk34xh4usNyI9OvrpIUeV/ah3eO', 1, 1, '2022-11-05 15:18:45'),
(257, 'user7855', 'user7855.@gmail.com', '$2y$10$6dJbrkwgxBPCDU/5b.TUueIs0eTEfBW0IfV6ahHZWvAydyN6f/R5.', 1, 1, '2022-11-05 15:18:45'),
(258, 'user2364', 'user2364.@gmail.com', '$2y$10$XgA3TM8sQ/mJ1w2Uy7t71OOYnJdPEWLt9ll20ua61AZoNAH36daou', 1, 1, '2022-11-05 15:18:45'),
(259, 'user1537', 'user1537.@gmail.com', '$2y$10$cK0toO.e7S9lRhVZZFVNiOMmctdySlYZAJIqXMCtqnpE4.NnDwj8.', 1, 1, '2022-11-05 15:18:45'),
(260, 'user4009', 'user4009.@gmail.com', '$2y$10$BdshcUcy/ZfpU81c5cVfJuPmLdAyLlfOYrJNempFPVSXr45g.YGye', 1, 1, '2022-11-05 15:18:45'),
(261, 'user5472', 'user5472.@gmail.com', '$2y$10$nJn6u9twDZlNaKOxZRuhcuaUmjuB8Xc3i0JwLIi7rxzVYB7lJGo2G', 1, 1, '2022-11-05 15:18:46'),
(262, 'user7854', 'user7854.@gmail.com', '$2y$10$iBz3E3VXKpUTc26R46s7juWKWWs9nlKfgriboJeCdeSoUIDpDZj.K', 1, 1, '2022-11-05 15:18:46'),
(263, 'user7651', 'user7651.@gmail.com', '$2y$10$u8/eL3PaaxfGgFlp0izMj.MMmle0ShIGxsKxg7Gvtk5XI/HCZAlg.', 1, 1, '2022-11-05 15:18:46'),
(264, 'user8385', 'user8385.@gmail.com', '$2y$10$EJBRdTZcSN3V4BcmDhQNfu6hC4Dr/c8AXAAvPUa.E8WOsH8TUwjMu', 1, 1, '2022-11-05 15:18:46'),
(265, 'user7516', 'user7516.@gmail.com', '$2y$10$/2KrdkuIzlJ7UsrWd4ZsjuVJA0bS1AYlTDRcAH80dvM6k..G/wHlW', 1, 1, '2022-11-05 15:18:46'),
(266, 'user3528', 'user3528.@gmail.com', '$2y$10$pIzvBAKBoPJHAahmXVb3CePs96OuMjPFZwOtUyAOYPpDFosrVRjfm', 1, 1, '2022-11-05 15:18:46'),
(267, 'user1849', 'user1849.@gmail.com', '$2y$10$kZdPueRxtXx6ktpHQnaWYujB7WIdjDsdaW3oH2gjbzhP0kAjTI6xO', 1, 1, '2022-11-05 15:18:46'),
(268, 'user2784', 'user2784.@gmail.com', '$2y$10$4I2V2ITQIY/8koyGA6qdaed3W2AYXZuzF7eS3DqEwBgaP0aHpI0Pa', 1, 1, '2022-11-05 15:18:46'),
(270, 'user2639', 'user2639.@gmail.com', '$2y$10$KGGBsk6QvX8599m1VZ1UeuFb26JXDZb0LJtrQSZlO1d9skJtbGcQC', 1, 1, '2022-11-05 15:18:48'),
(271, 'user4003', 'user4003.@gmail.com', '$2y$10$83HTvYzGGgL/4CVO0uBdd.YyEALycsJIxF.rELoGfZi0fV.BacyfK', 1, 1, '2022-11-05 15:18:48'),
(272, 'user8625', 'user8625.@gmail.com', '$2y$10$SleJRwgoAXKqNcXT/Den3.60O3ENxIC/ch8Zefe8DJ0Y97UD9yy3O', 1, 1, '2022-11-05 15:18:48'),
(273, 'user5022', 'user5022.@gmail.com', '$2y$10$mgIXblRE23fiBguLUzz3yuOhrAK0XsmIHR9LFXDrlBbOxG42LZA1C', 1, 1, '2022-11-05 15:18:48'),
(274, 'user2888', 'user2888.@gmail.com', '$2y$10$GmB4m8u0wIhHD5r4Zc5fpOoWcXfoLYUSW8ijgIaZI45p98BtdM23K', 1, 1, '2022-11-05 15:18:48'),
(275, 'user6119', 'user6119.@gmail.com', '$2y$10$.metMDAkCCptZ8DLcAPCteptegLC.p.GmnblHS1IW6aKVwFeOdqzy', 1, 1, '2022-11-05 15:18:48'),
(276, 'user8783', 'user8783.@gmail.com', '$2y$10$Uaa4zFM1NYWU4hbEYkdqKu98NVwU2yPSMWsU/UeD2KLUlhGy7qhoi', 1, 1, '2022-11-05 15:18:49'),
(277, 'user9516', 'user9516.@gmail.com', '$2y$10$BIIJOAnW.g3x3WnKShuNGuUhqbkcKT5.zrHS5Xu90k1ZDfpYbjHr.', 1, 1, '2022-11-05 15:18:49'),
(278, 'user9418', 'user9418.@gmail.com', '$2y$10$GhnGWnYIPEqhj1YioASBaeoCh6rQyzT0ydDOX0ZFM/E8zSUnUshky', 1, 1, '2022-11-05 15:18:49'),
(279, 'user7411', 'user7411.@gmail.com', '$2y$10$GagRCXYVVQJ6t2RES/epe.xESyVG4JhnbA5aEF0Glu8ptMTMo.dMq', 1, 1, '2022-11-05 15:18:49'),
(280, 'user8473', 'user8473.@gmail.com', '$2y$10$CHW8F63hj6OxiWcWWN6nUOh/RTbXaDvBw5R.mRqrxDAqavO07pQPa', 1, 1, '2022-11-05 15:18:49'),
(281, 'user3252', 'user3252.@gmail.com', '$2y$10$fp1yGl3ZuMRBI4zeazMD7.kGWwsd25CqkMyRYduSacLrlhDQmz1WS', 1, 1, '2022-11-05 15:18:49'),
(282, 'user2503', 'user2503.@gmail.com', '$2y$10$J9787jvfODVXYupiAdovx.Pjl8K7SJkxmne53LPRmXaG8ADgL3sQO', 1, 1, '2022-11-05 15:18:49'),
(283, 'user3311', 'user3311.@gmail.com', '$2y$10$Q.fwFLpjYw9nWUG.aRFuBOTV/xC3oXuNJ3sQPc9j1LlVDX/26oBse', 1, 1, '2022-11-05 15:18:49'),
(285, 'user9914', 'user9914.@gmail.com', '$2y$10$WmpKSFL1yIp0Nq1R6xnbxed9H1hqZBsE/zC9aLfU/kNGi.YBblw8i', 1, 1, '2022-11-05 15:18:51'),
(286, 'user6061', 'user6061.@gmail.com', '$2y$10$f7YMXW9l51V3BzSSE3s7MezO3HKjK9TBehgzycn9EkdF4plf9jsFO', 1, 1, '2022-11-05 15:18:51'),
(287, 'user7205', 'user7205.@gmail.com', '$2y$10$mwkG9Vh3PDbD4PqbYiHHY.ajFY6DewLUBKycTsO.0Yndm7zgir.Zm', 1, 1, '2022-11-05 15:18:51'),
(288, 'user2012', 'user2012.@gmail.com', '$2y$10$1F.Fjs7aGZpa1YKAlsAHz.usmJl0L2408mDMlUwOltJSvjkQn7Wb.', 1, 1, '2022-11-05 15:18:51'),
(289, 'user4651', 'user4651.@gmail.com', '$2y$10$HDXT1NWtb5fzqDWW8dEur.6VoYy4kDZw9GVQaXOP3.iX.XO6HCGV2', 1, 1, '2022-11-05 15:18:52'),
(290, 'user8997', 'user8997.@gmail.com', '$2y$10$eAjuj5M8YLk8vNHB537sFe25NL7Pvd9PqVKzLsFPsviw8Wbu0qMK6', 1, 1, '2022-11-05 15:18:52'),
(291, 'user8568', 'user8568.@gmail.com', '$2y$10$7K/hy1NZLHEG6c0PCRBbyeQEnWmqtQq5nOninArEw3L7hitnJjl52', 1, 1, '2022-11-05 15:18:52'),
(292, 'user6711', 'user6711.@gmail.com', '$2y$10$2LgNUhlD7r91LbF/9ly6wuTJ4W67AytRSiiNRDJVcnydKyk5c3XH.', 1, 1, '2022-11-05 15:18:52'),
(293, 'user6311', 'user6311.@gmail.com', '$2y$10$U.zKQe4CwMJm5mYPlER4TuvxJNadO7.aQ0pVHm1e0vJwdLIaqmpfW', 1, 1, '2022-11-05 15:18:52'),
(294, 'user4888', 'user4888.@gmail.com', '$2y$10$um6a6f91z7E.lxM3/.CdB.OT/yZHbKRtmnWh1h1eRqsB.Kfoxe2/6', 1, 1, '2022-11-05 15:18:52'),
(295, 'user7426', 'user7426.@gmail.com', '$2y$10$mfU.q1bc/FhDgYKVCIHhzeS7GI463wTtvTy/nxMG4BDse0SVhxq5O', 1, 1, '2022-11-05 15:18:52'),
(296, 'user2172', 'user2172.@gmail.com', '$2y$10$g5bn3B5VT2dJxhGkhAMB6etvI.9UKIws9sPESkBexTHlGyL7z3h8W', 1, 1, '2022-11-05 15:18:52'),
(297, 'user3400', 'user3400.@gmail.com', '$2y$10$wtgAhadlY.1.R/nqXVaIJe3f7HNWM8ffXhDE4uvnJQsPQy8ZGbncC', 1, 1, '2022-11-05 15:18:53'),
(298, 'user8811', 'user8811.@gmail.com', '$2y$10$RfIDAvXYT4trGiC6KyL5puCw8atkNYltHqU2cRrz0fwWlVG8r/tH.', 1, 1, '2022-11-05 15:18:53'),
(299, 'user6874', 'user6874.@gmail.com', '$2y$10$hs5DS.Fpt0rGvsWNPRDDheMQrPter3rC0YkRO83g4hBQ2B/y0KQye', 1, 1, '2022-11-05 15:18:53'),
(300, 'user2274', 'user2274.@gmail.com', '$2y$10$c1id.bSzhHp9JVyWKA69SOp6t6RIoW8LqZAwYbi4KoqrmeckmN7Ty', 1, 1, '2022-11-05 15:18:53'),
(301, 'user2187', 'user2187.@gmail.com', '$2y$10$bRdtV0wVowU3KuiR6gesQ.HFoLFBKIeR1XyKF8Em5atRW3yalQM3a', 1, 1, '2022-11-05 15:18:53'),
(302, 'user8441', 'user8441.@gmail.com', '$2y$10$cxELPxtWAmvSF0js8Lr8EuIrcsC5mEXbfpAi7Dn2eHSu4EdP7wx/C', 1, 1, '2022-11-05 15:18:53'),
(303, 'user9609', 'user9609.@gmail.com', '$2y$10$kuo74TswkuOwSYoXwWTnpOvPkOk08x1d3Bbj1mv0aG.JhZuQg/o6O', 1, 1, '2022-11-05 15:18:53'),
(304, 'user2937', 'user2937.@gmail.com', '$2y$10$OcvNGZWP8IAEndxLcEG6PeL6kG.YAoBFM0nDHicOpF2bagU18kMdC', 1, 1, '2022-11-05 15:18:53'),
(305, 'user9053', 'user9053.@gmail.com', '$2y$10$GKPQp1fRDfcWRsbgKjM4XOCc8.FzrlTDUEadTuX/ik//I46aeMibq', 1, 1, '2022-11-05 15:18:53'),
(306, 'user9151', 'user9151.@gmail.com', '$2y$10$.ymGtsQ55rVyENf894HNoOA/MFT6x/PaTzkmW09uzNJ3nHDtFI.pi', 1, 1, '2022-11-05 15:18:53'),
(307, 'user4861', 'user4861.@gmail.com', '$2y$10$Gg9WwqE32hY2NyqKrH.0zurNKOw79ISb4TGJ11clG1WT/fxOdst4u', 1, 1, '2022-11-05 15:18:54'),
(308, 'user2414', 'user2414.@gmail.com', '$2y$10$o7T8hvwkrKnE75DnOKQa.uCig/D.dw/feqVUQ3L6qfB2sB/1YKE9a', 1, 1, '2022-11-05 15:18:54'),
(309, 'user8178', 'user8178.@gmail.com', '$2y$10$AB3iyyuL7ELWpPVtcv8XROI8sWL83LW.Tr/f6YboittgMPu9kLXzW', 1, 1, '2022-11-05 15:18:54'),
(310, 'user1646', 'user1646.@gmail.com', '$2y$10$Qor3bSDr5IdI39pd.UtuieXK0LYuE3J3y5w6HyQnlCU998RFzpFe6', 1, 1, '2022-11-05 15:18:54'),
(311, 'user4585', 'user4585.@gmail.com', '$2y$10$7deuVgBJNpSZHCD.Riyf2uGcfUZ0f6WrnZeGg3Da8nXPBLrV4EE5C', 1, 1, '2022-11-05 15:18:54'),
(312, 'user6401', 'user6401.@gmail.com', '$2y$10$JVruRDQ7JTlPE.gskxRg7.22ls6w2yT5S4GZSnSchmxu66OJxQpnG', 1, 1, '2022-11-05 15:18:54'),
(313, 'user6643', 'user6643.@gmail.com', '$2y$10$F/XxhA1dEpDCkdWWVGoLQed7IFbL70oel/RVeDJEgqGJXFlRzfEAG', 1, 1, '2022-11-05 15:18:54'),
(314, 'user4639', 'user4639.@gmail.com', '$2y$10$GcNrg4UieawsIfH5PWtmweF9yV8ttXpDo3uuM2XiIEopHD7HkOo1O', 1, 1, '2022-11-05 15:18:54'),
(315, 'user1016', 'user1016.@gmail.com', '$2y$10$bsrZFfVnoQUEWmNnKYzz7OwcaAcG4KNTikiuv7TpsEygOWTdSVSjy', 1, 1, '2022-11-05 15:18:54'),
(316, 'user5236', 'user5236.@gmail.com', '$2y$10$ACfVeRcupnHijG4vQpE80.lRz7nHwD2nUA2XNLbQa1YLJZeMw9dZ2', 1, 1, '2022-11-05 15:18:55'),
(317, 'user8935', 'user8935.@gmail.com', '$2y$10$tYssUi4rXhX7q4.wd2W1Y.zuNaMQX5e1F9rgLPqwfTx1mA3fOzBga', 1, 1, '2022-11-05 15:18:55'),
(318, 'user6509', 'user6509.@gmail.com', '$2y$10$Zq/yS760o2yTMrRgmA1eG.TYRAKmFNBpdCxeTAc8CIWICjnfrEvPG', 1, 1, '2022-11-05 15:18:55'),
(319, 'user7795', 'user7795.@gmail.com', '$2y$10$Pi6QCj5YS5UhlIf7Yqx6y.kI0vMD30uzSXQNpmh.3ZBxImr7spzc6', 1, 1, '2022-11-05 15:18:55'),
(320, 'user6992', 'user6992.@gmail.com', '$2y$10$kVY2bjw8Za9vsxir4D5AgOrELx4kEw0cpSmZ.PB3QZBwHBx4AHrtq', 1, 1, '2022-11-05 15:18:55'),
(321, 'user4926', 'user4926.@gmail.com', '$2y$10$X6Ulfrvgmdbhh/UapcU0NOKki6b2.1F2jJHnHnLMi3t7ft6rPKkGe', 1, 1, '2022-11-05 15:18:55'),
(323, 'testabc', 'testabc@gmail.com', '$2y$10$AoFAja7ZZLAh4NJ.JQlJX.YCaKOEpZkSFyphFZcBFxBy3lad00/le', 1, 1, '2022-11-07 13:28:41'),
(324, 'user5849', 'user5849.@gmail.com', '$2y$10$DNatGvoYDDQ6/Ib6DFqEjOoHZNZWPG7MNfjefxw5Te6p/RAWZdQ1e', 1, 1, '2022-11-07 13:29:56'),
(325, 'user4806', 'user4806.@gmail.com', '$2y$10$aNWYXGmWzR7zqD/F1lZKueStux1wE9fTMi/kisYj2QwJMrZCiFaTG', 1, 1, '2022-11-07 13:29:56'),
(326, 'user3939', 'user3939.@gmail.com', '$2y$10$qOIoIkcnylfAE.CJB0ENcu9OAbuNJiW37CpoHe0qjqbSvMMI.GH3C', 1, 1, '2022-11-07 13:29:56'),
(327, 'user8724', 'user8724.@gmail.com', '$2y$10$W3Gp60HVIN/iXVhCEeD8YOOgPDP/PfJg.dIxW7kwpWgajGrLfZHNK', 1, 1, '2022-11-07 13:29:56'),
(328, 'user9828', 'user9828.@gmail.com', '$2y$10$ISvUMNJBYOr/6OH./ppK6eSZ8Ly8oHeHuFxBsRHc.SF3eWsIAHmZ2', 1, 1, '2022-11-07 13:29:56'),
(329, 'user6958', 'user6958.@gmail.com', '$2y$10$JIGQzzo1wB9.o/uqII/JR.vl39/E4u/MO1SLX2E5GJBJtdf7tuJJq', 1, 1, '2022-11-07 13:29:56'),
(330, 'test6580', 'user6580.@gmail.com', '$2y$10$deFXroS/8JeOq3eZkurRk.0Y3OSggX9F9JMZV8S9vse97TOkRgT1.', 1, 1, '2022-11-07 13:50:52'),
(331, 'user5757', 'user5757.@gmail.com', '$2y$10$ez5SlvDEzAzUFvdfu2E4i./QlqxLxyiKkH8kmsKuEEpajcVh42Aym', 1, 1, '2022-11-07 13:29:56'),
(332, 'user7564', 'user7564.@gmail.com', '$2y$10$OZrvepkZ2WavNFFUfvjms.AnWrwu0hbRqmYTDXucFz4y6oA14JgD2', 1, 1, '2022-11-07 13:29:56'),
(333, 'user5627', 'user5627.@gmail.com', '$2y$10$ZZ.42P1tRfZ3bYK/WSut8Obw9TG7do4PGmQTxPUL2crIZy4dzv1fS', 1, 1, '2022-11-07 13:29:57'),
(334, 'user5829', 'user5829.@gmail.com', '$2y$10$pA5Jlx8LJ.ivL2004OGXd.t1/3L61U8hNapVMeepcDhNNMkcG/2qW', 1, 1, '2022-11-07 13:29:57'),
(335, 'user7212', 'user7212.@gmail.com', '$2y$10$1.usqJu0ZlfTBCRH2zCJ0eVZL5RIxKf7QLNXFT9ELfhAJc2FJdB2W', 1, 1, '2022-11-07 13:29:57'),
(336, 'user6166', 'user6166.@gmail.com', '$2y$10$yUL8LMRmQXdpescG2hGmcevJX1vgIdgec5bWYYfEQX0NovgwkWlY6', 1, 1, '2022-11-07 13:29:57'),
(337, 'user6118', 'user6118.@gmail.com', '$2y$10$VrjZBcAU6RB89aux250DMOUBKX8lACSOYIjO2pwj1vnoDC2aRD0/2', 1, 1, '2022-11-07 13:29:57'),
(338, 'user3273', 'user3273.@gmail.com', '$2y$10$oksn8/sxNwo5rn8X30PWT.p7oXyMYWMOMuXQDzrCqnYUreG62Jl0q', 1, 1, '2022-11-07 13:29:57'),
(339, 'user4141', 'user4141.@gmail.com', '$2y$10$SnQZ/FQlHsXprVPvYiQcr.ueYzH2DC.gTQ5ROAO9tFGKs/8c1Rjoq', 1, 1, '2022-11-07 13:29:58'),
(340, 'user6997', 'user6997.@gmail.com', '$2y$10$UfB1cX3L9cOQTPFYct85V.pFOPJXbVD6wAGkc1eKU2CsntNAZKtQO', 1, 1, '2022-11-07 13:29:58'),
(341, 'user6967', 'user6967.@gmail.com', '$2y$10$KiRefUMLpsabw2WTn3TJlurt8Ns1MXNtc/TIIUCIyRVsldnWiqFIW', 1, 1, '2022-11-07 13:29:58'),
(343, 'user6656', 'user6656.@gmail.com', '$2y$10$bp9EMoXC8zB9a1W9qlx4J.897t1pnHt/Bvwq1kjww8QdafkVRSy2S', 1, 1, '2022-11-07 13:29:58'),
(344, 'user7520', 'user7520.@gmail.com', '$2y$10$2.N4Uy2P/0DvQGvgfciKq.iaSvz3KLyUsh5/eJJCeSCYx1LH8w/c6', 1, 1, '2022-11-07 13:29:58'),
(345, 'user3718', 'user3718.@gmail.com', '$2y$10$DF9/Afyf9O.YYMxU14O91e/bTJA1ehiqWEnLI9aCBHxQJgr0YrI/6', 1, 1, '2022-11-07 13:29:58'),
(346, 'user1020', 'user1020.@gmail.com', '$2y$10$3Up7hFpFinvg45d2lQpsjOkb40dYV1JLaDddg53JltOLPr1LMH3SO', 1, 1, '2022-11-07 13:29:58'),
(347, 'user3753', 'user3753.@gmail.com', '$2y$10$YCbMTd.ihmwmrBMsnVdrfOS0I5fjU9bmdPtlf0yGDAexT0eS.3Cf2', 1, 1, '2022-11-07 13:29:58'),
(348, 'user3126', 'user3126.@gmail.com', '$2y$10$YIWXQBfgcLa.QP/OjT88jefmk.vv6X9xtRVADV3HGKITtQpDddzEe', 1, 1, '2022-11-07 13:29:59'),
(349, 'user6413', 'user6413.@gmail.com', '$2y$10$ugm3q.EZQUx6DYAjK9viXON61TwGyC9pvw7Ea/HL35Z5.VCDRV4Be', 1, 1, '2022-11-07 13:29:59'),
(350, 'user3399', 'user3399.@gmail.com', '$2y$10$jdssx3n9nsPYAg1o5cW0SOAMymCsc7noSal7gYKekM6fY.O8tByNe', 1, 1, '2022-11-07 13:29:59'),
(351, 'user2650', 'user2650.@gmail.com', '$2y$10$UH9uv63UibgPUNN/Ign8Peu9PghSIDgJ1goZfAxYXT5dCvKz6CEEO', 1, 1, '2022-11-07 13:29:59'),
(352, 'user1135', 'user1135.@gmail.com', '$2y$10$9SDxerJCgK3Rr/UgcxOK8uWw5hvEnMvTDkBdcy4GyUUY57oh.yBcO', 1, 1, '2022-11-07 13:29:59'),
(353, 'user6099', 'user6099.@gmail.com', '$2y$10$OhKgDF/Ov.qHGLitY2Yzz.ZBBG38HOFaK.PD9CEPmaJXV5V.Tmp9W', 1, 1, '2022-11-07 13:29:59'),
(354, 'user2485', 'user2485.@gmail.com', '$2y$10$N5ifJKhM9ikECBuzX2HIT.bv.sZKTKBNyxVs1959gurCxg8jvjy/2', 1, 1, '2022-11-07 13:29:59'),
(355, 'user8432', 'user8432.@gmail.com', '$2y$10$SgBSUkWfpNaBvW6V17ecL./2yD5DSFPzuuG0MUNCGg/kaiUmFZPxC', 1, 1, '2022-11-07 13:29:59'),
(356, 'user8569', 'user8569.@gmail.com', '$2y$10$e0M3MoavvQKXLYx4kk6ncOTnwSLhBWdmRBdhMc8XCdKCKoBcK1x9S', 1, 1, '2022-11-07 13:30:00'),
(357, 'user9202', 'user9202.@gmail.com', '$2y$10$aUvpScoHuWOQ4aetQ5b7zut1IliriPnYjknWPawelBUdD.GAjhIkS', 1, 1, '2022-11-07 13:30:00'),
(358, 'user2691', 'user2691.@gmail.com', '$2y$10$LRzd039JjEDhpj.RRMPvkeeBalLGjvcvAzfs3EauWZwTJ3P.0TAaW', 1, 1, '2022-11-07 13:30:00'),
(359, 'user1181', 'user1181.@gmail.com', '$2y$10$3eSzfAgiWjgiNB3.ZHXmO.cLBLomuSTKNwYC7JW3Q4zBFvJXUDGvi', 1, 1, '2022-11-07 13:30:00'),
(360, 'user5610', 'user5610.@gmail.com', '$2y$10$JrWNf4s2uOllyLFSyu2Up.X2LmRywJgtse6masRX.Fhdgx7R/7pu2', 1, 1, '2022-11-07 13:30:00'),
(361, 'user8337', 'user8337.@gmail.com', '$2y$10$v/ZttH481g9BLQlTkj4UreVIKQPKUO2ZSJPjTJp3nhT5c97JRqNS6', 1, 1, '2022-11-07 13:30:00'),
(362, 'user9586', 'user9586.@gmail.com', '$2y$10$uvvGmDMnziaV.Vo4.4z1f.uFx4DpYrPltwiJ1Vgdd5FmJZFWqR0b.', 1, 1, '2022-11-07 13:30:00'),
(363, 'user6303', 'user6303.@gmail.com', '$2y$10$R7k6ekJANh213PVVUBvnHerq3O2S5a2VyYpPFsrBPYNTJvnZXRk4K', 1, 1, '2022-11-07 13:30:00'),
(364, 'user7348', 'user7348.@gmail.com', '$2y$10$UYXUe6CAYs39pnKV0/AureVQsCOsBA0SyVW6RqOWg0E7jNW.l5Nae', 1, 1, '2022-11-07 13:30:00'),
(365, 'user3407', 'user3407.@gmail.com', '$2y$10$QtPTwa2YjOG1b8BFHcXHMeG6yn8rTdkevhjCKucYu8cKhvSuCDnQW', 1, 1, '2022-11-07 13:30:01'),
(366, 'user8748', 'user8748.@gmail.com', '$2y$10$FSqfUIqJBJnmuhMvRFZCY.lh8NQjrPoYH0lPkyp8Vc6rQLoj5JKPK', 1, 1, '2022-11-07 13:30:01'),
(367, 'user5571', 'user5571.@gmail.com', '$2y$10$J145NwOJw7rVzOV4CuUg7ufGJ1d/kBm9GMjiBYjHr1d8pob8SrfAW', 1, 1, '2022-11-07 13:30:01'),
(368, 'user9916', 'user9916.@gmail.com', '$2y$10$GlCbKslF.Ya6lxcKs2CDAeavWxmFC6vhT4WUw.1N0fYtcxSnd3a4m', 1, 1, '2022-11-07 13:30:01'),
(369, 'user3243', 'user3243.@gmail.com', '$2y$10$CLStResua3NxUOvyK7vZKOduCd7j6ds8OU7tCB90kjG45rdvvaKT2', 1, 1, '2022-11-07 13:30:01'),
(370, 'user5727', 'user5727.@gmail.com', '$2y$10$pasTR8EcIpvAAZDIh1BB4OzYhWFzuSye.DIkM.yjcqvzu0KiFRfgy', 1, 1, '2022-11-07 13:30:01'),
(371, 'user7059', 'user7059.@gmail.com', '$2y$10$KnulHlkbGUKI16xRt3SSYOiG6cVIhjAWtFR3xSbi0gziVxHuxYMfK', 1, 1, '2022-11-07 13:30:01'),
(372, 'user7646', 'user7646.@gmail.com', '$2y$10$g61XRnVmbVuGWxPRhjQldepX2plV7tCE.7SxI1I83Wj6y7U.j//oS', 1, 1, '2022-11-07 13:30:01'),
(373, 'user6472', 'user6472.@gmail.com', '$2y$10$xD4Is.O2.ObB5JaZoyZKOuCRdJvDnsa96KIDfJ1fhKXNppRhhLuky', 1, 1, '2022-11-07 13:30:01'),
(374, 'user3366', 'user3366.@gmail.com', '$2y$10$eHWb.CBe59Y9zWPnN4co9eR1QXOB9SlRk4f2eJ/W9SEIwN99PTYFi', 1, 1, '2022-11-07 13:30:01'),
(375, 'user7878', 'user7878.@gmail.com', '$2y$10$CQuvDi3sUFtW4a/n3KfCK.pApnyQWWs4OaFrHgm4oxt3eAZDatf/e', 1, 1, '2022-11-07 13:30:02'),
(376, 'user5713', 'user5713.@gmail.com', '$2y$10$zzPGCk.n0ttlmX3g1ssBquQVvPUkHQTCEoy5sRqJAb3Kx.auu.LUq', 1, 1, '2022-11-07 13:30:02'),
(377, 'user5635', 'user5635.@gmail.com', '$2y$10$XFSFQ34qQjfnhwOuIBXOXeMxoygv.eF3PPT2NoEZt9VQxhPvM26kS', 1, 1, '2022-11-07 13:30:02'),
(378, 'user7842', 'user7842.@gmail.com', '$2y$10$9.j6mVOj5vkxMoUBOk/Nf.qEoWI1sw3XCAKacmShyKFOBZ5kpi/RS', 1, 1, '2022-11-07 13:30:02'),
(379, 'user8931', 'user8931.@gmail.com', '$2y$10$ZvUzbAozSerKKp3dIfHhK.tJr4BbxHC42uki/UJJZsh2snWkctAli', 1, 1, '2022-11-07 13:30:02'),
(380, 'user9023', 'user9023.@gmail.com', '$2y$10$N4axxUmbL2Crf6WBBmmWleXSu38xNmCIf6SEIrgNBQJmMGt7K2wjm', 1, 1, '2022-11-07 13:30:02'),
(381, 'user5533', 'user5533.@gmail.com', '$2y$10$06cQARoPTwxyCxbKv0GkcODCSy5laNFwHzT4qR8a0phKBs4qPO.sa', 1, 1, '2022-11-07 13:30:02'),
(382, 'user1412', 'user1412.@gmail.com', '$2y$10$tj2oPffqU3pAS7XC.7qzMOcvY7uGQHxRRJ0xH29hDYdwjaJXg8No2', 1, 1, '2022-11-07 13:30:02'),
(383, 'user7079', 'user7079.@gmail.com', '$2y$10$xhUZwMNj4dKk7/g80f8v.ut0bNdnMHJmrUZ/PLf6qCeznE1xHMagy', 1, 1, '2022-11-07 13:30:02'),
(384, 'user9855', 'user9855.@gmail.com', '$2y$10$TgbBIKMK.mNQGsIZH3QFtuS7HEPep8sj/huWxu94u5DrMXNnn7s4e', 1, 1, '2022-11-07 13:30:02'),
(385, 'user7311', 'user7311.@gmail.com', '$2y$10$Euxa3.09l8H/wGAH4ieuMOpN8/PLnZT7kH/j35mHEG3iBKRXRVpmC', 1, 1, '2022-11-07 13:30:03'),
(386, 'user5675', 'user5675.@gmail.com', '$2y$10$sTYpkNkelPKqbuYbGhvHz.9G81KLQHMnyhN6.UDS6MC1gyzhxg1Au', 1, 1, '2022-11-07 13:30:03'),
(387, 'user1972', 'user1972.@gmail.com', '$2y$10$w8aBJqN5q9BhtX6c5Wi6xuMMYby1loY5WgyPshxYwyF2ruvXKUkPu', 1, 1, '2022-11-07 13:30:03'),
(388, 'user3846', 'user3846.@gmail.com', '$2y$10$OtpX/BuKLxrBcwZf8ZPQLOBQM6s0jqLUqP6.iLjPox2Uu9lLF7tlC', 1, 1, '2022-11-07 13:30:03'),
(389, 'user1699', 'user1699.@gmail.com', '$2y$10$2o5/38Xpd5tPmSBRXllJf.04wOdArBBEPeJuUjFHvB2bxITepTFbe', 1, 1, '2022-11-07 13:30:03'),
(390, 'user3132', 'user3132.@gmail.com', '$2y$10$xj5p5K805VC67u6JTUxiPO8XRyPp16GrIMOGhbqkTDuw2YRxAyx0q', 1, 1, '2022-11-07 13:30:03'),
(391, 'user2178', 'user2178.@gmail.com', '$2y$10$2EO.GVadxpJGR9n3nr1MT.ENhCmMOeBLVebuoT/1STGs.s1MfnJgi', 1, 1, '2022-11-07 13:30:03'),
(392, 'user6642', 'user6642.@gmail.com', '$2y$10$FVKHlfMH7EDQEn/p7HnvFeFvAPNK2yoXBlIn0E4KhlV/LZh02l3IG', 1, 1, '2022-11-07 13:30:03'),
(393, 'user1829', 'user1829.@gmail.com', '$2y$10$PWvl8Pnitd9G6Nanc073cOroasSIWMR/2uIY9satZdjxRbpqYWpY.', 1, 1, '2022-11-07 13:30:03'),
(394, 'user5721', 'user5721.@gmail.com', '$2y$10$doYvoIpWnNOlGAG9RbxOHeib1xEJphhVOsX546oXROMPQL7mAAhya', 1, 1, '2022-11-07 13:30:03'),
(395, 'user1954', 'user1954.@gmail.com', '$2y$10$Kv9JBpvmXFyvMJebCBOuzum65P8lPETODvbiJbCmNmG2TU2YdjiJ6', 1, 1, '2022-11-07 13:30:04'),
(396, 'user3606', 'user3606.@gmail.com', '$2y$10$eHwzCZskHSmUlhJxkSzrB.c.RHhc1UmWFCTzICcnqatKTsA9Tu3Zy', 1, 1, '2022-11-07 13:30:04'),
(397, 'user1535', 'user1535.@gmail.com', '$2y$10$nCJ.2M5nVSfPhD3NzW7KkO0ZFEDd.eG8XNhXwt916xEytbcbtG1ky', 1, 1, '2022-11-07 13:30:04'),
(398, 'user8374', 'user8374.@gmail.com', '$2y$10$rvV9215x8gII.48S9ggf6eNyNfsF/AXB2brsfHCoxghQBftQCakZ2', 1, 1, '2022-11-07 13:30:04'),
(399, 'user8504', 'user8504.@gmail.com', '$2y$10$omB8egvKCFx7lDOTk5Jir.pID0zyUmGruDIoTwf7ULwiOkB22jPzW', 1, 1, '2022-11-07 13:30:04');
INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`, `role`, `created_at`) VALUES
(401, 'poly2629', 'poly2629.@gmail.com', '$2y$10$iuULib8qdTx9Fq1zmwMfT.saKsBDG20UNbtsO3FTSb3cTCTSc5PWa', 1, 1, '2022-11-07 14:08:30'),
(402, 'poly3555', 'poly3555.@gmail.com', '$2y$10$CXYXJhlSCdw8D.mpVSXXyen2p9flo20cVzLy80rd4BTj7ouSu/FO2', 1, 1, '2022-11-07 14:08:30'),
(403, 'poly5014', 'poly5014.@gmail.com', '$2y$10$P0nnky4yea3Eplawm89zh.NJDvf3L3Ai69kuEcLuClIzY84YKnf9W', 1, 1, '2022-11-07 14:08:30'),
(404, 'poly8782', 'poly8782.@gmail.com', '$2y$10$GpTfhHHsxXStmJFpGsbGAu01dIKxzCgmZonge9Faot0dIoTeSBLHO', 1, 1, '2022-11-07 14:08:30'),
(405, 'poly4311', 'poly4311.@gmail.com', '$2y$10$v8DdK8PdK8GwqWpr16QU3.sgbSo27i6yFxC9IWdv2awUoet1FogM2', 1, 1, '2022-11-07 14:08:31'),
(406, 'poly9191', 'poly9191.@gmail.com', '$2y$10$UIHPoRMiQfWMy29PZXNqKeKn8zLF18fAzwrLvpAar4QWkaoAhqYBm', 1, 1, '2022-11-07 14:08:31'),
(407, 'poly8207', 'poly8207.@gmail.com', '$2y$10$qVNxf5sFa77jauIuqY6SN.gACG2GqBe/6ejnr29tckuLSP/05T9y.', 1, 1, '2022-11-07 14:08:31'),
(408, 'poly4713', 'poly4713.@gmail.com', '$2y$10$/cHrS5g.ZosGf12eeLEgTuVVf8YN316ID9yWPY/CVXxlCIePCW7lG', 1, 1, '2022-11-07 14:08:31'),
(409, 'poly6116', 'poly6116.@gmail.com', '$2y$10$bhCMdGCwtL561jDRLAjCPulvAu6LI9dETtWGX9C80T5GXw/QXzOlG', 1, 1, '2022-11-07 14:08:31'),
(410, 'poly7791', 'poly7791.@gmail.com', '$2y$10$yHbkOCLET.tBFqBivAxkx.BA/gJAwRCCZEv9VjQx8/cnTtg.s8zK6', 1, 1, '2022-11-07 14:08:31'),
(411, 'poly1380', 'poly1380.@gmail.com', '$2y$10$xpRi.9TvkOKjTJaGj/TZaOdBNA4ySO7WjLeofTCs878ylBvTFKzGe', 1, 1, '2022-11-07 14:08:31'),
(412, 'poly6768', 'poly6768.@gmail.com', '$2y$10$8Lio.JEDEMWyOGNM18OUn.5UUIallnu7qlp808YNrraCojNijj3A6', 1, 1, '2022-11-07 14:08:31'),
(413, 'poly2321', 'poly2321.@gmail.com', '$2y$10$J1UBTuvmtZLBjL.ypgFi9ui3Rz3dKETR3oxFWlq3l2.iGHYofL.lO', 1, 1, '2022-11-07 14:08:32'),
(414, 'poly4461', 'poly4461.@gmail.com', '$2y$10$yacoo8sJ28dXtH/N03YSzuf14KJnjiHbzZi8LT0p6.72dIJpoKBN.', 1, 1, '2022-11-07 14:08:32'),
(415, 'poly9759', 'poly9759.@gmail.com', '$2y$10$aA1TzF1T7y/UcB7smp1jieUI2w1tHXinF80UcV72IO04n2VOqXSPK', 1, 1, '2022-11-07 14:08:32'),
(416, 'poly3961', 'poly3961.@gmail.com', '$2y$10$tHgbPTFk/g.iXoB8yV1IK.pa0.Ya1JzlyDxVoYnxx9ySyPR1Hcu2q', 1, 1, '2022-11-07 14:08:32'),
(417, 'poly6030', 'poly6030.@gmail.com', '$2y$10$Uy5zUVH8DfD9l5xSsmyn5OnmaWn0RZrR8U0etC2jN6zi/PTY.SjWC', 1, 1, '2022-11-07 14:08:32'),
(418, 'poly3535', 'poly3535.@gmail.com', '$2y$10$wLDte6Gh1nDOtWmB0.ZKEuky.U9iMSe8Po4FpPL7bIVtSdNc5TGHO', 1, 1, '2022-11-07 14:08:32'),
(419, 'poly1688', 'poly1688.@gmail.com', '$2y$10$w7bc2perXiyQX6GRxsI2b.wfoyfTI5mNWanVIN9C9vFINO3iFPq8m', 1, 1, '2022-11-07 14:08:32'),
(420, 'poly7786', 'poly7786.@gmail.com', '$2y$10$HkQjt/bsiqATLtsX7Snb3ObzZVomW5/T.hjdcux9att7VV4ow5w16', 1, 1, '2022-11-07 14:08:32'),
(421, 'poly8732', 'poly8732.@gmail.com', '$2y$10$TyM4/k/EuTORV0GFZlay7.VuOxj3UnngamCd4xn450DFj/pHWOXB6', 1, 1, '2022-11-07 14:08:32'),
(422, 'poly4219', 'poly4219.@gmail.com', '$2y$10$uyZBIzMcgmk18YQNqtQkg.NSc4tlCoEMW24NLMlr8fDnWRR7qx5G.', 1, 1, '2022-11-07 14:08:33'),
(423, 'poly2997', 'poly2997.@gmail.com', '$2y$10$ruQbmN4C9CyTZ3TZob03sebTyN9PJ10DCRgwV0CMgGTRz3qLAPUwa', 1, 1, '2022-11-07 14:08:33'),
(424, 'poly8237', 'poly8237.@gmail.com', '$2y$10$kuggCbMEL0SNnvsi.0vSOeDEB4rC7YUj4L0dR6/uZeCZQBUD.JpxG', 1, 1, '2022-11-07 14:08:33'),
(425, 'poly6499', 'poly6499.@gmail.com', '$2y$10$8XGSPzvKM0oMJ1WmY9G4s.1Nb8egOeAZ4059IwFRWmfr/ZUX5Ql7G', 1, 1, '2022-11-07 14:08:33'),
(426, 'poly4840', 'poly4840.@gmail.com', '$2y$10$V6Ba//IRq8DfUCBoZGhxF.MGb3K63ATqmftzZhWktnCnrzw/OCm5O', 1, 1, '2022-11-07 14:08:33'),
(427, 'poly5579', 'poly5579.@gmail.com', '$2y$10$fgXZbHCl36z4K1BWIEmIEOXFGzTy/EjbDp7bpe6672dM2PXhc5ysC', 1, 1, '2022-11-07 14:08:33'),
(428, 'poly1051', 'poly1051.@gmail.com', '$2y$10$M35S85KXex364TdHBWa/3OgXdhvS20wXcUDfdQ5hn50VcKXFtWHG.', 1, 1, '2022-11-07 14:08:33'),
(429, 'poly5962', 'poly5962.@gmail.com', '$2y$10$qd.g.SAoUVn7dtbzm/dSc.SD02vwwJLOGGtgPM6WYsGzpr6om30Nu', 1, 1, '2022-11-07 14:08:33'),
(430, 'poly9035', 'poly9035.@gmail.com', '$2y$10$xxQnTtSkyZN2.MLIIaZV8OKtPkL/L4ams17g2UxFIeqpRFD6F5/5C', 1, 1, '2022-11-07 14:08:33'),
(431, 'Sahadat', 'morad@gmail.com', '$2y$10$oPfKmtlT5jTqmRAexk2fxOFs0q/uUyrpT1XlSfSvZY33j/BX/LqKS', 1, 1, '2022-11-09 14:54:52'),
(432, 'yeamin', 'yeamin01@gmail.com', '$2y$10$y4C2QNmynAGOHyZgd3ZPl.0Wz9phb4qQNQ0UxZkWsPU4FsGnNvB76', 1, 1, '2022-11-09 14:56:48'),
(433, 'afsana Akter', 'afsana123@gmail.com', '$2y$10$14CwVM9mPJsJx8DlTIbUxOegf3qZKyvWgPKxVwAcFQLu8tjpCBEqq', 1, 1, '2022-11-09 14:59:16'),
(434, 'MD HARUN', 'mm@gbgh', '$2y$10$Xvq4p.gt98cq.eRtALAehelVvnbXTIuafYyKhqcBiftCV9fDYXNKq', 1, 1, '2022-11-09 15:01:44'),
(435, 'hnfsdh', 'yeamin11@gamil.com', '$2y$10$sq2NUqaXPB8id.DaS32b7ut0g56EalrvA0l/kpz.fNx30l8DHQsHW', 1, 1, '2022-11-09 15:02:43'),
(436, 'Amin', 'amin@gmail.com', '$2y$10$xDk37z2hcxHC2.rGE4cWZeZcFPUASJjWK5NCP6xu9gFz3h5ZhjEkW', 1, 1, '2022-11-09 15:08:54'),
(437, 'Ashik', 'admin@gmail.com', '$2y$10$qFJ7bD7sOQNZg.Mt/MCbxO0Qw1Q2Ds7IAASMM5oF3UddCIGGS5tr6', 1, 1, '2022-11-12 13:47:14'),
(438, 'Afsana 11', 'afsana11@gmail.com', '$2y$10$LaVQQX.DtqBms0ZhCEf50umP5.bdUyAVyh2lOpS11wuiDvCBhtGI2', 1, 1, '2022-11-12 14:20:05'),
(439, 'dfbg', 'mosharof111@gmail.com', '$2y$10$.SA/wc0WJn6Xj0fD5uvKKuBTUGB5e0e6vatSRFy5sS5CR.t3/Oq3.', 1, 1, '2022-11-12 14:20:22'),
(440, 'yeamin hossen', 'yeamin123@gmail.com', '$2y$10$T.8P8qk.5U0FpCw97W7LTu.4Upl9LRKwEU94VvRKidoke5/mGLkL6', 1, 1, '2022-11-12 14:20:42'),
(441, 'df', 'sifatjahisul012@gmail.com', '$2y$10$ScDGalvoLm1s3pZ0n2I0S.CsGPO7x9Y3tWasqkCXKAi47dimkdfiq', 1, 1, '2022-11-12 14:30:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
