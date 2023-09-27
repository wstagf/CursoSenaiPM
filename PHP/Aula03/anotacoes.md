Linhas para adicionar no.PHP INI 

zend_extension = xdebug
xdebug.mode = debug 
xdebug.start_with_request = yes
xdebug.discover_client_host = 192.168.15.4
xdebug.client_port=9003






pra debugar no modo console, basta a linha abaixo no php.ini e a extensão xdebug no vscode. 
utilizamos a opção "RUN current script in console"




para debugar no browser podemos utilizar a opção 
"Launch built-in server and debug"
e no browser que vai abrir acessarmos o arquivo que querermos debugar utilizando a url 
ex.: 


teste.php -> http://localhost:8000/teste.php




Ao utilizar o modo "Listen for Xdebug" fazemos com que os scripts executados utilizando o XAMP sejam possiveis de debugar. 

OBS: 1 * Lembrando que é necessário que o parametro  "port: 9003"   que está no arquivo que configura o debug no vscode  ( .vscode\launch.json  ) seja o mesmo valor que o parametro 
"xdebug.client_port" que se encontra no final do arquivo php.ini 


OBS: 2 * Algumas vezes é necessário informar o IP da maquina que está executando o XAMP, podemos obter o nosso ip atravéz do comando IPCONFIG que deve ser executado em um terminal, olhar algo que seja similar a essa linha
"Endereço IPv4. . . . . . . .  . . . . . . . : 192.168.15.4"

