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