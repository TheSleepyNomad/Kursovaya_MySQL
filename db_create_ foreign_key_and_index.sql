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