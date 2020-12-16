-- ------------------------------------------------------------------------------------------------------------------------------------
-- Редактирование некоторых данных 	
-- ------------------------------------------------------------------------------------------------------------------------------------
USE avito_db_model;


UPDATE profiles SET gender = 0;

CREATE TEMPORARY TABLE sex(gender_type CHAR(1));
INSERT INTO sex VALUE ('M'),('F');

UPDATE profiles SET gender = (SELECT * FROM sex ORDER BY RAND() LIMIT 1);

CREATE TEMPORARY TABLE conditions(type VARCHAR(50));
INSERT INTO conditions VALUE ('be_in_use'),('new');

UPDATE product_conditions SET name = (SELECT * FROM conditions ORDER BY RAND() LIMIT 1);


UPDATE media_types SET name = 'mkv' WHERE id = 1;
UPDATE media_types SET name = 'mp3' WHERE id = 2;
UPDATE media_types SET name = 'jpg' WHERE id = 3;
UPDATE media_types SET name = 'png' WHERE id = 4;
UPDATE media_types SET name = 'mpeg' WHERE id = 5;

UPDATE ad_mode SET name = 'casual' WHERE id = 1;
UPDATE ad_mode SET name = 'casual_extanded' WHERE id = 2;
UPDATE ad_mode SET name = 'vip_2_days' WHERE id = 3;
UPDATE ad_mode SET name = 'vip_7_days' WHERE id = 4;
UPDATE ad_mode SET name = 'vip' WHERE id = 5;

UPDATE access_mode_type SET access_name = 'user' WHERE id = 1;
UPDATE access_mode_type SET access_name = 'moderator' WHERE id = 2;
UPDATE access_mode_type SET access_name = 'admin' WHERE id = 3;

UPDATE ad_status SET name = 'published' WHERE id = 1;
UPDATE ad_status SET name = 'on_pause' WHERE id = 2;
UPDATE ad_status SET name = 'solid_out' WHERE id = 3;
-- ------------------------------------------------------------------------------------------------------------------------------------
-- Создание представлений
-- ------------------------------------------------------------------------------------------------------------------------------------
USE avito_db_model;

-- Расшифровка таблицы ad
CREATE VIEW ad_decryption AS
SELECT 
	ad.id,
	ad_mode.name AS mode,
	concat(profiles.first_name,' ',profiles.second_name) AS user_name, 
	ad.header AS header,
	ad.description AS description,
	concat(media_files.filename,'.',media_types.name) AS attachment_files,
	concat(ad.order_amount,' руб.') AS sum,
	product_conditions.name AS 'condition',
	ad_status.name AS status
FROM ad 
JOIN ad_mode ON ad.ad_mode_id = ad_mode.id
JOIN profiles ON ad.user_id = profiles.user_id
JOIN product_conditions ON product_conditions.id = ad.ad_product_condition_id
JOIN ad_status ON ad_status.id = ad.ad_status_id
JOIN media_files ON ad.media_id = media_files.id
JOIN media_types ON media_types.id = media_files.media_type_id
ORDER BY id;

SELECT * FROM ad_decryption;

-- Расшифровка таблицы profiles
CREATE VIEW users_profile_decryption AS
SELECT
	amt.access_name AS access_level,
	users.login AS login_nickname,
	users.password AS password,
	users.email AS mail,
	users.phone AS phone,
	concat(profiles.first_name,'	 ',profiles.second_name) AS user_name,
	profiles.gender AS sex,
	(YEAR(current_date())-YEAR(profiles.birthday)) AS user_age,
	profiles.birthday AS birthday,
	concat(profiles.city,' | ',profiles.country) AS 'city|country' 
FROM profiles 
JOIN users ON profiles.user_id = users.id 
JOIN access_mode_type AS amt ON amt.id = users.access_mode_type_id
ORDER BY amt.access_name;

SELECT * FROM users_profile_decryption;

-- Топ продавец среди мужчин
CREATE VIEW top_seller_among_man AS
SELECT
	profiles.gender AS sex,
	concat(profiles.first_name,' ',profiles.second_name) AS top_seller,
	ad.order_amount,
	LAG(concat(profiles.first_name,' ',profiles.second_name)) OVER (ORDER BY ad.order_amount) AS last_top_seller,
	avg(ad.order_amount) OVER () AS average_order_value,
	ads.name
FROM ad
JOIN profiles ON profiles.user_id = ad.user_id
JOIN ad_status AS ads ON ads.id = ad.ad_status_id
WHERE ads.name = 'solid_out' AND profiles.gender = 'M' ORDER BY profiles.gender DESC, AD.order_amount DESC;

SELECT * FROM top_seller_among_man;

-- Топ продавец среди женщин
CREATE VIEW top_seller_among_female AS
SELECT
	profiles.gender AS sex,
	concat(profiles.first_name,' ',profiles.second_name) AS top_seller,
	ad.order_amount,
	LAG(concat(profiles.first_name,' ',profiles.second_name)) OVER (ORDER BY ad.order_amount) AS last_top_seller,
	avg(ad.order_amount) OVER () AS average_order_value,
	ads.name
FROM ad
JOIN profiles ON profiles.user_id = ad.user_id
JOIN ad_status AS ads ON ads.id = ad.ad_status_id
WHERE ads.name = 'solid_out' AND profiles.gender = 'F' ORDER BY profiles.gender DESC, AD.order_amount DESC;

SELECT * FROM top_seller_among_female;

-- ------------------------------------------------------------------------------------------------------------------------------------
-- Просто выборки
-- ------------------------------------------------------------------------------------------------------------------------------------
-- средний возвраст пользователей
-- самый молодой
-- самый старый
SELECT 
	gender AS sex,
	MAX(YEAR(current_date())-YEAR(profiles.birthday)) AS age_of_the_oldest_user,
	MIN(YEAR(current_date())-YEAR(profiles.birthday)) AS age_of_the_youngest_user,
	FLOOR(AVG((YEAR(current_date())-YEAR(profiles.birthday)))) AS AVG_user_age,
	AVG((YEAR(current_date())-YEAR(profiles.birthday))) OVER () AS AVG_all_users
FROM profiles GROUP BY gender;


-- Топ 5 просматриваемых заказов
-- В данный момент критерием выступает количество раз, когда заказ добавляли в избранное

UPDATE favourites SET user_id = (SELECT user_id FROM profiles ORDER BY RAND() LIMIT 1);
UPDATE favourites SET ad_id = (SELECT id FROM ad ORDER BY RAND() LIMIT 1);

SELECT
	favourites.ad_id
FROM favourites 
JOIN profiles ON profiles.user_id = favourites.user_id GROUP BY favourites.ad_id ORDER BY count(*) DESC LIMIT 5;
-- представление

-- Топ 5 пользователей, которые загрузили самые большие файлы
SELECT 
	ad.user_id,
	mf.filename,
	MAX(mf.`size`) AS size
FROM ad
JOIN media_files AS mf ON mf.id = ad.media_id
GROUP BY ad.user_id ORDER BY SIZE DESC LIMIT 5;