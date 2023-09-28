Ferramenta de banco de dados utilizada na aula
https://dbeaver.io/download/


1. Baixar e Instalar a ferramenta dbeaver
2. Criar uma conexão com o banco de dados
    Host: localhost
    user: root
    senha:     // <nehuma, deve deixar este campo vazio, a não que você tenha   alterado a senha do root. 
3. Testar a conexão e esperar o download do driver (somente na primeria vez... ) 
4. Abrir a conexão
5. Criara um banco de dados PMGO
6. Rodar o script de criação do nosso banco






# PDO

PHP Data Object...

Com ele podemos executar conexão no banco de dados e passar os SQLs que serão executados no servidor e retornarão os dados solicitados...

Escrevemos os SQLS no codigo....

por exemplo o codigo  'select * from  produtos;' que é executado para listar todos os produtos




# funções

A funcão  que connecta no banco de dados é diferente da funcão que faz a consulta...
Banco::conectar();      X          $pdo->query($sql);


 elas são diferentes pois a primeria é uma função estatica, sendo assim, para utilizarmos não é preciso declarar uma variavel da classe associada.