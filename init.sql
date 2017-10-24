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



INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `printYear`)
    VALUES ('Алиса в зазеркалье',
    '«Алиса в Зазеркалье» — детская книга английского математика и писателя Льюиса Кэрролла, написанная в
    1871 году как продолжение книги «Алиса в Стране чудес».', 'Льюис Кэрролл', '978-5-9287-2749-9', '2017');
