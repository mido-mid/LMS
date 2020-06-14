-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 05:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `favourite` int(11) NOT NULL DEFAULT 0,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `slug`, `status`, `favourite`, `link`, `track_id`, `created_at`, `updated_at`) VALUES
(2, 'Atque quis et doloremque ea aspernatur nihil.', 'Repellat officia quia accusantium dolorem veritatis. Quos corrupti temporibus blanditiis accusamus voluptas asperiores aut. Dolore illo veniam provident molestias vel deleniti ratione. Voluptas qui autem corporis consequuntur laboriosam autem aut fugiat.', 'atque-quis-et-doloremque-ea-aspernatur-nihil.', 1, 1, 'http://www.franecki.info/ea-ratione-distinctio-porro-esse', 6, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(4, 'Accusamus vero nulla quisquam odit amet temporibus.', 'Sit amet at earum rem consequatur quaerat alias. Quasi soluta dolorem ex inventore voluptatibus dolores eaque. Autem dolorem dolore aut fuga est culpa.', 'accusamus-vero-nulla-quisquam-odit-amet-temporibus.', 1, 0, 'http://www.kassulke.com/voluptas-quaerat-voluptatem-dolorem-molestiae-officiis', 7, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(7, 'Nam dolorum voluptates et ab voluptas est molestiae.', 'Quod animi alias et et a. Mollitia dignissimos non similique molestias. Asperiores sint commodi atque voluptatem enim est. Eos soluta culpa saepe expedita ex.', 'nam-dolorum-voluptates-et-ab-voluptas-est-molestiae.', 1, 1, 'http://ortiz.com/', 3, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(8, 'Doloremque id aspernatur laudantium voluptatem debitis.', 'Nesciunt deserunt similique recusandae omnis nostrum. Dolorem qui quod aliquam adipisci autem provident ab aliquam. Sit aut exercitationem ut illo. Qui blanditiis cum fugiat nihil dolorem est sit. Unde et et est rerum omnis ipsam.', 'doloremque-id-aspernatur-laudantium-voluptatem-debitis.', 1, 0, 'http://www.west.com/nisi-hic-nemo-voluptates-in-rerum-beatae-sit', 7, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(9, 'Veritatis iure soluta deserunt ipsam voluptas.', 'Ut esse ut est ratione. Laborum eos aut labore. Reprehenderit aut at voluptate inventore voluptas ut. Sed ea sit aliquam blanditiis quo rerum distinctio.', 'veritatis-iure-soluta-deserunt-ipsam-voluptas.', 1, 0, 'http://halvorson.net/', 1, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(10, 'Deleniti doloribus quidem tempora sed sint.', 'Atque similique ut omnis placeat similique sit quis consequatur. Ex doloremque in tempora beatae. Sunt vel sequi ullam quis tempore voluptas veritatis hic. Asperiores delectus ratione quia similique.', 'deleniti-doloribus-quidem-tempora-sed-sint.', 1, 1, 'http://rohan.info/dolores-maiores-dolorum-possimus-incidunt', 5, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(11, 'Eum vitae sit est non quis quisquam laboriosam.', 'Aliquam nihil consequatur ipsam. Recusandae incidunt rem quis quas culpa quis. Officia aliquam delectus excepturi cumque. Quia totam deserunt eligendi.', 'eum-vitae-sit-est-non-quis-quisquam-laboriosam.', 0, 1, 'http://wiza.com/necessitatibus-enim-nobis-eum-qui-voluptas-ea.html', 3, '2020-06-07 17:25:34', '2020-06-08 05:33:54'),
(13, 'Dolor et qui nihil debitis.', 'Hic sed dicta tempore aut et alias omnis. Iusto necessitatibus id soluta pariatur vel et ut aperiam. Qui asperiores fuga voluptatem aspernatur mollitia magnam.', 'dolor-et-qui-nihil-debitis.', 1, 1, 'https://www.bruen.net/ducimus-exercitationem-molestias-amet-ut-impedit-fugit', 2, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(14, 'Quis quibusdam est voluptatem ut.', 'Animi neque iure natus dolore. Enim minima architecto officia nostrum. Numquam qui excepturi corporis laboriosam. Nam officiis voluptatem velit deleniti aut totam rerum.', 'quis-quibusdam-est-voluptatem-ut.', 1, 0, 'http://www.walter.com/repellat-mollitia-sed-unde-pariatur-facilis-magnam.html', 2, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(16, 'Aut necessitatibus porro quia.', 'Neque expedita eveniet tenetur at voluptatem vel placeat tenetur. Exercitationem sit laborum voluptatem sed non in.', 'aut-necessitatibus-porro-quia.', 0, 1, 'http://www.abbott.com/ipsum-dolore-suscipit-minus-qui-eos-reiciendis-rerum', 3, '2020-06-07 17:25:34', '2020-06-11 13:17:45'),
(17, 'Nemo consequuntur omnis recusandae exercitationem nostrum facilis.', 'Sunt quibusdam laudantium error aperiam fuga. Voluptatem quod consequuntur labore tenetur. Accusantium cum repellendus ut mollitia eum facere.', 'nemo-consequuntur-omnis-recusandae-exercitationem-nostrum-facilis.', 1, 1, 'http://wyman.com/aut-voluptatem-cum-dolor-quaerat-iusto', 1, '2020-06-07 17:25:34', '2020-06-13 12:51:06'),
(18, 'Perspiciatis rerum tempore placeat similique.', 'Ab illum ipsam incidunt voluptatem qui molestiae. Commodi earum cumque et officiis facilis cumque aliquid. Sunt sapiente voluptates expedita fugit a et voluptate voluptatem.', 'perspiciatis-rerum-tempore-placeat-similique.', 1, 1, 'http://hane.com/autem-veritatis-adipisci-rerum-optio', 9, '2020-06-07 17:25:34', '2020-06-07 17:25:34'),
(22, 'Laborum quisquam magni quidem expedita.', 'Qui iure adipisci libero. Assumenda voluptas omnis pariatur tenetur minus quibusdam culpa voluptatum. Quidem cum maxime optio dolores vel officia. Voluptatum quos quibusdam id.', 'laborum-quisquam-magni-quidem-expedita.', 0, 1, 'http://www.hills.com/consequatur-ullam-aut-illo-quibusdam', 3, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(23, 'Voluptatem dolorem harum libero dicta.', 'Corporis porro et neque. Quia iure dignissimos et esse consectetur et. Ullam veniam exercitationem explicabo amet alias aut eos.', 'voluptatem-dolorem-harum-libero-dicta.', 0, 1, 'http://von.net/suscipit-consequatur-animi-iste-atque-unde-quia-ut', 2, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(24, 'Et at qui quia officia reprehenderit nisi.', 'Dolorem ratione eaque saepe architecto voluptatem. Autem cupiditate commodi vitae dolorum est. Esse mollitia sed cumque eveniet. Itaque earum occaecati qui officiis.', 'et-at-qui-quia-officia-reprehenderit-nisi.', 0, 1, 'http://cremin.net/vel-eum-odio-earum-ut-et.html', 5, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(25, 'Error sunt mollitia et itaque.', 'Nihil odit omnis rerum atque. A est aut sequi saepe. Asperiores laborum aut ipsum voluptatem eaque quia officia. Minus aut sit laborum distinctio. Id nulla et ut recusandae vel culpa.', 'error-sunt-mollitia-et-itaque.', 0, 0, 'http://www.watsica.net/asperiores-in-quia-quasi-est-et-voluptatem-repellendus-non.html', 7, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(26, 'Corporis aut atque et autem.', 'Aliquam ut qui et qui. Rem deserunt et reprehenderit aliquid quia ut sint fuga. Facere voluptas rerum ut tenetur et.', 'corporis-aut-atque-et-autem.', 0, 1, 'http://rolfson.info/alias-facere-labore-culpa-porro-nihil', 7, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(27, 'Dolorem cum incidunt quis sit.', 'Eum adipisci blanditiis fugiat sed sapiente temporibus similique. A ut rerum possimus amet sit natus mollitia. Voluptatem optio sed dicta velit repellendus libero possimus.', 'dolorem-cum-incidunt-quis-sit.', 0, 1, 'http://www.fritsch.org/in-non-fugit-sint-quam-corporis.html', 7, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(28, 'Qui optio sint aperiam beatae maiores animi nostrum.', 'Illo in sit reiciendis. Commodi delectus fugiat non unde nam. Nostrum et ex mollitia enim tempore repudiandae molestiae.', 'qui-optio-sint-aperiam-beatae-maiores-animi-nostrum.', 0, 1, 'https://www.pfannerstill.info/voluptatum-aut-aut-qui-maxime-impedit-qui', 2, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(29, 'Ut soluta voluptatem optio voluptatum voluptas alias minima.', 'Quo aut tempore molestiae consequatur itaque eaque. Placeat eius nam dolorum esse in. Pariatur repudiandae fugiat nostrum iure qui nostrum id eius. Mollitia atque quod sed et velit veritatis.', 'ut-soluta-voluptatem-optio-voluptatum-voluptas-alias-minima.', 0, 1, 'http://dooley.com/', 1, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(30, 'Earum ullam accusamus beatae non.', 'Porro omnis voluptas magnam voluptate quia aperiam esse quia. Nisi aut repellat vero numquam dolor. Vel rerum velit dicta perferendis voluptas.', 'earum-ullam-accusamus-beatae-non.', 0, 0, 'http://www.dibbert.com/nesciunt-rem-et-dignissimos-id.html', 1, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(31, 'Quisquam aperiam consequatur eveniet facilis incidunt eius omnis voluptatem.', 'Eos maxime ad blanditiis deleniti sed dolores. Quia recusandae suscipit occaecati. Adipisci autem eveniet est molestiae omnis quia assumenda.', 'quisquam-aperiam-consequatur-eveniet-facilis-incidunt-eius-omnis-voluptatem.', 0, 0, 'http://hilpert.com/laboriosam-sequi-nostrum-et-quasi', 9, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(33, 'Ipsum earum nulla officiis voluptates.', 'Sed commodi id natus molestias dignissimos quasi voluptas. Omnis voluptatum totam aliquam. Qui cumque voluptas quos omnis hic qui.', 'ipsum-earum-nulla-officiis-voluptates.', 1, 1, 'http://www.pouros.com/velit-dignissimos-reprehenderit-harum-est-eius-enim-nostrum', 9, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(35, 'Itaque soluta possimus tenetur.', 'Odit adipisci ducimus eligendi in soluta. Architecto quia earum ut neque. Veritatis reiciendis cupiditate excepturi. Quasi qui qui ut quaerat quas officiis esse dignissimos. Et quo perferendis pariatur quae qui officiis.', 'itaque-soluta-possimus-tenetur.', 1, 0, 'http://www.hodkiewicz.net/omnis-blanditiis-illo-facilis-omnis-neque-est', 5, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(36, 'A sapiente nulla aliquid nemo doloribus.', 'Ut nemo a et ut qui ad. Aut facere eius modi. Voluptatem laudantium aut aperiam veniam dolores et autem omnis. Sequi et corrupti aut doloremque voluptatem.', 'a-sapiente-nulla-aliquid-nemo-doloribus.', 0, 0, 'http://hessel.com/non-ut-et-consequatur-quaerat-qui.html', 5, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(37, 'Excepturi velit animi ratione quod quis optio.', 'Veritatis ullam perferendis dignissimos sit. Nemo odio eaque autem tempore beatae iste et. Ut corrupti occaecati similique quam. Ut exercitationem consequuntur et et sint qui ut. Quaerat saepe voluptas perferendis quis minus velit et.', 'excepturi-velit-animi-ratione-quod-quis-optio.', 0, 1, 'http://www.vandervort.com/qui-explicabo-libero-nostrum-earum', 3, '2020-06-07 17:25:35', '2020-06-07 17:25:35'),
(39, 'Vel eum ut qui dolores.', 'Et iste enim temporibus porro veniam. Voluptate dolores porro et est veniam. Ea consequatur possimus minus maxime dolores facere et. Eligendi blanditiis repudiandae aut alias dolores aperiam quo.', 'vel-eum-ut-qui-dolores.', 1, 1, 'http://www.hettinger.com/voluptatem-voluptatem-iusto-qui-eos-nostrum-consequuntur-qui', 5, '2020-06-07 17:25:36', '2020-06-11 13:03:31'),
(40, 'Aut sint et ex quis quas sunt et.', 'Minima eaque quod tenetur harum quo et. Optio similique sint dolorem quia ab voluptates voluptatem. Sed fugit voluptatibus rerum. Distinctio quis et iure animi sunt est quam. Odio nobis sed aliquid.', 'aut-sint-et-ex-quis-quas-sunt-et.', 0, 0, 'http://streich.com/laborum-aut-hic-repellat-consequuntur', 3, '2020-06-07 17:25:36', '2020-06-07 17:25:36'),
(42, 'Sint enim voluptate et est.', 'Ab iste nulla quia consequatur voluptatem unde. Consequatur similique nostrum atque ex doloremque dolorem. Perferendis et exercitationem vero ab facere tempora. Sit repellat rem alias quo facilis id.', 'sint-enim-voluptate-et-est.', 1, 1, 'http://www.turner.net/ea-quidem-sit-delectus-sed-amet-magni-vel', 3, '2020-06-07 17:25:36', '2020-06-07 17:25:36'),
(45, 'Quam commodi deleniti nobis modi.', 'Vel quaerat dolores totam nobis sint odio. Recusandae et inventore sed quos vitae fugiat eos. Qui quaerat nulla officia dolorem quia reiciendis. Sit quos mollitia temporibus est et illo.', 'quam-commodi-deleniti-nobis-modi.', 0, 1, 'http://www.spencer.info/', 1, '2020-06-07 17:25:36', '2020-06-07 17:25:36'),
(46, 'Beatae aut', 'Quia hic sit ipsum fugit occaecati et in. Rerum magnam ipsa quia quo eius. Minima nulla enim est omnis eos.', 'beatae-aut', 0, 1, 'http://kirlin.biz/', 1, '2020-06-07 17:25:36', '2020-06-11 11:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`user_id`, `course_id`) VALUES
(2, 28),
(2, 9),
(3, 22),
(3, 29),
(4, 18),
(4, 29),
(4, 26),
(5, 17),
(6, 18),
(7, 35),
(7, 39),
(8, 46),
(8, 16),
(9, 37),
(9, 33),
(10, 11),
(10, 29),
(11, 18),
(11, 33),
(11, 11),
(11, 2),
(12, 11),
(11, 26),
(11, 16),
(11, 29),
(11, 46),
(11, 24),
(11, 39),
(11, 10),
(11, 40),
(15, 29),
(15, 17),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_21_080132_create_photos_table', 1),
(4, '2019_09_21_080359_create_tracks_table', 1),
(5, '2019_09_21_080608_create_courses_table', 1),
(6, '2019_09_21_083950_create_videos_table', 1),
(7, '2019_09_21_084304_create_quizzes_table', 1),
(8, '2019_09_21_084422_create_questions_table', 1),
(9, '2019_09_21_091245_create_users_tracks_pivot_table', 1),
(10, '2019_09_21_091437_create_users_courses_pivot_table', 1),
(11, '2019_09_22_094232_create_quiz_user_pivot_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photoable`
--

CREATE TABLE `photoable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photoable_id` int(11) NOT NULL,
  `photoable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photoable`
--

INSERT INTO `photoable` (`id`, `filename`, `photoable_id`, `photoable_type`, `created_at`, `updated_at`) VALUES
(1, '7.jpg', 2, 'App\\User', '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(2, '2.jpg', 3, 'App\\User', '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(3, '1.jpg', 28, 'App\\Course', '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(4, '1.jpg', 33, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(5, '8.jpg', 24, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(6, '7.jpg', 11, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(7, '3.jpg', 34, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(8, '9.jpg', 5, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(9, '4.jpg', 10, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(10, '8.jpg', 12, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(11, '8.jpg', 3, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(12, '8.jpg', 3, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(13, '8.jpg', 46, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(14, '10.jpg', 10, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(15, '6.jpg', 8, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(16, '6.jpg', 12, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(17, '7.jpg', 10, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(18, '4.jpg', 27, 'App\\Course', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(19, '7.jpg', 3, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(20, '1.jpg', 2, 'App\\User', '2020-06-07 17:25:50', '2020-06-07 17:25:50'),
(21, '7.jpg', 2, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(22, '3.jpg', 10, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(23, '9.jpg', 1, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(24, '5.jpg', 4, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(25, '5.jpg', 32, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(27, '10.jpg', 2, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(28, '9.jpg', 43, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(29, '10.jpg', 2, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(30, '5.jpg', 9, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(31, '1.jpg', 2, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(32, '6.jpg', 33, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(33, '4.jpg', 7, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(34, '1.jpg', 6, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(35, '4.jpg', 29, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(36, '9.jpg', 32, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(37, '8.jpg', 43, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(38, '2.jpg', 7, 'App\\User', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(39, '1.jpg', 30, 'App\\Course', '2020-06-07 17:25:51', '2020-06-07 17:25:51'),
(40, '2.jpg', 26, 'App\\Course', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(41, '2.jpg', 44, 'App\\Course', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(42, '8.jpg', 10, 'App\\User', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(43, '3.jpg', 4, 'App\\User', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(44, '4.jpg', 10, 'App\\User', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(45, '4.jpg', 4, 'App\\User', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(46, '9.jpg', 5, 'App\\User', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(47, '7.jpg', 38, 'App\\Course', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(48, '8.jpg', 39, 'App\\Course', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(49, '10.jpg', 5, 'App\\User', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(50, '3.jpg', 49, 'App\\Course', '2020-06-07 17:25:52', '2020-06-07 17:25:52'),
(54, '1591706155_96825266_1504349436411104_1068335791614197760_n_.jpg', 1, 'App\\Course', '2020-06-09 10:35:55', '2020-06-09 10:35:55'),
(62, '1592052306_Mohamed Osama_.jpg', 11, 'App\\User', '2020-06-13 10:45:06', '2020-06-13 10:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `option_1`, `option_2`, `option_3`, `option_4`, `right_answer`, `score`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 'Reprehenderit laborum nihil et iure veritatis.', 'Praesentium est sint assumenda quam.', 'Ea voluptas explicabo rem voluptatem itaque officia fugiat.', 'Rerum maiores necessitatibus nihil sequi.', 'Repellendus aut ducimus laboriosam exercitationem et recusandae.', 'Praesentium est sint assumenda quam.', 10, 36, '2020-06-07 17:25:46', '2020-06-07 17:25:46'),
(2, 'Quidem ratione sed officia repellat.', 'Reiciendis assumenda non placeat dolor tempora distinctio.', 'Quis sint officia nulla.', 'Molestiae amet nesciunt pariatur distinctio rem eligendi delectus provident.', 'Natus qui incidunt quas iste.', 'Quis sint officia nulla.', 1, 26, '2020-06-07 17:25:46', '2020-06-07 17:25:46'),
(3, 'Deleniti voluptatem voluptates ut voluptas voluptatem dolorem non nam.', 'Esse illo vitae odio quibusdam porro quisquam aut rerum.', 'Est voluptate doloremque quia sunt.', 'Architecto nihil voluptas quae officia.', 'Sunt tempora laudantium non facilis doloremque eos quia.', 'Esse illo vitae odio quibusdam porro quisquam aut rerum.', 15, 39, '2020-06-07 17:25:46', '2020-06-07 17:25:46'),
(4, 'Culpa eius beatae cupiditate voluptas iure.', 'Temporibus voluptatum omnis aut aut.', 'Incidunt et et ut atque fuga reiciendis temporibus.', 'Laboriosam ad dolores doloremque eaque non qui.', 'Iste laudantium eos culpa ipsa dolore voluptatem est enim.', 'Incidunt et et ut atque fuga reiciendis temporibus.', 5, 4, '2020-06-07 17:25:46', '2020-06-07 17:25:46'),
(5, 'Sunt sit porro porro ducimus consequuntur et fugit a.', 'Cum iste nam maxime quo enim autem esse.', 'Error eos ut eligendi rem est.', 'Iure exercitationem dicta nobis illo voluptas est voluptatibus.', 'Dolore exercitationem et eos doloribus eveniet est.', 'Iure exercitationem dicta nobis illo voluptas est voluptatibus.', 20, 17, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(7, 'Veniam officia similique et voluptatem repellendus itaque dolorem.', 'Aspernatur repudiandae eaque officia fugiat repudiandae tempore quia.', 'Occaecati voluptatibus consequatur beatae veritatis laboriosam.', 'Distinctio sunt sapiente eos quas nobis.', 'Est animi qui vel accusamus placeat.', 'Aspernatur repudiandae eaque officia fugiat repudiandae tempore quia.', 15, 26, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(8, 'Corrupti deleniti qui expedita voluptas id dolorem quo nesciunt.', 'Excepturi autem voluptatum assumenda quod nihil fuga.', 'Consectetur cum delectus quia tempora deleniti.', 'Dicta quidem tempore quisquam alias deserunt aperiam.', 'Perspiciatis atque velit qui assumenda eos voluptatem.', 'Excepturi autem voluptatum assumenda quod nihil fuga.', 15, 12, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(10, 'Quidem tempora accusantium ut harum ad sit in.', 'Hic nihil sit nam illum eum earum et possimus.', 'Et dolor non neque et eos eveniet exercitationem nesciunt.', 'Molestiae dicta quam amet sit.', 'Culpa sint ut esse accusantium id doloribus omnis.', 'Culpa sint ut esse accusantium id doloribus omnis.', 1, 30, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(11, 'Soluta odit veritatis voluptates eos minima quaerat error.', 'Ex aut laboriosam velit autem.', 'Impedit blanditiis eveniet accusamus voluptatum.', 'Dicta provident commodi iste consequuntur maiores iusto.', 'Ut aperiam unde non aut.', 'Ex aut laboriosam velit autem.', 5, 39, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(12, 'Dolorum magnam non omnis ex placeat non enim.', 'Explicabo cum architecto ut culpa fuga error molestiae dicta.', 'Explicabo explicabo accusamus voluptas cumque.', 'Ut sint molestiae ut rerum quibusdam rerum.', 'Non molestiae occaecati cum.', 'Ut sint molestiae ut rerum quibusdam rerum.', 10, 2, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(14, 'Repellendus alias labore voluptatum et non.', 'Et dolore eum et aut sint quaerat fugiat.', 'Quasi neque quo libero ducimus labore.', 'Et est ut est corrupti ea dicta esse.', 'Tenetur ut praesentium voluptatem omnis asperiores consequatur.', 'Et dolore eum et aut sint quaerat fugiat.', 5, 18, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(15, 'Natus temporibus sit ut ipsum magnam aut veniam.', 'Explicabo aperiam doloribus recusandae vel eaque in.', 'Accusantium maxime sequi laudantium officiis maxime voluptatibus.', 'Laboriosam modi et soluta aut.', 'Odit dolore fugiat est repellat aut.', 'Explicabo aperiam doloribus recusandae vel eaque in.', 15, 5, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(16, 'Qui qui beatae aut sed.', 'Velit consequuntur rerum consequuntur omnis.', 'Dolorum ipsa ratione quis voluptas.', 'Impedit et odio aliquid et aut sit repudiandae.', 'Ut distinctio libero exercitationem molestiae voluptates perferendis quibusdam.', 'Impedit et odio aliquid et aut sit repudiandae.', 20, 41, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(19, 'Et laborum iusto consectetur omnis debitis.', 'Qui atque impedit dolorum recusandae animi consequatur.', 'Eum iste occaecati debitis accusamus.', 'Ipsum ratione ratione unde est.', 'Mollitia eaque autem iste debitis eligendi quaerat.', 'Qui atque impedit dolorum recusandae animi consequatur.', 1, 11, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(21, 'Aperiam reprehenderit qui impedit aliquid.', 'Eum nihil velit adipisci molestiae nulla quasi eum.', 'Eum maiores veritatis accusamus labore.', 'Ratione fugiat dicta qui facilis esse.', 'Dolor est saepe ipsum quaerat velit.', 'Eum maiores veritatis accusamus labore.', 20, 11, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(22, 'Nostrum doloribus ullam eos excepturi omnis.', 'Tenetur impedit numquam consequatur odit et.', 'Nulla est illo enim veritatis dolores consequatur fugit.', 'Explicabo dolor et ab illum nam dolores recusandae.', 'Ipsum illo ut ex.', 'Explicabo dolor et ab illum nam dolores recusandae.', 15, 34, '2020-06-07 17:25:47', '2020-06-07 17:25:47'),
(26, 'Distinctio aut qui distinctio aliquid consequatur perspiciatis.', 'Vero earum facere nulla est libero exercitationem unde.', 'Ad nihil temporibus dolorum dolore hic veritatis.', 'Occaecati minima rerum blanditiis molestiae ut totam voluptatem.', 'Eos voluptatem nisi voluptatem.', 'Occaecati minima rerum blanditiis molestiae ut totam voluptatem.', 15, 21, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(27, 'Expedita quidem et et occaecati.', 'Aut eum et laboriosam.', 'Aut et reiciendis laudantium tempore distinctio consequatur.', 'Aut hic debitis doloribus soluta ut.', 'Labore quam et nemo culpa provident saepe eos.', 'Aut et reiciendis laudantium tempore distinctio consequatur.', 10, 3, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(28, 'Perspiciatis in cumque occaecati a et.', 'Laudantium quidem consectetur sed est et et.', 'Architecto non aut error.', 'Repellat nam et nesciunt et est.', 'Et ullam tempore incidunt magnam.', 'Laudantium quidem consectetur sed est et et.', 20, 3, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(30, 'Rem nulla et dolores neque error non expedita.', 'Aut in eligendi quas.', 'Qui eaque recusandae eius amet.', 'Soluta recusandae in error sit nam sapiente.', 'Qui eius consequatur fugit nobis quisquam unde occaecati dolore.', 'Aut in eligendi quas.', 15, 28, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(31, 'Sed sint dolorem fuga.', 'Molestiae fugit accusantium ea minima in maiores eum.', 'Quidem sed temporibus eos porro ipsum accusamus.', 'Et cumque autem vitae ea quo.', 'Ducimus quos omnis magni.', 'Molestiae fugit accusantium ea minima in maiores eum.', 10, 5, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(32, 'Voluptates voluptatum eos dolor et adipisci officiis nostrum.', 'Laboriosam vel aperiam maxime dolor tempora.', 'Velit rerum dolores qui illum pariatur quisquam ducimus qui.', 'Consequatur voluptas aut eum magni.', 'Labore maxime cum accusantium dicta accusantium repellat est.', 'Consequatur voluptas aut eum magni.', 20, 23, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(33, 'Velit dolorum similique sunt facere.', 'Aut quisquam corrupti sint consequatur quia alias.', 'Modi esse totam non accusantium consequuntur esse.', 'Qui aut aut tempora.', 'Doloribus vero asperiores omnis delectus rem illum et.', 'Modi esse totam non accusantium consequuntur esse.', 20, 5, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(34, 'Est et officiis laboriosam sed inventore nulla possimus.', 'Nihil quia ullam reiciendis id.', 'Temporibus optio quod cum quae vel esse quos.', 'Veritatis quia error veritatis similique.', 'Quos ipsam quis eius sed aperiam nesciunt dolores.', 'Quos ipsam quis eius sed aperiam nesciunt dolores.', 15, 38, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(35, 'Cumque quod temporibus velit consequatur mollitia voluptatem et.', 'Quaerat sint temporibus accusantium fugiat.', 'Sunt qui placeat optio quo quis vero nulla.', 'Temporibus voluptatem vel quia placeat enim corrupti placeat.', 'Error quis architecto fuga voluptatem a.', 'Quaerat sint temporibus accusantium fugiat.', 5, 28, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(39, 'Et quidem soluta in mollitia.', 'Consectetur qui fuga optio et dolore aut.', 'Quaerat veritatis sunt accusantium nostrum aut mollitia et.', 'Minima aperiam id eum nesciunt expedita.', 'Ad cum voluptas nemo est pariatur eos est.', 'Minima aperiam id eum nesciunt expedita.', 1, 18, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(40, 'Sint magni et in sunt aspernatur inventore nisi iusto.', 'Quo praesentium eos ipsum est dicta quas.', 'Facilis nesciunt debitis eum est tempora pariatur.', 'Et voluptatem magni porro amet.', 'Ullam sint unde facilis eum sint asperiores voluptate.', 'Facilis nesciunt debitis eum est tempora pariatur.', 15, 5, '2020-06-07 17:25:48', '2020-06-07 17:25:48'),
(42, 'Voluptate optio necessitatibus beatae et.', 'Quaerat nihil illo non voluptatem commodi.', 'Cumque et eum ducimus possimus voluptatum non.', 'Quisquam error qui dolor numquam cumque voluptatibus.', 'Porro soluta maiores minima odit voluptates consequatur nemo.', 'Quaerat nihil illo non voluptatem commodi.', 15, 5, '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(43, 'Molestiae autem quae sed omnis quia aut.', 'Odio doloribus molestiae magni eum commodi cum.', 'Impedit consequatur id mollitia quo sit.', 'Quibusdam a ea et sit est sunt.', 'Ad impedit qui est.', 'Ad impedit qui est.', 1, 37, '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(46, 'Ducimus eius fugiat id enim accusamus.', 'Voluptatibus repellat libero dolor esse.', 'Enim aliquid quas officia ut sit voluptatem non et.', 'Cumque enim ut animi ut molestiae.', 'Consequatur nemo nihil et quas laudantium nihil voluptatum ducimus.', 'Enim aliquid quas officia ut sit voluptatem non et.', 10, 1, '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(48, 'Perspiciatis nisi quae explicabo quia eveniet.', 'Atque expedita odio similique necessitatibus voluptas dignissimos officia.', 'Assumenda vitae facilis quo.', 'Molestias cum iusto magnam sint quia est harum magnam.', 'Praesentium quisquam omnis repellat quod qui sint ipsam tenetur.', 'Praesentium quisquam omnis repellat quod qui sint ipsam tenetur.', 20, 20, '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(49, 'Dicta laudantium occaecati consequatur tempora blanditiis.', 'Quos et blanditiis voluptatem sapiente et nihil.', 'At earum perferendis harum rerum.', 'Natus quis incidunt eum illum vitae molestiae in.', 'Qui ipsum sapiente et consequatur tempore quia.', 'Qui ipsum sapiente et consequatur tempore quia.', 10, 5, '2020-06-07 17:25:49', '2020-06-07 17:25:49'),
(50, 'Quia et similique incidunt similique et.', 'Nam totam eos sed dolor non.', 'Odio reprehenderit molestias voluptatem officia occaecati illo ducimus qui.', 'Corporis corrupti nobis aut iusto sed nesciunt et.', 'Ea illo sunt aut totam aut unde enim.', 'Odio reprehenderit molestias voluptatem officia occaecati illo ducimus qui.', 20, 5, '2020-06-07 17:25:49', '2020-06-07 17:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'veritatis', 42, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(2, 'autem', 23, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(3, 'non', 8, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(4, 'rerum', 31, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(5, 'repudiandae', 31, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(7, 'temporibus', 11, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(8, 'quasi', 16, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(9, 'consequatur', 9, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(10, 'eum', 18, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(11, 'rerum', 29, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(12, 'accusantium', 26, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(15, 'explicabo', 14, '2020-06-07 17:25:42', '2020-06-07 17:25:42'),
(16, 'reiciendis', 26, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(17, 'consequatur', 31, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(18, 'est', 14, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(20, 'quis', 18, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(21, 'sint', 23, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(23, 'eum', 31, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(24, 'nihil', 31, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(25, 'perferendis', 11, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(26, 'debitis', 11, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(27, 'numquam', 24, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(28, 'itaque', 39, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(30, 'nihil', 9, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(33, 'quos', 18, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(34, 'excepturi', 7, '2020-06-07 17:25:43', '2020-06-07 17:25:43'),
(35, 'numquam', 42, '2020-06-07 17:25:44', '2020-06-07 17:25:44'),
(36, 'a', 23, '2020-06-07 17:25:44', '2020-06-07 17:25:44'),
(37, 'corrupti', 14, '2020-06-07 17:25:44', '2020-06-07 17:25:44'),
(38, 'fugiat', 14, '2020-06-07 17:25:44', '2020-06-07 17:25:44'),
(39, 'ea', 31, '2020-06-07 17:25:44', '2020-06-07 17:25:44'),
(41, 'voluptatum', 23, '2020-06-07 17:25:44', '2020-06-07 17:25:44'),
(46, 'totam', 42, '2020-06-07 17:25:44', '2020-06-07 17:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`user_id`, `quiz_id`) VALUES
(1, 23),
(1, 17),
(1, 34),
(2, 30),
(2, 20),
(3, 34),
(4, 21),
(5, 7),
(5, 37),
(6, 10),
(6, 20),
(7, 34),
(7, 37),
(7, 25),
(8, 12),
(8, 35),
(9, 35),
(10, 15),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ipsa', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(2, 'fugit', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(3, 'provident', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(5, 'sunt', '2020-06-07 17:25:32', '2020-06-07 17:25:32'),
(6, 'aut', '2020-06-07 17:25:32', '2020-06-07 17:25:32'),
(7, 'ratione', '2020-06-07 17:25:32', '2020-06-07 17:25:32'),
(9, 'aspernat', '2020-06-07 17:25:32', '2020-06-12 04:50:09'),
(12, 'Web Development', '2020-06-13 10:46:28', '2020-06-13 10:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `track_user`
--

CREATE TABLE `track_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `track_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_user`
--

INSERT INTO `track_user` (`user_id`, `track_id`) VALUES
(1, 5),
(2, 7),
(3, 7),
(3, 1),
(5, 5),
(6, 1),
(6, 3),
(7, 2),
(8, 7),
(9, 9),
(10, 1),
(10, 3),
(11, 9),
(11, 9),
(11, 3),
(11, 1),
(11, 6),
(12, 3),
(11, 7),
(11, 3),
(11, 1),
(11, 1),
(11, 5),
(15, 1),
(15, 6),
(11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `score`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dominic Wintheiser', 'bayer.vicky@example.org', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 150, 'K991WSoQnzhU3M1GjTei3MqvEuvwCoqCXdWH93nwIefnZRifbRyuc8pzH3AE', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(2, 'Roma Hyatt', 'mayert.mitchell@example.net', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 190, 'r1rZitVDZ0', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(3, 'Ms. Grace Windler III', 'asa71@example.org', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 200, 'ls8b7u726y', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(4, 'Julie Breitenberg DDS', 'walsh.johnny@example.com', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 150, 'tRLLZMtjoJ', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(5, 'Lauriane Witting Jr.', 'dveum@example.net', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 'DqxmWL8dSO', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(6, 'Darwin Bergstrom Jr.', 'hettinger.kirk@example.org', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 'rZgqb0dDIg', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(7, 'Maximo Schuster', 'rbailey@example.net', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 150, 'adSUmKipe1', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(8, 'Joshuah Denesik', 'molly.dickens@example.com', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 155, 'YbZx0CmYL1', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(9, 'Dr. Cameron Keeling MD', 'keagan.hartmann@example.net', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 100, '0v1EL9B7S2CcfS1hUWPYUCBtPeKyYy2JTK5mHzKPkk0ZFnZhZJhO1PMbTX71', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(10, 'Melissa Blanda I', 'rhane@example.net', '2020-06-07 17:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 200, '0TLFCXU8KD', '2020-06-07 17:25:31', '2020-06-07 17:25:31'),
(11, 'Mohamed Osama', 'mohamedosama12w32@gmail.com', NULL, '$2y$10$PKWHlbkGYYZcuajft78JEuL0OdSh4yJmx6sEiiEJN/jP/O8LJADEu', 1, 176, NULL, '2020-06-07 17:30:24', '2020-06-13 13:59:48'),
(12, 'mido dfd', 'midofdgfdg@gmail.com', NULL, '$2y$10$6lQMZiLaRRmjs2Cc6Vtj.e9niC7OMIv5rlrj9pEBZmCgaL4JQhaWO', 0, 20, NULL, '2020-06-11 01:28:19', '2020-06-12 04:48:44'),
(15, 'Mohamed Osama', 'mm309on@gmail.com', NULL, '$2y$10$AFmCrmNVDkckLyDOWO6mOeDHRf6CUwWuD.1dRnU2SsYoB.E4.LYgK', 2, 0, NULL, '2020-06-11 14:33:39', '2020-06-13 12:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem saepe exercitationem dolorem id voluptas.', 'http://www.rath.com/', 10, '2020-06-07 17:25:38', '2020-06-07 17:25:38'),
(2, 'Velit officia dignissimos tenetur ut.', 'http://parker.biz/sunt-ullam-beatae-rerum-tenetur-iste', 39, '2020-06-07 17:25:38', '2020-06-07 17:25:38'),
(4, 'Aut pariatur temporibus ut est porro doloribus.', 'https://purdy.com/tenetur-sed-est-aliquid-porro-deserunt-consequatur-repudiandae.html', 40, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(6, 'Aut quod alias et vel consectetur dolor facere.', 'https://www.batz.com/sint-veniam-non-voluptatum-culpa-eos-consequatur', 14, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(7, 'Magni minima delectus iste quo et delectus.', 'https://www.mitchell.org/optio-et-dolorum-quidem-in-quia-ullam', 27, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(8, 'Odit provident id deleniti.', 'http://turner.org/sint-sint-soluta-fugit-beatae-rerum-blanditiis', 24, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(10, 'Error voluptatem nesciunt eaque saepe laudantium perferendis.', 'http://www.mitchell.org/dolores-facilis-illo-similique.html', 4, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(12, 'Voluptas aut totam velit.', 'https://www.gerlach.com/perspiciatis-hic-omnis-repudiandae-quo-sunt-molestiae-fuga', 29, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(13, 'Nulla at minus sint cum eum et.', 'http://www.cruickshank.com/', 24, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(17, 'Dolores numquam quibusdam cum ut quo rem velit.', 'http://www.schinner.biz/et-blanditiis-ipsam-eum-rem-quis-assumenda', 23, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(19, 'Hic ea impedit mollitia nihil harum aliquam consectetur.', 'http://anderson.net/ipsam-beatae-ut-ut-architecto-velit-vitae-vel', 8, '2020-06-07 17:25:39', '2020-06-07 17:25:39'),
(20, 'Et asperiores nihil ut unde.', 'https://www.hayes.com/doloremque-beatae-reiciendis-totam-quia-eos-nostrum-aut', 26, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(25, 'Quae quia corporis eligendi accusantium.', 'https://www.beatty.com/ut-nobis-commodi-sit', 24, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(26, 'Modi at facilis optio rerum.', 'http://rau.com/repellat-enim-odio-debitis-quia', 23, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(29, 'Dolores est mollitia ullam sunt dolore cum cupiditate.', 'http://witting.com/autem-quidem-recusandae-culpa-fugiat-atque-iusto', 28, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(30, 'Omnis in sit culpa accusamus quod.', 'http://farrell.com/', 39, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(31, 'Enim ipsam maxime cumque.', 'http://www.keebler.com/repellendus-dignissimos-qui-id-voluptate', 16, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(32, 'Autem error est distinctio repellat alias magnam ea.', 'http://jacobs.com/accusamus-dolor-sit-veritatis-mollitia', 35, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(35, 'Ut sint aut rem ullam quia.', 'http://considine.info/et-quas-non-adipisci-praesentium-omnis-consequatur-repellendus.html', 26, '2020-06-07 17:25:40', '2020-06-07 17:25:40'),
(37, 'Impedit distinctio consequatur voluptate ratione commodi architecto.', 'https://www.hessel.com/voluptatum-rerum-tenetur-et-id-cum', 26, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(40, 'Suscipit eum vitae culpa id ducimus qui ab.', 'http://www.hayes.net/repellendus-soluta-fugiat-illum-et-voluptatum-repellendus', 42, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(41, 'Neque natus esse exercitationem.', 'http://blanda.biz/et-aliquam-sunt-consequatur', 17, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(42, 'Temporibus vel nostrum similique et.', 'http://www.erdman.com/quis-laborum-in-sit-et-dolores', 9, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(43, 'Rerum ipsum repudiandae rerum a.', 'https://www.harvey.com/porro-minima-quis-consectetur-sit-eos-quis', 11, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(44, 'Ut qui qui porro.', 'http://hartmann.info/officiis-cumque-id-maxime-qui.html', 23, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(46, 'Explicabo aut esse maiores repellat.', 'http://jaskolski.com/adipisci-enim-in-velit-aliquam', 23, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(47, 'Doloremque libero quas nostrum exercitationem.', 'http://www.osinski.com/quod-tempore-sapiente-ut-error-harum-architecto', 46, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(48, 'Reiciendis deserunt quas voluptatem et adipisci voluptate odio.', 'http://www.west.com/quos-fugiat-dicta-exercitationem-voluptas-aspernatur-mollitia', 26, '2020-06-07 17:25:41', '2020-06-07 17:25:41'),
(49, 'Est optio qui omnis consequatur voluptatem qui expedita nostrum.', 'http://www.kulas.org/et-dolores-voluptatem-eos-reiciendis-pariatur', 31, '2020-06-07 17:25:41', '2020-06-07 17:25:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_track_id_foreign` (`track_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `course_user_user_id_foreign` (`user_id`),
  ADD KEY `course_user_course_id_foreign` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photoable`
--
ALTER TABLE `photoable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_course_id_foreign` (`course_id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD KEY `quiz_user_user_id_foreign` (`user_id`),
  ADD KEY `quiz_user_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_user`
--
ALTER TABLE `track_user`
  ADD KEY `track_user_user_id_foreign` (`user_id`),
  ADD KEY `track_user_track_id_foreign` (`track_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_course_id_foreign` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `photoable`
--
ALTER TABLE `photoable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD CONSTRAINT `quiz_user_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `track_user`
--
ALTER TABLE `track_user`
  ADD CONSTRAINT `track_user_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `track_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
