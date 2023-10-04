USE `pmgo`;

CREATE TABLE `usuarios` (
	`id` INT PRIMARY KEY AUTO_INCREMENT, 
	`nome` VARCHAR(60) NOT NULL,
	`senha` VARCHAR(60) NOT NULL, 
	`token` VARCHAR(500) NOT NULL
);



INSERT INTO pmgo.usuarios
(nome, senha, token)
VALUES(
  'Usuario 1',
   '34819d7beeabb9260a5c854bc85b3e44',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'
)