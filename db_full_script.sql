
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- Cоздание внешних ключей для таблиц
-- ---------------------------------------------------------------------------------------------------------------------------------------
USE avito_db_model;
SET @row_num := 0;
CREATE INDEX media_id_ad ON ad(media_id);

-- Создаем внешние ключи для таблицы media_files
UPDATE ad SET media_id = (SELECT @row_num := @row_num+1);


ALTER TABLE media_files
	ADD CONSTRAINT media_files_id_fk
		FOREIGN KEY (id) REFERENCES ad(media_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT media_files_media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE;
		
-- Создаем внешние ключи для таблицы ad		
ALTER TABLE ad
	ADD CONSTRAINT ad_ad_mode_id_fk
		FOREIGN KEY (ad_mode_id) REFERENCES ad_mode(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT ad_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT ad_ad_product_condition_id_fk
		FOREIGN KEY (ad_product_condition_id) REFERENCES product_conditions(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT ad_ad_status_id_fk
		FOREIGN KEY (ad_status_id) REFERENCES ad_status(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT ad_ad_category_id_fk
		FOREIGN KEY (ad_category_id) REFERENCES ad_category(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE;

-- Создаем внешние ключи для таблицы users
ALTER TABLE users
	ADD CONSTRAINT users_access_mode_type_id_fk
		FOREIGN KEY (access_mode_type_id) REFERENCES access_mode_type(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE;
		
-- Создаем внешние ключи для таблицы favourites
ALTER TABLE favourites
	ADD CONSTRAINT favourites_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT favourites_ad_id_fk
		FOREIGN KEY (ad_id) REFERENCES ad(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE;		
		
-- Создаем внешние ключи для таблицы profiles
ALTER TABLE profiles
	ADD CONSTRAINT  profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE;
-- Создаем внешние ключи для таблицы messages
ALTER TABLE messages
	ADD CONSTRAINT  messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	ADD CONSTRAINT  messages_ad_id_fk
		FOREIGN KEY (ad_id) REFERENCES ad(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE;	
		
-- ---------------------------------------------------------------------------------------------------------------------------------
-- Cоздание индексов для таблиц		
-- ---------------------------------------------------------------------------------------------------------------------------------		
-- Индексы будем создавать в таблицах ad,media_files,messages,profiles,users
DESC ad;
CREATE INDEX header ON ad(header);
CREATE INDEX amount_status_year ON ad(order_amount,ad_status_id,created_at);
CREATE INDEX amount_condition_year ON ad(order_amount,ad_product_condition_id,created_at);
CREATE INDEX amount_mode ON ad(order_amount,ad_mode_id);

DESC media_files;
CREATE INDEX name ON media_files(filename);
CREATE INDEX size_type ON media_files(size,media_type_id);

DESC messages;
CREATE INDEX from_user_to_ad ON messages(from_user_id,ad_id);
CREATE FULLTEXT INDEX body_search ON messages(body);

DESC profiles;
CREATE INDEX first_name_second_name ON profiles(first_name,second_name);
CREATE INDEX gender_city_birthday ON profiles(gender,city,birthday);
CREATE INDEX gender_country_birthday ON profiles(gender,country,birthday);

DESC users;
CREATE INDEX mail ON users(email);
CREATE INDEX logins ON users(login);
CREATE INDEX pw ON users(password);

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
-- ------------------------------------------------------------------------------------------------------------------------------------
-- Триггеры
-- ------------------------------------------------------------------------------------------------------------------------------------
USE avito_db_model;

-- Создадим таблицу, в которой хранится резервные копии строк из таблицы ad
CREATE TABLE ad_logs 
(
  id int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  operation VARCHAR(255),
  row_id INT(10) UNSIGNED NOT NULL,
  ad_category_id INT(10) UNSIGNED NOT NULL,
  ad_mode_id int(10) unsigned NOT NULL,
  user_id int(10) unsigned NOT NULL,
  header varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  description text COLLATE utf8_unicode_ci NOT NULL,
  media_id int(10) unsigned NOT NULL,
  order_amount int(10) unsigned NOT NULL,
  ad_product_condition_id int(10) unsigned NOT NULL,
  ad_status_id int(10) unsigned NOT NULL,
  created_at datetime DEFAULT current_timestamp(),
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Делаем триггер логирования
delimiter //
DROP TRIGGER IF EXISTS update_ad_log //
CREATE TRIGGER  update_ad_log BEFORE UPDATE ON ad
FOR EACH ROW BEGIN 
	INSERT INTO ad_logs SET operation = 'Update',
							row_id = OLD.id,
							ad_mode_id = OLD.ad_mode_id,
							ad_category_id = OLD.ad_category_id,
							ad_product_condition_id = OLD.ad_product_condition_id,
							user_id = OLD.user_id,
							header = OLD.header,
							description = OLD.description,
							media_id = OLD.media_id,
							order_amount = OLD.order_amount,
							ad_status_id = OLD.ad_status_id;
END //

DROP TRIGGER IF EXISTS delete_ad_log //
CREATE TRIGGER delete_ad_log BEFORE DELETE ON ad
FOR EACH ROW BEGIN 
	INSERT INTO ad_logs SET operation = 'Delete',
							row_id = OLD.id,
							ad_mode_id = OLD.ad_mode_id,
							ad_category_id = OLD.ad_category_id,
							ad_product_condition_id = OLD.ad_product_condition_id,
							user_id = OLD.user_id,
							header = OLD.header,
							description = OLD.description,
							media_id = OLD.media_id,
							order_amount = OLD.order_amount,
							ad_status_id = OLD.ad_status_id;
END //

DROP TRIGGER IF EXISTS insert_ad_log //
CREATE TRIGGER insert_ad_log BEFORE INSERT ON ad
FOR EACH ROW BEGIN 
	INSERT INTO ad_logs SET operation = 'Insert',
							row_id = NEW.id,
							ad_mode_id = NEW.ad_mode_id,
							ad_category_id = NEW.ad_category_id,
							ad_product_condition_id = NEW.ad_product_condition_id,
							user_id = NEW.user_id,
							header = NEW.header,
							description = NEW.description,
							media_id = NEW.media_id,
							order_amount = NEW.order_amount,
							ad_status_id = NEW.ad_status_id;
END //


delimiter ;
-- Проверка триггеров логирования

UPDATE ad SET order_amount = 15000 WHERE id = 1;
SELECT * FROM ad_logs;

INSERT INTO ad(ad_category_id,ad_mode_id,user_id,header,description,media_id,order_amount,ad_product_condition_id,ad_status_id) VALUES (2,1,12,'test_head','test_desc',8,1000,1,1); 
SELECT * FROM ad_logs;

DELETE FROM ad WHERE header = 'test_head';
SELECT * FROM ad_logs;

-- Cоздаем процедуру, которая будет проверять указанную почту на существование
delimiter //
DROP PROCEDURE IF EXISTS check_email //
CREATE PROCEDURE check_email (IN mail VARCHAR(50),OUT res INT)
BEGIN
	SET res := (SELECT COUNT(*) FROM users WHERE email = mail COLLATE utf8_unicode_ci);
END //
delimiter ;

-- Поиск логопасса по почте
delimiter //
DROP PROCEDURE IF EXISTS find_logopass //
CREATE PROCEDURE find_logopass (IN mail VARCHAR(50))
BEGIN
	CALL check_email(mail,@res);
	IF(@res>0) THEN
		SELECT login,password FROM users WHERE email = mail COLLATE utf8_unicode_ci;
	ELSE
		SELECT 'Not_Found';
	END IF;
END //
delimiter ;

CALL find_logopass('yandex@mail.ru'); -- Не найдет
CALL find_logopass('mueller.myrna@example.org'); -- Найдет
