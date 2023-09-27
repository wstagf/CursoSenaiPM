USE `pmgo`;

CREATE TABLE `produtos` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
   `tipo` VARCHAR(60) NOT NULL,
	`nome` VARCHAR(60) NOT NULL,
	`alt` VARCHAR(60) NOT NULL,
	`imagemURL` VARCHAR(60) NOT NULL,
	`preco` FLOAT NOT NULL
);

INSERT INTO pmgo.produtos
(tipo, nome, alt, imagemURL, preco)
VALUES('capacete', 'Capcacete 01', 'Isto é um capacete, modelo 1', 'assets/images/capacete01.png', 50);

INSERT INTO pmgo.produtos
(tipo, nome, alt, imagemURL, preco)
VALUES('capacete', 'Capcacete 02', 'Isto é um capacete, modelo 2', 'assets/images/capacete02.png', 25);


INSERT INTO pmgo.produtos
(tipo, nome, alt, imagemURL, preco)
VALUES('capacete', 'Capcacete 03', 'Isto é um capacete, modelo 3', 'assets/images/capacete03.png', 70);



INSERT INTO pmgo.produtos
(tipo, nome, alt, imagemURL, preco)
VALUES('blusa', 'Blusão 01', 'Isto é um Blusão, modelo 1', 'assets/images/blusa0.png', 50);

INSERT INTO pmgo.produtos
(tipo, nome, alt, imagemURL, preco)
VALUES('Blusão', 'Blusão 02', 'Isto é um Blusão, modelo 2', 'assets/images/blusa02.png', 25);


INSERT INTO pmgo.produtos
(tipo, nome, alt, imagemURL, preco)
VALUES('Blusão', 'BluCapcsão 03acete', 'Isto é um Blusão, modelo 3', 'assets/images/blusa03.png', 70);



