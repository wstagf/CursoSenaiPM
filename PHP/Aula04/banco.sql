USE `pmgo`;


CREATE TABLE `produtos` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
   `tipo` VARCHAR(60) NOT NULL,
	`nome` VARCHAR(60) NOT NULL,
	`alt` VARCHAR(60) NOT NULL,
	`imagemURL` VARCHAR(60) NOT NULL,
	`preco` FLOAT NOT NULL
);