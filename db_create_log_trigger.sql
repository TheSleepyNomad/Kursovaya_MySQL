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