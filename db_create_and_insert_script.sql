DROP DATABASE IF EXISTS avito_db_model;
CREATE DATABASE avito_db_model CHARACTER SET utf8 COLLATE utf8_general_ci;

USE avito_db_model;



#
# TABLE STRUCTURE FOR: access_mode_type
#

DROP TABLE IF EXISTS `access_mode_type`;

CREATE TABLE `access_mode_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `access_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Тип учетной записи пользователя',
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_name` (`access_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы учетной записи пользователей';

INSERT INTO `access_mode_type` (`id`, `access_name`) VALUES (3, 'doloremque');
INSERT INTO `access_mode_type` (`id`, `access_name`) VALUES (2, 'reprehenderit');
INSERT INTO `access_mode_type` (`id`, `access_name`) VALUES (1, 'user');


#
# TABLE STRUCTURE FOR: ad
#

DROP TABLE IF EXISTS `ad`;

CREATE TABLE `ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки объявления',
  `ad_mode_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип привелегий объявления(вип, обычное и т.д)',
  `ad_category_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на наименование категории',
  `ad_product_condition_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на качество товара в объявлении(бу или новый)',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор пользователя, который опубликовал объявление',
  `header` varchar(150) COLLATE utf8_unicode_ci DEFAULT 'Not_found' COMMENT 'Заголовок объявления',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Описание',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор медиа файлов',
  `order_amount` int(10) unsigned NOT NULL COMMENT 'Сумма',
  `ad_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус объявления',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Объявления от пользователей';

INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (1, 2, 5, 2, 53, 'et', 'Sit quia exercitationem qui. Corporis cum excepturi porro. Error totam molestiae eaque in aspernatur. Omnis deleniti dicta temporibus saepe modi.', 1, 5751, 2, '1996-01-27 11:23:26', '1970-07-26 10:34:21');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (2, 4, 5, 2, 72, 'omnis', 'Veniam quia ut eum asperiores repellat porro nihil. Voluptas illo dolor quia rem. Nihil voluptas quos et quia soluta voluptas. Tempore veritatis sed voluptatem excepturi tenetur mollitia.', 1, 1983, 3, '2017-06-09 07:14:16', '1994-01-17 20:54:23');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (3, 4, 4, 2, 9, 'nesciunt', 'Et velit officiis autem optio. Esse vero placeat amet debitis vero ea ullam. Et nostrum et natus.', 1, 4162, 2, '1979-07-28 13:59:37', '1999-09-30 10:14:21');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (4, 2, 3, 1, 88, 'impedit', 'Voluptatem nemo eum quae non perferendis tempore dolorum. Cumque et odit vel eos. Cumque consectetur dolores blanditiis iusto. Eius possimus rerum suscipit dolores et totam.', 1, 9370, 3, '2017-03-03 09:52:27', '2008-05-19 09:40:49');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (5, 5, 4, 2, 66, 'consequatur', 'Itaque molestiae consequatur natus aut vero sed sequi. Aut maxime dignissimos et quibusdam qui. Perferendis cum doloremque maxime atque.', 1, 1272, 1, '2015-11-16 08:52:44', '2016-11-06 14:59:26');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (6, 4, 1, 2, 60, 'consequuntur', 'Nemo optio non consequatur. Quidem velit aliquid ea velit ratione dignissimos aut velit. Qui mollitia maxime vitae quos et nihil adipisci quis.', 1, 9497, 1, '1970-11-03 12:42:23', '2002-07-22 06:22:02');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (7, 1, 1, 1, 96, 'ipsum', 'Quo excepturi et impedit praesentium. Libero sint corrupti iusto facilis laudantium error. Quia quae praesentium doloribus suscipit voluptatum eos ipsam qui. Debitis est labore voluptatem vel aliquam.', 1, 6113, 2, '1970-12-04 05:38:10', '1972-03-09 09:11:56');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (8, 5, 5, 1, 42, 'qui', 'Cum autem error vel laborum ut. Est eius ut est doloremque. Doloribus voluptatem quia tempora deserunt minus at vero consequatur. Alias ipsa repellendus repellat sapiente quasi expedita ex.', 1, 5261, 2, '2001-04-17 07:24:10', '1977-03-09 19:01:29');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (9, 5, 2, 1, 52, 'eum', 'Consequuntur architecto non amet modi aut sed. Nemo quis deleniti deserunt aperiam. Quisquam ut dolorem beatae aut est qui porro quis.', 1, 1228, 1, '2007-03-17 15:04:19', '2009-03-01 16:44:26');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (10, 2, 1, 2, 86, 'aut', 'Fugiat optio et velit impedit et expedita rerum. Rerum ut molestiae quia quisquam. In et qui voluptas sed suscipit autem repudiandae. Quo saepe eveniet et illo.', 1, 3620, 1, '1981-07-03 10:20:09', '1998-01-14 10:34:28');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (11, 1, 1, 1, 25, 'qui', 'Pariatur dolores tempora nihil. Et et vero dolores culpa. Reprehenderit magni porro sed.', 1, 9878, 2, '2016-07-15 02:38:41', '1997-01-05 11:47:28');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (12, 2, 3, 2, 19, 'sed', 'Illo soluta ducimus eos commodi exercitationem aliquid rem numquam. Sint repudiandae et quia vero laudantium dolor. Consequatur nulla nisi quae quisquam aut. Ut modi eum repellendus vitae qui tempora. Sunt sapiente rem exercitationem animi et ut quidem totam.', 1, 1370, 2, '2005-01-27 02:52:54', '2006-03-19 18:55:25');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (13, 2, 3, 1, 20, 'totam', 'Soluta consequatur nemo unde sapiente nostrum enim voluptatem earum. Voluptas architecto id consequatur maiores voluptates ut temporibus.', 1, 3945, 3, '1971-06-20 07:49:36', '1989-01-09 09:52:51');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (14, 5, 2, 2, 59, 'sint', 'Quisquam provident ea alias laudantium tempora. Praesentium sint doloremque praesentium. Dolorum vel eum quis et quod.', 1, 2300, 1, '2020-05-24 12:27:46', '1989-09-09 04:51:00');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (15, 4, 1, 1, 67, 'rerum', 'Similique quia eligendi harum aperiam. Tempore labore numquam nemo cupiditate. Provident ut et excepturi rem dolorem deleniti.', 1, 4033, 2, '1989-10-03 19:10:21', '2019-09-14 00:00:22');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (16, 1, 2, 2, 79, 'quibusdam', 'Laudantium et voluptas sapiente assumenda consequatur velit ipsum. Tempore praesentium suscipit architecto quasi. Dignissimos qui exercitationem repudiandae accusantium ut. Perferendis doloribus quasi maxime sunt non et.', 1, 2983, 3, '1973-12-04 14:07:26', '1986-04-15 13:33:15');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (17, 4, 1, 2, 59, 'debitis', 'Incidunt sunt dolor tempore quia ut. Nihil ut sed dolor.', 1, 5626, 2, '1988-09-14 07:54:23', '1986-05-19 19:44:54');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (18, 5, 5, 1, 31, 'aut', 'Qui quia sequi quis a porro odio. Reprehenderit molestiae necessitatibus ut sed soluta.', 1, 2632, 2, '2007-01-22 05:16:29', '2020-11-07 08:15:45');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (19, 3, 5, 1, 12, 'cupiditate', 'Qui ea illum facilis aut. Quae in rerum consectetur. Sint voluptas qui consectetur corporis quod accusamus. Ad accusamus asperiores reiciendis tempora.', 1, 7526, 1, '1990-03-07 15:58:22', '1974-09-19 03:32:52');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (20, 5, 5, 1, 30, 'rerum', 'Ab omnis laudantium placeat modi est est rerum. Ea illum et repellat laboriosam ipsa inventore. Accusantium voluptatem molestiae sed omnis nemo beatae quia. Dolor at animi ratione sit placeat. Earum eum quis porro numquam aspernatur.', 1, 3752, 3, '1970-06-20 18:43:29', '2000-04-06 15:15:06');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (21, 2, 3, 2, 75, 'ad', 'Eaque omnis non est quam voluptas. Mollitia natus quae quo. Quia et beatae est labore tempora odio minima vel.', 1, 4952, 3, '2019-05-21 05:56:02', '1992-09-24 10:36:51');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (22, 4, 2, 2, 58, 'suscipit', 'Quia error quidem maiores consequatur. Labore consequatur voluptatem doloremque omnis fugit omnis. Minima asperiores delectus eos neque dolorem ea possimus.', 1, 4765, 3, '1977-11-17 12:17:50', '2009-05-29 12:26:33');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (23, 3, 4, 2, 92, 'nobis', 'Voluptatem beatae omnis sint. Vel dolore modi necessitatibus labore dolorum dolorem asperiores. Reiciendis ea ut sint et et officiis. At facere ut dolor dolores magni facere vel.', 1, 7342, 2, '1980-12-27 18:05:58', '1996-10-27 07:43:03');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (24, 4, 1, 2, 69, 'sit', 'Et laudantium beatae assumenda molestiae mollitia nisi aut. Nihil ut tempora optio facere qui facilis. Commodi ut aut dolorum voluptatum. Consequatur consectetur perferendis inventore.', 1, 5076, 1, '1994-11-02 06:01:10', '1976-12-31 03:27:18');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (25, 2, 1, 1, 88, 'quasi', 'Nihil iure rerum doloribus neque enim nihil non. Et dicta quo nulla nemo aliquid nisi. Non saepe velit voluptas similique cumque.', 1, 4217, 2, '2017-12-19 12:59:46', '2003-06-05 01:27:35');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (26, 1, 5, 2, 5, 'assumenda', 'Autem ex eum asperiores eum nam velit eum. Itaque voluptatem eum at animi impedit. Atque mollitia placeat fugiat provident sunt est error. Itaque minima alias molestiae esse suscipit consectetur et.', 1, 9747, 2, '1986-06-08 14:49:29', '2005-07-22 07:16:19');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (27, 2, 2, 2, 67, 'recusandae', 'Enim occaecati inventore voluptatum possimus sunt error necessitatibus. Architecto in aut nostrum. Veritatis ad a cum nihil.', 1, 6171, 3, '1992-09-25 08:35:18', '2003-05-14 10:34:00');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (28, 1, 4, 1, 14, 'quisquam', 'Nihil vel sit omnis nesciunt harum est in. Accusantium aspernatur temporibus vel placeat. Qui quo consequatur non quisquam ut incidunt ab.', 1, 5541, 1, '2005-12-16 21:03:26', '1979-05-07 12:06:29');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (29, 3, 5, 2, 3, 'quibusdam', 'Voluptatem quis nihil itaque quas quia expedita et. Veritatis inventore voluptatem ipsam dolores aut qui. Labore quidem eaque officia aut fuga ipsum et dolores. Voluptas placeat voluptas cupiditate dolores laborum rerum earum quaerat.', 1, 8889, 1, '1988-01-11 15:44:25', '1997-01-06 21:02:43');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (30, 4, 4, 2, 65, 'sit', 'Iusto sit quod et quisquam. Deserunt amet dolor ex quia ut cupiditate officia. In et voluptatem cupiditate est blanditiis.', 1, 1394, 3, '1979-01-04 16:48:15', '2012-09-28 20:34:07');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (31, 3, 4, 1, 41, 'placeat', 'Explicabo aut error odit quis. Enim earum aliquam ipsam qui voluptatum. Voluptates consequatur deserunt doloremque laborum. Ipsa quisquam veniam est rem cupiditate.', 1, 3441, 1, '2009-05-04 04:36:17', '2016-08-13 22:15:59');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (32, 3, 5, 1, 29, 'quia', 'Itaque qui ipsum temporibus fuga. Aut molestiae maxime voluptas dolorem eius. Nihil recusandae commodi sit odio. Voluptates possimus aut eos eligendi.', 1, 6922, 1, '2013-12-01 00:12:03', '1990-12-18 01:40:58');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (33, 5, 4, 1, 63, 'ea', 'Quis consequatur vero non. Iusto libero delectus voluptas quia modi repellat. Vitae non blanditiis nulla odio unde aliquid ducimus.', 1, 3831, 1, '1989-07-12 18:19:28', '2014-12-10 07:11:45');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (34, 3, 5, 1, 75, 'facilis', 'Unde temporibus numquam ducimus mollitia. Eos quasi unde atque ullam. Consequatur nemo dignissimos quod delectus. Quia sit sit ut aut quis.', 1, 4697, 2, '1983-03-31 08:12:02', '1985-06-17 13:10:32');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (35, 2, 5, 1, 39, 'voluptas', 'Impedit excepturi excepturi nihil ipsam aut sapiente. Ut eveniet delectus rerum et reiciendis repudiandae.', 1, 3685, 2, '1980-05-07 23:27:27', '1989-02-12 02:31:18');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (36, 2, 3, 2, 3, 'odit', 'Doloribus sint adipisci eum sapiente qui. Dolores ut qui recusandae nam corrupti quibusdam. Iste mollitia et nihil qui nulla aut natus temporibus. Ratione a soluta aut deserunt.', 1, 6950, 3, '1980-02-16 17:36:26', '1999-10-27 23:41:00');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (37, 4, 3, 2, 9, 'velit', 'Autem ut rerum nostrum quia fuga culpa consequatur earum. Quo magnam molestiae sed ab repudiandae explicabo. At dolor ut earum occaecati quos. Sint voluptas culpa aut quia numquam quia sunt.', 1, 4915, 3, '1976-11-12 20:59:13', '2015-04-19 02:37:54');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (38, 3, 5, 1, 48, 'et', 'Esse omnis id dolorum. Tempore non velit quaerat nisi consequatur aperiam. Voluptate dolores corporis quia explicabo dolor at. Voluptas illum doloremque illum numquam repellat. Eveniet quia quia enim officiis.', 1, 8421, 1, '2004-08-24 06:29:52', '1978-02-05 00:09:41');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (39, 5, 1, 2, 10, 'sit', 'Doloremque aut omnis quibusdam. Qui aut et fugiat facere. Atque nemo cum voluptates praesentium cupiditate adipisci voluptatibus.', 1, 7895, 3, '1970-04-19 20:15:42', '1974-03-03 11:44:54');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (40, 2, 1, 1, 61, 'commodi', 'Illum et quia quis maxime saepe natus. Dolores minima modi architecto recusandae. Cum tempora totam nisi sit aliquam dolorum. Nihil iusto expedita deleniti repellendus.', 1, 9526, 1, '2000-08-23 16:50:21', '1981-06-29 21:12:09');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (41, 2, 5, 2, 35, 'reiciendis', 'Quia ut incidunt iste tempora dicta fuga soluta. Sit qui libero sed inventore itaque. Laudantium ratione nemo ea aspernatur ipsa perferendis suscipit. Aut optio iusto illum laudantium. Optio autem dignissimos minus quo laudantium cupiditate.', 1, 4218, 2, '1976-12-05 07:27:14', '2014-11-08 09:03:00');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (42, 5, 5, 2, 39, 'itaque', 'Dicta ut qui non reiciendis quia error. Maxime suscipit ducimus totam maiores. Modi perferendis quia eum aliquam temporibus. Perferendis aut minus quia sit animi.', 1, 2550, 2, '1991-10-16 04:17:22', '1999-10-31 18:14:38');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (43, 3, 4, 1, 4, 'non', 'Voluptate voluptatem neque ut qui quos ipsum reiciendis. Dolorum nihil dolor ut consectetur sint. Fuga laborum qui omnis voluptatum quo dolores aperiam.', 1, 6079, 1, '2002-12-01 11:36:30', '2017-02-18 05:54:36');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (44, 4, 3, 1, 59, 'fugit', 'Ut suscipit placeat aut. Consequatur optio fuga voluptatum. Nemo quia ex culpa earum sint alias.', 1, 5614, 1, '1971-08-25 06:14:12', '1995-09-24 08:45:29');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (45, 2, 2, 2, 30, 'reprehenderit', 'Dolorem quia quia nam corrupti placeat est. Aut qui voluptate ducimus rerum ducimus ipsam eveniet aspernatur. Nemo quod facilis velit repudiandae dolorum sint consequatur perferendis. Nesciunt aut nihil asperiores exercitationem recusandae quo animi.', 1, 4681, 1, '1977-05-23 09:09:58', '1991-01-25 06:45:44');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (46, 4, 5, 1, 37, 'harum', 'Voluptatem architecto quis labore totam eveniet. Odit quia eveniet nostrum. Veniam delectus placeat sequi et. Adipisci sequi voluptatum molestias est.', 1, 8040, 2, '2006-03-03 05:26:57', '1980-12-11 15:13:32');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (47, 3, 4, 1, 92, 'aperiam', 'Fugiat ea alias est molestiae explicabo quia. Est voluptas perferendis necessitatibus. Est accusamus voluptatem odit nulla dolorem.', 1, 3711, 2, '2019-01-23 03:56:45', '2004-05-07 00:06:51');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (48, 2, 3, 1, 26, 'modi', 'Quo voluptate molestiae blanditiis omnis. Enim consequuntur et et sed. Cum sunt provident consequuntur voluptas cum distinctio sed.', 1, 7437, 1, '1983-07-17 10:48:37', '1970-05-17 02:10:17');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (49, 5, 2, 1, 83, 'sed', 'Iusto sit consectetur et quas ea excepturi. Laborum molestiae et possimus consequatur dolore harum. Et facere aspernatur optio id harum dolor itaque qui. Qui explicabo et harum et quam.', 1, 4807, 3, '2020-04-25 11:51:09', '2015-04-22 05:39:15');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (50, 5, 1, 2, 85, 'dignissimos', 'Voluptas qui quia nulla consequatur qui. Vel harum cupiditate et eaque magni dolores. Vel eius aliquid tempore est.', 1, 7645, 3, '1975-03-05 21:40:15', '1986-08-06 10:36:42');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (51, 5, 1, 2, 72, 'mollitia', 'Velit earum reprehenderit autem sit. Similique quisquam perferendis ut adipisci enim. Eveniet magnam assumenda dolores provident voluptatem culpa omnis.', 1, 7344, 1, '2012-10-11 19:16:59', '1975-07-01 17:02:39');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (52, 2, 4, 2, 53, 'commodi', 'Aspernatur voluptas sit praesentium aspernatur consectetur quo. Impedit magnam qui dolor voluptatem dignissimos vero nesciunt impedit. Ea est assumenda sed porro laudantium qui itaque modi.', 1, 1789, 1, '1991-01-31 20:07:33', '2016-07-12 17:20:39');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (53, 3, 3, 1, 75, 'dicta', 'Et optio voluptas est ut voluptatem magni. Beatae et corporis asperiores qui.', 1, 4855, 2, '2003-04-12 20:12:13', '1986-05-23 00:56:01');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (54, 2, 2, 1, 48, 'et', 'Porro dolor fuga expedita sunt. Tempore et adipisci tempore temporibus molestias totam esse. Sed dolor nam officia optio quia iste vero. Nesciunt aliquam consequuntur sit perferendis deserunt iure.', 1, 9972, 3, '1998-09-14 06:42:12', '2020-08-05 02:31:12');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (55, 2, 1, 1, 26, 'alias', 'Natus odio est voluptatem debitis et. Debitis quae temporibus voluptatem aut quis dolores. Perferendis ea molestiae soluta dolore. Quia amet optio quia labore corrupti autem.', 1, 3945, 3, '1985-09-14 16:05:34', '1975-03-16 05:09:34');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (56, 3, 3, 1, 32, 'excepturi', 'Fuga nulla distinctio odit et odio. Officiis consequatur perspiciatis sed saepe cupiditate. Nesciunt veniam quas minima saepe assumenda dolor. Qui nam aspernatur eum et fugit quas ratione.', 1, 3465, 3, '1995-10-11 05:05:15', '2002-02-13 02:03:16');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (57, 3, 5, 1, 81, 'recusandae', 'Quis ut qui esse nihil. Est dicta sit aut qui.', 1, 2493, 2, '1981-06-25 08:47:02', '2015-01-21 00:49:54');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (58, 1, 5, 1, 33, 'ad', 'Eum qui quam earum aperiam nisi facere. Quidem enim et debitis ut dicta ea hic et. Corrupti pariatur nemo dicta voluptatem.', 1, 1498, 2, '1992-12-09 12:49:39', '1993-04-13 06:42:39');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (59, 5, 3, 2, 32, 'ad', 'Molestiae aut praesentium autem et. Voluptatem voluptatem voluptates minus veritatis dignissimos. Consequatur saepe ea aut tenetur. Hic voluptas quia iusto porro non.', 1, 2369, 2, '2007-01-12 07:37:07', '1987-10-16 19:48:30');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (60, 1, 1, 1, 12, 'omnis', 'Cumque quibusdam ratione natus aliquid pariatur. Velit minima velit blanditiis exercitationem. Quos alias ratione qui et quos tempora.', 1, 3937, 1, '2017-10-31 14:06:22', '2002-08-16 05:00:32');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (61, 3, 5, 1, 64, 'dolor', 'Cumque repellat tempore perferendis odio sunt vero et. Voluptate adipisci amet maiores natus ut.', 1, 6219, 2, '1997-12-23 14:40:14', '2012-09-21 04:28:36');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (62, 3, 4, 1, 73, 'autem', 'Nemo assumenda neque animi architecto qui. Ipsa repellat sit tempore facere. Saepe animi quae quas et. Voluptas sequi est omnis et omnis totam. Illum aut dolorem voluptas nihil quia perferendis.', 1, 4899, 2, '2004-09-27 02:25:38', '2014-03-12 05:34:45');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (63, 5, 1, 2, 82, 'quas', 'Error omnis explicabo nihil autem. Est numquam rerum omnis enim rerum. Accusamus aliquam sit nostrum nam minus aut et est. Explicabo praesentium non et sint accusantium est enim earum.', 1, 5850, 3, '1982-10-12 05:21:54', '2008-02-06 00:39:37');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (64, 2, 1, 2, 36, 'dolorem', 'Non id maxime aut eligendi. Et tempore asperiores enim nisi aut.', 1, 2763, 2, '2011-04-26 06:27:12', '1998-04-24 23:09:42');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (65, 2, 4, 1, 13, 'est', 'Quidem occaecati tempora nam nam eos. Culpa et inventore itaque odio necessitatibus. Aut aut repudiandae culpa consequatur unde sit. Voluptatum deleniti unde natus fugiat laborum provident perferendis.', 1, 5571, 1, '1986-05-26 11:53:14', '1994-02-17 18:55:52');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (66, 5, 1, 1, 71, 'quasi', 'Rerum et officiis cumque accusantium beatae. Quia harum autem labore totam magni quis iusto. Itaque aut quae perspiciatis nihil repudiandae illo repellendus ratione.', 1, 4079, 2, '1994-08-22 22:11:30', '1996-04-12 12:21:37');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (67, 4, 1, 2, 5, 'iusto', 'Enim nostrum autem id repellat beatae. Provident fugit ad eum totam quae est officiis. In ea eum voluptates eos totam sunt.', 1, 7866, 3, '1996-08-27 12:45:52', '1988-11-16 05:33:56');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (68, 3, 4, 1, 48, 'recusandae', 'Nobis eius mollitia est voluptate aspernatur vel. Dolores dolores minima explicabo aut non.', 1, 4347, 3, '2000-12-11 06:34:30', '1983-09-30 19:17:03');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (69, 4, 3, 2, 54, 'et', 'Quam quae modi aut qui amet eius. Iusto omnis autem repellendus doloremque sunt aut.', 1, 9041, 1, '2006-08-24 22:32:29', '1988-11-16 08:44:18');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (70, 2, 2, 1, 84, 'quia', 'Rerum adipisci tenetur culpa. Ratione qui quae ea excepturi saepe repellendus perspiciatis. Quaerat earum sed aut blanditiis eum consequatur.', 1, 9593, 3, '1976-06-29 10:35:10', '1984-07-07 12:35:09');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (71, 5, 1, 2, 42, 'nobis', 'Consequuntur sunt debitis esse tempora. Deserunt minus eum suscipit rerum tempora magnam. Sunt eius voluptatibus sapiente. Deserunt fugiat qui facilis sit.', 1, 5986, 1, '2002-09-24 09:00:17', '1999-07-14 09:10:08');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (72, 3, 5, 1, 32, 'magni', 'At doloribus repudiandae est quia temporibus. Quasi assumenda culpa ad enim. Et nostrum ut eum rerum expedita sed doloribus. Et consectetur iste qui corrupti accusantium esse.', 1, 3331, 2, '2013-12-06 12:26:29', '2007-06-25 23:07:37');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (73, 4, 4, 1, 9, 'et', 'Fugit eum ea placeat eos laborum sed. Dicta et velit tempora consequuntur eum qui reprehenderit. Et ab voluptatibus ullam sed repellat. Saepe necessitatibus numquam temporibus.', 1, 1936, 3, '1984-05-04 17:52:32', '1978-04-04 14:46:18');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (74, 5, 4, 1, 41, 'est', 'Neque sit molestiae harum aut consequatur eum. Molestiae id dolores voluptatem sed. Dignissimos doloribus amet cupiditate qui in vel deserunt. Rerum atque dolore et eos adipisci ut et.', 1, 2591, 2, '1993-06-06 23:33:22', '2005-02-03 20:44:53');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (75, 1, 4, 1, 34, 'illo', 'Ut maxime molestiae neque fuga. Provident ex saepe sit aliquam odio molestiae. Beatae aut assumenda magnam. Accusantium aut et alias pariatur quisquam vel.', 1, 7754, 2, '2011-05-15 12:16:50', '1984-07-19 14:29:40');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (76, 3, 4, 2, 59, 'qui', 'Non exercitationem delectus rerum error nobis. Asperiores nemo quia optio fugiat voluptatem. Excepturi qui sit at quas.', 1, 5313, 3, '2007-06-08 02:46:17', '2001-06-02 18:52:24');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (77, 2, 4, 2, 56, 'repellendus', 'Vitae quo enim est repudiandae ut odit dolor. Quisquam ea doloremque esse nam. Nostrum minima qui vel quo perspiciatis consequatur.', 1, 1046, 2, '2006-10-18 02:42:13', '1986-03-21 02:03:21');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (78, 4, 2, 1, 45, 'sed', 'Magnam minus tempora aut optio nesciunt a modi. Quis qui quidem quas vel aspernatur delectus sit. Commodi quod delectus nobis iusto et est quis aut.', 1, 7017, 3, '1987-03-30 13:19:59', '1995-05-21 07:16:13');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (79, 4, 2, 1, 43, 'natus', 'Velit numquam nemo error quasi eligendi. Rerum nostrum voluptatibus perferendis eos. Libero et provident ut eos cumque rerum non.', 1, 4557, 2, '2005-03-16 06:21:26', '2015-10-26 05:16:19');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (80, 1, 3, 1, 64, 'delectus', 'Delectus beatae perferendis et dolorem. Fugiat totam corporis similique qui et nihil recusandae. Delectus sit et voluptatem quo veniam.', 1, 3116, 3, '1985-09-27 13:40:02', '1985-03-23 06:05:22');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (81, 2, 4, 2, 41, 'aliquid', 'Rerum corrupti ipsa placeat et vero eum possimus. Provident cum iure sit.', 1, 7584, 2, '1982-11-30 09:17:18', '1990-06-30 21:57:10');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (82, 3, 4, 2, 41, 'dolorem', 'Explicabo soluta laborum doloribus aut harum occaecati vel. Autem voluptas et voluptates cum consequatur officiis veritatis. Sapiente non magni repudiandae expedita laudantium illo exercitationem quis. Molestias sit sint magnam autem illum voluptatem ullam.', 1, 8717, 3, '1995-04-01 17:16:32', '1996-07-08 23:44:12');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (83, 1, 3, 1, 3, 'molestiae', 'Eum qui voluptas est natus quaerat vero et. Et non impedit esse numquam velit ab sit officiis. Eligendi tenetur temporibus expedita earum minus. Facilis aliquam repudiandae doloremque similique et.', 1, 4925, 1, '2017-08-29 05:34:27', '2017-12-18 23:04:21');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (84, 1, 2, 1, 18, 'voluptatem', 'Eum aut quidem provident repellat repellat sunt rerum autem. Quia omnis qui sed autem velit occaecati. Est quia aut odit fugiat suscipit distinctio suscipit. Sint itaque ut quod.', 1, 1339, 1, '1999-03-13 18:25:54', '2007-12-06 08:14:22');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (85, 2, 3, 2, 57, 'ut', 'Eaque eveniet eveniet numquam nemo. Aperiam beatae sed dolor labore minus est aut. Quis laboriosam et in est. Eos blanditiis libero doloremque et fugit facere libero.', 1, 6478, 1, '2008-11-18 03:20:08', '2019-06-05 17:26:38');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (86, 1, 3, 1, 77, 'perspiciatis', 'Voluptate et ut tempora quidem architecto. Fugiat cum qui maiores doloribus inventore. Temporibus non repudiandae quas illum asperiores id fugit officiis.', 1, 6898, 3, '2013-08-03 02:30:43', '1992-09-06 09:42:00');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (87, 5, 4, 1, 100, 'doloribus', 'Dolor ut id omnis perspiciatis ut aut id fugit. Recusandae quibusdam debitis modi. Facere qui ut tempora.', 1, 6628, 2, '2009-08-24 23:02:24', '1997-10-13 23:46:49');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (88, 1, 3, 2, 87, 'iure', 'Eaque provident id qui et odit. Molestiae et voluptatem eius veritatis aliquam. Distinctio non nesciunt modi illum magni.', 1, 6271, 3, '2012-01-16 22:14:31', '2016-07-17 19:07:11');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (89, 2, 5, 1, 90, 'nulla', 'Non autem et numquam quia quia at ea et. Vero provident nihil praesentium dolor optio et sapiente voluptatibus. Autem iste quo aut ut quisquam.', 1, 9039, 1, '2006-03-06 12:29:35', '1999-08-06 03:21:51');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (90, 1, 3, 2, 17, 'a', 'Quia rerum aut voluptatibus et quo laboriosam aut. Dolores dolor quaerat accusantium amet praesentium. Iste deleniti dolorem eum. Iure quis qui temporibus commodi.', 1, 8476, 2, '1989-03-03 09:14:17', '2016-01-25 20:52:49');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (91, 5, 3, 1, 70, 'ipsum', 'Et ea consequuntur qui quis maxime. Dignissimos ut quia et non sit enim. Qui impedit earum exercitationem aut. Consequuntur exercitationem enim eveniet perferendis.', 1, 9277, 3, '1995-04-07 20:21:51', '2000-10-25 22:07:03');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (92, 2, 2, 1, 91, 'odio', 'Rerum ipsum quas suscipit et expedita nulla. Et aut quo consequuntur quasi qui repudiandae. Maiores atque odit id. Pariatur fuga quidem harum eius molestias.', 1, 7991, 3, '2000-03-04 15:56:35', '2003-11-13 20:07:46');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (93, 3, 2, 2, 97, 'dolore', 'Quo inventore aliquam omnis sint velit voluptates est. Dolores voluptatem explicabo ducimus voluptates. Deleniti animi accusantium velit quis sit beatae eligendi. Sed ipsum eaque cupiditate tenetur.', 1, 4683, 2, '1990-08-25 01:36:09', '1990-05-20 22:47:42');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (94, 3, 3, 1, 13, 'voluptatem', 'Deleniti iste voluptatem totam veniam expedita doloribus aut. Laboriosam exercitationem quasi suscipit doloremque. Rerum accusamus tempore voluptate autem libero expedita. Deleniti dolores ea harum et quia perspiciatis. Alias vitae cupiditate quidem veniam voluptatibus.', 1, 1240, 1, '1997-03-10 08:36:28', '2012-09-16 09:51:08');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (95, 2, 1, 2, 53, 'quibusdam', 'Ex sunt ex quisquam culpa ut qui aspernatur. Quia molestiae et nihil vel autem voluptatem ab voluptatem. Quasi qui quis perferendis adipisci est.', 1, 1212, 1, '1974-01-23 03:58:59', '2014-05-26 20:14:40');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (96, 5, 4, 2, 19, 'dolor', 'A magni magnam ipsum ea et maxime. Saepe optio rerum sint vel laudantium eligendi. Inventore ratione necessitatibus aut nesciunt quia et. Aperiam est ab aut quia harum et. Eligendi quidem necessitatibus odio minus qui ut est.', 1, 6698, 1, '1973-02-18 03:27:16', '1993-06-11 15:04:07');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (97, 1, 4, 1, 35, 'porro', 'Est exercitationem ipsum vel ea culpa iure veritatis ex. Et corporis sit doloremque. Et omnis officiis aut aut voluptates eum. Debitis sit perferendis soluta accusantium quia et qui perspiciatis.', 1, 2807, 1, '2004-07-30 22:57:50', '1992-06-12 14:32:38');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (98, 4, 4, 1, 31, 'et', 'Quia quidem excepturi eos quo. Et qui placeat vitae fuga aut. Cumque magnam sunt voluptatem expedita non et. Voluptatem distinctio maiores aspernatur.', 1, 4026, 2, '1992-04-21 03:23:19', '2015-03-06 10:35:56');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (99, 3, 4, 2, 38, 'suscipit', 'Fuga illo earum nemo in quo soluta tempora quibusdam. Dolore est saepe et numquam consequatur qui. Omnis doloremque quo est id omnis. Velit tempore labore laborum. Vero eius dicta aliquam repudiandae.', 1, 4372, 3, '1974-06-13 21:03:15', '2001-10-15 03:19:48');
INSERT INTO `ad` (`id`, `ad_mode_id`, `ad_category_id`, `ad_product_condition_id`, `user_id`, `header`, `description`, `media_id`, `order_amount`, `ad_status_id`, `created_at`, `updated_at`) VALUES (100, 4, 1, 1, 46, 'similique', 'Sit aut ut vero et est. Ut placeat dicta voluptatum vitae in minima. Dolorum perspiciatis excepturi et eligendi. Aliquam aut voluptate facilis cum.', 1, 3312, 2, '1973-03-04 10:16:05', '1989-09-13 17:47:01');





#
# TABLE STRUCTURE FOR: ad_category
#

DROP TABLE IF EXISTS `ad_category`;

CREATE TABLE `ad_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование категории',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Список категорий';

INSERT INTO `ad_category` (`id`, `name`) VALUES (1, 'ducimus');
INSERT INTO `ad_category` (`id`, `name`) VALUES (2, 'error');
INSERT INTO `ad_category` (`id`, `name`) VALUES (3, 'harum');
INSERT INTO `ad_category` (`id`, `name`) VALUES (4, 'in');
INSERT INTO `ad_category` (`id`, `name`) VALUES (5, 'rerum');


#
# TABLE STRUCTURE FOR: ad_mode
#

DROP TABLE IF EXISTS `ad_mode`;

CREATE TABLE `ad_mode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование привелегий',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Список привелегий';

INSERT INTO `ad_mode` (`id`, `name`) VALUES (5, 'est');
INSERT INTO `ad_mode` (`id`, `name`) VALUES (3, 'occaecati');
INSERT INTO `ad_mode` (`id`, `name`) VALUES (4, 'quis');
INSERT INTO `ad_mode` (`id`, `name`) VALUES (1, 'quisquam');
INSERT INTO `ad_mode` (`id`, `name`) VALUES (2, 'voluptatem');


#
# TABLE STRUCTURE FOR: ad_status
#

DROP TABLE IF EXISTS `ad_status`;

CREATE TABLE `ad_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование состояний',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Список возможных статусов состаяний у объявления';

INSERT INTO `ad_status` (`id`, `name`) VALUES (2, 'est');
INSERT INTO `ad_status` (`id`, `name`) VALUES (1, 'pariatur');
INSERT INTO `ad_status` (`id`, `name`) VALUES (3, 'sint');


#
# TABLE STRUCTURE FOR: favourites
#

DROP TABLE IF EXISTS `favourites`;

CREATE TABLE `favourites` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор пользователя, который добавил в избранное',
  `ad_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор объявления, которое было добавлено в избранное',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Ссылка на статус объявления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Избранное';

INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (1, 1, '2018-12-03 22:31:29');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (2, 2, '1991-12-07 00:44:26');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (3, 3, '2002-07-27 00:11:27');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (4, 4, '2013-10-08 17:02:43');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (5, 5, '2010-06-19 19:40:36');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (6, 6, '2004-10-06 01:23:10');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (7, 7, '2011-08-08 15:07:15');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (8, 8, '2016-10-25 02:47:47');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (9, 9, '1970-05-08 06:14:41');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (10, 10, '1985-05-25 14:13:04');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (11, 11, '1971-08-05 00:17:22');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (12, 12, '2010-08-09 02:34:43');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (13, 13, '2017-04-08 19:06:29');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (14, 14, '1995-12-01 21:08:52');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (15, 15, '1985-05-04 12:00:03');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (16, 16, '2003-07-04 23:12:31');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (17, 17, '1973-02-04 00:15:52');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (18, 18, '1994-07-23 04:40:27');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (19, 19, '2017-11-14 03:34:14');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (20, 20, '2000-08-20 16:14:14');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (21, 21, '1973-07-19 13:15:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (22, 22, '1981-02-04 19:41:28');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (23, 23, '1981-04-30 01:51:30');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (24, 24, '2009-08-04 01:55:25');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (25, 25, '2019-02-09 18:21:30');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (26, 26, '2020-08-26 22:06:35');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (27, 27, '2001-06-17 10:02:57');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (28, 28, '1983-09-17 17:48:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (29, 29, '2001-12-31 19:24:32');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (30, 30, '1982-02-08 13:06:07');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (31, 31, '2019-10-01 14:18:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (32, 32, '2010-06-01 12:57:31');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (33, 33, '1973-09-12 23:59:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (34, 34, '1972-05-09 11:03:05');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (35, 35, '1982-06-09 08:19:23');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (36, 36, '1989-01-02 01:50:39');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (37, 37, '1996-09-12 12:58:07');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (38, 38, '1979-04-06 19:18:22');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (39, 39, '2008-03-27 20:21:34');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (40, 40, '2015-05-12 14:23:40');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (41, 41, '1971-09-04 22:33:45');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (42, 42, '1976-12-24 19:54:08');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (43, 43, '2009-12-27 17:32:42');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (44, 44, '2004-01-11 20:16:08');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (45, 45, '2015-10-26 18:11:23');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (46, 46, '2000-07-07 05:12:10');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (47, 47, '2012-02-03 19:44:58');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (48, 48, '1974-05-10 15:30:43');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (49, 49, '1984-04-10 19:27:47');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (50, 50, '1993-01-10 18:47:23');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (51, 51, '1993-01-30 07:34:42');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (52, 52, '1972-02-26 14:06:43');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (53, 53, '1992-12-07 10:20:35');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (54, 54, '2019-09-13 17:30:37');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (55, 55, '2000-11-30 04:42:45');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (56, 56, '1975-12-22 11:19:52');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (57, 57, '1970-03-04 00:00:33');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (58, 58, '2008-05-24 00:01:32');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (59, 59, '2003-10-31 18:14:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (60, 60, '1988-01-09 11:07:30');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (61, 61, '1985-11-09 17:31:41');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (62, 62, '1981-07-17 15:27:46');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (63, 63, '1994-09-08 15:47:45');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (64, 64, '2009-12-24 18:14:26');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (65, 65, '1989-07-21 05:53:10');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (66, 66, '2013-07-27 19:57:14');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (67, 67, '1988-10-01 20:19:49');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (68, 68, '1991-07-25 17:32:31');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (69, 69, '1999-09-10 23:03:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (70, 70, '2017-02-11 21:04:20');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (71, 71, '2001-04-21 11:38:40');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (72, 72, '2003-02-21 01:55:14');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (73, 73, '2000-08-19 17:33:16');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (74, 74, '1992-08-04 20:35:57');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (75, 75, '1985-11-05 22:30:29');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (76, 76, '1983-11-03 19:32:50');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (77, 77, '1989-12-30 17:54:20');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (78, 78, '1977-03-20 05:33:23');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (79, 79, '2009-11-30 21:52:02');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (80, 80, '1985-12-12 14:27:11');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (81, 81, '1995-03-22 08:11:01');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (82, 82, '2012-06-29 22:07:46');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (83, 83, '2001-12-25 05:15:21');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (84, 84, '2013-05-09 06:47:33');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (85, 85, '1995-08-04 03:10:14');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (86, 86, '1998-12-25 16:24:10');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (87, 87, '1973-06-14 13:00:20');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (88, 88, '2006-04-29 16:16:15');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (89, 89, '1984-01-31 04:37:08');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (90, 90, '2005-08-04 22:41:27');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (91, 91, '2009-06-10 08:25:51');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (92, 92, '1992-02-28 16:38:24');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (93, 93, '2000-08-19 12:38:28');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (94, 94, '1989-01-19 16:53:51');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (95, 95, '2012-12-12 00:26:22');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (96, 96, '2017-06-10 12:44:55');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (97, 97, '1997-11-03 17:07:57');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (98, 98, '1980-05-21 13:46:48');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (99, 99, '2002-05-12 11:42:39');
INSERT INTO `favourites` (`user_id`, `ad_id`, `created_at`) VALUES (100, 100, '2015-02-12 22:37:58');


#
# TABLE STRUCTURE FOR: media_files
#

DROP TABLE IF EXISTS `media_files`;

CREATE TABLE `media_files` (
  `id` int(10) unsigned NOT NULL COMMENT 'Идентификатор медиа файла',
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Not_found' NOT NULL COMMENT 'Наименование файла, который прикрепил пользователь',
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор расширения файла',
  `size` int(11) DEFAULT 0 COMMENT 'Размер файла',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'quia', 1, 205283, '1984-10-20 16:06:32', '2010-03-30 14:18:33');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'optio', 2, 2065081, '1982-10-11 12:46:51', '1973-08-06 10:06:23');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (3, 'fugiat', 3, 77139575, '1989-11-22 23:06:25', '1977-02-17 10:01:44');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (32, 'est', 4, 0, '2007-03-21 21:28:45', '2001-01-15 10:25:00');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (30, 'eos', 5, 630509402, '2007-06-03 14:41:34', '2009-10-10 18:37:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (1, 'error', 1, 95243559, '1978-10-04 08:02:43', '2019-05-11 02:16:42');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (97, 'suscipit', 2, 82, '2017-01-22 00:33:09', '2017-12-16 14:14:43');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'neque', 3, 428, '2017-02-12 17:30:00', '1992-01-15 03:11:24');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (17, 'modi', 4, 201937, '2011-08-25 23:09:24', '1997-05-03 14:48:29');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (64, 'debitis', 5, 52, '2007-09-06 17:28:24', '2020-05-04 15:38:30');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (85, 'accusantium', 1, 2554, '1983-01-17 02:09:24', '1976-02-14 09:39:26');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (75, 'voluptatem', 2, 590634390, '1981-10-24 04:10:11', '1973-06-12 22:06:45');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (15, 'modi', 3, 71311, '2002-02-19 23:59:22', '1975-09-24 00:57:29');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (83, 'earum', 4, 1, '2001-10-07 15:36:20', '2012-10-29 17:43:41');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (94, 'rem', 5, 52, '2017-11-20 21:39:55', '1972-01-18 00:39:04');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (84, 'omnis', 1, 968993, '2007-09-16 10:52:34', '2011-03-03 15:42:01');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (43, 'iusto', 2, 90382, '2002-02-23 12:25:08', '2011-11-17 11:51:35');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (19, 'qui', 3, 0, '2005-05-18 03:27:04', '2013-08-19 15:52:46');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (94, 'expedita', 4, 345349810, '2009-10-23 16:25:07', '1996-12-15 15:29:10');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'sit', 5, 25376148, '2019-04-13 14:08:25', '2004-02-05 23:36:04');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (69, 'odit', 1, 979672707, '1973-04-27 12:47:15', '1976-09-09 03:09:59');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (86, 'iste', 2, 740298, '2010-02-17 02:12:09', '1978-10-03 03:55:54');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (14, 'accusantium', 3, 4, '2011-06-20 18:29:56', '1987-04-08 05:06:30');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (58, 'corporis', 4, 387314366, '1992-10-06 23:39:50', '2019-11-17 22:20:51');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (22, 'tempore', 5, 93092879, '1986-12-11 05:07:11', '1982-01-12 09:36:49');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (19, 'ipsa', 1, 2, '2014-12-18 03:20:40', '1990-01-11 17:07:37');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (34, 'amet', 2, 66858, '1971-12-10 05:32:09', '1971-07-27 05:11:58');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (18, 'in', 3, 7, '1980-03-25 13:33:24', '2017-09-05 08:10:58');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (68, 'cumque', 4, 0, '1990-07-13 16:01:44', '2018-12-11 04:19:26');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (11, 'magnam', 5, 0, '1989-02-13 16:58:49', '2009-03-21 05:01:26');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (13, 'quisquam', 1, 94693, '1977-06-20 10:08:11', '1987-03-27 06:43:07');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'ducimus', 2, 449877, '1989-08-18 09:25:12', '1994-02-24 20:10:42');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (92, 'dignissimos', 3, 196612664, '2002-03-11 05:43:39', '1996-05-29 09:40:21');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (83, 'quam', 4, 35539114, '1992-08-21 20:13:08', '1975-07-31 02:53:02');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (80, 'illum', 5, 7, '1979-01-27 20:08:58', '1980-11-14 12:11:46');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'molestiae', 1, 9746789, '1996-01-21 03:30:27', '1971-12-27 22:05:20');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (21, 'ipsum', 2, 3060, '2013-04-26 00:37:59', '2014-04-06 22:15:02');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (31, 'recusandae', 3, 1619721, '2009-11-19 02:03:13', '1988-12-15 12:41:25');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (52, 'explicabo', 4, 0, '2019-05-17 21:06:15', '2016-02-24 08:25:27');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (17, 'sint', 5, 600, '2007-07-24 02:50:20', '1971-10-14 01:40:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (88, 'praesentium', 1, 35877, '2017-08-24 20:13:01', '1970-08-28 04:08:24');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (52, 'itaque', 2, 84, '2008-12-10 08:44:40', '2019-04-24 12:00:25');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (19, 'at', 3, 24250, '2016-05-13 15:22:47', '1990-06-25 10:31:17');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (59, 'enim', 4, 285964, '2014-04-19 10:51:29', '1994-09-06 05:40:57');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (94, 'ipsa', 5, 4601, '2011-10-29 10:44:18', '1975-11-23 11:09:04');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (67, 'nam', 1, 27151, '1990-06-23 08:13:30', '1996-03-25 13:57:01');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (2, 'nam', 2, 678355, '1990-09-26 03:56:31', '1995-12-17 02:48:41');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (20, 'rem', 3, 181, '1991-06-23 05:17:07', '2001-08-17 20:32:33');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'deserunt', 4, 6, '2009-03-18 17:27:55', '2008-07-28 20:22:58');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (32, 'optio', 5, 1430117, '1991-12-17 06:07:30', '2015-05-24 19:22:49');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (18, 'natus', 1, 24, '1981-07-24 20:42:54', '2016-02-24 02:51:00');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'voluptas', 2, 0, '1974-08-08 19:37:16', '2016-03-26 16:51:36');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (53, 'vero', 3, 0, '1978-10-03 11:12:32', '2020-09-10 16:33:27');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (1, 'quia', 4, 905, '1985-09-21 04:12:25', '1976-07-06 14:48:58');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (8, 'qui', 5, 6039077, '2009-03-10 21:38:23', '1978-02-14 23:08:55');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (95, 'aspernatur', 1, 424069, '2015-09-08 03:13:56', '2013-08-25 08:20:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (33, 'officia', 2, 52, '2016-05-17 07:44:34', '2003-06-10 15:59:56');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (27, 'at', 3, 2559, '1977-10-09 22:24:50', '2009-02-03 18:31:02');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (9, 'aut', 4, 32, '1976-09-03 20:03:32', '1980-10-26 03:27:03');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (1, 'enim', 5, 96, '1974-10-04 03:29:42', '1983-01-12 01:23:20');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (13, 'eum', 1, 0, '2009-10-02 05:17:40', '2005-09-25 14:23:46');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (60, 'est', 2, 106, '1980-04-29 02:01:43', '1989-02-02 11:11:03');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (53, 'molestiae', 3, 200, '1980-03-06 15:12:34', '2020-05-15 10:31:31');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (43, 'quis', 4, 3, '1986-06-01 15:09:52', '1995-05-05 01:31:12');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (97, 'qui', 5, 101141385, '1981-03-29 02:37:20', '1996-04-17 14:53:45');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (5, 'consequatur', 1, 0, '2009-09-14 19:23:46', '1998-08-17 16:49:16');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (84, 'maiores', 2, 700415805, '2002-07-21 02:35:12', '1973-03-22 19:15:59');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (93, 'impedit', 3, 81380359, '2008-06-02 23:39:26', '2004-09-17 01:30:38');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (88, 'accusantium', 4, 961001502, '1978-05-04 12:46:59', '2014-04-13 07:21:37');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (25, 'assumenda', 5, 38571192, '2015-09-27 07:42:52', '1992-01-11 03:31:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (27, 'quia', 1, 73871202, '1996-08-27 18:11:49', '1996-02-19 01:26:34');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (81, 'molestiae', 2, 136654482, '2015-08-15 06:07:01', '1971-04-12 03:42:08');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (76, 'vel', 3, 9, '2016-06-26 21:42:08', '1988-09-21 01:40:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'ea', 4, 26868132, '2007-03-18 13:49:54', '1997-12-05 20:24:43');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (95, 'et', 5, 342, '1999-07-12 10:31:01', '1981-09-21 00:45:19');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'accusamus', 1, 472108120, '1985-06-20 07:37:32', '1984-10-01 11:23:35');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (9, 'suscipit', 2, 422570, '1990-10-18 00:18:40', '2016-09-01 02:14:19');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (92, 'vero', 3, 23830395, '2003-12-10 20:46:22', '1997-06-21 02:31:31');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (47, 'perspiciatis', 4, 591, '1984-10-02 02:26:06', '1991-06-29 05:48:47');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (81, 'autem', 5, 345115168, '2009-12-04 03:26:52', '1987-05-20 09:07:36');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (71, 'qui', 1, 365166, '1990-10-15 12:49:05', '1982-11-13 11:51:08');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (8, 'quos', 2, 1, '2016-11-29 09:46:24', '2003-06-26 02:01:33');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'quod', 3, 4122793, '1985-10-04 08:04:11', '2001-05-04 01:21:19');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (45, 'ea', 4, 684167989, '2016-08-14 06:26:59', '1986-10-05 16:42:18');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (51, 'eligendi', 5, 3956, '1989-07-10 05:02:51', '1988-07-20 00:44:46');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (38, 'recusandae', 1, 631983, '1986-01-04 17:29:52', '1973-07-10 21:11:24');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (83, 'et', 2, 194, '2007-11-26 06:05:53', '2017-01-28 04:29:13');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (39, 'sed', 3, 8945244, '1996-03-05 07:36:41', '1991-07-01 16:05:12');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (13, 'unde', 4, 437386437, '1983-10-19 02:39:51', '2007-10-01 09:06:51');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (49, 'voluptatem', 5, 2309, '1974-04-04 18:51:22', '1995-06-08 10:49:08');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (94, 'nemo', 1, 4971621, '2019-09-06 17:10:20', '1981-11-07 05:42:33');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (85, 'ut', 2, 0, '1985-12-29 00:58:02', '1997-06-22 10:22:16');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (17, 'sapiente', 3, 345, '1970-08-28 07:37:33', '2008-12-25 02:48:37');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (48, 'molestias', 4, 188, '1998-07-24 15:06:19', '2011-09-09 01:06:38');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (59, 'enim', 5, 698582, '1991-08-06 11:50:37', '1992-06-21 23:33:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (22, 'facilis', 1, 98, '2016-11-08 11:44:35', '1978-09-27 05:04:27');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (46, 'rem', 2, 2, '1995-11-10 07:18:21', '2010-01-23 09:17:03');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (27, 'est', 3, 21267509, '2018-04-07 13:37:34', '1996-04-27 23:44:04');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (94, 'saepe', 4, 56, '1988-02-29 22:56:12', '2017-09-04 03:27:32');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (92, 'magni', 5, 0, '1985-08-18 06:42:33', '1989-10-21 04:59:56');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'facere', 1, 302, '1995-09-14 01:55:29', '1973-03-21 06:58:46');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (56, 'tempore', 2, 858444714, '1994-05-23 10:13:01', '1988-02-23 20:47:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (87, 'quis', 3, 75, '1988-05-27 03:45:02', '2005-03-18 03:10:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (63, 'quo', 4, 17, '1999-06-22 20:32:03', '1986-12-02 17:33:35');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (21, 'velit', 5, 605421, '2002-02-28 17:49:03', '1973-08-16 14:58:28');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'quia', 1, 95644338, '1984-06-24 17:38:06', '1981-11-13 02:13:40');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (45, 'dolores', 2, 43754, '1992-09-22 08:02:53', '1993-05-21 11:57:25');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (16, 'et', 3, 44694, '1994-12-18 16:55:10', '2008-12-22 02:43:22');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (20, 'expedita', 4, 9868, '2015-05-24 11:02:58', '1978-11-02 18:52:15');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (78, 'et', 5, 9, '1996-08-13 01:00:11', '2006-04-01 10:37:39');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (11, 'et', 1, 615808968, '1996-07-08 17:46:58', '1993-03-19 06:13:02');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (29, 'reiciendis', 2, 58, '1988-03-19 10:42:05', '1995-08-12 03:22:11');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (49, 'distinctio', 3, 48144, '1987-04-26 13:56:33', '2018-12-14 05:19:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (36, 'aut', 4, 847138041, '2018-04-06 19:42:02', '1998-01-22 11:25:42');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (57, 'modi', 5, 600569995, '1981-01-11 15:48:32', '2013-04-25 18:40:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (35, 'voluptate', 1, 8631710, '1984-10-29 08:56:21', '2000-05-12 09:16:32');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'dolorem', 2, 949583407, '1974-02-26 17:20:41', '2004-06-17 22:45:30');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'tenetur', 3, 644000, '1973-06-25 06:45:36', '2018-01-20 04:01:28');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (91, 'doloribus', 4, 6282138, '1994-04-23 10:35:41', '2005-07-12 16:05:05');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (66, 'at', 5, 2, '1972-03-18 21:17:05', '1978-03-21 21:28:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (60, 'aut', 1, 71617339, '2008-10-25 17:16:29', '2004-05-24 17:23:10');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (99, 'impedit', 2, 63922, '1975-02-03 05:37:50', '1973-11-18 13:40:21');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (91, 'ad', 3, 7447414, '2001-11-07 06:24:58', '2004-08-23 09:39:31');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'magni', 4, 1839522, '2006-03-01 07:19:58', '1986-03-17 21:42:29');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (22, 'deleniti', 5, 4267992, '2005-03-06 17:19:27', '1998-06-13 05:14:16');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (31, 'rem', 1, 903745638, '2018-05-04 21:43:55', '1973-06-26 07:40:58');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (20, 'soluta', 2, 6, '2012-02-29 04:39:43', '1986-07-14 14:21:42');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (48, 'autem', 3, 233229821, '2003-08-23 15:28:26', '2002-06-16 03:57:08');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (70, 'error', 4, 9121, '1985-12-24 22:33:09', '1989-04-19 00:35:26');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (48, 'vero', 5, 0, '2012-10-25 19:02:46', '1988-01-12 11:25:17');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (95, 'sit', 1, 657, '1981-12-29 03:31:17', '1973-01-03 08:34:01');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (73, 'aut', 2, 9, '1990-01-22 02:23:24', '1991-06-04 00:26:59');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (49, 'totam', 3, 7439, '2019-03-18 04:42:21', '2014-07-26 18:35:31');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (5, 'quas', 4, 568, '2004-06-01 14:31:35', '2006-05-11 09:41:14');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (3, 'in', 5, 84, '1972-10-20 01:06:23', '1976-05-21 09:02:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (12, 'et', 1, 74, '1974-11-20 09:27:31', '2018-11-10 20:54:59');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (78, 'expedita', 2, 8662, '2013-05-27 10:17:45', '2009-08-31 04:44:39');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (85, 'qui', 3, 181319300, '2009-09-02 23:11:38', '1980-03-06 18:02:07');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (15, 'voluptatum', 4, 5, '1986-04-23 07:16:46', '1982-11-03 10:30:51');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (17, 'magni', 5, 0, '2001-11-26 07:36:46', '1988-10-27 20:59:24');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (93, 'deleniti', 1, 1020, '1996-11-19 18:58:27', '1974-07-06 04:03:12');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (91, 'debitis', 2, 3, '1980-08-21 16:28:27', '1998-06-18 09:51:28');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (54, 'et', 3, 228, '2017-11-10 17:37:01', '1989-12-31 19:03:21');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'similique', 4, 80621122, '1970-01-11 04:46:13', '1970-10-10 07:58:31');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (21, 'quis', 5, 6, '2007-06-20 13:47:29', '1992-06-03 11:32:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'sit', 1, 208598, '2016-03-27 11:02:02', '1974-02-12 15:18:17');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (24, 'doloremque', 2, 9, '2014-09-12 14:17:12', '2015-01-02 15:37:17');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (32, 'perferendis', 3, 77414408, '1989-05-26 16:15:00', '2002-04-06 03:23:23');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (52, 'fugiat', 4, 185627, '2011-05-24 14:13:30', '2016-05-11 16:51:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (70, 'mollitia', 5, 7, '2004-02-03 06:40:00', '1974-01-24 13:15:45');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (52, 'voluptas', 1, 69500, '2006-08-15 16:50:19', '1972-04-02 01:36:58');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (66, 'non', 2, 2, '1995-10-27 15:27:03', '2015-08-22 12:27:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (55, 'alias', 3, 990662099, '1999-10-21 23:15:22', '1994-10-15 01:35:03');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (91, 'laborum', 4, 72, '2004-04-09 18:24:57', '1995-09-22 19:50:11');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (26, 'molestias', 5, 513088432, '2009-07-02 13:07:46', '1972-09-04 07:06:17');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'molestias', 1, 0, '2007-03-03 13:07:42', '1993-02-27 23:41:25');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (63, 'deleniti', 2, 0, '1984-08-08 13:59:55', '1979-10-19 16:37:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (57, 'atque', 3, 82879431, '1996-12-19 11:00:07', '1975-10-06 05:45:11');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (73, 'rerum', 4, 9541009, '1971-04-03 23:41:38', '2020-10-27 10:39:45');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (53, 'iusto', 5, 7893853, '1982-09-18 05:10:53', '1984-09-01 18:31:39');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (63, 'culpa', 1, 2796164, '1978-03-12 22:41:58', '1980-10-07 19:38:28');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (61, 'minus', 2, 89, '1996-10-30 21:18:47', '2007-05-13 12:54:11');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (13, 'voluptatum', 3, 46, '1997-03-03 06:47:46', '2007-01-04 05:51:38');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (59, 'placeat', 4, 0, '2016-07-27 17:16:56', '2007-04-21 13:02:42');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'magni', 5, 21, '2009-01-26 00:46:10', '2020-03-12 23:44:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (89, 'aperiam', 1, 8, '1972-10-03 18:44:12', '2009-04-14 06:09:28');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (49, 'est', 2, 0, '2006-04-03 21:59:11', '1973-07-25 20:06:01');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (20, 'dolor', 3, 127, '1982-04-24 17:07:59', '1993-03-11 20:37:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (62, 'aut', 4, 0, '1996-08-25 21:48:48', '2006-12-14 10:04:38');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (12, 'corrupti', 5, 3, '1977-10-03 04:46:19', '1991-06-22 20:49:23');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (69, 'reprehenderit', 1, 525, '1974-04-02 18:51:49', '1994-11-18 11:40:04');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (16, 'sed', 2, 1, '1999-03-29 03:50:40', '2012-01-03 04:47:13');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (77, 'aut', 3, 0, '2007-06-30 06:37:10', '2020-05-09 04:49:10');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (67, 'et', 4, 958, '1974-02-15 05:56:04', '2015-04-15 20:28:20');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (59, 'architecto', 5, 65, '1991-11-21 03:47:19', '2018-09-17 18:00:33');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (72, 'temporibus', 1, 0, '1973-01-22 19:23:46', '2016-02-26 00:43:30');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (37, 'reprehenderit', 2, 533275542, '2020-09-01 18:11:59', '2004-10-06 07:57:52');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (8, 'enim', 3, 6107, '2018-06-12 06:49:07', '2012-06-20 11:39:47');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (50, 'aut', 4, 1, '1972-12-06 15:55:29', '2009-02-05 20:36:12');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (27, 'maiores', 5, 0, '2017-03-18 22:51:03', '1996-02-18 17:42:26');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (56, 'aperiam', 1, 2, '2005-09-21 01:51:08', '1971-07-13 08:30:29');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (88, 'ut', 2, 1200614, '1995-01-08 02:42:10', '1972-06-09 02:35:16');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (82, 'quae', 3, 613996, '2019-07-23 07:19:53', '1997-09-22 18:31:18');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (64, 'repellat', 4, 39867626, '2003-06-16 13:03:24', '2018-06-29 20:47:21');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (46, 'necessitatibus', 5, 3467, '1983-08-11 16:00:21', '2003-06-27 07:38:59');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (38, 'consectetur', 1, 920611, '2017-07-17 11:52:37', '1980-04-16 11:09:16');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (13, 'magnam', 2, 98528, '2004-02-03 09:11:04', '2009-08-02 13:38:57');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (67, 'nesciunt', 3, 684, '1983-07-04 05:39:57', '1977-05-23 01:24:07');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (39, 'omnis', 4, 441779069, '1979-07-26 15:07:22', '1973-08-16 17:12:47');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (74, 'iure', 5, 4686, '2013-07-26 10:52:49', '1988-02-17 05:20:09');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (63, 'sed', 1, 2594907, '1986-06-03 23:44:35', '2000-09-04 09:06:51');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (43, 'et', 2, 5127824, '2007-06-24 00:09:35', '1996-06-09 12:14:26');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (41, 'nihil', 3, 8112, '1971-06-06 03:58:34', '2020-11-07 11:40:24');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (9, 'voluptatum', 4, 0, '1987-06-21 06:00:29', '1986-09-18 21:56:51');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (95, 'dolorum', 5, 8, '1974-10-06 11:45:13', '1990-06-09 14:22:53');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (90, 'ipsam', 1, 4, '1993-11-07 16:20:08', '1991-04-22 07:33:04');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (48, 'voluptas', 2, 5817, '1978-09-18 14:30:55', '2017-08-14 14:03:18');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (36, 'accusantium', 3, 587285805, '2017-04-02 17:19:45', '2009-09-14 12:16:42');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (15, 'a', 4, 20161956, '2014-11-05 14:07:17', '2015-04-18 22:16:00');
INSERT INTO `media_files` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (66, 'ipsum', 5, 31502976, '1975-06-04 11:52:57', '2015-02-12 19:03:16');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор расширения медиафайла',
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование расширения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Тип медиа контента';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'commodi', '1985-06-02 05:55:40', '1984-06-17 06:58:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dolores', '1987-09-23 19:28:19', '1979-03-11 04:39:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aut', '1979-10-12 15:15:56', '1974-04-15 08:02:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dignissimo', '2014-01-21 16:18:10', '1984-10-10 21:26:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'voluptas', '1972-12-27 04:36:02', '2009-07-18 12:06:48');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор отправителя сообщения',
  `ad_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения. Идентификатор объявления',
  `body` text COLLATE utf8_unicode_ci COMMENT 'Текст сообщения',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Ut voluptas fugit id harum aut alias. Voluptate eos dicta veritatis quibusdam sint sed voluptas voluptas. Voluptatem veniam perspiciatis eveniet non explicabo. In officia voluptas minima laborum rerum saepe cum autem.', 1, '2001-08-02 00:44:56');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Ipsa aperiam qui ipsa est animi qui quo. Illum consequatur quia quos aut temporibus quidem dolor. Ullam dolores consequuntur illo voluptatem blanditiis.', 0, '2016-09-05 13:00:18');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Aut unde quis dolorum et quia eum cumque ea. Et enim a quod ab. Numquam non fuga vel et deserunt harum eveniet.', 1, '2020-01-29 02:50:28');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Sunt voluptatem commodi unde ut omnis velit quos. Et voluptas voluptatem rerum occaecati sunt est rerum. Occaecati rerum quas sed ea quia iure consequatur.', 0, '2008-05-19 10:46:38');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Ipsum dolores soluta tenetur magni explicabo exercitationem. Rerum facere consectetur sed et velit nam. Et et eum explicabo sit animi dolor inventore. At unde ab quibusdam.', 0, '2011-02-21 22:03:21');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Saepe fugiat corporis consequatur pariatur ut quia quia. Facere quo iste aut libero. Amet dolores debitis et rerum minus odio iste. Error quam maiores cumque et inventore ea sed.', 1, '2014-10-02 18:04:02');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Laboriosam vel quo vel quia. Officia qui eum in expedita. A numquam nihil alias neque consequuntur facere rerum.', 1, '1984-10-19 18:47:45');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Quasi laborum voluptatem et aut fuga. Perspiciatis odio itaque et ullam eum exercitationem aspernatur rem. Consequatur consequatur qui aliquam ea aliquid. Non exercitationem praesentium optio deleniti ea.', 1, '2001-02-28 03:57:31');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Sed nihil veniam dolor ipsum consequuntur consequatur doloribus. Ratione aut quia corrupti veritatis laboriosam. Sit repellendus sit est et accusamus.', 0, '2001-01-22 03:42:20');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Velit laboriosam ad et nulla. Nulla repellendus voluptas placeat voluptas. Non saepe est et quia voluptatem occaecati. Beatae sint cum et officia perspiciatis voluptatum.', 0, '1988-11-27 18:34:38');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Dolor voluptates quo excepturi fugiat. Ut dolorum quis dignissimos. Itaque enim ut minima ut blanditiis velit.', 0, '1973-03-18 02:29:26');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Nihil reiciendis praesentium officiis aut consequatur. Voluptates rem ex amet omnis.', 1, '2006-06-26 23:24:38');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Sequi illum asperiores vel eum debitis minus magni aut. Rerum rerum vel atque ducimus earum ut qui. Alias cum vel ut et ullam.', 0, '1982-12-19 07:35:20');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Et dicta laborum recusandae dolor eos ipsa. Aut est laborum corrupti temporibus alias qui in. Aut soluta omnis est maxime consequuntur ex nam dolorem.', 0, '2011-05-08 03:56:18');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Est ut id aut debitis sit quod. Ut quia et vero vero. Accusamus voluptatem corrupti velit illo eligendi repellat sunt.', 1, '1989-01-08 06:00:02');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Maxime omnis consequatur aspernatur repellendus. Voluptatem ut sit tenetur quia possimus. Maiores ut ea omnis quia dolor exercitationem suscipit.', 0, '2007-01-04 21:10:03');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Qui nisi sunt eligendi voluptatem laboriosam sequi. Dolores ipsam qui incidunt est est incidunt. Fugit dolores voluptatibus provident cupiditate molestiae.', 1, '1970-09-10 05:15:28');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Assumenda est rem sed maxime facilis consequatur. A consequatur velit quisquam omnis inventore. Eligendi repellat enim repellat saepe ducimus autem excepturi.', 0, '1971-03-07 01:17:03');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Sunt veritatis praesentium et voluptatem. Soluta quis deleniti harum consequatur voluptatem explicabo ipsam. Deleniti qui animi aut nulla dolorum.', 1, '1992-08-11 22:53:56');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Officia cum molestias cum inventore mollitia repudiandae et alias. Praesentium est nobis modi impedit dignissimos. Numquam aut fuga rem soluta. Vero sit rerum a sit et eligendi architecto. Quam earum pariatur eveniet blanditiis at dolorum.', 0, '2015-11-01 05:44:56');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Voluptatem consectetur odit eos perferendis aspernatur ut nisi. Quia omnis nulla dolores aut temporibus. Sapiente reiciendis consequuntur recusandae. Rem perferendis similique facilis.', 0, '2011-08-10 06:25:59');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Deserunt perspiciatis quo labore reprehenderit quia. Eveniet est autem tempora autem asperiores voluptas voluptatem. Hic et culpa nobis commodi illum eum sed.', 0, '1990-04-05 16:12:04');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Saepe est magnam qui omnis itaque. Nulla laboriosam sequi recusandae consequatur quidem.', 0, '2011-02-04 12:42:49');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Magni quos voluptatem et assumenda cum rerum. Autem hic est voluptatibus sed vel. Aut odio earum incidunt recusandae repellat aliquam est.', 1, '1972-03-05 11:18:52');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Voluptatem qui est et voluptatum aliquid. Nulla consequuntur eaque omnis ea. Ipsam laboriosam et asperiores quos quae.', 0, '2008-08-18 11:59:34');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Sed qui est magnam. Eos omnis a sed. Sunt quia maiores quo fugit nulla consequuntur qui labore. At aliquid quo dolores alias.', 1, '2018-10-01 20:13:52');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Itaque debitis atque aut autem veritatis rerum. Hic totam eveniet officiis perspiciatis voluptas nihil beatae. Ea voluptatibus sed animi qui dolores totam quasi.', 0, '1972-10-15 07:52:29');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Dolorem eaque iure est hic. Sit est sed dolores non corporis. Omnis in sint recusandae nobis. Unde similique aperiam modi eum dolorem ut.', 1, '1975-07-30 15:18:12');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Laborum et dolores autem ipsam accusamus voluptates. Ab est est voluptatem. Soluta id sed sed autem. Molestiae ut sunt perspiciatis impedit sed et nisi.', 0, '1993-12-26 10:22:51');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Dignissimos voluptate qui magnam similique dolorem. Et animi aut ea molestias qui. Fuga molestias dolor ipsum dicta odio veniam ratione et.', 0, '1996-02-15 01:05:00');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Modi sapiente accusamus quia et sint omnis. Veritatis ipsum laudantium dicta esse sit ex. Delectus a cumque illo debitis. Voluptas quia harum perspiciatis assumenda sed. Non unde ipsam autem aut non sunt ratione.', 0, '1989-10-21 07:50:22');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Explicabo voluptatem aut provident ratione. Ea deleniti magni eligendi aut a ducimus exercitationem. Aut veritatis ex et earum dolorem facere inventore. Nesciunt sunt quasi possimus quasi sed asperiores.', 0, '1994-01-23 07:53:08');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Ab ut cupiditate consectetur nulla. Nemo voluptatem modi doloribus enim perferendis exercitationem iure. Maxime quibusdam facilis qui.', 0, '1987-06-16 02:11:36');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Nemo et neque architecto illo cupiditate ut possimus. Aut fuga ipsum quo perspiciatis. Voluptas mollitia consequatur voluptates. Consequatur atque vitae facere dolorem. Quasi repellendus aut tempora dolores accusamus fugit facere facilis.', 1, '2015-06-10 00:25:44');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Iusto sit tenetur dicta est aut rerum facilis. Officiis consequatur qui et voluptatum repellat fuga. Et dolor animi dolores error ea.', 1, '1974-03-11 19:12:40');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Sed voluptatem odio dolor id velit tempora. Reprehenderit iste officiis suscipit et sunt quo molestiae. Distinctio aliquam animi ipsam dolores quasi magni tempore quia. Quod voluptatem ut dolor ut.', 0, '1973-03-19 05:13:21');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Ratione est voluptatem inventore similique. Totam cum expedita occaecati velit officia rerum dicta dolor.', 1, '1973-11-20 04:19:37');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Perferendis similique eos in sit dicta magnam. Amet fuga repudiandae totam voluptatem autem. Expedita magnam iste praesentium ipsum voluptates officiis. Doloremque debitis non ducimus.', 1, '2012-08-31 08:08:18');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Sed quod incidunt dolores et nihil odio ipsa. Quo neque consequatur ducimus enim. Voluptate qui praesentium maxime illo omnis. Earum sequi neque minima fuga harum quam numquam. Nobis veritatis vel qui.', 1, '2004-06-14 04:42:29');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Aut totam dolores qui. Laboriosam dolor in nihil cumque voluptas eveniet dicta. Est laudantium et aut qui. Qui pariatur modi consequuntur aliquid dolor.', 0, '2012-11-08 15:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Et sequi ut et est. Et deleniti aut necessitatibus animi excepturi hic. Vel dicta explicabo beatae odio quam.', 0, '2007-09-16 10:46:55');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Blanditiis voluptas culpa sint corporis velit. Voluptas dolor autem et voluptatem ex quaerat ut. Tempora earum beatae omnis quia amet. Dignissimos dolores molestiae eos facilis perspiciatis autem aut. Rem voluptatem assumenda qui non deserunt reiciendis.', 1, '1999-04-22 03:45:20');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Non sed velit aliquam. Quibusdam sit recusandae deleniti eius rerum atque. Rerum sed est odit quis iusto. Tempora eligendi recusandae cum similique odio molestiae ut.', 0, '2010-06-28 19:39:51');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Sunt laboriosam fuga odit dolorum hic laborum. Vel animi quidem facilis. Non vel nemo necessitatibus corrupti.', 1, '2001-03-19 22:33:44');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Cum perferendis tenetur enim quia. Deleniti mollitia in et autem. Ipsa eveniet impedit neque amet asperiores facilis voluptas.', 1, '2017-07-10 05:05:45');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Voluptatibus ipsa dolorem eaque repellendus magni magnam praesentium. Ratione cupiditate magnam a laboriosam repellat eaque magnam labore. Sequi ut voluptates deserunt voluptatum mollitia. Provident velit itaque explicabo hic incidunt iusto nihil. Delectus mollitia tenetur placeat veritatis voluptas sunt.', 1, '2016-12-07 14:43:46');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Iste odit laudantium commodi qui. Delectus tempora et alias numquam maiores. Omnis et enim culpa in dolorem consequatur at aliquid. Dolores autem perspiciatis alias et perferendis. Porro et voluptas fugit earum harum corporis.', 0, '1974-06-27 03:27:48');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Excepturi enim ducimus qui eum delectus autem. Assumenda repellendus omnis magni veritatis voluptates doloremque. Voluptatum sed et ut optio. Maxime doloremque voluptatem totam sit laborum ducimus.', 1, '1980-12-27 13:52:12');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Aperiam ducimus ea in quo explicabo. Natus illum eum et sint quis. Similique sunt praesentium ut aut sint est delectus facere.', 0, '1971-07-28 14:01:30');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Incidunt illum et veniam atque doloremque. Enim ut ipsa voluptatum qui dolorum. Et rerum quo id esse repellendus distinctio. Voluptatem dolorem ratione qui.', 0, '2002-12-15 22:16:23');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Eius alias a ea ipsa. Est sed consectetur nobis ut est repudiandae debitis. Aperiam eos quisquam enim.', 0, '1987-02-14 11:16:12');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Sunt eos et impedit omnis nihil. Quo dolorem omnis aut explicabo. Sunt aut ea enim.', 1, '1979-05-21 06:03:25');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Hic quo corporis dolorum aut. Laborum sit ipsum id corporis culpa perferendis molestiae. Non qui aspernatur nihil adipisci dolor alias molestiae. Soluta ea itaque veniam quisquam et consequatur.', 0, '2015-01-08 21:40:54');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Et sit mollitia blanditiis quia. Ducimus repellat iusto deleniti exercitationem nam quos. Et vel sint velit. Praesentium est architecto quis et.', 1, '1991-11-02 03:13:40');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Aut rerum repellendus eum ipsam consequatur. Eos commodi tenetur nobis nemo minima. Est exercitationem quod doloribus quia omnis eveniet quam.', 0, '2017-02-21 06:34:05');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Nisi doloremque aut pariatur vitae accusantium quo hic omnis. Aut similique exercitationem consequuntur eos omnis. Optio quod ipsa dolor dignissimos molestiae natus ut. Est cupiditate assumenda excepturi sint.', 1, '2009-03-13 13:36:19');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Consequatur et reiciendis aut sed corporis. Sint culpa temporibus rerum eligendi ipsam voluptate. Id dolorem eos est iusto nihil. Esse nobis officia corrupti est suscipit.', 1, '1972-04-19 10:55:29');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Adipisci nihil voluptas debitis velit. Omnis animi officia voluptate. Nihil excepturi sit quos omnis non sit. Molestias accusantium ipsum reprehenderit aut.', 1, '2008-03-27 21:00:39');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Impedit reiciendis cupiditate officia quo sint earum consequuntur nesciunt. Laboriosam sed dolore omnis qui. Ea labore nesciunt maiores laborum dolores neque repudiandae.', 0, '2003-12-08 04:09:06');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Doloremque quia ea omnis saepe est. Omnis neque aut perspiciatis vitae quis natus. Nesciunt qui est impedit incidunt tempora. Nam neque tempora non non magnam reprehenderit cum aut.', 0, '1983-05-22 17:02:00');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Est ea animi voluptates laboriosam. Voluptas mollitia qui aut exercitationem vero quia. Libero amet perferendis vero dolore.', 0, '1975-11-17 05:23:23');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Provident aperiam quibusdam eum dicta omnis ducimus et. Eos ratione eum repudiandae optio. Vero veniam tempore aut.', 1, '2003-05-19 22:40:15');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Quos ipsum aut nemo dolorem aut ut ad. Et omnis error maxime. Quibusdam et dolorum id quia.', 0, '1970-12-17 03:56:22');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Iste culpa eos deserunt aut fugit et. Aperiam velit provident nisi dolorum repellendus odit et. Sunt et molestiae quia doloribus corporis maxime voluptates et. Beatae consequuntur in iste.', 0, '2010-10-21 14:53:07');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Sit neque ut et fugit. Nihil nemo fugit sit. Eveniet enim quod ipsa consequatur voluptas ipsum aut.', 1, '1977-06-25 04:23:34');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Est debitis quam adipisci ipsum suscipit officiis consequatur. Hic provident rem tempore nemo velit. Deserunt non quos ullam officia.', 0, '1999-05-28 04:44:40');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Cum non sit pariatur odio doloremque recusandae aliquam. Adipisci delectus rem tenetur rem sit rerum. Est aut non eos vitae libero expedita placeat. Placeat omnis autem omnis eaque aut. Ea velit aperiam enim.', 0, '1997-08-17 08:00:10');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Odio reiciendis tempore hic voluptatem. Consectetur ea totam rem molestias soluta. Et hic recusandae iusto natus ipsum nam et. Consequatur consequatur aut esse labore occaecati facilis voluptatem.', 0, '1986-08-16 14:23:43');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Quaerat impedit assumenda non dolore et. Cumque totam corporis mollitia et eum nostrum. Necessitatibus sed laborum unde dolorum. Voluptatem corrupti enim quod ad voluptatum maxime aut consequatur.', 1, '1982-03-04 10:26:54');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Odit quaerat qui veniam perspiciatis repellat consequatur. Voluptas culpa nobis qui in adipisci vel pariatur. Libero molestias sed nisi ullam quo qui pariatur mollitia. Magnam in nihil reiciendis.', 0, '2014-12-05 05:58:25');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Dolorem recusandae molestias ut beatae saepe sunt corrupti. Alias possimus fugiat fuga deserunt quibusdam et autem voluptate. Sunt et quia nihil cupiditate explicabo commodi assumenda. Cupiditate ut qui alias dolor amet.', 1, '1992-11-05 14:49:53');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Dolor asperiores dolorum ut laborum ab dolorem labore iusto. Eum aspernatur consectetur sequi ipsum est commodi exercitationem quisquam. Enim accusantium vel est aspernatur. Non non placeat veniam harum quia id aut.', 0, '1985-05-15 05:31:00');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Rerum debitis dolores dolorem ut voluptates voluptate dolorum ut. Libero ut aut voluptas iusto saepe id. Voluptates amet sunt aut. Enim aspernatur ea et maxime qui eos.', 1, '1997-09-26 12:49:02');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Dignissimos et accusantium non neque error nisi. Aut alias mollitia magni modi inventore qui autem. Aut vel ut nostrum quis aliquam expedita rerum. Et ratione ab blanditiis veniam qui dolor aut.', 0, '1981-11-05 22:37:22');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Eos similique architecto eaque enim. Modi cum esse ea modi commodi. Rerum recusandae facere quos aut consequatur error sapiente. Ducimus officia porro vel sit omnis. Dolor maiores quod nulla voluptates sunt cumque corporis.', 0, '2015-09-11 16:25:20');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Rerum dolores molestiae ad numquam earum et quam. Molestiae quas dolore in asperiores. Et assumenda odit quo. Quia deleniti nobis ad sit accusantium porro eos.', 1, '2000-04-29 16:01:40');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Eius ut sit illum iusto nam tempora. Commodi velit exercitationem aspernatur sequi. Vitae nesciunt voluptatum dolor non fuga laborum nobis voluptas.', 0, '2005-11-18 18:23:18');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Ut debitis quae ut totam sed ipsam. Et aspernatur dolorum nostrum inventore. Est natus sit recusandae enim consectetur quisquam. Quia sunt magnam suscipit inventore.', 1, '1974-01-01 09:28:24');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Ea hic ut inventore recusandae quisquam rerum quia. Aut doloremque sequi ut. Quo quia alias accusantium. Facere aut dolore veniam ut est explicabo. Praesentium asperiores numquam a voluptas reiciendis.', 1, '1983-12-16 01:57:41');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Labore numquam cum reiciendis aut asperiores. Ullam aut pariatur ut consequatur non. Labore minus non numquam quam qui qui. Amet iusto repudiandae natus blanditiis dolorum aspernatur et. Corporis voluptas quis natus.', 1, '1970-01-21 11:26:16');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Asperiores soluta consequatur molestias veritatis. Deleniti voluptates eum voluptatem voluptas quasi. Ut dolorem sapiente est reprehenderit aut ut. Praesentium ducimus est maxime aperiam quod.', 0, '1988-10-05 00:44:43');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Voluptatem incidunt exercitationem sit molestiae vel. Assumenda a vel distinctio qui. Nisi quia libero neque natus vero et sint quia.', 0, '1982-04-17 01:24:33');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Aut sunt aliquam quas beatae doloribus ipsam. Voluptates qui officiis culpa. Itaque iusto consectetur iste doloribus beatae.', 1, '1971-08-29 22:43:02');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Ad perferendis consequatur temporibus reprehenderit exercitationem nihil perferendis. Accusamus voluptas facere ullam ut soluta. Similique atque quibusdam quas voluptatibus.', 1, '1976-10-01 01:27:56');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Id earum nesciunt voluptatem. Nulla quia voluptatem culpa qui tempore dolor consectetur. Architecto nihil iure aut iusto cumque debitis.', 0, '1994-05-20 12:46:18');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Ad ut nisi consectetur. Voluptatem assumenda harum enim. Asperiores officiis consequatur rerum assumenda eum est ipsa iusto.', 1, '1991-06-11 18:30:57');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'At incidunt saepe consequatur voluptate. Qui et nisi debitis. Nobis modi facilis sit et itaque vel odio aperiam. Delectus voluptates repellat voluptatibus aspernatur vitae vitae reprehenderit.', 0, '1997-10-10 17:13:50');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Dolor qui voluptatem aliquam explicabo. Veniam consequuntur voluptas quia quas molestiae et. Non nostrum sit sit. Est minus velit laboriosam.', 0, '1975-01-06 21:54:07');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'In commodi nemo sunt et quibusdam ea nam. Praesentium ut est omnis expedita voluptatem perferendis. Non pariatur ut quia est repudiandae quis accusamus culpa. Aut impedit placeat dicta id quaerat.', 0, '1973-05-26 02:04:29');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Vero nihil dolores vitae doloribus earum ex sed. Sit quibusdam quam cum qui vero. A recusandae sequi reiciendis fuga repudiandae. Id perspiciatis aut voluptate ut nemo id.', 1, '1980-09-11 08:23:33');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Hic nulla sequi minima nam voluptas. Inventore quae qui tempore suscipit repellendus. Non iusto eum ut nisi modi.', 1, '1997-11-24 21:27:08');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Quas in dignissimos nihil eligendi quod. Dignissimos est impedit aut adipisci quo tenetur. Eaque dignissimos minus amet ea occaecati.', 1, '1994-05-02 04:07:39');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Quia molestiae vel molestiae modi minus. Ipsam mollitia rerum qui accusantium qui et. Aspernatur minus qui veritatis fugiat repellat quis. Quo voluptatem nam magni repudiandae non iure voluptate numquam. Neque qui vero corrupti sapiente aut.', 1, '2015-04-24 08:41:09');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Ullam qui quibusdam dolores saepe voluptatem aliquam qui recusandae. Dolorem rerum molestiae repellat est aliquam nesciunt. Optio consequuntur quas facere facilis accusamus fugiat. Ex sit occaecati cumque accusantium eligendi molestiae tenetur. Iste et molestiae id expedita omnis sunt.', 0, '2004-02-28 01:28:10');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Quis id excepturi voluptatem ut perferendis unde. Nesciunt fugit quia distinctio fuga. Ut et voluptas ea. Et aut rerum magni et qui.', 1, '1970-03-26 03:42:07');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Consectetur dolore ut fuga ratione placeat. Omnis suscipit neque pariatur earum quia perspiciatis. Assumenda autem doloribus quaerat nihil nulla. Qui molestiae doloribus enim provident.', 0, '1973-02-23 04:13:32');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Et reprehenderit consequatur iure dolorum optio ducimus. Enim mollitia odio quod ducimus. Sint est mollitia odio corporis eos.', 0, '2011-02-22 16:37:24');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Consequatur quidem est reiciendis facilis possimus quia. Consequatur mollitia assumenda distinctio suscipit fugit quas. Exercitationem dolores voluptas corporis quidem minus et temporibus.', 0, '1975-06-06 09:29:17');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Ea nesciunt ut sunt modi eos culpa. Eaque qui ut ut non earum omnis. Aut placeat voluptatem harum a voluptates. Velit ipsam fugit assumenda eaque ea.', 1, '2015-01-31 23:01:05');
INSERT INTO `messages` (`id`, `from_user_id`, `ad_id`, `body`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Fugiat voluptates voluptate placeat sed consequatur ipsam consequuntur. Omnis corrupti quidem debitis suscipit. Rerum dolore eaque minus labore voluptatem unde hic sit. Qui est ea ad reprehenderit.', 1, '1993-02-03 13:01:19');


#
# TABLE STRUCTURE FOR: product_conditions
#

DROP TABLE IF EXISTS `product_conditions`;

CREATE TABLE `product_conditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор качества',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Качество продоваемого товара',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Качество продоваемого товара(б/у или новое)';

INSERT INTO `product_conditions` (`id`, `name`) VALUES (2, 'praesentium');
INSERT INTO `product_conditions` (`id`, `name`) VALUES (1, 'voluptatem');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Ссылка на идентификатор пользователя в таблице users',
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `second_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Пол пользователя',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT 'Not_selected' COMMENT 'Город проживания пользователя',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT 'Not_selected' COMMENT 'Страна проживания пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили пользователей сайта';

INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'Imelda', 'quasi', '2', '1977-07-21', 'East Emmetttown', 'Ethiopia', '2014-10-31 21:59:31', '2009-01-04 13:08:26');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'Idell', 'culpa', '1', '2002-02-07', 'Alexandrinemouth', 'Singapore', '2019-06-08 05:25:23', '1981-09-30 10:31:59');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'Trudie', 'facilis', '1', '2014-02-27', 'Dawsonmouth', 'Nepal', '1996-01-19 07:15:13', '2004-04-10 13:51:01');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'Juvenal', 'aliquid', '1', '1987-04-23', 'Cummingsfort', 'Honduras', '2010-12-13 23:00:14', '1990-04-08 19:55:20');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'Eldora', 'possimus', '1', '2016-07-18', 'New Kelliberg', 'Barbados', '2003-07-06 09:07:54', '1970-09-14 12:18:53');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'Isac', 'atque', '1', '2012-09-21', 'Walshmouth', 'New Caledonia', '2017-11-26 05:20:17', '2016-10-31 15:55:55');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'Felton', 'est', '1', '2020-04-20', 'Manuelashire', 'Finland', '1992-03-25 12:26:21', '1983-01-12 08:31:08');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'Dwight', 'est', '2', '1997-09-07', 'New Dollystad', 'Tokelau', '2003-07-30 09:55:00', '1984-08-15 10:14:32');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'Yazmin', 'autem', '2', '2016-03-23', 'West Forrest', 'Liberia', '1999-03-29 06:26:57', '1993-05-28 12:39:46');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'Lurline', 'amet', '2', '2012-03-17', 'West Itzel', 'Malawi', '1993-09-02 11:34:20', '2018-12-22 19:24:37');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'Dylan', 'nesciunt', '2', '2003-03-13', 'Houstonview', 'Guinea', '1995-01-13 22:47:55', '1988-04-18 02:19:59');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'Laurianne', 'dolorem', '2', '1970-04-30', 'Port Dasiaport', 'Italy', '1997-02-28 10:50:51', '2012-10-17 15:03:11');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'Queen', 'sed', '1', '2001-06-28', 'New Raulfurt', 'Mauritania', '2017-10-10 02:05:23', '2001-05-08 13:58:01');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'Marlee', 'unde', '1', '1980-04-24', 'Mitchellville', 'Norway', '1973-07-24 15:15:21', '2013-03-29 14:26:11');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'Al', 'vero', '2', '2013-03-28', 'South Haylieborough', 'Sao Tome and Principe', '1985-08-30 18:21:40', '1986-11-29 09:53:08');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'Lelah', 'quibusdam', '1', '2003-09-06', 'Stammmouth', 'Norway', '1995-10-30 10:17:12', '2008-06-06 14:01:08');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'Johnathan', 'harum', '2', '1995-11-02', 'New Elizabeth', 'Mongolia', '1981-07-08 06:05:28', '1978-12-24 01:53:16');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'Lenna', 'aut', '2', '1970-01-24', 'East Jessytown', 'Aruba', '1978-10-27 04:40:40', '1995-07-29 06:24:03');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'Eleanore', 'similique', '2', '1990-06-06', 'Erdmanmouth', 'Aruba', '1980-06-07 02:57:43', '1973-01-13 19:03:44');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'Gregorio', 'sed', '1', '1976-07-14', 'North Evans', 'Jamaica', '1971-09-06 08:40:09', '1986-01-19 04:51:49');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'Alexandre', 'autem', '2', '1981-06-01', 'South Mariahberg', 'Northern Mariana Islands', '2008-08-16 10:01:27', '2006-11-25 21:33:51');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'Carolyne', 'sunt', '2', '2011-04-13', 'West Andrewton', 'Albania', '1984-09-21 09:31:57', '2020-02-09 18:06:40');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'Paris', 'velit', '2', '2013-07-29', 'Port Randal', 'Burundi', '1972-12-06 18:38:21', '1983-03-05 19:11:53');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'Karine', 'voluptas', '2', '2016-06-13', 'East Lori', 'Senegal', '2013-10-02 15:17:07', '1978-04-30 05:36:51');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'Karelle', 'est', '1', '1991-12-11', 'Port Ryannhaven', 'Puerto Rico', '1975-12-09 05:47:51', '2003-05-24 03:23:01');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'Bartholome', 'recusandae', '1', '1981-08-20', 'South Deloresborough', 'Wallis and Futuna', '2003-09-26 01:44:12', '2004-04-03 11:29:03');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'Hallie', 'dignissimos', '2', '1987-02-03', 'West Theresia', 'Turkey', '1992-03-31 03:42:26', '1997-10-12 15:41:10');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'Julianne', 'non', '2', '2019-08-21', 'East Lawrence', 'Saint Lucia', '2018-11-12 16:43:23', '2011-04-10 22:14:39');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'Federico', 'reprehenderit', '1', '2000-09-07', 'West Rodger', 'Mayotte', '1993-07-18 06:21:54', '2012-02-13 10:54:15');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'Horace', 'aperiam', '2', '2012-09-20', 'North Cleomouth', 'Ghana', '1976-02-10 00:57:45', '1994-06-19 21:48:08');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'Edgardo', 'magni', '1', '1979-11-01', 'Lake Reed', 'Isle of Man', '2016-02-12 13:31:48', '2004-05-25 14:24:19');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'Leland', 'voluptatem', '2', '1983-10-01', 'West Micah', 'Christmas Island', '2006-06-18 00:06:49', '2016-03-05 15:19:24');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'Adelle', 'placeat', '1', '2005-12-25', 'Lueilwitzmouth', 'Grenada', '1997-01-16 08:01:50', '2018-09-02 05:34:53');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'Mathilde', 'ipsam', '2', '1995-01-24', 'Port Larry', 'New Zealand', '1986-04-28 17:40:28', '2015-01-22 05:01:42');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'Amira', 'consequatur', '2', '1996-07-26', 'South Benjaminmouth', 'Falkland Islands (Malvinas)', '2003-04-15 16:27:08', '2004-12-09 09:25:26');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'Lexi', 'sapiente', '1', '2013-06-13', 'Keelingtown', 'Zimbabwe', '2000-04-28 07:18:26', '1975-05-22 11:11:39');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'Kennith', 'sit', '2', '1972-02-08', 'East Jacquelyn', 'Comoros', '1980-06-11 03:55:10', '2016-04-12 02:22:11');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'Stanley', 'sunt', '2', '1988-05-19', 'North Abnerland', 'Netherlands Antilles', '2008-04-08 20:13:11', '2013-02-13 18:25:43');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'Brennon', 'aut', '1', '2013-09-13', 'Kozeyfurt', 'Japan', '1978-10-10 15:33:03', '2007-09-30 22:03:20');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'Dominic', 'suscipit', '1', '2014-06-27', 'Bodeton', 'Norfolk Island', '2010-05-15 18:31:25', '1995-11-20 05:38:55');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'Letha', 'cupiditate', '1', '1988-06-18', 'West Ebbamouth', 'Luxembourg', '2016-02-29 20:06:13', '2000-02-05 06:30:12');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'Werner', 'iste', '2', '1982-10-23', 'Newellhaven', 'New Zealand', '1994-03-23 13:50:49', '2013-12-04 08:52:32');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'Moises', 'quos', '2', '2005-03-11', 'Predovicstad', 'Argentina', '1985-02-09 21:12:07', '2007-03-12 02:18:53');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'Arielle', 'minus', '2', '2004-03-01', 'Wisokyburgh', 'Vietnam', '2000-03-08 04:10:10', '1974-10-11 11:12:09');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'Modesto', 'sed', '1', '2010-03-26', 'North Darwinville', 'Senegal', '1977-03-01 20:54:31', '1990-08-19 06:03:28');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'Marta', 'nobis', '1', '1977-07-14', 'Francescashire', 'Puerto Rico', '2015-11-18 19:47:52', '2010-08-12 17:11:25');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'Jonatan', 'quia', '1', '1977-07-03', 'Walkermouth', 'Kyrgyz Republic', '1997-07-29 04:03:31', '1975-01-14 11:05:42');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'Zechariah', 'recusandae', '1', '1994-08-01', 'Vandervortport', 'Greece', '1973-03-26 11:57:22', '1978-07-19 21:31:16');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'Lindsay', 'ut', '2', '2005-01-20', 'Abrahammouth', 'Pakistan', '2015-03-20 10:29:11', '1978-07-02 11:15:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'Birdie', 'aut', '2', '2013-03-06', 'West Colleen', 'Oman', '1970-03-18 17:40:06', '2002-01-02 15:39:25');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'Mitchel', 'sit', '1', '1999-01-10', 'New Sandra', 'Congo', '1979-06-04 12:56:13', '1976-08-07 14:55:50');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'Alfreda', 'quidem', '1', '1996-07-15', 'West Alyssonchester', 'French Polynesia', '1985-05-17 03:31:59', '1971-08-14 07:29:29');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'Tillman', 'voluptatum', '2', '2011-12-28', 'East Bert', 'Ukraine', '1991-11-22 17:30:21', '1978-06-23 18:45:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'Damian', 'vel', '2', '1974-04-20', 'Juniorstad', 'Taiwan', '1976-12-30 17:11:53', '2001-10-25 02:05:14');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'Eloy', 'asperiores', '1', '2012-03-27', 'Doyleland', 'Syrian Arab Republic', '1980-10-24 06:20:24', '1980-08-29 05:37:02');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'Kathlyn', 'sed', '2', '2020-09-07', 'Marianeshire', 'Malawi', '2013-02-01 20:30:22', '1988-07-05 01:25:24');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'Dolores', 'quo', '1', '1975-04-05', 'Fadelfurt', 'Moldova', '2003-11-15 09:46:05', '2011-09-21 15:29:16');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'Gardner', 'deserunt', '2', '1981-02-03', 'South Haylie', 'Nepal', '2020-06-30 15:31:18', '2000-04-17 19:46:50');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'Krystel', 'velit', '1', '1982-12-21', 'West Jennietown', 'Guyana', '1982-01-31 20:46:42', '2020-08-28 19:20:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'Velma', 'illo', '2', '1978-12-07', 'West Jaiden', 'Uruguay', '1983-06-21 01:30:20', '1970-10-08 13:14:56');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'Ashleigh', 'sunt', '2', '1999-06-23', 'Klingport', 'Canada', '2014-06-02 10:54:12', '2017-04-17 00:09:28');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'Anibal', 'est', '1', '2010-06-26', 'Lake Jermaine', 'Ecuador', '2018-03-27 01:51:23', '1970-03-24 18:09:55');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'Johnathan', 'cum', '1', '1988-08-30', 'Port Candelario', 'Korea', '1984-12-12 16:34:27', '1972-10-14 08:50:31');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'Elsa', 'eum', '1', '1974-05-07', 'Bednarview', 'United States of America', '1979-06-26 23:50:30', '2014-03-18 22:49:37');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'Mckayla', 'qui', '2', '1989-07-23', 'East Macybury', 'Zimbabwe', '1986-01-17 07:18:48', '1988-04-14 05:26:35');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'Nella', 'sit', '1', '2018-06-30', 'O\'Reillyburgh', 'Estonia', '1998-01-13 18:22:20', '1971-02-11 12:56:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'Mitchell', 'dolores', '2', '2020-01-31', 'Beverlyland', 'Heard Island and McDonald Islands', '2015-02-13 09:28:22', '1997-06-25 05:02:20');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'Russell', 'suscipit', '2', '1983-08-12', 'Svenshire', 'United States Virgin Islands', '2018-09-27 02:25:24', '1991-11-24 12:50:52');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'Greyson', 'ab', '1', '1999-12-24', 'West Jasper', 'Kazakhstan', '1988-05-14 20:40:04', '2004-02-05 09:13:59');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'Gino', 'odit', '1', '1995-08-02', 'North Esta', 'Mauritania', '1995-11-12 07:57:14', '1993-12-06 04:19:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'Corine', 'mollitia', '2', '1976-07-23', 'Nitzschetown', 'Bouvet Island (Bouvetoya)', '2020-06-28 10:25:55', '1972-05-19 15:30:39');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'Ryann', 'officiis', '1', '1992-12-16', 'East Bradfordberg', 'Colombia', '1973-05-02 03:56:12', '1985-02-15 23:24:52');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'Vicky', 'voluptas', '1', '1997-01-30', 'North Kendrafurt', 'Solomon Islands', '2001-10-06 10:23:42', '2012-10-18 12:51:29');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'Trystan', 'fugiat', '1', '1997-10-19', 'Garrisontown', 'Serbia', '1991-09-27 20:45:59', '2000-03-21 05:22:12');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'Alexandrine', 'officia', '1', '2009-10-15', 'Smithfurt', 'Spain', '1987-10-03 09:44:41', '1988-08-09 17:09:43');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'Alysson', 'aut', '2', '1984-09-04', 'South Brodymouth', 'Mali', '2003-02-07 20:20:17', '2008-01-31 20:15:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'Torey', 'labore', '1', '1974-04-30', 'Port Jaycee', 'Jordan', '1983-05-08 18:01:34', '1995-09-11 21:18:46');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'Lea', 'at', '2', '1996-01-07', 'Priscillastad', 'Tonga', '2016-02-08 07:19:53', '1979-02-17 03:33:20');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'Jarred', 'culpa', '1', '1978-03-31', 'Denesikberg', 'Lithuania', '1992-07-20 03:16:39', '1979-03-02 10:35:19');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'Reyna', 'voluptatibus', '1', '1995-12-10', 'Mollyville', 'South Africa', '2009-06-09 08:54:33', '1996-07-04 18:31:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'Dave', 'dicta', '2', '1989-07-30', 'West Adellaberg', 'Palestinian Territory', '1971-07-18 12:03:18', '2007-07-27 01:55:28');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'Nolan', 'labore', '1', '2014-05-17', 'Emardchester', 'Canada', '2005-10-07 17:30:02', '1985-07-04 12:55:16');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'Joey', 'voluptate', '2', '2016-06-11', 'Tyshawnshire', 'New Caledonia', '2020-04-08 23:12:12', '2018-11-19 06:00:31');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'Efren', 'sed', '1', '2003-03-19', 'Handborough', 'Monaco', '1978-05-02 05:19:13', '2003-10-04 07:30:38');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'Gladys', 'corporis', '1', '1980-08-31', 'Renestad', 'Mexico', '1998-09-25 22:45:05', '2019-09-06 20:09:08');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'Leif', 'eum', '1', '1983-07-01', 'North Morrismouth', 'China', '2005-01-10 08:49:49', '1986-04-26 20:20:06');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'Brady', 'consequatur', '1', '1995-11-16', 'Kuhicport', 'Liechtenstein', '2012-06-25 20:17:14', '1980-09-02 02:44:44');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'Vincenza', 'aut', '1', '2008-09-26', 'Everetteshire', 'Serbia', '1994-11-17 23:37:36', '1976-08-12 08:16:00');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'London', 'exercitationem', '1', '2013-04-03', 'New Korey', 'Vietnam', '2004-01-08 02:55:33', '2008-07-17 22:04:40');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'Lauriane', 'ducimus', '1', '1988-04-18', 'West Leopold', 'United States of America', '1985-11-11 20:46:14', '1989-02-09 04:15:16');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'Emily', 'unde', '1', '1976-01-09', 'Gretchenburgh', 'Austria', '2007-05-12 07:51:47', '1991-02-03 16:49:34');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'Leilani', 'alias', '1', '2015-05-01', 'Shermanton', 'Syrian Arab Republic', '2019-10-13 14:57:00', '1986-08-04 00:11:40');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'Amanda', 'quisquam', '1', '1981-08-18', 'Michaelside', 'El Salvador', '2020-11-09 10:04:13', '2006-09-06 23:03:53');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'Zaria', 'dolore', '2', '2003-11-20', 'Denesikview', 'Madagascar', '2003-09-16 15:02:26', '1976-12-18 05:38:26');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'Adell', 'vel', '1', '2000-04-04', 'Kellenmouth', 'Finland', '1970-06-02 21:30:06', '2015-05-29 10:48:58');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'Mina', 'sunt', '1', '2001-02-28', 'Marilouport', 'Marshall Islands', '2017-03-02 06:21:47', '2007-12-03 13:56:29');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'Dustin', 'fugit', '1', '1991-12-11', 'West Jadonmouth', 'Comoros', '1994-01-22 07:31:52', '2010-04-19 17:39:23');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'Marianna', 'vel', '2', '1986-12-29', 'Dessieview', 'Montserrat', '2006-07-25 04:18:39', '1991-08-19 00:59:27');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'Kristian', 'ut', '2', '2009-07-06', 'Douglasstad', 'Fiji', '1971-11-01 10:34:34', '2000-12-19 21:36:07');
INSERT INTO `profiles` (`user_id`, `first_name`, `second_name`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'Ward', 'dignissimos', '2', '2007-07-01', 'Hauckmouth', 'Iran', '1996-04-30 02:01:01', '1986-02-26 19:47:18');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Логин для авторизации на сайте',
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пароль для авторизации на сайте',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта пользователя',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  `access_mode_type_id` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'Ссылка на идентификатор типа учетной записи пользователя',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Регистрационные данные';

INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (1, 'placeat', 'a0bce3c76eb6591c70e9d6f1f33aae2ae2b4ba80', 'pietro.gottlieb@example.net', '05615864033', '1987-12-31 08:54:06', '1975-06-02 05:27:50', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (2, 'explicabo', 'e14f520eb0588a08eb4a8b95191e49dd5a552ad1', 'mueller.myrna@example.org', '266.939.8845', '2006-02-22 23:22:52', '2016-06-09 19:25:22', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (3, 'consequatur', 'c2154cfd994ce14009762d7e731bcc173b9bb167', 'thowe@example.com', '1-229-346-9664', '1970-08-24 14:09:00', '1984-01-03 12:21:05', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (4, 'voluptatum', 'cd9c8a3e9c7623c46b287305b3dcb41b93bc12f9', 'charlotte.strosin@example.org', '744-183-9462x70805', '2018-12-08 08:02:00', '1984-02-05 14:16:50', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (5, 'voluptas', 'b09ae6800ee93e59135b8e7ef830da0468be7d13', 'freddie.satterfield@example.org', '1-186-379-4189', '1980-11-10 22:49:33', '2018-12-11 16:30:53', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (6, 'fugiat', '85b624d1548f97af884fcb822045f6bd384389d0', 'braden53@example.com', '152.658.7228x077', '2018-04-21 16:59:39', '1985-11-28 13:45:27', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (7, 'voluptatem', 'cda057e872622b454f8984ef106f071e4b27eefa', 'norval24@example.org', '426.357.0589x022', '1995-02-23 13:41:03', '1993-06-18 07:58:40', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (8, 'et', 'bce2ca910f211949842a5456f0dfd201b9996a84', 'krau@example.org', '+98(6)5318867446', '1970-08-06 15:35:42', '2009-10-20 17:55:19', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (9, 'porro', '9043e4bd6b2ede6b206dd24203c1d0f83125082a', 'rupert.kuhic@example.com', '848-596-1585', '1988-05-28 11:12:42', '1990-10-12 23:35:23', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (10, 'est', 'fcdee13c2dade2b35f375ce9590e0e6581ff9dff', 'edward.hane@example.org', '1-141-593-2400x9625', '1973-08-11 12:42:34', '2007-06-18 12:32:56', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (11, 'voluptatibus', '370cf67b518abb8e0a36183b0058f1eb029255e2', 'oschmidt@example.net', '009-049-6595x28722', '2009-02-11 14:50:15', '2018-08-03 23:15:33', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (12, 'qui', '880e530f8433f74eff5fa728d3b654dd4c466498', 'karelle.hilll@example.net', '404-364-3933x3956', '1972-08-12 20:46:21', '2008-03-12 21:18:42', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (13, 'ipsam', 'cd012f38274e71eeae66683be620b8cd82893d6d', 'o\'connell.elenora@example.org', '596-520-6348x296', '1999-02-08 16:39:31', '2009-02-20 16:14:44', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (14, 'sint', 'c56cf12b1bb4c03409153e29f8f1c1b247e619dd', 'mayert.cecilia@example.org', '684-926-3915x24968', '1979-03-20 13:01:56', '1999-12-15 01:11:03', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (15, 'ipsa', '0ee744d1056706ff210f4edd93583fc5675ff2b8', 'bella.kovacek@example.org', '+12(7)9150648626', '2001-10-05 03:48:15', '2020-04-23 14:18:21', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (16, 'blanditiis', '7d07fff68ca390aa3b7c2bd57e0cadc14d9edf32', 'jocelyn.runolfsson@example.net', '852-307-4905', '2001-11-15 05:29:07', '1991-05-10 07:07:53', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (17, 'eum', '3c85ba8774b2d0f40c4e01c26a0364ce5ad481a1', 'hcummings@example.net', '331.523.3612x79606', '2006-03-15 22:40:15', '2009-11-22 02:04:43', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (18, 'ut', '5f9171c151f7c0c0f99902af8ae78d64a106fdad', 'maggio.malcolm@example.com', '431-340-4925', '2016-06-06 07:58:29', '1992-10-13 11:39:58', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (19, 'nam', 'f179cf7db3179e78b4e1190a7de1f16397792a07', 'arvid.dietrich@example.org', '703-379-5866x44852', '1990-09-26 06:56:19', '1979-10-18 15:41:01', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (20, 'tenetur', '64e57a8ccbcf4c6c01e73a56d1b868c346489070', 'cruz72@example.org', '04615061164', '2006-01-02 15:36:29', '1996-11-06 13:57:56', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (21, 'eius', '4b78e8f64cde0976fe93fd7218a7f1060484fcfe', 'lawson62@example.com', '+28(2)4504228075', '2003-08-14 11:07:51', '2016-06-09 22:34:28', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (22, 'aliquam', '395a83ad9907947066442b31f2dc68f4c5452b2d', 'roberts.adelia@example.com', '02662648550', '1985-04-21 07:35:45', '1998-07-07 14:24:07', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (23, 'nostrum', '80dc8285e09756d75fc7eab7bea886ced2e38505', 'tstoltenberg@example.net', '673-609-6435', '1992-06-26 01:06:21', '2012-08-06 13:31:21', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (24, 'libero', '84377c8012df66df6fb0dcc9c1adf7aaae6b9a55', 'rico.feest@example.org', '513-465-2337', '1981-03-05 00:23:21', '1982-09-29 16:04:41', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (25, 'dolore', '692206ea35008dee7cf8ac5b91cff34fa4aef5e7', 'nova.zulauf@example.org', '692.739.0071', '2003-03-24 10:57:16', '2012-02-01 00:08:24', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (26, 'eveniet', 'bc4ef7ed2b86cb148efc22635e1bdf901400ff02', 'blair95@example.org', '664-732-2214x19999', '1986-04-12 10:47:15', '1995-06-13 14:36:27', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (27, 'dolor', '4fe661edaca0aef1914af0779a728a4c3f08065c', 'viva.hickle@example.net', '014.607.1912x9131', '1989-07-07 18:35:00', '1991-11-29 12:33:34', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (28, 'odit', '40a49387c4d00d2682c0d4215644cdd4e7d59b92', 'lwolff@example.com', '370.349.7192', '1990-02-04 22:13:29', '1979-03-19 07:21:36', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (29, 'rerum', 'a00d85220b9d7d84a674ee42b58d720102db9ea0', 'jaime.o\'reilly@example.net', '(647)422-6926', '1995-09-01 10:46:39', '2005-10-17 12:28:30', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (30, 'soluta', 'eacecf9a7046b0df4422e7a64986b72257000047', 'cbrakus@example.net', '507-633-7953x25768', '1979-05-22 22:45:37', '2003-07-28 18:38:13', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (31, 'quia', 'a6536d50b7413373c0af97eb5039463b5e5b816f', 'hodkiewicz.stephanie@example.com', '114.286.3065', '2013-10-23 03:24:45', '2000-07-19 16:57:51', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (32, 'doloribus', 'c7f51e0233aab7512bf81db16310fb4f87554724', 'kvonrueden@example.com', '625.477.0174x604', '1992-02-21 09:25:05', '2001-10-10 08:20:09', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (33, 'nemo', '5bdb420f09d8459fe622b0b6b01bcc62bf2c0d80', 'reinhold.anderson@example.org', '913-065-5956', '2017-07-28 08:48:35', '2007-04-14 17:49:40', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (34, 'nihil', '62f7b2b40c46474667e242a910f01bcc36b3eecc', 'o\'reilly.alejandrin@example.org', '+05(1)0999604577', '1989-11-22 04:09:41', '1998-03-10 15:33:54', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (35, 'id', '241bd9a70442fc0743ffc1c1f47007ba37bb2b36', 'mgutkowski@example.com', '484.969.2633x04620', '2016-02-24 10:19:20', '1979-07-31 03:22:48', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (36, 'perferendis', '21ef0efad0361b0377ac4f29f75549bcd581f801', 'elaina.berge@example.org', '987-016-2241', '1974-10-28 23:43:17', '2013-05-08 10:58:12', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (37, 'nobis', '9fb0bb5b015977e038a92bb04c1a059c3bddf479', 'jordon.boehm@example.com', '143-779-5343x1996', '1975-01-15 18:05:55', '1994-07-17 02:04:01', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (38, 'omnis', '2c0bced4605066d5d225d2b254883cd95c58039e', 'noemy38@example.org', '(352)968-6860x2822', '2010-07-23 10:50:01', '1990-03-30 08:03:45', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (39, 'ea', '256340324063d2249fb743764cae224d5fdfb513', 'eichmann.kelley@example.net', '896-893-0105x71726', '1973-11-10 23:07:24', '2012-04-16 15:35:23', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (40, 'eaque', '984dd784d174a16536a88940001f2946ab708b33', 'quigley.tyshawn@example.net', '(832)828-1325x48961', '2008-06-11 01:32:02', '1989-07-01 08:07:40', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (41, 'debitis', '3fc7eba38667aa55799e38ec1821883fb966f568', 'jared78@example.org', '596.234.3769x131', '2014-08-08 02:57:26', '2012-05-05 14:15:37', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (42, 'vitae', 'd13baf6146797dc5e56f3c6535809cfb284157aa', 'kayli.hoeger@example.com', '295-217-5512', '2003-11-11 21:29:22', '1989-06-12 16:37:20', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (43, 'quidem', 'cf3d3bdbd1932631f541ea9c837edbc88279be2a', 'pblanda@example.org', '858-902-3679', '2020-01-18 16:28:08', '1976-11-04 01:29:33', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (44, 'molestiae', '5028e5ef5cfcb4ed0387098fd157fbe690396bdc', 'jmcglynn@example.org', '778.426.4604x060', '2012-11-03 02:10:17', '1986-10-23 09:59:57', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (45, 'fugit', 'a467d2647bb6ae481e264d246e9dfba70cd76562', 'spencer.warren@example.com', '(318)797-9259', '2010-03-13 14:25:36', '2011-03-15 21:04:24', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (46, 'architecto', '96017d28aee60c09d1a682fea7b202728133dd1b', 'krystel.lehner@example.net', '+10(4)4390933906', '2010-11-11 03:24:07', '2008-03-09 02:50:04', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (47, 'laboriosam', 'b852be4d166388dae2179d7d4846caf8862f4d5d', 'martina.kunze@example.net', '00373526801', '1991-04-09 23:51:39', '2002-05-31 08:40:57', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (48, 'consectetur', 'd0e46177ffd9a8509cb2cb849b428caf66222072', 'raymond05@example.com', '769-754-6562x3722', '2017-09-10 09:57:00', '2001-09-12 21:46:46', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (49, 'autem', '9f7b595303e0b70013af818bf9b5486e4ed7b0b0', 'dana38@example.com', '451-112-3756x49830', '1970-09-01 07:58:25', '1973-12-29 10:07:00', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (50, 'numquam', '18c2ffb9a0837f11db2146e66a589bad91189f60', 'jacobi.zack@example.net', '+64(6)0164652300', '1990-01-09 04:20:28', '1997-12-21 19:35:16', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (51, 'modi', 'b098bc0f9eb2503e808e949dc7c8550d0fdda46e', 'herman.langworth@example.net', '(789)121-7620x3361', '1985-11-30 23:26:41', '1981-12-14 00:36:55', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (52, 'mollitia', '07b892802f0dde1f441877e3b726c04be49fca62', 'karine.flatley@example.net', '(033)108-0614x9982', '1981-01-08 04:33:27', '1973-08-05 15:15:46', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (53, 'nesciunt', '0be167ea3eae08b5321b300b14cd4518af84f52b', 'marques.bergnaum@example.net', '(740)416-9917x0925', '2016-06-25 13:58:33', '2020-07-17 21:02:50', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (54, 'magni', '18e1ecb3087f5e795ca99e01239bf18889a91928', 'pfeffer.abbey@example.com', '1-762-994-9851x0471', '1991-06-25 02:14:36', '2007-11-02 03:59:56', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (55, 'quaerat', '835fcba0024008b9acbecee7f69969bfed096866', 'jenkins.cordie@example.net', '1-669-499-8450', '1985-01-29 10:54:29', '1984-10-27 03:51:34', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (56, 'assumenda', '706d4883cb1b71a0ab90bd9a580dc4f9b3daa5d4', 'zmertz@example.net', '847-752-0497', '1970-02-12 16:41:01', '1984-04-15 12:32:48', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (57, 'aut', 'afbb3b43f4b3157c1ef5491f5ee2a78ae73af072', 'hobart.dare@example.com', '(739)443-0613x82050', '1987-11-29 07:04:02', '2020-07-14 15:25:13', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (58, 'nisi', 'a66624662e64a7b63848300a11cf763967a2ad1b', 'emard.lloyd@example.org', '(395)105-5958x52896', '2019-05-07 20:09:37', '1990-03-10 03:55:04', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (59, 'dicta', '9fe6625d78be0c65461d660b64a58c25c2b0003d', 'nkertzmann@example.net', '(512)503-6876x322', '2015-05-24 15:48:14', '2014-02-18 10:06:05', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (60, 'sequi', 'f4175a73a0aabed7dc1f3c5ad56d9629496b9a0b', 'arno.shanahan@example.org', '+34(7)0422730602', '2018-12-22 06:05:06', '1990-11-24 07:23:45', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (61, 'earum', '4421ed1464aa4a5cf3747362925daae51afe4e3a', 'hermann.thora@example.com', '435-157-9932x692', '1981-12-07 06:57:08', '1973-11-11 19:20:41', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (62, 'sed', '80ca8a2907fad7ecad79738fb6c7039cc4867ca7', 'talia.langworth@example.org', '1-569-654-0851x4359', '1972-01-23 07:06:40', '1983-09-15 23:02:11', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (63, 'asperiores', '2ec02d9377a68be7f0ed17bdf4a7af1890145359', 'savannah80@example.net', '(063)938-9002x893', '2013-09-20 09:36:25', '1997-10-26 05:30:22', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (64, 'ullam', 'd7e9770eeafba5ae49414b19730b411bd63015f8', 'senger.noe@example.org', '1-724-563-3953', '2010-07-16 21:09:46', '1982-08-24 03:49:05', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (65, 'dignissimos', '91d9b8a553c6934a94e5156e10ee8a072ce9be5b', 'hahn.leonie@example.com', '+83(5)4744949520', '1986-04-26 16:39:01', '1988-03-18 19:39:03', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (66, 'repellendus', '8bda62f304d1f9419dba6ffb8adc449f2867ad65', 'mswift@example.net', '(178)907-0832x5532', '2016-07-19 05:06:21', '1999-02-11 15:52:30', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (67, 'minima', '89bcd46aa6a2993a7b3ddf016c867a26e1c3858c', 'icarter@example.net', '867.678.9989x908', '2020-09-17 19:48:53', '2000-04-10 20:21:12', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (68, 'ratione', '75370dc49628eeb88190a75af569cb1943938f1e', 'ebalistreri@example.com', '910.868.3242', '1980-04-30 12:27:43', '2018-12-27 05:01:39', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (69, 'expedita', 'f90fdc762a987fc1cd9adf10b099210d2421f602', 'chyna74@example.com', '223.180.2904', '1991-08-16 00:33:47', '2012-11-27 09:53:54', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (70, 'quis', '7dcf96114f12413e5b8fbd9746043ca2ad0cf464', 'justice.friesen@example.com', '1-096-156-7374x06845', '2015-03-03 17:46:57', '1986-03-15 19:22:40', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (71, 'illo', 'f8093ab6e6678ada82e729029205b984e03e186b', 'lebsack.lewis@example.com', '745-506-1697x5836', '1999-04-29 21:40:10', '1979-05-28 10:24:01', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (72, 'in', '332ef28199d18cc494839c4a3dd526db39e4f0a6', 'shaun29@example.org', '(865)755-8953', '1988-04-13 05:05:24', '1990-08-01 07:49:16', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (73, 'non', 'b16753c48ff910edc7afc32463d2f50d0af10efc', 'ccollier@example.org', '+31(5)1623903281', '2013-08-25 09:12:41', '1994-04-11 21:52:41', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (74, 'ex', '9be1fb918509a4903c59698da8e6abd6af0ce4c0', 'sporer.ronny@example.org', '1-803-688-1318x9273', '1997-07-11 14:46:59', '2018-08-05 12:03:31', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (75, 'quod', 'a07e21e8cf3a0819c07e6eb6ba554150d0071457', 'abbott.demarcus@example.com', '(275)066-5429x57872', '1971-09-29 02:03:18', '2001-10-17 22:56:35', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (76, 'sit', '536ad9b16b3c524cf11d88cb265360a66cf11324', 'aliya.glover@example.com', '272.956.5927x8492', '1982-10-21 06:56:08', '1971-08-30 11:48:01', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (77, 'saepe', '1e98692070585b407d5316918efe4107e506049f', 'eugenia.greenfelder@example.com', '1-935-122-0180x17043', '2015-08-12 20:10:07', '2007-04-24 21:29:27', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (78, 'cumque', 'dae50e669caae327d26d255328f2bbe7f9190ad8', 'laney.kovacek@example.org', '1-199-180-1983x8559', '2006-10-17 21:46:50', '1999-06-27 09:49:56', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (79, 'veniam', 'bf9b2e8b790bde242af260e0ee637c2b07bffb57', 'tremaine.ryan@example.com', '00950314823', '2016-08-02 22:56:44', '1980-12-06 09:39:31', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (80, 'praesentium', '92579f3bebb10eb83b97b7ca45606624f3850914', 'edwardo56@example.net', '1-471-254-0065x827', '1987-03-06 10:40:48', '1992-03-19 22:21:59', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (81, 'eos', 'a373d5c90038276d22a8758650829c59fa3fb8f9', 'kaylin.monahan@example.com', '683-810-1161', '2010-11-10 14:40:56', '1975-04-26 10:18:14', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (82, 'incidunt', 'db1bf2a9a65c1d7fa62bf8629fd493994ebe122a', 'ibins@example.org', '04334253168', '2011-03-01 18:23:24', '1984-11-29 18:06:04', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (83, 'molestias', '55a11e8cec952c0b2410b284731068da7137c1b5', 'tromp.lawson@example.com', '081-109-9221x157', '1971-01-13 10:59:26', '1993-10-31 14:35:58', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (84, 'quisquam', 'ba2287603cf76a3907685dad8aa87f20fc0ec041', 'fanny33@example.org', '565.420.2996', '2015-06-27 18:40:30', '2004-05-03 18:53:01', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (85, 'facere', '18fba08bccd6009dc686ea68cf61ca8efcad3ec4', 'boyer.hollie@example.com', '+33(0)9897115542', '2009-10-13 12:01:14', '1992-07-31 03:44:37', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (86, 'maxime', 'd20d11c802fa5a40d478b68888dbc6346e4c291f', 'lang.irwin@example.com', '(717)998-6466x0376', '2002-08-23 04:23:24', '1979-11-08 13:11:39', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (87, 'ducimus', 'c80599e179725199ba66a0d4870de926d6e6624c', 'arnaldo.hagenes@example.org', '00881978685', '2009-07-27 20:38:05', '1997-11-13 03:12:52', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (88, 'eligendi', '09ca07c689e5dca3ab244ba1d7eedc4c7748d6f9', 'uvolkman@example.com', '+48(0)1085310859', '2012-07-23 15:55:20', '1981-05-13 02:51:29', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (89, 'quibusdam', 'b65c286c06db0ad4868f1a317f1f1463ed5fb38e', 'amelia53@example.com', '(985)817-0044x85074', '1985-03-30 21:55:08', '1981-05-28 01:54:08', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (90, 'distinctio', '0692d7b535673917ccc5750ead4b4882069b6c87', 'herminio.toy@example.org', '1-792-235-7617x971', '1978-06-03 19:05:29', '2000-07-20 02:32:49', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (91, 'excepturi', '8318aebb56f07509a954ad9aa92c28b2be749e25', 'pollich.estevan@example.org', '(151)728-1252', '1998-06-30 13:53:52', '1999-10-15 11:20:45', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (92, 'consequuntur', '74ebfb083617b64cbc937205ac9aa57001d38593', 'matilde44@example.com', '06573430110', '1994-10-21 14:49:37', '1984-03-07 00:53:50', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (93, 'optio', '94530367072f38538f16854bfbfc3e516ce09b7c', 'mwisozk@example.com', '028-765-6570x706', '1983-10-01 20:10:53', '1995-08-22 23:24:15', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (94, 'recusandae', 'a7c790a164cf907716661b2f66933df9f54037f7', 'kuphal.marlen@example.com', '383.212.7397', '1990-06-11 13:23:28', '1988-07-07 20:57:14', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (95, 'harum', '2a3fda16597879b1e5f1563cfc9fd7a828c4caac', 'nmetz@example.net', '841.080.1869x94723', '2018-01-12 00:55:02', '1974-08-24 07:05:18', 3);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (96, 'neque', 'b415d7461fab93f6b10602eb73d5eb9f2de81514', 'marguerite.gulgowski@example.com', '(993)644-2172x871', '2017-12-23 06:58:40', '1975-02-26 16:25:00', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (97, 'officiis', '591b59bd410aaaf0fa19281f2892dc0eb72a970f', 'dibbert.rosario@example.org', '363.266.7326x246', '2002-06-18 10:47:17', '1980-06-15 15:58:03', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (98, 'itaque', '88da9994d6b0b596aae1b5efa0d512af61c49ff4', 'ardith57@example.org', '1-610-012-5097', '1978-12-18 10:08:21', '1990-08-28 03:00:43', 2);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (99, 'quo', 'b393136d9a714e671b423cb0471b641ba3457bc9', 'boris.hoeger@example.org', '650-795-1899x6302', '1987-10-06 07:53:55', '2007-03-18 21:57:34', 1);
INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `created_at`, `updated_at`, `access_mode_type_id`) VALUES (100, 'vero', 'b648799134f4290d19a49e93528b4b8bef80705a', 'jerad.wolff@example.org', '468.068.2487x170', '1973-01-18 05:50:34', '1986-01-21 06:06:14', 3);


