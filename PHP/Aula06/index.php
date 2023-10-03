<?php

header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

date_default_timezone_set("America/Sao_Paulo");
 
// isset verifica se a variavel foi prenchida
if(isset($_GET['caminho'])) {
  // explode converte um string em um array dividindo-a por um caracter específico
  // ex.: 03/10/2023 ... explode("/", "03/10/2023")  = [03, 10, 2023]
  $caminho = explode("/" , $_GET['caminho']);
  // echo($caminho); 

  // exibe o valor da variavel

} else {
  echo('Caminho não existe');
}


if (isset($caminho[0])) { $recurso = $caminho[0]; } else { $recurso = ''; }
if (isset($caminho[1])) { $item = $caminho[1]; } else { $item = ''; }

// $_SERVER contem varias informações sobre o servidor, 
// e sobre a requisição... 
// neste caso estamos buscando qual foi o metodo utilizado
// na requisição
$method = $_SERVER['REQUEST_METHOD']; 


// faz o carregamento do arquivo php citado dentro das aspas
include_once "controler/db/db.class.php";

include_once "api/produtos/produtos.php";

//var_dump($recurso, $item, $method);