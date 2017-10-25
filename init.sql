DROP SCHEMA IF EXISTS `test`;
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE test;

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` VARCHAR(255) NULL,
  `author` VARCHAR(100) NULL,
  `isbn` VARCHAR(20) NULL,
  `printYear` INT NULL,
  `readAlready` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`));



INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Алиса в зазеркалье',
    '«Алиса в Зазеркалье» — детская книга английского математика и писателя Льюиса Кэрролла, написанная в
    1871 году как продолжение книги «Алиса в Стране чудес».', 'Льюис Кэрролл', '978-5-9287-2749-9', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Хроники Нарнии','\"Хроники Нарнии\" — удивительная и прекрасная история волшебной страны,
    в которой правят любовь и доброта, где животные и птицы говорят и мыслят подобно людям, а в лесах
    обитают гномы и великаны, фавны и кентавры.','Клайв Стейплз Льюис','978-5-699-92300-7', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Маленькі прынц','\"Маленькі прынц\" - алегарычныя казка, найбольш вядомы твор Антуана дэ
    Сент-Экзюперы','Антуан де Сент-Экзюпери','978-985-7164-57-8', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Персонал-стратегия. Эффективное кадровое планирование в библиотеке','Стратегии','Андреева, Н. Е.',
    '978-985-7164-57-8', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Основы современных коммуникаций: человек - группа - общество','Коммуникации','В. В. Арутюнов',
    '978-985-7164-57-2', '2006');


INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Машины создания','Machine learning','Андреева, Н. Е.',
    '978-985-7164-57-1', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Современная стратегия управления персоналом библиотеки ','Стратегии','Жданова, Т. А.',
    '978-985-7164-57-3', '2006');


INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES (' Управление персоналом',' Управление персоналом','Андреева, Н. Е.',
    '978-985-7164-57-8', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Как угодить начальнику-женщине : справочное издание','Коммуникации','В. В. Арутюнов',
    '978-985-7164-57-2', '2006');


INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Экономика предприятий пищевой промышленности','Machine learning','Андреева, Н. Е.',
    '978-985-7164-57-1', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Конфликтология. Управление конфликтами','Стратегии','Жданова, Т. А.',
    '978-985-7164-57-3', '2006');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Алиса в зазеркалье',
    '«Алиса в Зазеркалье» — детская книга английского математика и писателя Льюиса Кэрролла, написанная в
    1871 году как продолжение книги «Алиса в Стране чудес».', 'Льюис Кэрролл', '978-5-9287-2749-9', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Хроники Нарнии','\"Хроники Нарнии\" — удивительная и прекрасная история волшебной страны,
    в которой правят любовь и доброта, где животные и птицы говорят и мыслят подобно людям, а в лесах
    обитают гномы и великаны, фавны и кентавры.','Клайв Стейплз Льюис','978-5-699-92300-7', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Маленькі прынц','\"Маленькі прынц\" - алегарычныя казка, найбольш вядомы твор Антуана дэ
    Сент-Экзюперы','Антуан де Сент-Экзюпери','978-985-7164-57-8', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Персонал-стратегия. Эффективное кадровое планирование в библиотеке','Стратегии','Андреева, Н. Е.',
    '978-985-7164-57-8', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Основы современных коммуникаций: человек - группа - общество','Коммуникации','В. В. Арутюнов',
    '978-985-7164-57-2', '2006');


INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Машины создания','Machine learning','Андреева, Н. Е.',
    '978-985-7164-57-1', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Современная стратегия управления персоналом библиотеки ','Стратегии','Жданова, Т. А.',
    '978-985-7164-57-3', '2006');


INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES (' Управление персоналом',' Управление персоналом','Андреева, Н. Е.',
    '978-985-7164-57-8', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Как угодить начальнику-женщине : справочное издание','Коммуникации','В. В. Арутюнов',
    '978-985-7164-57-2', '2006');


INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Экономика предприятий пищевой промышленности','Machine learning','Андреева, Н. Е.',
    '978-985-7164-57-1', '2017');

INSERT INTO `book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Конфликтология. Управление конфликтами','Стратегии','Жданова, Т. А.',
    '978-985-7164-57-3', '2006');