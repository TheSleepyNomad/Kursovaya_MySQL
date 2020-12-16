-- ---------------------------------------------------------------------------------------------------------------------------------------
-- Требования к курсовому проекту:
-- ---------------------------------------------------------------------------------------------------------------------------------------
  * Составить общее текстовое описание БД и решаемых ею задач;
  * Минимальное количество таблиц - 10;
  * Скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами);
  * Создать ERDiagram для БД;
  * Скрипты наполнения БД данными;
  * Скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);
  * Представления (минимум 2);
  * Хранимые процедуры / триггеры;
  
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- Общее текстовое описание БД и решаемых ею задач
-- ---------------------------------------------------------------------------------------------------------------------------------------
  База данных avito_db_model представляет из себя сильно упрощенную модель хранения 
данных сервиса Avito. БД позволяет хранить данные пользователей, которые используются для регистрации и в качестве контактной информации,
объявления на продажу, которые разместили пользователи. На основании таблицы с объявлениями (AD) можно получить аналитику по продажам в разрезах по качеству товара, категории, привилегии объявления

  USERS
  В данной таблице хранятся регистрационные данные, которые используются авторизации пользователя на сайте, для восстановления доступа на сайт или как контактная информация

  - login
  - password
  - email
  - phone

  PROFILES
  Хранит в себе  данные пользователей, которые можно будет использовать в дальнейшем как данные для восстановления
  - first_name
  - second_name
  - gender
  - birthday
  и т.д
  
  AD
  Сохраняет в себе все объявления от пользователей сервиса
  - Привилегии объявления(вип статус, временный вип, обычное)
  - Категория товара
  - Состояние товара
  - Наименование объявление
  - Описание
  - Приложенные файлы
  - Статус(продано, опубликовано и т.д)

  Возможности пользователей:
  - Создавать учетные записи
  - Опубликовать свои объявления
  - Прикреплять медиафайлы к объявлениям
  - Добавлять понравившиеся объявления в избранное
  - Писать продавцам
