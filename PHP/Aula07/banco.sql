-- Caso queira excluir uma tabela é so executar o comando
-- drop table usuarios;



USE pmgo;

CREATE TABLE usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	usuario VARCHAR(60) NOT NULL,
	nome VARCHAR(60) NOT NULL,
	senha VARCHAR(60) NOT NULL, 
	token VARCHAR(500) NOT NULL
);



INSERT INTO pmgo.usuarios
(usuario, nome, senha, token)
VALUES(
  'user1',
	'PMGO',
   '$2y$10$.prcchd146UaLg3Y0dlMJeBp1TRmEg4Ig2DM3KLRjA.tO8tymFRuC',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'
)