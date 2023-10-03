# Acces-Control-Allow-Origin * 
Habilita o CORS para qualquer origem 
Leia Mais:  https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS




# date_default_timezone_set("America/Sao_Paulo");

Configura o fuso horario que o servidor vai utilizar 
para manipulações do tipo data.  
America/Sao_Paulo == GMT-3

Outros timezone pode ser encontrado na url https://en.wikipedia.org/wiki/List_of_tz_database_time_zones





# Padrão REST de caminho da URL


www.servidor.com.br:8080/XXXXXXX/YYYY/ZZZZZ
1. Tudo que vier depois do endereço do servidor é considerado CAMINHO / PATH
2. Os parametros sao separados por "/"
3. O primeiro parametro é o recurso. Nossa tabela.
   Ex. Buscar todos os produtos = GET www.servidor.com.br:8080/PRODUTOS/
   . No banco de dados a tabela é no plural PRODUTOS
   . Na model o nome da classe é no singular PRODUTO

   . Para criar o produto  = POST "www.servidor.com.br:8080/PRODUTOS"
   . Para obter a lista = GET "www.servidor.com.br:8080/PRODUTOS"
   . Para obter somente um item = GET "www.servidor.com.br:8080/PRODUTOS/1"
      ... Este 1 é o ID do produto

   . Para editar o produto  = PUT "www.servidor.com.br:8080/PRODUTOS/1"
   . Para excluir o produto  = DELETE "www.servidor.com.br:8080/PRODUTOS/1"
 

 Utilizando este formato na url podemos dizer que a nossa api é REST Full



# Lista de funções utilizadas

isset
var_dump
explode
