-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 06:24 PM
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
-- Database: `database`
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
(1, 'Enim inventore sed rem fugit est.', 'Quia iste omnis sapiente nisi. Id perspiciatis delectus quas est id. Voluptas et veritatis aut est odit nobis animi. Possimus quam odit accusamus ut qui.', 'enim-inventore-sed-rem-fugit-est.', 0, 0, 'http://www.romaguera.org/ex-quisquam-sint-beatae-fugiat-non-rerum-tempora-eveniet.html', 2, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(2, 'Et quia a dicta cumque.', 'Eos modi voluptate dolores atque qui quis ut. Rem voluptates quae quidem adipisci quo quam. Quas consequatur debitis deserunt et. Alias totam dolorum neque similique nihil sit.', 'et-quia-a-dicta-cumque.', 0, 0, 'http://www.koss.com/', 5, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(3, 'Eius velit alias unde amet expedita voluptas vel velit.', 'Dolorem asperiores sed ea omnis qui. Quisquam ullam eaque temporibus voluptatem. Quia quam quos dolores officiis corporis iusto. Voluptas est labore aut perspiciatis.', 'eius-velit-alias-unde-amet-expedita-voluptas-vel-velit.', 1, 1, 'http://adams.biz/', 7, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(4, 'Ut quaerat vero quis aut praesentium consequuntur.', 'Ea aliquid nostrum neque corrupti impedit accusantium. Fuga quibusdam culpa ipsum. Est et facilis velit nesciunt sed. Odit eius in non adipisci dolores ut laborum.', 'ut-quaerat-vero-quis-aut-praesentium-consequuntur.', 1, 1, 'http://www.feeney.com/dolorem-animi-cum-vel-aut-qui.html', 9, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(5, 'Amet molestiae quaerat et aut.', 'Porro ut quod qui ipsa fugit inventore. Qui ut ea dolore adipisci harum. Nulla aut cum laboriosam ducimus non quod voluptatum.', 'amet-molestiae-quaerat-et-aut.', 1, 1, 'http://crona.info/voluptatem-aperiam-alias-pariatur-rem-esse-deserunt-veritatis.html', 2, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(6, 'Voluptas voluptatem illum beatae sit modi quod.', 'Itaque cupiditate omnis non excepturi assumenda aut non. Beatae aut deleniti vitae nihil at possimus sunt. Qui enim quibusdam aut nesciunt. Consequatur accusantium provident reiciendis qui qui distinctio praesentium.', 'voluptas-voluptatem-illum-beatae-sit-modi-quod.', 1, 1, 'https://price.com/adipisci-magni-ea-deserunt.html', 9, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(7, 'Laudantium optio in et laboriosam consequuntur laudantium voluptatem voluptas.', 'Iste beatae occaecati adipisci tempore fugit. Ea dolorum et delectus aut quis possimus.', 'laudantium-optio-in-et-laboriosam-consequuntur-laudantium-voluptatem-voluptas.', 1, 0, 'http://www.schuppe.com/optio-id-voluptas-et-dolores-dicta', 10, '2020-06-19 09:14:32', '2020-06-19 09:14:32'),
(8, 'Non consequatur veniam est adipisci facere corporis in libero.', 'Quae reiciendis ea consectetur aut. Et at debitis illum praesentium et corrupti.', 'non-consequatur-veniam-est-adipisci-facere-corporis-in-libero.', 1, 1, 'https://bechtelar.net/culpa-quia-enim-voluptatem-quis.html', 7, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(9, 'Eum aut consequuntur aperiam maxime reprehenderit.', 'Praesentium asperiores sit quia ad. Voluptatem id illo occaecati vitae sit quasi. Dignissimos quod autem repellendus doloremque ut adipisci qui. Cupiditate non in velit consequatur amet ex architecto veniam.', 'eum-aut-consequuntur-aperiam-maxime-reprehenderit.', 1, 1, 'http://www.reilly.com/voluptatem-repellendus-consequatur-tempora', 6, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(10, 'Voluptatem error eum deleniti dolorem perferendis quisquam illo fuga.', 'Voluptatem tempore doloribus ullam maiores sed error voluptatem ut. Excepturi alias assumenda est enim. Possimus est ab aut quaerat praesentium. Laudantium tempora et dignissimos repellendus harum earum. Et vero saepe aliquam asperiores.', 'voluptatem-error-eum-deleniti-dolorem-perferendis-quisquam-illo-fuga.', 1, 1, 'http://www.jacobi.com/', 7, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(11, 'Quibusdam officia id rem.', 'Ab error rerum fugit amet. Delectus voluptas sunt non voluptas enim voluptatem. Aut dolores in sed expedita pariatur. Ipsum alias eum alias. Atque rem aut nobis itaque eius odio sint.', 'quibusdam-officia-id-rem.', 0, 0, 'http://www.will.com/dolorem-officiis-qui-odio-veritatis-officia.html', 8, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(12, 'Qui cupiditate ex assumenda quia.', 'Nobis fugit expedita tempore nisi exercitationem sunt voluptatem. Magni molestiae porro soluta omnis autem. Perspiciatis quasi qui officiis eum. Suscipit dicta praesentium tempora.', 'qui-cupiditate-ex-assumenda-quia.', 1, 0, 'http://gaylord.net/', 7, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(13, 'Esse recusandae et aliquid sapiente et cupiditate.', 'Non ducimus officiis blanditiis fuga repellendus. Quis impedit ut nostrum. Repudiandae qui nostrum officia rem dicta aliquid esse. Soluta accusantium esse quia cumque. Ad enim qui minima nostrum nostrum aut explicabo molestiae.', 'esse-recusandae-et-aliquid-sapiente-et-cupiditate.', 1, 1, 'http://klocko.info/est-minima-quis-itaque-fugit-illo.html', 7, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(14, 'A voluptatum est architecto incidunt ut voluptatem.', 'Harum enim sed vel qui vitae eos animi. Voluptatibus possimus iusto pariatur repellendus magnam provident minima cumque. Quas iusto similique doloribus sit neque occaecati.', 'a-voluptatum-est-architecto-incidunt-ut-voluptatem.', 1, 0, 'http://schmeler.com/', 1, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(15, 'Porro magnam sit omnis aliquid ipsa.', 'Eum nulla cum consequatur. Ea exercitationem cupiditate aliquid porro iusto esse. Eum quas natus dolores numquam est. Rem nihil laudantium et ut voluptatem sit nulla.', 'porro-magnam-sit-omnis-aliquid-ipsa.', 1, 0, 'http://www.kuhlman.biz/laudantium-dolor-est-ad-quae-minus-praesentium', 6, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(16, 'Exercitationem odit molestiae id modi aut officiis.', 'Culpa consequuntur dolorem nesciunt incidunt ipsa consectetur illo. Incidunt rerum corrupti aut iste non est. Occaecati omnis enim rerum. Sint rerum aut sint vitae.', 'exercitationem-odit-molestiae-id-modi-aut-officiis.', 1, 1, 'http://www.eichmann.biz/voluptatem-mollitia-reprehenderit-possimus-ipsam-non-quibusdam.html', 3, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(17, 'In alias sint numquam non et eum beatae.', 'Voluptatem deleniti expedita repellendus id culpa. Dignissimos laudantium in ad natus necessitatibus. Quasi est blanditiis necessitatibus voluptas numquam ipsum.', 'in-alias-sint-numquam-non-et-eum-beatae.', 0, 1, 'http://cormier.biz/quod-quos-quo-quaerat-modi-fuga', 6, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(18, 'Cumque ut incidunt et dolor illum voluptas officia.', 'Tempore voluptas consequatur non non officia corrupti minima. Velit quo dolorem ut recusandae. At modi ipsa inventore et.', 'cumque-ut-incidunt-et-dolor-illum-voluptas-officia.', 0, 1, 'https://www.tromp.info/autem-et-at-deleniti-consequatur-repellat-vero-ullam-inventore', 3, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(19, 'Animi non porro nemo non recusandae necessitatibus corporis.', 'Excepturi nesciunt eum est nihil vel similique facere. Nemo qui totam repudiandae quo. Consectetur ullam exercitationem inventore consequatur.', 'animi-non-porro-nemo-non-recusandae-necessitatibus-corporis.', 1, 0, 'http://www.hickle.com/consequatur-fugiat-molestiae-id-voluptas-in-ad-perspiciatis-similique.html', 5, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(20, 'Id modi assumenda aut at qui.', 'Quasi voluptatum omnis reiciendis et reiciendis maiores ut numquam. Fugiat aliquam reprehenderit velit autem optio porro. Voluptatem nostrum debitis et. Sed minima rerum ipsam non.', 'id-modi-assumenda-aut-at-qui.', 0, 0, 'http://bechtelar.org/commodi-mollitia-sunt-ab-labore-velit-sit', 10, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(21, 'Ea ut consequatur sit dolores.', 'Amet sapiente voluptas enim sit similique atque inventore. Rerum quia iusto qui et non.', 'ea-ut-consequatur-sit-dolores.', 1, 0, 'http://padberg.com/possimus-est-autem-numquam-ipsa.html', 1, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(22, 'Facilis necessitatibus minima et molestiae dolores voluptatibus dolor.', 'Dolor mollitia laudantium rerum nostrum est non nobis. Beatae omnis harum quidem repellat quasi temporibus. Illo nisi nemo porro doloremque iusto consectetur quis.', 'facilis-necessitatibus-minima-et-molestiae-dolores-voluptatibus-dolor.', 1, 0, 'http://www.bernhard.net/dolores-enim-nisi-nesciunt-aperiam-ratione-reprehenderit-quia-voluptatem.html', 6, '2020-06-19 09:14:33', '2020-06-19 09:14:33'),
(23, 'Autem dolore id ipsa quod.', 'Velit vero aut consequatur officiis veritatis. Voluptatem necessitatibus vero error laudantium in.', 'autem-dolore-id-ipsa-quod.', 0, 0, 'https://www.dickens.biz/ipsum-est-vel-libero-consectetur-voluptatem-ad', 10, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(24, 'Est id tempore rem sit.', 'Id blanditiis dolorem vero animi et. Est consequatur ipsa est accusantium dolores sint qui. Molestiae laudantium sunt ea et.', 'est-id-tempore-rem-sit.', 0, 0, 'https://wisozk.com/cum-quaerat-nulla-sit-doloremque.html', 1, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(25, 'Quod in animi aliquid molestiae sed quis.', 'Sed nobis assumenda cumque iste dolores voluptatem. Sit quia excepturi similique.', 'quod-in-animi-aliquid-molestiae-sed-quis.', 1, 0, 'http://www.bechtelar.com/beatae-facilis-ipsa-ea-ut-rem', 2, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(26, 'Ut est et est doloribus cupiditate odit.', 'Ut quam minima molestias debitis. Et repellat repellendus est non omnis rerum dolorem. Molestias modi velit a quod nihil. Ducimus veritatis nesciunt beatae voluptatem aut laudantium.', 'ut-est-et-est-doloribus-cupiditate-odit.', 1, 0, 'http://www.kassulke.net/animi-porro-veritatis-mollitia-quasi-quo-iure', 9, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(27, 'Quis consequatur nesciunt sit laboriosam.', 'Veniam ipsa aut cupiditate consequatur. Tempore tempore eligendi a soluta magnam dolorum eius. Eos ipsam explicabo qui. Perferendis rerum deserunt et.', 'quis-consequatur-nesciunt-sit-laboriosam.', 0, 0, 'https://www.gorczany.com/nostrum-soluta-porro-sit-optio-magni-iste', 9, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(28, 'Aut aut animi ut commodi veritatis quo delectus.', 'Hic in at quis nobis aliquid. Qui ab eum et necessitatibus atque et. Laudantium nulla totam consequatur omnis itaque. Ex consectetur in in a.', 'aut-aut-animi-ut-commodi-veritatis-quo-delectus.', 1, 1, 'http://gorczany.com/rerum-rerum-omnis-excepturi-illum.html', 2, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(29, 'Voluptatem pariatur et voluptatum est.', 'Eaque voluptate fugiat consectetur est. Velit quidem odio fugit optio qui voluptatem.', 'voluptatem-pariatur-et-voluptatum-est.', 0, 0, 'https://www.morar.org/sed-blanditiis-expedita-modi-quis-aperiam-provident', 10, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(30, 'Modi quaerat vel quo numquam.', 'Aut iusto maxime consequuntur et rerum temporibus. Quaerat temporibus sapiente sed labore est nihil. Pariatur ab accusamus quas beatae fugit ipsa soluta. Repellat molestias rerum asperiores a natus provident quis.', 'modi-quaerat-vel-quo-numquam.', 1, 1, 'http://www.cronin.com/sit-minus-deleniti-distinctio.html', 5, '2020-06-19 09:14:34', '2020-06-19 09:17:29'),
(31, 'Rerum dolorem et est voluptatem omnis suscipit.', 'At omnis neque sed laudantium. Omnis dignissimos facilis officiis mollitia. Velit voluptatem aperiam cumque ea recusandae.', 'rerum-dolorem-et-est-voluptatem-omnis-suscipit.', 1, 1, 'https://www.satterfield.org/nihil-beatae-temporibus-provident-incidunt-rerum-temporibus-necessitatibus', 3, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(32, 'Quo et quis cupiditate et ex.', 'Vel laborum doloremque magni et fugit maiores. Nihil dolor voluptatem modi voluptatem rerum molestias. Dolores consectetur dolor dolor autem rem. Excepturi cumque voluptates voluptatem.', 'quo-et-quis-cupiditate-et-ex.', 1, 1, 'http://www.botsford.info/sint-distinctio-assumenda-occaecati-molestias-itaque', 6, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(33, 'Fuga sunt qui veniam adipisci est.', 'Consequuntur at iste in iste est. Est at vel quo voluptatibus molestiae veritatis vero. Rerum porro maiores omnis et. Mollitia consequuntur omnis quasi delectus dolorum totam repudiandae.', 'fuga-sunt-qui-veniam-adipisci-est.', 0, 1, 'http://www.harris.biz/facilis-facere-officiis-delectus-eligendi-quo-repellat.html', 3, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(34, 'Eos quaerat delectus quae nobis sit voluptatibus itaque.', 'Blanditiis optio cum aut laboriosam incidunt mollitia error. Maxime et dolores rerum similique.', 'eos-quaerat-delectus-quae-nobis-sit-voluptatibus-itaque.', 0, 0, 'http://bashirian.info/aliquid-accusamus-dicta-sed-facilis-error-numquam-reprehenderit.html', 5, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(35, 'Ipsum minus quibusdam cumque impedit voluptatem adipisci.', 'Et harum iusto quae reprehenderit. Soluta voluptatem velit adipisci suscipit. Sit eveniet dolor ut repellendus. Ad dolorum ratione quia a numquam reprehenderit.', 'ipsum-minus-quibusdam-cumque-impedit-voluptatem-adipisci.', 0, 0, 'http://www.ward.com/suscipit-assumenda-dolorum-voluptas-ex.html', 5, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(36, 'Totam corporis facere velit ut fuga.', 'Exercitationem animi maxime deserunt non. Veniam hic et molestias et repellat accusantium magnam. Quis possimus sequi qui provident. Nulla modi sit asperiores nulla.', 'totam-corporis-facere-velit-ut-fuga.', 0, 1, 'http://larson.net/provident-voluptatem-facere-est-sed-et-eos-corporis.html', 10, '2020-06-19 09:14:34', '2020-06-19 09:17:37'),
(37, 'Occaecati unde ad non alias ex.', 'Temporibus odit pariatur sunt voluptatem. Necessitatibus voluptatum ea quos est voluptates qui. Qui consequatur sunt debitis repellat architecto perferendis non. Dolorem placeat et velit iure nostrum iusto.', 'occaecati-unde-ad-non-alias-ex.', 0, 1, 'http://dibbert.com/', 7, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(38, 'In atque nihil omnis autem assumenda dolore doloribus dignissimos.', 'Ut in asperiores nihil quisquam reiciendis nostrum ut. Sequi sed omnis amet tempora qui labore. Et velit non suscipit veniam. Nisi nulla quia beatae quam officia facilis dolor doloremque.', 'in-atque-nihil-omnis-autem-assumenda-dolore-doloribus-dignissimos.', 0, 0, 'http://hirthe.com/et-eum-culpa-rerum.html', 1, '2020-06-19 09:14:34', '2020-06-19 09:14:34'),
(39, 'Voluptas labore modi magni mollitia temporibus aut dolore molestias.', 'Placeat commodi et eveniet cumque molestiae omnis. Vitae architecto autem sed aliquid omnis consequatur quo at. Vel accusantium cupiditate sit et reprehenderit.', 'voluptas-labore-modi-magni-mollitia-temporibus-aut-dolore-molestias.', 0, 1, 'http://www.walter.com/consequatur-non-quo-nisi-itaque-voluptate-placeat', 4, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(40, 'Rerum deserunt consequatur quaerat nam est aut.', 'Non rerum suscipit harum perferendis consequuntur. Est nobis odio magnam voluptatem exercitationem excepturi.', 'rerum-deserunt-consequatur-quaerat-nam-est-aut.', 1, 1, 'http://flatley.com/quod-impedit-velit-non-quia', 1, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(41, 'Ad enim est aliquam temporibus.', 'Consequuntur ut cumque ad labore totam. Ratione voluptate odio quia ut accusantium. Suscipit hic qui voluptatibus eius voluptatem aliquam enim. Earum inventore harum cupiditate.', 'ad-enim-est-aliquam-temporibus.', 1, 0, 'http://www.watsica.com/rem-beatae-autem-eaque-totam', 4, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(42, 'Maxime id molestiae temporibus odio.', 'Nam quia corporis provident quod ab modi rerum. Provident aut nisi laudantium. Et est animi et placeat.', 'maxime-id-molestiae-temporibus-odio.', 1, 1, 'http://sanford.org/nihil-eum-quis-nisi-nisi-incidunt-nostrum', 8, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(43, 'Alias voluptas temporibus atque inventore repudiandae cupiditate est.', 'Aut in sunt eos totam harum ut harum magnam. Quod quo et aliquam blanditiis harum ea et. Deleniti delectus dolor porro est consequatur sequi nulla.', 'alias-voluptas-temporibus-atque-inventore-repudiandae-cupiditate-est.', 1, 0, 'https://www.pacocha.com/libero-unde-et-inventore-similique-aliquid-aliquid-consequatur', 9, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(44, 'Laborum quaerat adipisci adipisci quis adipisci culpa nihil.', 'In quidem nobis et molestiae et quia qui explicabo. Magnam magnam voluptate et harum. Corrupti et totam error ut.', 'laborum-quaerat-adipisci-adipisci-quis-adipisci-culpa-nihil.', 0, 0, 'https://www.kulas.com/ut-dolorum-adipisci-ea-perspiciatis-alias-nemo-enim', 6, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(45, 'Quia est eaque minus.', 'Architecto incidunt harum autem repellat sed odio exercitationem. Aut rerum esse voluptatum est. Tempora voluptatem magni sequi cum. Velit amet ut molestias quibusdam vel voluptatem.', 'quia-est-eaque-minus.', 1, 1, 'http://www.dubuque.biz/fugit-pariatur-doloremque-facilis-quibusdam-odit-aperiam.html', 5, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(46, 'Beatae necessitatibus veniam et qui animi laboriosam qui similique.', 'Aut numquam quis vero reiciendis. Id qui fugiat voluptatem ipsam. Et veniam reiciendis blanditiis culpa quasi et.', 'beatae-necessitatibus-veniam-et-qui-animi-laboriosam-qui-similique.', 0, 1, 'http://purdy.com/nostrum-dolorum-inventore-beatae', 5, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(47, 'Est eaque nam et aut ut.', 'Quaerat dolores corporis nulla nesciunt. Quisquam aut vel provident et et eaque. Nisi laborum consectetur corrupti et doloremque.', 'est-eaque-nam-et-aut-ut.', 1, 0, 'http://www.hilpert.com/molestiae-incidunt-qui-nihil-laudantium-ut-in', 1, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(48, 'Rerum voluptas tempore molestiae et neque.', 'Nostrum animi veritatis qui non. Eum deserunt officia molestiae enim quod. Deserunt ut rerum est voluptatem magni ut. Aut aut rerum et qui quasi.', 'rerum-voluptas-tempore-molestiae-et-neque.', 0, 1, 'http://www.lockman.biz/repellendus-odit-ab-aliquam-et-modi', 6, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(49, 'Est quidem repudiandae alias omnis nihil fuga quo et.', 'In numquam sint dolor dignissimos. Ex facere consequatur omnis ipsum a ipsa cumque. Omnis quis quia dolore vel consequuntur quo ipsam magni. Qui culpa est vitae sed culpa et aperiam qui.', 'est-quidem-repudiandae-alias-omnis-nihil-fuga-quo-et.', 1, 1, 'http://www.padberg.com/sed-enim-illo-odio-eos-sequi-accusamus-perspiciatis-officia', 6, '2020-06-19 09:14:35', '2020-06-19 09:14:35'),
(50, 'Odio sequi eaque veniam ullam eum nulla.', 'Dolores quaerat labore non numquam qui. Quo in qui autem voluptatibus itaque. Ut vel consequuntur aliquam minus minus molestiae quia.', 'odio-sequi-eaque-veniam-ullam-eum-nulla.', 0, 1, 'http://pacocha.com/', 6, '2020-06-19 09:14:35', '2020-06-19 09:14:35');

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
(1, 36),
(1, 5),
(1, 48),
(2, 1),
(2, 9),
(2, 5),
(3, 28),
(3, 8),
(3, 3),
(4, 13),
(4, 19),
(4, 15),
(5, 47),
(5, 18),
(5, 43),
(6, 20),
(6, 33),
(6, 12),
(7, 8),
(7, 26),
(8, 42),
(8, 24),
(8, 9),
(9, 16),
(9, 27),
(9, 41),
(10, 31),
(10, 44),
(10, 15),
(1, 30),
(1, 1),
(1, 34),
(11, 29),
(11, 23);

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
(1, '4.jpg', 10, 'App\\Course', '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(2, '2.jpg', 40, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(3, '1.jpg', 10, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(4, '9.jpg', 8, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(5, '5.jpg', 1, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(6, '7.jpg', 30, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(7, '6.jpg', 5, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(8, '3.jpg', 15, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(9, '1.jpg', 10, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(10, '10.jpg', 44, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(11, '1.jpg', 2, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(12, '9.jpg', 6, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(13, '1.jpg', 29, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(14, '1.jpg', 6, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(15, '3.jpg', 2, 'App\\Course', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(16, '10.jpg', 5, 'App\\User', '2020-06-19 09:14:53', '2020-06-19 09:14:53'),
(17, '6.jpg', 11, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(18, '1.jpg', 1, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(19, '2.jpg', 33, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(20, '5.jpg', 37, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(21, '3.jpg', 9, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(22, '1592582489_image2_.jpg', 50, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 14:01:29'),
(23, '2.jpg', 10, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(24, '2.jpg', 5, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(25, '7.jpg', 3, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(26, '3.jpg', 2, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(27, '6.jpg', 1, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(28, '10.jpg', 2, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(29, '4.jpg', 1, 'App\\User', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(30, '6.jpg', 4, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(31, '1.jpg', 36, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(32, '5.jpg', 22, 'App\\Course', '2020-06-19 09:14:54', '2020-06-19 09:14:54'),
(33, '1.jpg', 24, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(34, '5.jpg', 12, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(35, '4.jpg', 2, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(36, '2.jpg', 6, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(37, '3.jpg', 4, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(38, '5.jpg', 5, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(39, '10.jpg', 26, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(40, '7.jpg', 19, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(41, '5.jpg', 1, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(42, '3.jpg', 27, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(43, '3.jpg', 38, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(44, '7.jpg', 30, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(45, '9.jpg', 4, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(46, '8.jpg', 11, 'App\\Course', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(47, '5.jpg', 4, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(48, '10.jpg', 9, 'App\\User', '2020-06-19 09:14:55', '2020-06-19 09:14:55'),
(49, '3.jpg', 9, 'App\\User', '2020-06-19 09:14:56', '2020-06-19 09:14:56'),
(50, '8.jpg', 10, 'App\\Course', '2020-06-19 09:14:56', '2020-06-19 09:14:56'),
(55, '1592583289_Mohamed Osama_.webp', 11, 'App\\User', '2020-06-19 14:14:50', '2020-06-19 14:14:50');

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
(1, 'Est odit quia quisquam voluptatum maxime incidunt ipsum et.', 'Mollitia dolorum odio et sit eos dolores impedit et.', 'Doloribus odit neque eveniet ea.', 'Accusantium repellendus asperiores consequatur eaque.', 'Repudiandae in odio autem quia impedit ducimus.', 'Accusantium repellendus asperiores consequatur eaque.', 5, 41, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(2, 'Quia incidunt ut similique.', 'Cum eum quae est excepturi illo.', 'Unde eum voluptatem ut ex in.', 'Reprehenderit consequatur aperiam unde.', 'Unde quaerat expedita recusandae voluptas nemo odit.', 'Cum eum quae est excepturi illo.', 20, 19, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(3, 'Rerum corrupti qui delectus ratione enim iusto quae.', 'Quas aperiam asperiores ut vero perspiciatis.', 'Delectus aut aut magnam quisquam.', 'Voluptas labore corrupti explicabo blanditiis aperiam.', 'Velit sit ipsam porro.', 'Voluptas labore corrupti explicabo blanditiis aperiam.', 10, 8, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(4, 'Architecto quaerat amet rerum sit delectus.', 'Nostrum porro eum et consequuntur eos tenetur.', 'Voluptatum autem quia ullam.', 'Iusto error natus explicabo et et ex.', 'Dolores vero architecto velit tempore.', 'Nostrum porro eum et consequuntur eos tenetur.', 10, 29, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(5, 'Voluptatibus nihil voluptas voluptate qui voluptate quo.', 'Libero possimus placeat voluptates velit.', 'Eos velit ut nam delectus dolorem.', 'Voluptatem distinctio a quae.', 'Neque est officia facilis.', 'Libero possimus placeat voluptates velit.', 1, 23, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(6, 'Sint delectus sed illum nihil error quod libero.', 'Fuga fugiat nobis dolorum est quia sunt eveniet.', 'Iste asperiores mollitia vitae cumque provident exercitationem eius id.', 'Qui doloribus velit est quidem fugit molestiae perspiciatis.', 'Quis nihil aut sit voluptatem.', 'Qui doloribus velit est quidem fugit molestiae perspiciatis.', 5, 26, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(7, 'Voluptate qui qui vero corporis porro est.', 'Eos autem eos possimus perspiciatis numquam.', 'Quasi aut quo veritatis dolorum.', 'Repellat magni suscipit deleniti sunt.', 'Voluptatem autem provident illum impedit quae sunt dolor totam.', 'Voluptatem autem provident illum impedit quae sunt dolor totam.', 15, 13, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(8, 'Nesciunt fugit delectus assumenda id quas fugit.', 'Ducimus et maiores velit qui occaecati qui error sapiente.', 'Earum facere deleniti consequatur voluptatum totam.', 'Dolores est voluptatem odit rerum provident voluptas modi.', 'Beatae delectus et placeat hic non voluptatem.', 'Ducimus et maiores velit qui occaecati qui error sapiente.', 15, 16, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(9, 'Illum repellendus aliquid eos sed iste.', 'Aut nihil aut officiis sit nesciunt.', 'Consequatur tenetur ea similique eos.', 'Atque iste quo ratione ut fuga quasi.', 'Quam eos sint voluptas doloremque corrupti earum numquam.', 'Quam eos sint voluptas doloremque corrupti earum numquam.', 1, 15, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(10, 'Dolorem ut sed nostrum sint aliquam non.', 'Placeat qui quod et dolor velit qui ipsum.', 'Ipsum nam dolor beatae quia.', 'Aut nostrum et veniam delectus illum rerum fugit et.', 'Suscipit quisquam eos quis ut expedita.', 'Placeat qui quod et dolor velit qui ipsum.', 20, 13, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(11, 'Quo amet unde odit culpa.', 'Veniam sed occaecati distinctio dolor rerum.', 'Dolores non reiciendis excepturi voluptatibus deleniti qui facere debitis.', 'Labore et dolores corporis ducimus sint sunt qui placeat.', 'Recusandae dicta est in totam ut quis et.', 'Dolores non reiciendis excepturi voluptatibus deleniti qui facere debitis.', 20, 9, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(12, 'Modi eveniet in sed quia dolorem.', 'Quas quasi aliquid tempora minima quia unde.', 'Quia veniam atque officia illo sint.', 'Voluptatem voluptatem consequatur nihil.', 'Error quae perferendis delectus enim dolores sint et.', 'Voluptatem voluptatem consequatur nihil.', 1, 5, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(13, 'Ullam aut magni in minus quibusdam.', 'Non voluptate ut consequatur debitis sit ab.', 'Dolorum ipsa dignissimos saepe quisquam pariatur et qui.', 'Beatae sit non enim totam dolor nihil necessitatibus.', 'Totam voluptas quas voluptate laboriosam aut quam.', 'Totam voluptas quas voluptate laboriosam aut quam.', 10, 14, '2020-06-19 09:14:49', '2020-06-19 09:14:49'),
(14, 'Perferendis optio necessitatibus et ducimus.', 'Quia ea enim culpa recusandae.', 'Est est sit possimus quos sunt suscipit.', 'Ullam exercitationem perferendis doloribus doloremque eum natus.', 'Laborum fuga quia sapiente.', 'Laborum fuga quia sapiente.', 5, 31, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(15, 'Earum hic dolorum voluptatem quo incidunt consequatur aut voluptas.', 'Aut et consectetur facilis totam ab reprehenderit.', 'Enim neque dignissimos doloribus vero omnis adipisci.', 'Voluptates maxime atque quod.', 'Iure aut ducimus earum voluptatum rerum tempora.', 'Aut et consectetur facilis totam ab reprehenderit.', 1, 45, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(16, 'Ea qui fuga quo quidem facere odio.', 'Facilis laboriosam in itaque.', 'Qui ea cupiditate voluptatem amet quia.', 'Ullam excepturi ut enim aliquam at omnis qui voluptas.', 'Quae velit consectetur non ipsa et numquam.', 'Quae velit consectetur non ipsa et numquam.', 10, 21, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(17, 'Amet possimus dolorem necessitatibus aut quibusdam magni quasi.', 'Et quos sed totam.', 'Doloribus dolor iure omnis saepe corporis dolorum omnis.', 'Omnis rerum debitis molestiae autem.', 'Est eos accusamus minima modi ea.', 'Omnis rerum debitis molestiae autem.', 10, 26, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(18, 'A aperiam voluptas officia molestiae tenetur.', 'Ut debitis voluptatem quos facere tempore ut quas officiis.', 'Enim doloremque et voluptas qui magni voluptatem.', 'Repellat aut natus ut aliquid sunt voluptas.', 'Qui assumenda dolores dolores dignissimos ullam.', 'Ut debitis voluptatem quos facere tempore ut quas officiis.', 1, 18, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(19, 'Minus ipsam dolor alias voluptates.', 'Accusamus ut eligendi odio commodi.', 'Sed ut nihil pariatur autem minima rerum.', 'Qui nemo vel minus quis unde ipsam.', 'Aut nesciunt ex ducimus alias.', 'Sed ut nihil pariatur autem minima rerum.', 20, 40, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(20, 'Ipsa aut ut iure beatae.', 'Laboriosam asperiores est omnis sunt voluptatem.', 'Aspernatur alias quo ut provident ipsa qui et.', 'Perferendis minus sed magni natus nesciunt quibusdam.', 'Explicabo quibusdam id sunt quibusdam.', 'Explicabo quibusdam id sunt quibusdam.', 1, 36, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(21, 'Molestiae molestias non consequatur temporibus voluptatem nam.', 'Nisi a ipsam et omnis voluptatibus dicta dolore quam.', 'Modi rem nemo aliquid laboriosam minima.', 'Aliquid id quia modi sunt similique eaque.', 'Rerum autem numquam eius error.', 'Nisi a ipsam et omnis voluptatibus dicta dolore quam.', 1, 21, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(22, 'Blanditiis dolorem nam necessitatibus consequuntur deleniti voluptate.', 'Maxime esse porro doloribus laboriosam laudantium.', 'Et nostrum voluptatem repellat rerum labore a.', 'Tempora eos iusto magni enim dolores dolorum voluptatibus.', 'Quae ad quas et quis et explicabo eligendi.', 'Et nostrum voluptatem repellat rerum labore a.', 1, 19, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(23, 'Consectetur labore modi quam at.', 'Qui dolor quasi dolorem sint.', 'Sapiente at quisquam veritatis et et facilis.', 'Officiis molestiae repellendus ut.', 'Impedit repellendus vel molestias ad distinctio.', 'Impedit repellendus vel molestias ad distinctio.', 5, 19, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(24, 'Perspiciatis est qui modi velit.', 'Assumenda quis aperiam voluptatum impedit dolorem magni laudantium.', 'Est saepe beatae velit aliquam aut et.', 'Quas rem exercitationem quo consequatur rerum.', 'Exercitationem qui architecto exercitationem ipsam et nam.', 'Assumenda quis aperiam voluptatum impedit dolorem magni laudantium.', 20, 3, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(25, 'Possimus debitis laborum voluptates dicta.', 'Beatae minus necessitatibus ex ipsam.', 'Provident aut provident pariatur laborum sed iste assumenda officiis.', 'Ut ut vero omnis cum qui est.', 'Harum fugiat ut est molestias aut.', 'Ut ut vero omnis cum qui est.', 20, 16, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(26, 'Qui consequatur quia a quaerat.', 'Mollitia explicabo suscipit omnis quis.', 'Tempora debitis in ratione tempore et.', 'Vitae delectus ut officiis ea illum ut.', 'Voluptas earum ad magnam exercitationem ea est ad.', 'Tempora debitis in ratione tempore et.', 15, 35, '2020-06-19 09:14:50', '2020-06-19 09:14:50'),
(27, 'Asperiores tempora ipsam ut.', 'Consequatur veniam tempore non unde ad accusantium tempora exercitationem.', 'Aut ipsum beatae molestias assumenda.', 'Sit ipsum sequi repudiandae labore maiores expedita aut et.', 'Aliquam repellat id repudiandae voluptas recusandae ut sed.', 'Aliquam repellat id repudiandae voluptas recusandae ut sed.', 1, 42, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(28, 'Sed rerum aut animi doloremque autem quis.', 'Libero labore sapiente consectetur ut voluptas.', 'Dignissimos dolores odit quas quis id eos necessitatibus.', 'Velit est ut dolores veniam.', 'Et placeat quas sed omnis fugiat et consequuntur.', 'Et placeat quas sed omnis fugiat et consequuntur.', 10, 33, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(29, 'Eveniet nihil qui ut neque.', 'Sit voluptatem libero et et.', 'Ut non beatae vel quia eos saepe sed.', 'Placeat voluptates commodi repellat consequatur fuga.', 'Et dolor deserunt aut id delectus quod.', 'Sit voluptatem libero et et.', 10, 1, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(30, 'Autem voluptatem non asperiores.', 'Quia sequi et debitis suscipit reprehenderit et reprehenderit.', 'Animi tempore sed iure numquam.', 'Mollitia quisquam aut quibusdam sunt tempore officia.', 'Pariatur accusamus maxime corporis suscipit culpa necessitatibus fugiat.', 'Quia sequi et debitis suscipit reprehenderit et reprehenderit.', 5, 38, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(31, 'Est ea quibusdam laboriosam molestias.', 'Odit voluptatem quam minima iure possimus voluptatum.', 'Sunt qui dolorum corporis ipsa dignissimos est possimus placeat.', 'Voluptate et illum consequuntur odit a minus consectetur.', 'Culpa numquam suscipit ab ipsum quia.', 'Culpa numquam suscipit ab ipsum quia.', 15, 41, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(32, 'Sed inventore omnis autem autem.', 'Ut sapiente odio doloremque quia officiis nesciunt.', 'Ut cum tenetur minima ratione natus qui est.', 'Non quaerat pariatur autem.', 'Eum omnis non delectus officiis ut.', 'Non quaerat pariatur autem.', 10, 2, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(33, 'Quis architecto temporibus porro pariatur beatae recusandae.', 'Rerum aut inventore consequatur eius quas tempora.', 'Molestias quis earum laudantium nemo recusandae et aut.', 'Et quae ipsum provident veritatis iure aspernatur.', 'Nam praesentium et non et nisi.', 'Molestias quis earum laudantium nemo recusandae et aut.', 20, 36, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(34, 'Beatae dolor sit rerum provident voluptatem autem tempora rerum.', 'Odit ipsam rerum asperiores ad asperiores quaerat.', 'Dolores non molestias sapiente totam autem id perferendis.', 'Et omnis necessitatibus cumque animi et consequuntur eligendi dolor.', 'Velit dolor dolor sapiente aut numquam magni autem velit.', 'Velit dolor dolor sapiente aut numquam magni autem velit.', 10, 23, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(35, 'Accusamus iusto vel neque.', 'Adipisci est et nam dolor.', 'Aut odio optio minus voluptas ullam velit.', 'Dolores voluptate corrupti labore.', 'Rerum illum modi voluptatum saepe atque ullam est.', 'Rerum illum modi voluptatum saepe atque ullam est.', 10, 1, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(36, 'Molestias cupiditate consectetur repudiandae hic non dolorem maxime vel.', 'Impedit et facere est sed ratione et et.', 'Ut ipsam neque voluptates quia doloremque aperiam.', 'Eius incidunt est laboriosam saepe ducimus.', 'Optio eius odit nemo deleniti voluptatem.', 'Impedit et facere est sed ratione et et.', 1, 40, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(37, 'Velit libero nihil ipsam molestiae laudantium.', 'Quasi sit possimus qui voluptas suscipit.', 'Iusto deleniti nostrum unde impedit recusandae eum animi.', 'Natus reprehenderit natus ex sed quibusdam at.', 'Rerum expedita non laborum itaque blanditiis commodi.', 'Natus reprehenderit natus ex sed quibusdam at.', 15, 26, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(38, 'Est dolores accusamus autem et rerum quia ducimus impedit.', 'Quia et non reprehenderit.', 'Quisquam rerum blanditiis aut ipsum in et.', 'Praesentium minus maiores autem numquam odit.', 'Et quia natus iste vel reiciendis natus.', 'Quia et non reprehenderit.', 10, 27, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(39, 'Praesentium aut recusandae earum aut molestias eveniet.', 'Reprehenderit dolor harum eligendi adipisci qui ut rerum vitae.', 'Vitae ab consectetur perspiciatis.', 'Quo non commodi non dolorem et ex libero.', 'Quasi excepturi modi dolor assumenda quia eos.', 'Quasi excepturi modi dolor assumenda quia eos.', 10, 34, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(40, 'Eaque consequuntur at omnis odio est modi illo et.', 'Quia non vel voluptate qui ipsa est nihil.', 'Quia quod ut magnam inventore et.', 'Illo vel nulla quo at veniam qui laudantium.', 'Odio nihil vitae qui a et et et.', 'Odio nihil vitae qui a et et et.', 15, 42, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(41, 'Dolorem perspiciatis in molestias vero.', 'Non est dolorem voluptas.', 'Suscipit quisquam et soluta tempore enim vitae deserunt.', 'Possimus laborum maxime dolores quae.', 'Autem iste excepturi libero ea praesentium.', 'Non est dolorem voluptas.', 15, 5, '2020-06-19 09:14:51', '2020-06-19 09:14:51'),
(42, 'Provident doloribus nihil quo quam.', 'Sunt reiciendis non aut et.', 'Et ut ducimus quam unde quis ratione.', 'Beatae qui totam sint et.', 'Voluptatem aspernatur modi ullam hic omnis similique.', 'Beatae qui totam sint et.', 5, 32, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(43, 'Blanditiis illo rerum dolor voluptatem et corrupti.', 'Ut debitis alias soluta.', 'Sed ut velit est magnam ex.', 'Expedita dolorem dicta sunt nisi repellat.', 'Rerum odio sapiente aut officiis sint non.', 'Expedita dolorem dicta sunt nisi repellat.', 5, 18, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(44, 'Ad et error architecto numquam autem velit ipsa.', 'Nihil quisquam quaerat hic fugit voluptatem sint architecto velit.', 'Possimus saepe non optio et.', 'Libero impedit et cum vel quo atque quis.', 'Facilis officiis itaque sunt sit labore et quia.', 'Libero impedit et cum vel quo atque quis.', 15, 29, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(45, 'Et voluptatem aut minus in nemo consequuntur autem.', 'Minus est laborum excepturi asperiores.', 'Provident quia veniam saepe provident aliquam at officiis.', 'Temporibus tempora repudiandae aut tenetur.', 'Facilis laboriosam eum accusamus cupiditate quia.', 'Temporibus tempora repudiandae aut tenetur.', 20, 34, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(46, 'Quis cumque debitis voluptates est repellendus.', 'Sequi porro dolor nulla commodi sit sed deserunt omnis.', 'Omnis ad voluptate inventore vel et.', 'Facilis maxime perferendis delectus voluptatibus.', 'Voluptas aliquid animi sunt tempore occaecati aperiam consequatur.', 'Sequi porro dolor nulla commodi sit sed deserunt omnis.', 10, 49, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(47, 'Aut sunt molestiae esse sunt debitis illo.', 'Ea suscipit omnis quisquam perferendis qui laborum.', 'Dolor esse explicabo quas eum.', 'Aliquam tempora ut voluptates eum.', 'Omnis qui ea voluptatem voluptatem.', 'Aliquam tempora ut voluptates eum.', 10, 13, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(48, 'Debitis voluptate consequatur eos et qui aut beatae.', 'Vero ab sit et molestias necessitatibus.', 'Ut ut ut non vel earum qui maxime.', 'Adipisci velit voluptas ipsa deserunt error.', 'Iure nisi velit voluptas.', 'Vero ab sit et molestias necessitatibus.', 15, 48, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(49, 'Amet porro dolores aperiam voluptates tenetur.', 'Voluptatem libero ab necessitatibus aspernatur velit quod eum.', 'Deleniti ducimus minima non delectus.', 'Quibusdam tempora aperiam aperiam harum animi ut veniam eaque.', 'Minus optio natus et ipsa dolorem qui.', 'Minus optio natus et ipsa dolorem qui.', 10, 41, '2020-06-19 09:14:52', '2020-06-19 09:14:52'),
(50, 'Sed quia corporis optio dignissimos necessitatibus.', 'Sint et qui ut et eum est.', 'Vel quas dicta facilis sed soluta.', 'Illum aut sed et tempora atque.', 'Repellat aspernatur perferendis laborum earum rerum reprehenderit cumque.', 'Sint et qui ut et eum est.', 5, 34, '2020-06-19 09:14:52', '2020-06-19 09:14:52');

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
(1, 'dolor', 17, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(2, 'dolores', 2, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(3, 'ut', 36, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(4, 'et', 15, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(5, 'qui', 9, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(6, 'et', 26, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(7, 'aperiam', 25, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(8, 'distinctio', 39, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(9, 'sapiente', 48, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(10, 'velit', 13, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(11, 'itaque', 31, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(12, 'laudantium', 40, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(13, 'cumque', 13, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(14, 'quis', 36, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(15, 'eveniet', 42, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(16, 'enim', 15, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(17, 'dignissimos', 1, '2020-06-19 09:14:43', '2020-06-19 09:14:43'),
(18, 'qui', 29, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(19, 'accusamus', 47, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(20, 'non', 23, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(21, 'modi', 22, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(22, 'consequatur', 32, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(23, 'nihil', 24, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(24, 'dolorum', 47, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(25, 'esse', 18, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(26, 'culpa', 17, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(27, 'asperiores', 12, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(28, 'ea', 43, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(29, 'dolor', 25, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(30, 'laudantium', 36, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(31, 'dignissimos', 26, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(32, 'vitae', 23, '2020-06-19 09:14:44', '2020-06-19 09:14:44'),
(33, 'voluptatum', 2, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(34, 'dicta', 15, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(35, 'accusamus', 36, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(36, 'qui', 46, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(37, 'odio', 5, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(38, 'neque', 6, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(39, 'quae', 17, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(40, 'incidunt', 42, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(41, 'omnis', 22, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(42, 'officiis', 10, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(43, 'dolor', 32, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(44, 'nihil', 13, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(45, 'temporibus', 10, '2020-06-19 09:14:45', '2020-06-19 09:14:45'),
(46, 'at', 12, '2020-06-19 09:14:46', '2020-06-19 09:14:46'),
(47, 'dolorem', 30, '2020-06-19 09:14:46', '2020-06-19 09:14:46'),
(48, 'consequatur', 40, '2020-06-19 09:14:46', '2020-06-19 09:14:46'),
(49, 'eum', 27, '2020-06-19 09:14:46', '2020-06-19 09:14:46'),
(50, 'autfhfdg', 21, '2020-06-19 09:14:46', '2020-06-19 09:42:54'),
(51, 'dgbjdfjgdf', 50, '2020-06-19 14:00:15', '2020-06-19 14:00:15');

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
(1, 17),
(1, 10),
(1, 46),
(2, 34),
(2, 42),
(2, 25),
(3, 46),
(3, 28),
(3, 36),
(4, 41),
(4, 44),
(4, 13),
(5, 39),
(5, 21),
(5, 30),
(6, 13),
(6, 27),
(6, 49),
(7, 2),
(7, 33),
(7, 8),
(8, 25),
(8, 12),
(8, 37),
(9, 19),
(9, 49),
(9, 30),
(10, 49),
(10, 8),
(10, 41);

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
(1, 'distinctio', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(2, 'delectus', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(3, 'in', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(4, 'error', '2020-06-19 09:14:30', '2020-06-19 09:14:30'),
(5, 'nisi', '2020-06-19 09:14:30', '2020-06-19 09:14:30'),
(6, 'et', '2020-06-19 09:14:30', '2020-06-19 09:14:30'),
(7, 'sequi', '2020-06-19 09:14:30', '2020-06-19 09:14:30'),
(8, 'cum', '2020-06-19 09:14:30', '2020-06-19 09:14:30'),
(9, 'quam', '2020-06-19 09:14:30', '2020-06-19 09:14:30'),
(10, 'non', '2020-06-19 09:14:30', '2020-06-19 09:14:30');

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
(1, 2),
(2, 2),
(2, 3),
(3, 4),
(3, 9),
(4, 10),
(4, 3),
(5, 4),
(5, 7),
(6, 9),
(6, 1),
(7, 3),
(7, 1),
(8, 4),
(8, 2),
(9, 5),
(9, 4),
(10, 8),
(10, 7),
(1, 5),
(11, 10);

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
(1, 'Mrs. Destini Kassulke', 'maida55@example.net', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 'izvrtLvZiJqG2TGpy6ABV2ZhwejcuzvweQni7k5NcVFjb2q6e7Zc7sTTSw7S', '2020-06-19 09:14:28', '2020-06-19 09:18:35'),
(2, 'Nona Wehner', 'olen.feeney@example.org', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 200, '7KHjjrBXWqhB599beaSpmp1y3sVOzvZoDdvlsInsKTqpeyKWGxe5f3Shlxao', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(3, 'Mr. Leonardo Kuhn', 'dewitt.morar@example.com', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 100, 'awy2Ou6RWkKvtFS4g0ZBi5RvZ18ATsAornKqhHZZ7fglFloDzHRcXVNI7EII', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(4, 'Bria Gerhold', 'nleuschke@example.org', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, 'CpAVx7M0Rj', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(5, 'Deron Marvin', 'marilou54@example.net', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 155, 'KYm82MmAax', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(6, 'Evelyn Bernier', 'halvorson.savannah@example.net', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 190, 'RDe7xwtLgi', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(7, 'Prof. Clare Heidenreich', 'ward.johnathan@example.com', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 150, 'GjdtNWVxz4', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(8, 'Kaci Spencer', 'santos.hodkiewicz@example.org', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 190, '2bybFfxaCA', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(9, 'Eladio Rolfson', 'geovanny.orn@example.com', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 200, 'k6748Jyvgd', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(10, 'Kylee Grimes', 'bechtelar.lambert@example.net', '2020-06-19 09:14:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 150, 'AbOsgOQo6W', '2020-06-19 09:14:29', '2020-06-19 09:14:29'),
(11, 'Mohamed Osama', 'mm309on@gmail.com', NULL, '$2y$10$HbiRrbx4gSdXJ5ssOag2dOh26I3VINfHqP0MSk03.s6hXjzHlEKwu', 2, 0, NULL, '2020-06-19 09:23:11', '2020-06-19 13:59:08'),
(12, 'mohamedgdfg', 'fhc@gmail.com', NULL, '$2y$10$38X.g2iCFEEGDIahS6HR0urXL7wDbJ1SAVcuGuz0GRdLQagP6Kg2O', 1, 0, NULL, '2020-06-19 14:02:16', '2020-06-19 14:02:16');

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
(1, 'Consectetur repellendus consectetur voluptatum et consequatur aperiam accusantium.', 'http://www.hoppe.biz/dolorem-aut-consequatur-maxime-quo-ut-et-ad-est.html', 41, '2020-06-19 09:14:38', '2020-06-19 09:14:38'),
(2, 'Facere quia reiciendis cum voluptatum cum impedit.', 'http://emard.info/', 29, '2020-06-19 09:14:38', '2020-06-19 09:14:38'),
(3, 'Cumque deserunt quo totam sed consequatur.', 'https://cremin.com/magnam-molestiae-impedit-omnis-dolor-voluptates-dolorum.html', 38, '2020-06-19 09:14:38', '2020-06-19 09:14:38'),
(4, 'Voluptate ut omnis doloremque deleniti et aut commodi dolorum.', 'http://www.feeney.com/eveniet-ipsum-laborum-ipsa-voluptatibus-magni.html', 2, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(5, 'Eaque ullam quaerat deserunt voluptatem id accusantium.', 'http://hettinger.com/assumenda-quia-qui-est-ea-laborum.html', 5, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(6, 'Dolores non dignissimos officia aut.', 'http://schinner.com/qui-sequi-sunt-ea-aut-iste-architecto', 34, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(7, 'Maxime natus excepturi culpa sit dolores adipisci accusamus voluptate.', 'http://bartoletti.com/', 38, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(8, 'Aut saepe natus suscipit illo.', 'http://nicolas.biz/velit-reprehenderit-illo-voluptatem-esse-quia', 36, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(9, 'Cum perferendis maxime natus est sed ad illum.', 'http://mertz.net/eveniet-non-quo-ipsam-voluptas-vel-corporis-eum', 18, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(10, 'Reprehenderit cupiditate est dolorem libero.', 'http://www.mccullough.com/', 10, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(11, 'Maiores in est aliquam est iure cumque perferendis necessitatibus.', 'http://www.hirthe.biz/fugit-nam-nam-iste-asperiores-est', 13, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(12, 'Consequuntur reiciendis quos perspiciatis architecto maxime.', 'https://www.predovic.info/similique-est-ab-repellendus', 12, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(13, 'Amet facilis alias dolores quis consequatur.', 'http://oreilly.biz/', 39, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(14, 'Quibusdam aperiam nam veniam quibusdam reiciendis et.', 'https://www.hoeger.com/est-consequatur-enim-deleniti-similique', 7, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(15, 'Omnis officia quidem itaque libero.', 'http://www.dibbert.com/eum-voluptatum-deleniti-illo-in-saepe-dolorem-quia', 24, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(16, 'Enim maxime ratione unde ea.', 'http://www.stark.com/', 2, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(17, 'Esse aut laborum fuga ut exercitationem.', 'http://www.rau.info/rerum-voluptates-iste-non-sed-sint-quisquam-id', 4, '2020-06-19 09:14:39', '2020-06-19 09:14:39'),
(18, 'Cumque voluptatem aut dolor velit.', 'https://www.harvey.com/et-nihil-recusandae-voluptatibus-non', 50, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(19, 'Eum porro dolor et.', 'http://www.kuhn.com/possimus-atque-dolorem-magni-sed-dolores-aperiam-deleniti.html', 28, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(20, 'Aliquam minus sed maxime est omnis maiores.', 'http://www.mccullough.com/omnis-illum-atque-velit-modi-maxime-soluta', 39, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(21, 'Adipisci sint voluptatem odio aut.', 'https://www.yundt.com/est-repellendus-esse-sed-voluptate-voluptatum-quo', 33, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(22, 'Iure rerum aperiam similique aut voluptatem.', 'http://walter.info/', 4, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(23, 'Unde qui qui ut qui provident voluptatibus.', 'http://www.kuvalis.biz/', 6, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(24, 'Harum explicabo enim laborum error.', 'http://www.ondricka.info/et-quo-est-quasi-beatae-quia-fugit-ea', 24, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(25, 'Distinctio ad illum ut.', 'http://www.cummerata.com/tempora-iste-tempore-atque-et-consequuntur-eveniet', 39, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(26, 'Adipisci dolorem veritatis corrupti et velit quaerat.', 'https://hagenes.biz/ipsa-omnis-similique-dignissimos-similique-quas-rem-voluptatem.html', 12, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(27, 'Tempore magnam hic explicabo dolores et delectus ipsam voluptatem.', 'https://will.net/minima-voluptatum-quod-iste-quidem.html', 11, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(28, 'Sapiente excepturi deleniti et.', 'http://www.ward.org/et-enim-consequatur-itaque.html', 34, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(29, 'Expedita est facere consequatur.', 'http://www.bode.org/quia-error-doloremque-quam-nostrum', 6, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(30, 'Quis laudantium placeat aliquid incidunt.', 'http://huels.biz/et-vel-tempora-aut-ipsam-hic-ipsa', 43, '2020-06-19 09:14:40', '2020-06-19 09:14:40'),
(31, 'Quaerat corrupti ducimus dolores.', 'http://goodwin.org/quidem-qui-quod-non-at-repudiandae-necessitatibus', 4, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(32, 'Iure qui sapiente necessitatibus molestiae quidem.', 'http://huels.com/sit-voluptatem-eveniet-amet-nulla-officia', 38, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(33, 'Dolorum esse non voluptatem deleniti.', 'http://lynch.biz/voluptatum-exercitationem-magnam-illo-maxime-aut', 39, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(34, 'Aut dolorem voluptatum sit libero id.', 'http://bernhard.biz/ea-fugit-sunt-ex-voluptas.html', 37, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(35, 'Totam molestiae magni soluta ullam enim est.', 'http://www.emmerich.com/vero-dolor-vel-omnis-et-ut.html', 17, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(36, 'Officiis quis corrupti dolor vel.', 'http://dickens.com/eius-animi-architecto-quod-debitis-officiis', 43, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(37, 'Fugiat deleniti enim consequuntur delectus reprehenderit.', 'http://rohan.biz/', 7, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(38, 'Quae aut est qui doloribus ut nulla.', 'http://schuster.com/distinctio-reprehenderit-cum-mollitia', 19, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(39, 'Eligendi dolor itaque aut fuga at eos.', 'http://www.hills.net/', 45, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(40, 'Ut et commodi nemo autem tenetur.', 'http://hickle.com/ut-dicta-eveniet-et-consequatur', 11, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(41, 'Hic nesciunt quam consectetur beatae omnis rerum.', 'http://www.dare.org/temporibus-maiores-quia-distinctio-ut-porro-ut', 48, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(42, 'Et est assumenda voluptatem eveniet rerum.', 'http://conroy.info/nostrum-expedita-animi-consequatur-unde-sed-quos.html', 50, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(43, 'Sint id ut blanditiis ut eos non.', 'http://cronin.net/illo-quaerat-voluptate-aut-aut-nostrum-consequatur-velit.html', 11, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(44, 'Impedit in consequuntur voluptate dolores tempore eos cumque.', 'https://www.witting.com/optio-sequi-quia-ipsam-quam-voluptas-aperiam', 40, '2020-06-19 09:14:41', '2020-06-19 09:14:41'),
(45, 'Mollitia corporis amet omnis magnam atque.', 'https://www.carroll.info/eligendi-quia-consequatur-totam-aspernatur', 10, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(46, 'Libero nostrum voluptatibus voluptatem fugit perferendis qui.', 'http://www.jenkins.com/minus-illo-unde-perferendis-est-veritatis-aliquid-et.html', 9, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(47, 'Hic architecto nihil quo fugiat eius.', 'http://bauch.com/aut-est-nobis-sunt-quam.html', 15, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(48, 'Tenetur ratione rerum quia.', 'http://www.kunze.com/', 22, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(49, 'Unde consequatur quae ut dolor aut laudantium quibusdam.', 'http://veum.com/', 4, '2020-06-19 09:14:42', '2020-06-19 09:14:42'),
(50, 'Tempore qui consequatur possimus.', 'http://www.auer.info/accusamus-aut-quisquam-soluta-dolor-fugit.html', 47, '2020-06-19 09:14:42', '2020-06-19 14:09:15');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `photoable`
--
ALTER TABLE `photoable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
